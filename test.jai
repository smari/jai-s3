#import "Basic";
#import "S3";
#import "File";

main :: () {
    host :: "HOSTNAME";
    testbucket :: "test-bucket";
    access_key :: "SOME_ACCESS_KEY";
    secret_key :: "SOME_SECRET_KEY";

    print("Initializing S3 library...\n");

    S3_initialize("s3", S3_INIT_ALL, "data.ecosophy.is");
    conn := S3_make_connection(host, access_key, secret_key);
    defer {
        S3_deinitialize();
        S3_free_connection(conn);
        print("Cleaned up.\n");
    }

    buckets := S3_list_buckets(conn);
    for buckets {
        print("Bucket name: '%'. Owner: '%'/'%'. Created: %.\n", it.name, it.owner_id, it.owner_display_name, calendar_to_iso_string(to_calendar(it.created_time)));
    }
    S3_free_list(buckets);

    // List contents of our bucket:
    {
        objects := S3_list_bucket(conn, testbucket);
        for objects {
            print("Object key '%'. ETag: '%'. Owner: '%'/'%'. Modified: %. Size: %\n",
                it.key, it.etag, it.owner_id, it.owner_display_name, calendar_to_iso_string(to_calendar(it.modified_time)), it.size
            );
        }
        S3_free_list(objects);
    }

    // Fetch a file:
    {
        print("Fetching a file: \n");
        file := S3_get_object_to_buffer(conn, testbucket, "big_test_file.nc");
        print("Got file. Size is %\n", file.count);
        free(file);
    }
}
