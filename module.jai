#import "Basic";
#import "POSIX";
#import "Socket";
#import "File";

#load "linux.jai";

S3ConnectionInfo :: struct {
    host		: string;
    access_key		: string;
    secret_key		: string;
    protocol		: S3Protocol;
    uri_style		: S3UriStyle;
}

S3Bucket :: struct {
    owner_id            : string;
    owner_display_name  : string;
    name                : string;
    created_time        : Apollo_Time;
}

S3Object :: struct {
    key                 : string;
    etag                : string;
    modified_time       : Apollo_Time;
    size                : u64;
    owner_id            : string;
    owner_display_name  : string;
}

//////////////////////////// Utility functions //////////////////////////////////

S3_make_connection :: (host: string, access_key: string, secret_key: string, 
  protocol: S3Protocol = .S3ProtocolHTTP, uri_style: S3UriStyle = .S3UriStylePath) -> S3ConnectionInfo 
{
    s : S3ConnectionInfo;
    s.host = copy_string(host);
    s.access_key = copy_string(access_key);
    s.secret_key = copy_string(secret_key);
    s.protocol = protocol;
    s.uri_style = uri_style;
    return s;
}

S3_free_connection :: (s: S3ConnectionInfo) {
    free(s.host);
    free(s.access_key);
    free(s.secret_key);
}

S3_get_bucket :: (conn: S3ConnectionInfo, bucket_name: string) -> S3BucketContext {
    bc : S3BucketContext;
    bc.hostName = to_c_string(conn.host);
    bc.bucketName = to_c_string(bucket_name);
    bc.protocol = conn.protocol;
    bc.uriStyle = conn.uri_style;
    bc.accessKeyId = to_c_string(conn.access_key);
    bc.secretAccessKey = to_c_string(conn.secret_key);
    return bc;
}


S3Response :: struct {
    status : S3Status;
    props  : *S3ResponseProperties;
    error  : *S3ErrorDetails;
    data   : *void;
}


/////////////////////// Wrapper functions //////////////////////////////////

#import "Debug";

S3_list_buckets :: (conn: S3ConnectionInfo) -> *[..]S3Bucket {
    list := New([..]S3Bucket);
    response : S3Response;
    response.data = list;

    access_key := to_c_string(conn.access_key);
    secret_key := to_c_string(conn.secret_key);
    host := to_c_string(conn.host);

    S3_list_service(
        conn.protocol, 
        access_key, 
        secret_key, 
        host,
        null, 
        *list_buckets_handler, 
        *response
    );
    return list;
}


S3_list_bucket :: (ctx: S3BucketContext) -> [..]S3Object {
    objects : [..]S3Object;
    S3_list_bucket(*ctx, null, null, null, 0, null, *list_bucket_handler, *objects);
    return objects;
}

S3_list_bucket :: (conn: S3ConnectionInfo, bucket_name: string) -> [..]S3Object {
    bucket := S3_get_bucket(conn, bucket_name);
    return S3_list_bucket(bucket);
}

S3_free_list :: (list: [..]S3Object) {
    for list {
        free(it.key);
        free(it.etag);
        free(it.owner_id);
        free(it.owner_display_name);
    }
    array_reset(*list);
}

S3_free_list :: (list: [..]S3Bucket) {
    for list {
        free(it.name);
        free(it.owner_id);
        free(it.owner_display_name);
    }
    array_reset(*list);
}

S3_get_object_to_buffer :: (ctx: S3BucketContext, key: string) -> string {
    builder : String_Builder;
    S3_get_object(*ctx, to_c_string(key), null, 0, 0, null, *get_object_to_buffer_handler, cast(*void) *builder);
    return builder_to_string(*builder);
}

S3_get_object_to_buffer :: (conn: S3ConnectionInfo, bucket_name: string, key: string) -> string {
    bucket := S3_get_bucket(conn, bucket_name);
    return S3_get_object_to_buffer(bucket, key);
}

S3_get_object_to_file :: (ctx: S3BucketContext, key: string, file: File) {
    S3_get_object(*ctx, to_c_string(key), null, 0, 0, null, *get_object_to_file_handler, cast(*void) *file);
}

S3_get_object_to_file :: (conn: S3ConnectionInfo, bucket_name: string, key: string, file: File) {
    bucket := S3_get_bucket(conn, bucket_name);
    return S3_get_object_to_file(bucket, key, file);
}

S3Upload :: struct {
    data        : *string;
    total_bytes : s64;
    bytes_sent  : s64;
}

S3_put_object_from_buffer :: (conn: S3ConnectionInfo, bucket_name: string, key: string, data: string) -> S3Response {
    response : S3Response;
    upload : S3Upload;
    upload.data = *data;
    upload.total_bytes = data.count;
    response.data = *upload;
    bucket := S3_get_bucket(conn, bucket_name);
    S3_put_object(*bucket, 
        to_c_string(key), 
        cast(u64) data.count, 
        null, 
        null, 
        *put_object_handler, 
        *response);

    return response;
}

S3_bucket_exists :: (conn: S3ConnectionInfo, bucket_name: string) -> bool {
    response: S3Response;

    S3_test_bucket(conn.protocol, conn.uri_style, 
        to_c_string(conn.access_key), 
        to_c_string(conn.secret_key), 
        to_c_string(conn.host),
        to_c_string(bucket_name),
        0, null, // Location constraint is not used; AWS users might care about this.
        null,    // Request context is not used 
        *response_handler, 
        *response);

    // TODO: This does not free the props. Need to add a free function.

    return response.props != null;
}


S3_create_bucket :: (conn: S3ConnectionInfo, bucket_name: string, acl: S3CannedAcl = .Private) -> S3Response {
    bucket := S3_get_bucket(conn, bucket_name);
    response : S3Response;
    
    S3_create_bucket(conn.protocol, 
        to_c_string(conn.access_key), 
        to_c_string(conn.secret_key), 
        to_c_string(conn.host),
        to_c_string(bucket_name),
        acl,
        null,   // Location constraint is not used; AWS users might care about this. 
        null,   // Request context is not used
        *response_handler, 
        *response
    );

    return response;
}


/////////////////////////////// Don't touch stuff below here /////////////////////////////////

#scope_file

response_properties_callback :: (props: *S3ResponseProperties, callbackData: *void) -> S3Status #c_call {
    p : *S3Response = callbackData;
    p.props = props;
    return .OK;
}

response_complete_callback :: (status: S3Status, error: *S3ErrorDetails, callbackData: *void) #c_call {
    p : *S3Response = callbackData;
    p.status = status;
    p.error = error;
    return;
}

response_handler : S3ResponseHandler : .{
    response_properties_callback,
    response_complete_callback
};

list_bucket_handler : S3ListBucketHandler = .{
   listBucketCallback = list_bucket_callback,
   responseHandler = response_handler
};

get_object_to_buffer_handler : S3GetObjectHandler = .{
    getObjectDataCallback = get_object_buffer_data_callback,
    responseHandler = response_handler
};

get_object_to_file_handler : S3GetObjectHandler = .{
    getObjectDataCallback = get_object_file_data_callback,
    responseHandler = response_handler
};

put_object_handler : S3PutObjectHandler = .{
    responseHandler = response_handler,
    putObjectDataCallback = put_object_data_callback
};

list_buckets_handler : S3ListServiceHandler = .{
    listServiceCallback = list_buckets_callback,
    responseHandler = response_handler
};

list_buckets_callback :: (ownerId: *u8, ownerDisplayName: *u8, bucketName: *u8, creationDateSeconds: s64, callbackData: *void) -> S3Status #c_call {
    response: *S3Response = callbackData;
    list : *[..]S3Bucket = response.data;

    push_context {
        bucket : S3Bucket;
        bucket.name = copy_string(to_string(bucketName));
        bucket.owner_id = copy_string(to_string(ownerId));
        bucket.owner_display_name = copy_string(to_string(ownerDisplayName));
        bucket.created_time = unix_timestamp_to_apollo(creationDateSeconds);
        array_add(list, bucket);
    }

    return .OK;
}

get_object_buffer_data_callback :: (bufferSize: s32, buffer: *u8, callbackData: *void) -> S3Status #c_call {
    ctx : #Context;
    builder : *String_Builder = callbackData;
    tmp : string;

    push_context ctx {
        tmp.count = bufferSize;
        tmp.data = buffer;
        append(builder, tmp);
    }

    return .OK;
}

get_object_file_data_callback :: (bufferSize: s32, buffer: *u8, callbackData: *void) -> S3Status #c_call {
    ctx : #Context;
    file : *File = callbackData;

    push_context ctx {
        file_write(file, buffer, bufferSize);
    }

    return .OK;
}


list_bucket_callback :: (isTruncated: s32, nextMarker: *u8, contentsCount: s32,
    contents: *S3ListBucketContent, commonPrefixesCount: s32, commonPrefixes: **u8, callbackData: *void) -> S3Status #c_call {

    list : *[..]S3Object = callbackData;
    ctx : #Context;

    push_context ctx {
        for 0..contentsCount-1 {
            content := contents[it];
            obj : S3Object;
            obj.key = copy_string(to_string(content.key));
            obj.etag = copy_string(to_string(content.eTag));
            obj.size = content.size;
            obj.modified_time = unix_timestamp_to_apollo(content.lastModified);
            obj.owner_id = copy_string(to_string(content.ownerId));
            obj.owner_display_name = copy_string(to_string(content.ownerDisplayName));

            array_add(list, obj);
        }
    }

    return .OK;
}

put_object_data_callback :: (bufferSize: s32, buffer: *u8, callbackData: *void) -> s32 #c_call {
    response : *S3Response = callbackData;
    upload : *S3Upload = response.data;
    data := upload.data;

    bytes : s64 = bufferSize;
    if data.count < bytes {
        bytes = data.count;
    }
    memcpy(buffer, data.data, bytes);
    data.data += bytes;
    data.count -= bytes;
    upload.bytes_sent += bytes;
    return cast,trunc(s32) bytes;
}


unix_timestamp_to_apollo :: (ts: s64) -> Apollo_Time {
    a_seconds := seconds_to_apollo(ts);
    apollo := a_seconds + APOLLO_TIME_FOR_JAN_1_1970;
    return apollo;
}
