//
// This file was auto-generated using the following command:
//
// jai generate.jai -import_dir ..
//



S3_MAX_HOSTNAME_SIZE :: 255;

S3_DEFAULT_HOSTNAME :: "s3.amazonaws.com";

S3_MAX_BUCKET_NAME_SIZE :: 255;

S3_MAX_KEY_SIZE :: 1024;

S3_MAX_METADATA_SIZE :: 2048;

S3_METADATA_HEADER_NAME_PREFIX :: "x-amz-meta-";

S3_MAX_ACL_GRANT_COUNT :: 100;

S3_MAX_GRANTEE_EMAIL_ADDRESS_SIZE :: 128;

S3_MAX_GRANTEE_USER_ID_SIZE :: 128;

S3_MAX_GRANTEE_DISPLAY_NAME_SIZE :: 128;

S3_INIT_WINSOCK :: 1;

S3_INIT_ALL :: S3_INIT_WINSOCK;

/**
* S3Status is a status code as returned by a libs3 function.  The meaning of
* each status code is defined in the comments for each function which returns
* that status.
**/
S3Status :: enum u32 {
    OK                                       :: 0;

    InternalError                            :: 1;
    OutOfMemory                              :: 2;
    Interrupted                              :: 3;
    InvalidBucketNameTooLong                 :: 4;
    InvalidBucketNameFirstCharacter          :: 5;
    InvalidBucketNameCharacter               :: 6;
    InvalidBucketNameCharacterSequence       :: 7;
    InvalidBucketNameTooShort                :: 8;
    InvalidBucketNameDotQuadNotation         :: 9;
    QueryParamsTooLong                       :: 10;
    FailedToInitializeRequest                :: 11;
    MetaDataHeadersTooLong                   :: 12;
    BadMetaData                              :: 13;
    BadContentType                           :: 14;
    ContentTypeTooLong                       :: 15;
    BadMD5                                   :: 16;
    MD5TooLong                               :: 17;
    BadCacheControl                          :: 18;
    CacheControlTooLong                      :: 19;
    BadContentDispositionFilename            :: 20;
    ContentDispositionFilenameTooLong        :: 21;
    BadContentEncoding                       :: 22;
    ContentEncodingTooLong                   :: 23;
    BadIfMatchETag                           :: 24;
    IfMatchETagTooLong                       :: 25;
    BadIfNotMatchETag                        :: 26;
    IfNotMatchETagTooLong                    :: 27;
    HeadersTooLong                           :: 28;
    KeyTooLong                               :: 29;
    UriTooLong                               :: 30;
    XmlParseFailure                          :: 31;
    EmailAddressTooLong                      :: 32;
    UserIdTooLong                            :: 33;
    UserDisplayNameTooLong                   :: 34;
    GroupUriTooLong                          :: 35;
    PermissionTooLong                        :: 36;
    TargetBucketTooLong                      :: 37;
    TargetPrefixTooLong                      :: 38;
    TooManyGrants                            :: 39;
    BadGrantee                               :: 40;
    BadPermission                            :: 41;
    XmlDocumentTooLarge                      :: 42;
    NameLookupError                          :: 43;
    FailedToConnect                          :: 44;
    ServerFailedVerification                 :: 45;
    ConnectionFailed                         :: 46;
    AbortedByCallback                        :: 47;

    ErrorAccessDenied                        :: 48;
    ErrorAccountProblem                      :: 49;
    ErrorAmbiguousGrantByEmailAddress        :: 50;
    ErrorBadDigest                           :: 51;
    ErrorBucketAlreadyExists                 :: 52;
    ErrorBucketAlreadyOwnedByYou             :: 53;
    ErrorBucketNotEmpty                      :: 54;
    ErrorCredentialsNotSupported             :: 55;
    ErrorCrossLocationLoggingProhibited      :: 56;
    ErrorEntityTooSmall                      :: 57;
    ErrorEntityTooLarge                      :: 58;
    ErrorExpiredToken                        :: 59;
    ErrorIncompleteBody                      :: 60;
    ErrorIncorrectNumberOfFilesInPostRequest :: 61;
    ErrorInlineDataTooLarge                  :: 62;
    ErrorInternalError                       :: 63;
    ErrorInvalidAccessKeyId                  :: 64;
    ErrorInvalidAddressingHeader             :: 65;
    ErrorInvalidArgument                     :: 66;
    ErrorInvalidBucketName                   :: 67;
    ErrorInvalidDigest                       :: 68;
    ErrorInvalidLocationConstraint           :: 69;
    ErrorInvalidPayer                        :: 70;
    ErrorInvalidPolicyDocument               :: 71;
    ErrorInvalidRange                        :: 72;
    ErrorInvalidSecurity                     :: 73;
    ErrorInvalidSOAPRequest                  :: 74;
    ErrorInvalidStorageClass                 :: 75;
    ErrorInvalidTargetBucketForLogging       :: 76;
    ErrorInvalidToken                        :: 77;
    ErrorInvalidURI                          :: 78;
    ErrorKeyTooLong                          :: 79;
    ErrorMalformedACLError                   :: 80;
    ErrorMalformedXML                        :: 81;
    ErrorMaxMessageLengthExceeded            :: 82;
    ErrorMaxPostPreDataLengthExceededError   :: 83;
    ErrorMetadataTooLarge                    :: 84;
    ErrorMethodNotAllowed                    :: 85;
    ErrorMissingAttachment                   :: 86;
    ErrorMissingContentLength                :: 87;
    ErrorMissingSecurityElement              :: 88;
    ErrorMissingSecurityHeader               :: 89;
    ErrorNoLoggingStatusForKey               :: 90;
    ErrorNoSuchBucket                        :: 91;
    ErrorNoSuchKey                           :: 92;
    ErrorNotImplemented                      :: 93;
    ErrorNotSignedUp                         :: 94;
    ErrorOperationAborted                    :: 95;
    ErrorPermanentRedirect                   :: 96;
    ErrorPreconditionFailed                  :: 97;
    ErrorRedirect                            :: 98;
    ErrorRequestIsNotMultiPartContent        :: 99;
    ErrorRequestTimeout                      :: 100;
    ErrorRequestTimeTooSkewed                :: 101;
    ErrorRequestTorrentOfBucketError         :: 102;
    ErrorSignatureDoesNotMatch               :: 103;
    ErrorSlowDown                            :: 104;
    ErrorTemporaryRedirect                   :: 105;
    ErrorTokenRefreshRequired                :: 106;
    ErrorTooManyBuckets                      :: 107;
    ErrorUnexpectedContent                   :: 108;
    ErrorUnresolvableGrantByEmailAddress     :: 109;
    ErrorUserKeyMustBeSpecified              :: 110;
    ErrorUnknown                             :: 111;

    HttpErrorMovedTemporarily                :: 112;
    HttpErrorBadRequest                      :: 113;
    HttpErrorForbidden                       :: 114;
    HttpErrorNotFound                        :: 115;
    HttpErrorConflict                        :: 116;
    HttpErrorUnknown                         :: 117;

    S3StatusOK                                       :: OK;

    S3StatusInternalError                            :: InternalError;
    S3StatusOutOfMemory                              :: OutOfMemory;
    S3StatusInterrupted                              :: Interrupted;
    S3StatusInvalidBucketNameTooLong                 :: InvalidBucketNameTooLong;
    S3StatusInvalidBucketNameFirstCharacter          :: InvalidBucketNameFirstCharacter;
    S3StatusInvalidBucketNameCharacter               :: InvalidBucketNameCharacter;
    S3StatusInvalidBucketNameCharacterSequence       :: InvalidBucketNameCharacterSequence;
    S3StatusInvalidBucketNameTooShort                :: InvalidBucketNameTooShort;
    S3StatusInvalidBucketNameDotQuadNotation         :: InvalidBucketNameDotQuadNotation;
    S3StatusQueryParamsTooLong                       :: QueryParamsTooLong;
    S3StatusFailedToInitializeRequest                :: FailedToInitializeRequest;
    S3StatusMetaDataHeadersTooLong                   :: MetaDataHeadersTooLong;
    S3StatusBadMetaData                              :: BadMetaData;
    S3StatusBadContentType                           :: BadContentType;
    S3StatusContentTypeTooLong                       :: ContentTypeTooLong;
    S3StatusBadMD5                                   :: BadMD5;
    S3StatusMD5TooLong                               :: MD5TooLong;
    S3StatusBadCacheControl                          :: BadCacheControl;
    S3StatusCacheControlTooLong                      :: CacheControlTooLong;
    S3StatusBadContentDispositionFilename            :: BadContentDispositionFilename;
    S3StatusContentDispositionFilenameTooLong        :: ContentDispositionFilenameTooLong;
    S3StatusBadContentEncoding                       :: BadContentEncoding;
    S3StatusContentEncodingTooLong                   :: ContentEncodingTooLong;
    S3StatusBadIfMatchETag                           :: BadIfMatchETag;
    S3StatusIfMatchETagTooLong                       :: IfMatchETagTooLong;
    S3StatusBadIfNotMatchETag                        :: BadIfNotMatchETag;
    S3StatusIfNotMatchETagTooLong                    :: IfNotMatchETagTooLong;
    S3StatusHeadersTooLong                           :: HeadersTooLong;
    S3StatusKeyTooLong                               :: KeyTooLong;
    S3StatusUriTooLong                               :: UriTooLong;
    S3StatusXmlParseFailure                          :: XmlParseFailure;
    S3StatusEmailAddressTooLong                      :: EmailAddressTooLong;
    S3StatusUserIdTooLong                            :: UserIdTooLong;
    S3StatusUserDisplayNameTooLong                   :: UserDisplayNameTooLong;
    S3StatusGroupUriTooLong                          :: GroupUriTooLong;
    S3StatusPermissionTooLong                        :: PermissionTooLong;
    S3StatusTargetBucketTooLong                      :: TargetBucketTooLong;
    S3StatusTargetPrefixTooLong                      :: TargetPrefixTooLong;
    S3StatusTooManyGrants                            :: TooManyGrants;
    S3StatusBadGrantee                               :: BadGrantee;
    S3StatusBadPermission                            :: BadPermission;
    S3StatusXmlDocumentTooLarge                      :: XmlDocumentTooLarge;
    S3StatusNameLookupError                          :: NameLookupError;
    S3StatusFailedToConnect                          :: FailedToConnect;
    S3StatusServerFailedVerification                 :: ServerFailedVerification;
    S3StatusConnectionFailed                         :: ConnectionFailed;
    S3StatusAbortedByCallback                        :: AbortedByCallback;

    S3StatusErrorAccessDenied                        :: ErrorAccessDenied;
    S3StatusErrorAccountProblem                      :: ErrorAccountProblem;
    S3StatusErrorAmbiguousGrantByEmailAddress        :: ErrorAmbiguousGrantByEmailAddress;
    S3StatusErrorBadDigest                           :: ErrorBadDigest;
    S3StatusErrorBucketAlreadyExists                 :: ErrorBucketAlreadyExists;
    S3StatusErrorBucketAlreadyOwnedByYou             :: ErrorBucketAlreadyOwnedByYou;
    S3StatusErrorBucketNotEmpty                      :: ErrorBucketNotEmpty;
    S3StatusErrorCredentialsNotSupported             :: ErrorCredentialsNotSupported;
    S3StatusErrorCrossLocationLoggingProhibited      :: ErrorCrossLocationLoggingProhibited;
    S3StatusErrorEntityTooSmall                      :: ErrorEntityTooSmall;
    S3StatusErrorEntityTooLarge                      :: ErrorEntityTooLarge;
    S3StatusErrorExpiredToken                        :: ErrorExpiredToken;
    S3StatusErrorIncompleteBody                      :: ErrorIncompleteBody;
    S3StatusErrorIncorrectNumberOfFilesInPostRequest :: ErrorIncorrectNumberOfFilesInPostRequest;
    S3StatusErrorInlineDataTooLarge                  :: ErrorInlineDataTooLarge;
    S3StatusErrorInternalError                       :: ErrorInternalError;
    S3StatusErrorInvalidAccessKeyId                  :: ErrorInvalidAccessKeyId;
    S3StatusErrorInvalidAddressingHeader             :: ErrorInvalidAddressingHeader;
    S3StatusErrorInvalidArgument                     :: ErrorInvalidArgument;
    S3StatusErrorInvalidBucketName                   :: ErrorInvalidBucketName;
    S3StatusErrorInvalidDigest                       :: ErrorInvalidDigest;
    S3StatusErrorInvalidLocationConstraint           :: ErrorInvalidLocationConstraint;
    S3StatusErrorInvalidPayer                        :: ErrorInvalidPayer;
    S3StatusErrorInvalidPolicyDocument               :: ErrorInvalidPolicyDocument;
    S3StatusErrorInvalidRange                        :: ErrorInvalidRange;
    S3StatusErrorInvalidSecurity                     :: ErrorInvalidSecurity;
    S3StatusErrorInvalidSOAPRequest                  :: ErrorInvalidSOAPRequest;
    S3StatusErrorInvalidStorageClass                 :: ErrorInvalidStorageClass;
    S3StatusErrorInvalidTargetBucketForLogging       :: ErrorInvalidTargetBucketForLogging;
    S3StatusErrorInvalidToken                        :: ErrorInvalidToken;
    S3StatusErrorInvalidURI                          :: ErrorInvalidURI;
    S3StatusErrorKeyTooLong                          :: ErrorKeyTooLong;
    S3StatusErrorMalformedACLError                   :: ErrorMalformedACLError;
    S3StatusErrorMalformedXML                        :: ErrorMalformedXML;
    S3StatusErrorMaxMessageLengthExceeded            :: ErrorMaxMessageLengthExceeded;
    S3StatusErrorMaxPostPreDataLengthExceededError   :: ErrorMaxPostPreDataLengthExceededError;
    S3StatusErrorMetadataTooLarge                    :: ErrorMetadataTooLarge;
    S3StatusErrorMethodNotAllowed                    :: ErrorMethodNotAllowed;
    S3StatusErrorMissingAttachment                   :: ErrorMissingAttachment;
    S3StatusErrorMissingContentLength                :: ErrorMissingContentLength;
    S3StatusErrorMissingSecurityElement              :: ErrorMissingSecurityElement;
    S3StatusErrorMissingSecurityHeader               :: ErrorMissingSecurityHeader;
    S3StatusErrorNoLoggingStatusForKey               :: ErrorNoLoggingStatusForKey;
    S3StatusErrorNoSuchBucket                        :: ErrorNoSuchBucket;
    S3StatusErrorNoSuchKey                           :: ErrorNoSuchKey;
    S3StatusErrorNotImplemented                      :: ErrorNotImplemented;
    S3StatusErrorNotSignedUp                         :: ErrorNotSignedUp;
    S3StatusErrorOperationAborted                    :: ErrorOperationAborted;
    S3StatusErrorPermanentRedirect                   :: ErrorPermanentRedirect;
    S3StatusErrorPreconditionFailed                  :: ErrorPreconditionFailed;
    S3StatusErrorRedirect                            :: ErrorRedirect;
    S3StatusErrorRequestIsNotMultiPartContent        :: ErrorRequestIsNotMultiPartContent;
    S3StatusErrorRequestTimeout                      :: ErrorRequestTimeout;
    S3StatusErrorRequestTimeTooSkewed                :: ErrorRequestTimeTooSkewed;
    S3StatusErrorRequestTorrentOfBucketError         :: ErrorRequestTorrentOfBucketError;
    S3StatusErrorSignatureDoesNotMatch               :: ErrorSignatureDoesNotMatch;
    S3StatusErrorSlowDown                            :: ErrorSlowDown;
    S3StatusErrorTemporaryRedirect                   :: ErrorTemporaryRedirect;
    S3StatusErrorTokenRefreshRequired                :: ErrorTokenRefreshRequired;
    S3StatusErrorTooManyBuckets                      :: ErrorTooManyBuckets;
    S3StatusErrorUnexpectedContent                   :: ErrorUnexpectedContent;
    S3StatusErrorUnresolvableGrantByEmailAddress     :: ErrorUnresolvableGrantByEmailAddress;
    S3StatusErrorUserKeyMustBeSpecified              :: ErrorUserKeyMustBeSpecified;
    S3StatusErrorUnknown                             :: ErrorUnknown;

    S3StatusHttpErrorMovedTemporarily                :: HttpErrorMovedTemporarily;
    S3StatusHttpErrorBadRequest                      :: HttpErrorBadRequest;
    S3StatusHttpErrorForbidden                       :: HttpErrorForbidden;
    S3StatusHttpErrorNotFound                        :: HttpErrorNotFound;
    S3StatusHttpErrorConflict                        :: HttpErrorConflict;
    S3StatusHttpErrorUnknown                         :: HttpErrorUnknown;
}

/**
* S3Protocol represents a protocol that may be used for communicating a
* request to the Amazon S3 service.
*
* In general, HTTPS is greatly preferred (and should be the default of any
* application using libs3) because it protects any data being sent to or
* from S3 using strong encryption.  However, HTTPS is much more CPU intensive
* than HTTP, and if the caller is absolutely certain that it is OK for the
* data to be viewable by anyone in transit, then HTTP can be used.
**/
S3Protocol :: enum u32 {
    HTTPS :: 0;
    HTTP  :: 1;

    S3ProtocolHTTPS :: HTTPS;
    S3ProtocolHTTP  :: HTTP;
}

/**
* S3UriStyle defines the form that an Amazon S3 URI identifying a bucket or
* object can take.  They are of these forms:
*
* Virtual Host: ${protocol}://${bucket}.s3.amazonaws.com/[${key}]
* Path: ${protocol}://s3.amazonaws.com/${bucket}/[${key}]
*
* It is generally better to use the Virual Host URI form, because it ensures
* that the bucket name used is compatible with normal HTTP GETs and POSTs of
* data to/from the bucket.  However, if DNS lookups for the bucket are too
* slow or unreliable for some reason, Path URI form may be used.
**/
S3UriStyle :: enum u32 {
    VirtualHost :: 0;
    Path        :: 1;

    S3UriStyleVirtualHost :: VirtualHost;
    S3UriStylePath        :: Path;
}

/**
* S3GranteeType defines the type of Grantee used in an S3 ACL Grant.
* Amazon Customer By Email - identifies the Grantee using their Amazon S3
*     account email address
* Canonical User - identifies the Grantee by S3 User ID and Display Name,
*     which can only be obtained by making requests to S3, for example, by
*     listing owned buckets
* All AWS Users - identifies all authenticated AWS users
* All Users - identifies all users
* Log Delivery - identifies the Amazon group responsible for writing
*                server access logs into buckets
**/
S3GranteeType :: enum u32 {
    AmazonCustomerByEmail :: 0;
    CanonicalUser         :: 1;
    AllAwsUsers           :: 2;
    AllUsers              :: 3;
    LogDelivery           :: 4;

    S3GranteeTypeAmazonCustomerByEmail :: AmazonCustomerByEmail;
    S3GranteeTypeCanonicalUser         :: CanonicalUser;
    S3GranteeTypeAllAwsUsers           :: AllAwsUsers;
    S3GranteeTypeAllUsers              :: AllUsers;
    S3GranteeTypeLogDelivery           :: LogDelivery;
}

/**
* This is an individual permission granted to a grantee in an S3 ACL Grant.
* Read permission gives the Grantee the permission to list the bucket, or
*     read the object or its metadata
* Write permission gives the Grantee the permission to create, overwrite, or
*     delete any object in the bucket, and is not supported for objects
* ReadACP permission gives the Grantee the permission to read the ACP for
*     the bucket or object; the owner of the bucket or object always has
*     this permission implicitly
* WriteACP permission gives the Grantee the permission to overwrite the ACP
*     for the bucket or object; the owner of the bucket or object always has
*     this permission implicitly
* FullControl permission gives the Grantee all permissions specified by the
*     Read, Write, ReadACP, and WriteACP permissions
**/
S3Permission :: enum u32 {
    Read        :: 0;
    Write       :: 1;
    ReadACP     :: 2;
    WriteACP    :: 3;
    FullControl :: 4;

    S3PermissionRead        :: Read;
    S3PermissionWrite       :: Write;
    S3PermissionReadACP     :: ReadACP;
    S3PermissionWriteACP    :: WriteACP;
    S3PermissionFullControl :: FullControl;
}

/**
* S3CannedAcl is an ACL that can be specified when an object is created or
* updated.  Each canned ACL has a predefined value when expanded to a full
* set of S3 ACL Grants.
* Private canned ACL gives the owner FULL_CONTROL and no other permissions
*     are issued
* Public Read canned ACL gives the owner FULL_CONTROL and all users Read
*     permission
* Public Read Write canned ACL gives the owner FULL_CONTROL and all users
*     Read and Write permission
* AuthenticatedRead canned ACL gives the owner FULL_CONTROL and authenticated
*     S3 users Read permission
**/
S3CannedAcl :: enum u32 {
    Private           :: 0;
    PublicRead        :: 1;
    PublicReadWrite   :: 2;
    AuthenticatedRead :: 3;

    S3CannedAclPrivate           :: Private;
    S3CannedAclPublicRead        :: PublicRead;
    S3CannedAclPublicReadWrite   :: PublicReadWrite;
    S3CannedAclAuthenticatedRead :: AuthenticatedRead;
}

S3RequestContext :: struct {}

/**
* S3NameValue represents a single Name - Value pair, used to represent either
* S3 metadata associated with a key, or S3 error details.
**/
S3NameValue :: struct {
    /**
    * The name part of the Name - Value pair
    **/
    name:  *u8;

    /**
    * The value part of the Name - Value pair
    **/
    value: *u8;
}

/**
* S3ResponseProperties is passed to the properties callback function which is
* called when the complete response properties have been received.  Some of
* the fields of this structure are optional and may not be provided in the
* response, and some will always be provided in the response.
**/
S3ResponseProperties :: struct {
    /**
    * This optional field identifies the request ID and may be used when
    * reporting problems to Amazon.
    **/
    requestId:     *u8;

    /**
    * This optional field identifies the request ID and may be used when
    * reporting problems to Amazon.
    **/
    requestId2:    *u8;

    /**
    * This optional field is the content type of the data which is returned
    * by the request.  If not provided, the default can be assumed to be
    * "binary/octet-stream".
    **/
    contentType:   *u8;

    /**
    * This optional field is the content length of the data which is returned
    * in the response.  A negative value means that this value was not
    * provided in the response.  A value of 0 means that there is no content
    * provided.  A positive value gives the number of bytes in the content of
    * the response.
    **/
    contentLength: u64;

    /**
    * This optional field names the server which serviced the request.
    **/
    server:        *u8;

    /**
    * This optional field provides a string identifying the unique contents
    * of the resource identified by the request, such that the contents can
    * be assumed not to be changed if the same eTag is returned at a later
    * time decribing the same resource.  This is an MD5 sum of the contents.
    **/
    eTag:          *u8;

    /**
    * This optional field provides the last modified time, relative to the
    * Unix epoch, of the contents.  If this value is < 0, then the last
    * modified time was not provided in the response.  If this value is >= 0,
    * then the last modified date of the contents are available as a number
    * of seconds since the UNIX epoch.
    *
    **/
    lastModified:  s64;

    /**
    * This is the number of user-provided meta data associated with the
    * resource.
    **/
    metaDataCount: s32;

    /**
    * These are the meta data associated with the resource.  In each case,
    * the name will not include any S3-specific header prefixes
    * (i.e. x-amz-meta- will have been removed from the beginning), and
    * leading and trailing whitespace will have been stripped from the value.
    **/
    metaData:      *S3NameValue;
}

/**
* S3AclGrant identifies a single grant in the ACL for a bucket or object.  An
* ACL is composed of any number of grants, which specify a grantee and the
* permissions given to that grantee.  S3 does not normalize ACLs in any way,
* so a redundant ACL specification will lead to a redundant ACL stored in S3.
**/
S3AclGrant :: struct {
    /**
    * The granteeType gives the type of grantee specified by this grant.
    **/
    granteeType: S3GranteeType;

    grantee:     union {
        amazonCustomerByEmail: struct {
            /**
            * This is the email address of the Amazon Customer being granted
            * permissions by this S3AclGrant.
            **/
            emailAddress: [128] u8;
        };

        canonicalUser:         struct {
            /**
            * This is the CanonicalUser ID of the grantee
            **/
            id:          [128] u8;

            /**
            * This is the display name of the grantee
            **/
            displayName: [128] u8;
        };
    };

    /**
    * This is the S3Permission to be granted to the grantee
    **/
    permission:  S3Permission;
}

/**
* A context for working with objects within a bucket.  A bucket context holds
* all information necessary for working with a bucket, and may be used
* repeatedly over many consecutive (or simultaneous) calls into libs3 bucket
* operation functions.
**/
S3BucketContext :: struct {
    /**
    * The name of the host to connect to when making S3 requests.  If set to
    * NULL, the default S3 hostname passed in to S3_initialize will be used.
    **/
    hostName:        *u8;

    /**
    * The name of the bucket to use in the bucket context
    **/
    bucketName:      *u8;

    /**
    * The protocol to use when accessing the bucket
    **/
    protocol:        S3Protocol;

    /**
    * The URI style to use for all URIs sent to Amazon S3 while working with
    * this bucket context
    **/
    uriStyle:        S3UriStyle;

    /**
    * The Amazon Access Key ID to use for access to the bucket
    **/
    accessKeyId:     *u8;

    /**
    *  The Amazon Secret Access Key to use for access to the bucket
    **/
    secretAccessKey: *u8;
}

/**
* This is a single entry supplied to the list bucket callback by a call to
* S3_list_bucket.  It identifies a single matching key from the list
* operation.
**/
S3ListBucketContent :: struct {
    /**
    * This is the next key in the list bucket results.
    **/
    key:              *u8;

    /**
    * This is the number of seconds since UNIX epoch of the last modified
    * date of the object identified by the key.
    **/
    lastModified:     s64;

    /**
    * This gives a tag which gives a signature of the contents of the object,
    * which is the MD5 of the contents of the object.
    **/
    eTag:             *u8;

    /**
    * This is the size of the object in bytes.
    **/
    size:             u64;

    /**
    * This is the ID of the owner of the key; it is present only if access
    * permissions allow it to be viewed.
    **/
    ownerId:          *u8;

    /**
    * This is the display name of the owner of the key; it is present only if
    * access permissions allow it to be viewed.
    **/
    ownerDisplayName: *u8;
}

/**
* S3PutProperties is the set of properties that may optionally be set by the
* user when putting objects to S3.  Each field of this structure is optional
* and may or may not be present.
**/
S3PutProperties :: struct {
    /**
    * If present, this is the Content-Type that should be associated with the
    * object.  If not provided, S3 defaults to "binary/octet-stream".
    **/
    contentType:                *u8;

    /**
    * If present, this provides the MD5 signature of the contents, and is
    * used to validate the contents.  This is highly recommended by Amazon
    * but not required.  Its format is as a base64-encoded MD5 sum.
    **/
    md5:                        *u8;

    /**
    * If present, this gives a Cache-Control header string to be supplied to
    * HTTP clients which download this
    **/
    cacheControl:               *u8;

    /**
    * If present, this gives the filename to save the downloaded file to,
    * whenever the object is downloaded via a web browser.  This is only
    * relevent for objects which are intended to be shared to users via web
    * browsers and which is additionally intended to be downloaded rather
    * than viewed.
    **/
    contentDispositionFilename: *u8;

    /**
    * If present, this identifies the content encoding of the object.  This
    * is only applicable to encoded (usually, compressed) content, and only
    * relevent if the object is intended to be downloaded via a browser.
    **/
    contentEncoding:            *u8;

    /**
    * If >= 0, this gives an expiration date for the content.  This
    * information is typically only delivered to users who download the
    * content via a web browser.
    **/
    expires:                    s64;

    /**
    * This identifies the "canned ACL" that should be used for this object.
    * The default (0) gives only the owner of the object access to it.
    **/
    cannedAcl:                  S3CannedAcl;

    /**
    * This is the number of values in the metaData field.
    **/
    metaDataCount:              s32;

    /**
    * These are the meta data to pass to S3.  In each case, the name part of
    * the Name - Value pair should not include any special S3 HTTP header
    * prefix (i.e., should be of the form 'foo', NOT 'x-amz-meta-foo').
    **/
    metaData:                   *S3NameValue;
}

/**
* S3GetConditions is used for the get_object operation, and specifies
* conditions which the object must meet in order to be successfully returned.
**/
S3GetConditions :: struct {
    /**
    * The request will be processed if the Last-Modification header of the
    * object is greater than or equal to this value, specified as a number of
    * seconds since Unix epoch.  If this value is less than zero, it will not
    * be used in the conditional.
    **/
    ifModifiedSince:    s64;

    /**
    * The request will be processed if the Last-Modification header of the
    * object is less than this value, specified as a number of seconds since
    * Unix epoch.  If this value is less than zero, it will not be used in
    * the conditional.
    **/
    ifNotModifiedSince: s64;

    /**
    * If non-NULL, this gives an eTag header value which the object must
    * match in order to be returned.  Note that altough the eTag is simply an
    * MD5, this must be presented in the S3 eTag form, which typically
    * includes double-quotes.
    **/
    ifMatchETag:        *u8;

    /**
    * If non-NULL, this gives an eTag header value which the object must not
    * match in order to be returned.  Note that altough the eTag is simply an
    * MD5, this must be presented in the S3 eTag form, which typically
    * includes double-quotes.
    **/
    ifNotMatchETag:     *u8;
}

/**
* S3ErrorDetails provides detailed information describing an S3 error.  This
* is only presented when the error is an S3-generated error (i.e. one of the
* S3StatusErrorXXX values).
**/
S3ErrorDetails :: struct {
    /**
    * This is the human-readable message that Amazon supplied describing the
    * error
    **/
    message:           *u8;

    /**
    * This identifies the resource for which the error occurred
    **/
    resource:          *u8;

    /**
    * This gives human-readable further details describing the specifics of
    * this error
    **/
    furtherDetails:    *u8;

    /**
    * This gives the number of S3NameValue pairs present in the extraDetails
    * array
    **/
    extraDetailsCount: s32;

    /**
    * S3 can provide extra details in a freeform Name - Value pair format.
    * Each error can have any number of these, and this array provides these
    * additional extra details.
    **/
    extraDetails:      *S3NameValue;
}

/**
* This callback is made whenever the response properties become available for
* any request.
*
* @param properties are the properties that are available from the response
* @param callbackData is the callback data as specified when the request
*        was issued.
* @return S3StatusOK to continue processing the request, anything else to
*         immediately abort the request with a status which will be
*         passed to the S3ResponseCompleteCallback for this request.
*         Typically, this will return either S3StatusOK or
*         S3StatusAbortedByCallback.
**/
S3ResponsePropertiesCallback :: #type (properties: *S3ResponseProperties, callbackData: *void) -> S3Status #c_call;

/**
* This callback is made when the response has been completely received, or an
* error has occurred which has prematurely aborted the request, or one of the
* other user-supplied callbacks returned a value intended to abort the
* request.  This callback is always made for every request, as the very last
* callback made for that request.
*
* @param status gives the overall status of the response, indicating success
*        or failure; use S3_status_is_retryable() as a simple way to detect
*        whether or not the status indicates that the request failed but may
*        be retried.
* @param errorDetails if non-NULL, gives details as returned by the S3
*        service, describing the error
* @param callbackData is the callback data as specified when the request
*        was issued.
**/
S3ResponseCompleteCallback :: #type (status: S3Status, errorDetails: *S3ErrorDetails, callbackData: *void) -> void #c_call;

/**
* This callback is made for each bucket resulting from a list service
* operation.
*
* @param ownerId is the ID of the owner of the bucket
* @param ownerDisplayName is the owner display name of the owner of the bucket
* @param bucketName is the name of the bucket
* @param creationDateSeconds if < 0 indicates that no creation date was
*        supplied for the bucket; if >= 0 indicates the number of seconds
*        since UNIX Epoch of the creation date of the bucket
* @param callbackData is the callback data as specified when the request
*        was issued.
* @return S3StatusOK to continue processing the request, anything else to
*         immediately abort the request with a status which will be
*         passed to the S3ResponseCompleteCallback for this request.
*         Typically, this will return either S3StatusOK or
*         S3StatusAbortedByCallback.
**/
S3ListServiceCallback :: #type (ownerId: *u8, ownerDisplayName: *u8, bucketName: *u8, creationDateSeconds: s64, callbackData: *void) -> S3Status #c_call;

/**
* This callback is made repeatedly as a list bucket operation progresses.
* The contents reported via this callback are only reported once per list
* bucket operation, but multiple calls to this callback may be necessary to
* report all items resulting from the list bucket operation.
*
* @param isTruncated is true if the list bucket request was truncated by the
*        S3 service, in which case the remainder of the list may be obtained
*        by querying again using the Marker parameter to start the query
*        after this set of results
* @param nextMarker if present, gives the largest (alphabetically) key
*        returned in the response, which, if isTruncated is true, may be used
*        as the marker in a subsequent list buckets operation to continue
*        listing
* @param contentsCount is the number of ListBucketContent structures in the
*        contents parameter
* @param contents is an array of ListBucketContent structures, each one
*        describing an object in the bucket
* @param commonPrefixesCount is the number of common prefixes strings in the
*        commonPrefixes parameter
* @param commonPrefixes is an array of strings, each specifing one of the
*        common prefixes as returned by S3
* @param callbackData is the callback data as specified when the request
*        was issued.
* @return S3StatusOK to continue processing the request, anything else to
*         immediately abort the request with a status which will be
*         passed to the S3ResponseCompleteCallback for this request.
*         Typically, this will return either S3StatusOK or
*         S3StatusAbortedByCallback.
**/
S3ListBucketCallback :: #type (isTruncated: s32, nextMarker: *u8, contentsCount: s32, contents: *S3ListBucketContent, commonPrefixesCount: s32, commonPrefixes: **u8, callbackData: *void) -> S3Status #c_call;

/**
* This callback is made during a put object operation, to obtain the next
* chunk of data to put to the S3 service as the contents of the object.  This
* callback is made repeatedly, each time acquiring the next chunk of data to
* write to the service, until a negative or 0 value is returned.
*
* @param bufferSize gives the maximum number of bytes that may be written
*        into the buffer parameter by this callback
* @param buffer gives the buffer to fill with at most bufferSize bytes of
*        data as the next chunk of data to send to S3 as the contents of this
*        object
* @param callbackData is the callback data as specified when the request
*        was issued.
* @return < 0 to abort the request with the S3StatusAbortedByCallback, which
*        will be pased to the response complete callback for this request, or
*        0 to indicate the end of data, or > 0 to identify the number of
*        bytes that were written into the buffer by this callback
**/
S3PutObjectDataCallback :: #type (bufferSize: s32, buffer: *u8, callbackData: *void) -> s32 #c_call;

/**
* This callback is made during a get object operation, to provide the next
* chunk of data available from the S3 service constituting the contents of
* the object being fetched.  This callback is made repeatedly, each time
* providing the next chunk of data read, until the complete object contents
* have been passed through the callback in this way, or the callback
* returns an error status.
*
* @param bufferSize gives the number of bytes in buffer
* @param buffer is the data being passed into the callback
* @param callbackData is the callback data as specified when the request
*        was issued.
* @return S3StatusOK to continue processing the request, anything else to
*         immediately abort the request with a status which will be
*         passed to the S3ResponseCompleteCallback for this request.
*         Typically, this will return either S3StatusOK or
*         S3StatusAbortedByCallback.
**/
S3GetObjectDataCallback :: #type (bufferSize: s32, buffer: *u8, callbackData: *void) -> S3Status #c_call;

/**
* An S3ResponseHandler defines the callbacks which are made for any
* request.
**/
S3ResponseHandler :: struct {
    /**
    * The propertiesCallback is made when the response properties have
    * successfully been returned from S3.  This function may not be called
    * if the response properties were not successfully returned from S3.
    **/
    propertiesCallback: S3ResponsePropertiesCallback;

    /**
    * The completeCallback is always called for every request made to S3,
    * regardless of the outcome of the request.  It provides the status of
    * the request upon its completion, as well as extra error details in the
    * event of an S3 error.
    **/
    completeCallback:   S3ResponseCompleteCallback;
}

/**
* An S3ListServiceHandler defines the callbacks which are made for
* list_service requests.
**/
S3ListServiceHandler :: struct {
    /**
    * responseHandler provides the properties and complete callback
    **/
    responseHandler:     S3ResponseHandler;

    /**
    * The listServiceCallback is called as items are reported back from S3 as
    * responses to the request
    **/
    listServiceCallback: S3ListServiceCallback;
}

/**
* An S3ListBucketHandler defines the callbacks which are made for
* list_bucket requests.
**/
S3ListBucketHandler :: struct {
    /**
    * responseHandler provides the properties and complete callback
    **/
    responseHandler:    S3ResponseHandler;

    /**
    * The listBucketCallback is called as items are reported back from S3 as
    * responses to the request.  This may be called more than one time per
    * list bucket request, each time providing more items from the list
    * operation.
    **/
    listBucketCallback: S3ListBucketCallback;
}

/**
* An S3PutObjectHandler defines the callbacks which are made for
* put_object requests.
**/
S3PutObjectHandler :: struct {
    /**
    * responseHandler provides the properties and complete callback
    **/
    responseHandler:       S3ResponseHandler;

    /**
    * The putObjectDataCallback is called to acquire data to send to S3 as
    * the contents of the put_object request.  It is made repeatedly until it
    * returns a negative number (indicating that the request should be
    * aborted), or 0 (indicating that all data has been supplied).
    **/
    putObjectDataCallback: S3PutObjectDataCallback;
}

/**
* An S3GetObjectHandler defines the callbacks which are made for
* get_object requests.
**/
S3GetObjectHandler :: struct {
    /**
    * responseHandler provides the properties and complete callback
    **/
    responseHandler:       S3ResponseHandler;

    /**
    * The getObjectDataCallback is called as data is read from S3 as the
    * contents of the object being read in the get_object request.  It is
    * called repeatedly until there is no more data provided in the request,
    * or until the callback returns an error status indicating that the
    * request should be aborted.
    **/
    getObjectDataCallback: S3GetObjectDataCallback;
}

/**
* Initializes libs3 for use.  This function must be called before any other
* libs3 function is called.  It may be called multiple times, with the same
* effect as calling it once, as long as S3_deinitialize() is called an
* equal number of times when the program has finished.  This function is NOT
* thread-safe and must only be called by one thread at a time.
*
* @param userAgentInfo is a string that will be included in the User-Agent
*        header of every request made to the S3 service.  You may provide
*        NULL or the empty string if you don't care about this.  The value
*        will not be copied by this function and must remain unaltered by the
*        caller until S3_deinitialize() is called.
* @param flags is a bitmask of some combination of S3_INIT_XXX flag, or
*        S3_INIT_ALL, indicating which of the libraries that libs3 depends
*        upon should be initialized by S3_initialize().  Only if your program
*        initializes one of these dependency libraries itself should anything
*        other than S3_INIT_ALL be passed in for this bitmask.
*
*        You should pass S3_INIT_WINSOCK if and only if your application does
*        not initialize winsock elsewhere.  On non-Microsoft Windows
*        platforms it has no effect.
*
*        As a convenience, the macro S3_INIT_ALL is provided, which will do
*        all necessary initialization; however, be warned that things may
*        break if your application re-initializes the dependent libraries
*        later.
* @param defaultS3Hostname is a string the specifies the default S3 server
*        hostname to use when making S3 requests; this value is used
*        whenever the hostName of an S3BucketContext is NULL.  If NULL is
*        passed here then the default of S3_DEFAULT_HOSTNAME will be used.
* @return One of:
*         S3StatusOK on success
*         S3StatusUriTooLong if the defaultS3HostName is longer than
*             S3_MAX_HOSTNAME_SIZE
*         S3StatusInternalError if dependent libraries could not be
*             initialized
*         S3StatusOutOfMemory on failure due to out of memory
**/
S3_initialize :: (userAgentInfo: *u8, flags: s32, defaultS3HostName: *u8) -> S3Status #foreign libs3;

/**
* Must be called once per program for each call to libs3_initialize().  After
* this call is complete, no libs3 function may be called except
* S3_initialize().
**/
S3_deinitialize :: (__args: ..Any) -> void #foreign libs3;

/**
* Returns a string with the textual name of an S3Status code
*
* @param status is S3Status code for which the textual name will be returned
* @return a string with the textual name of an S3Status code
**/
S3_get_status_name :: (status: S3Status) -> *u8 #foreign libs3;

/**
* This function may be used to validate an S3 bucket name as being in the
* correct form for use with the S3 service.  Amazon S3 limits the allowed
* characters in S3 bucket names, as well as imposing some additional rules on
* the length of bucket names and their structure.  There are actually two
* limits; one for bucket names used only in path-style URIs, and a more
* strict limit used for bucket names used in virtual-host-style URIs.  It is
* advisable to use only bucket names which meet the more strict requirements
* regardless of how the bucket expected to be used.
*
* This method does NOT validate that the bucket is available for use in the
* S3 service, so the return value of this function cannot be used to decide
* whether or not a bucket with the give name already exists in Amazon S3 or
* is accessible by the caller.  It merely validates that the bucket name is
* valid for use with S3.
*
* @param bucketName is the bucket name to validate
* @param uriStyle gives the URI style to validate the bucket name against.
*        It is advisable to always use S3UriStyleVirtuallHost.
* @return One of:
*         S3StatusOK if the bucket name was validates successfully
*         S3StatusInvalidBucketNameTooLong if the bucket name exceeded the
*             length limitation for the URI style, which is 255 bytes for
*             path style URIs and 63 bytes for virtual host type URIs
*         S3StatusInvalidBucketNameTooShort if the bucket name is less than
*             3 characters
*         S3StatusInvalidBucketNameFirstCharacter if the bucket name as an
*             invalid first character, which is anything other than
*             an alphanumeric character
*         S3StatusInvalidBucketNameCharacterSequence if the bucket name
*             includes an invalid character sequence, which for virtual host
*             style buckets is ".-" or "-."
*         S3StatusInvalidBucketNameCharacter if the bucket name includes an
*             invalid character, which is anything other than alphanumeric,
*             '-', '.', or for path style URIs only, '_'.
*         S3StatusInvalidBucketNameDotQuadNotation if the bucket name is in
*             dot-quad notation, i.e. the form of an IP address, which is
*             not allowed by Amazon S3.
**/
S3_validate_bucket_name :: (bucketName: *u8, uriStyle: S3UriStyle) -> S3Status #foreign libs3;

/**
* Converts an XML representation of an ACL to a libs3 structured
* representation.  This method is not strictly necessary for working with
* ACLs using libs3, but may be convenient for users of the library who read
* ACLs from elsewhere in XML format and need to use these ACLs with libs3.
*
* @param aclXml is the XML representation of the ACL.  This must be a
*        zero-terminated character string.
* @param ownerId will be filled in with the Owner ID specified in the XML.
*        At most MAX_GRANTEE_USER_ID_SIZE bytes will be stored at this
*        location.
* @param ownerDisplayName will be filled in with the Owner Display Name
*        specified in the XML.  At most MAX_GRANTEE_DISPLAY_NAME_SIZE bytes
*        will be stored at this location.
* @param aclGrantCountReturn returns the number of S3AclGrant structures
*        returned in the aclGrantsReturned array
* @param aclGrants must be passed in as an array of at least S3_ACL_MAXCOUNT
*        structures, and on return from this function, the first
*        aclGrantCountReturn structures will be filled in with the ACLs
*        represented by the input XML.
* @return One of:
*         S3StatusOK on successful conversion of the ACL
*         S3StatusInternalError on internal error representing a bug in the
*             libs3 library
*         S3StatusXmlParseFailure if the XML document was malformed
**/
S3_convert_acl :: (aclXml: *u8, ownerId: *u8, ownerDisplayName: *u8, aclGrantCountReturn: *s32, aclGrants: *S3AclGrant) -> S3Status #foreign libs3;

/**
* Returns nonzero if the status indicates that the request should be
* immediately retried, because the status indicates an error of a nature that
* is likely due to transient conditions on the local system or S3, such as
* network failures, or internal retryable errors reported by S3.  Returns
* zero otherwise.
*
* @param status is the status to evaluate
* @return nonzero if the status indicates a retryable error, 0 otherwise
**/
S3_status_is_retryable :: (status: S3Status) -> s32 #foreign libs3;

/**
* An S3RequestContext allows muliple requests to be serviced by the same
* thread simultaneously.  It is an optional parameter to all libs3 request
* functions, and if provided, the request is managed by the S3RequestContext;
* if not, the request is handled synchronously and is complete when the libs3
* request function has returned.
*
* @param requestContextReturn returns the newly-created S3RequestContext
*        structure, which if successfully returned, must be destroyed via a
*        call to S3_destroy_request_context when it is no longer needed.  If
*        an error status is returned from this function, then
*        requestContextReturn will not have been filled in, and
*        S3_destroy_request_context should not be called on it
* @return One of:
*         S3StatusOK if the request context was successfully created
*         S3StatusOutOfMemory if the request context could not be created due
*             to an out of memory error
**/
S3_create_request_context :: (requestContextReturn: **S3RequestContext) -> S3Status #foreign libs3;

/**
* Destroys an S3RequestContext which was created with
* S3_create_request_context.  Any requests which are currently being
* processed by the S3RequestContext will immediately be aborted and their
* request completed callbacks made with the status S3StatusInterrupted.
*
* @param requestContext is the S3RequestContext to destroy
**/
S3_destroy_request_context :: (requestContext: *S3RequestContext) -> void #foreign libs3;

/**
* Runs the S3RequestContext until all requests within it have completed,
* or until an error occurs.
*
* @param requestContext is the S3RequestContext to run until all requests
*            within it have completed or until an error occurs
* @return One of:
*         S3Status if all requests were successfully run to completion
*         S3StatusInternalError if an internal error prevented the
*             S3RequestContext from running one or more requests
*         S3StatusOutOfMemory if requests could not be run to completion
*             due to an out of memory error
**/
S3_runall_request_context :: (requestContext: *S3RequestContext) -> S3Status #foreign libs3;

/**
* Does some processing of requests within the S3RequestContext.  One or more
* requests may have callbacks made on them and may complete.  This function
* processes any requests which have immediately available I/O, and will not
* block waiting for I/O on any request.  This function would normally be used
* with S3_get_request_context_fdsets.
*
* @param requestContext is the S3RequestContext to process
* @param requestsRemainingReturn returns the number of requests remaining
*            and not yet completed within the S3RequestContext after this
*            function returns.
* @return One of:
*         S3StatusOK if request processing proceeded without error
*         S3StatusInternalError if an internal error prevented the
*             S3RequestContext from running one or more requests
*         S3StatusOutOfMemory if requests could not be processed due to
*             an out of memory error
**/
S3_runonce_request_context :: (requestContext: *S3RequestContext, requestsRemainingReturn: *s32) -> S3Status #foreign libs3;

/**
* This function, in conjunction allows callers to manually manage a set of
* requests using an S3RequestContext.  This function returns the set of file
* descriptors which the caller can watch (typically using select()), along
* with any other file descriptors of interest to the caller, and using
* whatever timeout (if any) the caller wishes, until one or more file
* descriptors in the returned sets become ready for I/O, at which point
* S3_runonce_request_context can be called to process requests with available
* I/O.
*
* @param requestContext is the S3RequestContext to get fd_sets from
* @param readFdSet is a pointer to an fd_set which will have all file
*        descriptors to watch for read events for the requests in the
*        S3RequestContext set into it upon return.  Should be zero'd out
*        (using FD_ZERO) before being passed into this function.
* @param writeFdSet is a pointer to an fd_set which will have all file
*        descriptors to watch for write events for the requests in the
*        S3RequestContext set into it upon return.  Should be zero'd out
*        (using FD_ZERO) before being passed into this function.
* @param exceptFdSet is a pointer to an fd_set which will have all file
*        descriptors to watch for exception events for the requests in the
*        S3RequestContext set into it upon return.  Should be zero'd out
*        (using FD_ZERO) before being passed into this function.
* @param maxFd returns the highest file descriptor set into any of the
*        fd_sets, or -1 if no file descriptors were set
* @return One of:
*         S3StatusOK if all fd_sets were successfully set
*         S3StatusInternalError if an internal error prevented this function
*             from completing successfully
**/
S3_get_request_context_fdsets :: (requestContext: *S3RequestContext, readFdSet: *fd_set, writeFdSet: *fd_set, exceptFdSet: *fd_set, maxFd: *s32) -> S3Status #foreign libs3;

/**
* This function returns the maximum number of milliseconds that the caller of
* S3_runonce_request_context should wait on the fdsets obtained via a call to
* S3_get_request_context_fdsets.  In other words, this is essentially the
* select() timeout that needs to be used (shorter values are OK, but no
* longer than this) to ensure that internal timeout code of libs3 can work
* properly.  This function should be called right before select() each time
* select() on the request_context fdsets are to be performed by the libs3
* user.
*
* @param requestContext is the S3RequestContext to get the timeout from
* @return the maximum number of milliseconds to select() on fdsets.  Callers
*         could wait a shorter time if they wish, but not longer.
**/
S3_get_request_context_timeout :: (requestContext: *S3RequestContext) -> s64 #foreign libs3;

/**
* Generates an HTTP authenticated query string, which may then be used by
* a browser (or other web client) to issue the request.  The request is
* implicitly a GET request; Amazon S3 is documented to only support this type
* of authenticated query string request.
*
* @param buffer is the output buffer for the authenticated query string.
*        It must be at least S3_MAX_AUTHENTICATED_QUERY_STRING_SIZE bytes in
*        length.
* @param bucketContext gives the bucket and associated parameters for the
*        request to generate.
* @param key gives the key which the authenticated request will GET.
* @param expires gives the number of seconds since Unix epoch for the
*        expiration date of the request; after this time, the request will
*        no longer be valid.  If this value is negative, the largest
*        expiration date possible is used (currently, Jan 19, 2038).
* @param resource gives a sub-resource to be fetched for the request, or NULL
*        for none.  This should be of the form "?<resource>", i.e.
*        "?torrent".
* @return One of:
*         S3StatusUriTooLong if, due to an internal error, the generated URI
*             is longer than S3_MAX_AUTHENTICATED_QUERY_STRING_SIZE bytes in
*             length and thus will not fit into the supplied buffer
*         S3StatusOK on success
**/
S3_generate_authenticated_query_string :: (buffer: *u8, bucketContext: *S3BucketContext, key: *u8, expires: s64, resource: *u8) -> S3Status #foreign libs3;

/**
* Lists all S3 buckets belonging to the access key id.
*
* @param protocol gives the protocol to use for this request
* @param accessKeyId gives the Amazon Access Key ID for which to list owned
*        buckets
* @param secretAccessKey gives the Amazon Secret Access Key for which to list
*        owned buckets
* @param hostName is the S3 host name to use; if NULL is passed in, the
*        default S3 host as provided to S3_initialize() will be used.
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_list_service :: (protocol: S3Protocol, accessKeyId: *u8, secretAccessKey: *u8, hostName: *u8, requestContext: *S3RequestContext, handler: *S3ListServiceHandler, callbackData: *void) -> void #foreign libs3;

/**
* Tests the existence of an S3 bucket, additionally returning the bucket's
* location if it exists and is accessible.
*
* @param protocol gives the protocol to use for this request
* @param uriStyle gives the URI style to use for this request
* @param accessKeyId gives the Amazon Access Key ID for which to list owned
*        buckets
* @param secretAccessKey gives the Amazon Secret Access Key for which to list
*        owned buckets
* @param hostName is the S3 host name to use; if NULL is passed in, the
*        default S3 host as provided to S3_initialize() will be used.
* @param bucketName is the bucket name to test
* @param locationConstraintReturnSize gives the number of bytes in the
*        locationConstraintReturn parameter
* @param locationConstraintReturn provides the location into which to write
*        the name of the location constraint naming the geographic location
*        of the S3 bucket.  This must have at least as many characters in it
*        as specified by locationConstraintReturn, and should start out
*        NULL-terminated.  On successful completion of this request, this
*        will be set to the name of the geographic location of S3 bucket, or
*        will be left as a zero-length string if no location was available.
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_test_bucket :: (protocol: S3Protocol, uriStyle: S3UriStyle, accessKeyId: *u8, secretAccessKey: *u8, hostName: *u8, bucketName: *u8, locationConstraintReturnSize: s32, locationConstraintReturn: *u8, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Creates a new bucket.
*
* @param protocol gives the protocol to use for this request
* @param accessKeyId gives the Amazon Access Key ID for which to list owned
*        buckets
* @param secretAccessKey gives the Amazon Secret Access Key for which to list
*        owned buckets
* @param hostName is the S3 host name to use; if NULL is passed in, the
*        default S3 host as provided to S3_initialize() will be used.
* @param bucketName is the name of the bucket to be created
* @param cannedAcl gives the "REST canned ACL" to use for the created bucket
* @param locationConstraint if non-NULL, gives the geographic location for
*        the bucket to create.
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_create_bucket :: (protocol: S3Protocol, accessKeyId: *u8, secretAccessKey: *u8, hostName: *u8, bucketName: *u8, cannedAcl: S3CannedAcl, locationConstraint: *u8, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Deletes a bucket.  The bucket must be empty, or the status
* S3StatusErrorBucketNotEmpty will result.
*
* @param protocol gives the protocol to use for this request
* @param uriStyle gives the URI style to use for this request
* @param accessKeyId gives the Amazon Access Key ID for which to list owned
*        buckets
* @param secretAccessKey gives the Amazon Secret Access Key for which to list
*        owned buckets
* @param hostName is the S3 host name to use; if NULL is passed in, the
*        default S3 host as provided to S3_initialize() will be used.
* @param bucketName is the name of the bucket to be deleted
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_delete_bucket :: (protocol: S3Protocol, uriStyle: S3UriStyle, accessKeyId: *u8, secretAccessKey: *u8, hostName: *u8, bucketName: *u8, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Lists keys within a bucket.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request
* @param prefix if present, gives a prefix for matching keys
* @param marker if present, only keys occuring after this value will be
*        listed
* @param delimiter if present, causes keys that contain the same string
*        between the prefix and the first occurrence of the delimiter to be
*        rolled up into a single result element
* @param maxkeys is the maximum number of keys to return
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_list_bucket :: (bucketContext: *S3BucketContext, prefix: *u8, marker: *u8, 
delimiter: *u8, maxkeys: s32, requestContext: *S3RequestContext, handler: *S3ListBucketHandler, callbackData: *void) -> void #foreign libs3;

/**
* Puts object data to S3.  This overwrites any existing object at that key;
* note that S3 currently only supports full-object upload.  The data to
* upload will be acquired by calling the handler's putObjectDataCallback.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request
* @param key is the key of the object to put to
* @param contentLength is required and gives the total number of bytes that
*        will be put
* @param putProperties optionally provides additional properties to apply to
*        the object that is being put to
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_put_object :: (bucketContext: *S3BucketContext, key: *u8, contentLength: u64, putProperties: *S3PutProperties, requestContext: *S3RequestContext, handler: *S3PutObjectHandler, callbackData: *void) -> void #foreign libs3;

/**
* Copies an object from one location to another.  The object may be copied
* back to itself, which is useful for replacing metadata without changing
* the object.
*
* @param bucketContext gives the source bucket and associated parameters for
*        this request
* @param key is the source key
* @param destinationBucket gives the destination bucket into which to copy
*        the object.  If NULL, the source bucket will be used.
* @param destinationKey gives the destination key into which to copy the
*        object.  If NULL, the source key will be used.
* @param putProperties optionally provides properties to apply to the object
*        that is being put to.  If not supplied (i.e. NULL is passed in),
*        then the copied object will retain the metadata of the copied
*        object.
* @param lastModifiedReturn returns the last modified date of the copied
*        object
* @param eTagReturnSize specifies the number of bytes provided in the
*        eTagReturn buffer
* @param eTagReturn is a buffer into which the resulting eTag of the copied
*        object will be written
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_copy_object :: (bucketContext: *S3BucketContext, key: *u8, destinationBucket: *u8, destinationKey: *u8, putProperties: *S3PutProperties, lastModifiedReturn: *s64, eTagReturnSize: s32, eTagReturn: *u8, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Gets an object from S3.  The contents of the object are returned in the
* handler's getObjectDataCallback.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request
* @param key is the key of the object to get
* @param getConditions if non-NULL, gives a set of conditions which must be
*        met in order for the request to succeed
* @param startByte gives the start byte for the byte range of the contents
*        to be returned
* @param byteCount gives the number of bytes to return; a value of 0
*        indicates that the contents up to the end should be returned
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_get_object :: (bucketContext: *S3BucketContext, key: *u8, getConditions: *S3GetConditions, startByte: u64, byteCount: u64, requestContext: *S3RequestContext, handler: *S3GetObjectHandler, callbackData: *void) -> void #foreign libs3;

/**
* Gets the response properties for the object, but not the object contents.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request
* @param key is the key of the object to get the properties of
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_head_object :: (bucketContext: *S3BucketContext, key: *u8, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Deletes an object from S3.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request
* @param key is the key of the object to delete
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_delete_object :: (bucketContext: *S3BucketContext, key: *u8, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Gets the ACL for the given bucket or object.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request
* @param key is the key of the object to get the ACL of; or NULL to get the
*        ACL of the bucket
* @param ownerId must be supplied as a buffer of at least
*        S3_MAX_GRANTEE_USER_ID_SIZE bytes, and will be filled in with the
*        owner ID of the object/bucket
* @param ownerDisplayName must be supplied as a buffer of at least
*        S3_MAX_GRANTEE_DISPLAY_NAME_SIZE bytes, and will be filled in with
*        the display name of the object/bucket
* @param aclGrantCountReturn returns the number of S3AclGrant structures
*        returned in the aclGrants parameter
* @param aclGrants must be passed in as an array of at least
*        S3_MAX_ACL_GRANT_COUNT S3AclGrant structures, which will be filled
*        in with the grant information for the ACL
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_get_acl :: (bucketContext: *S3BucketContext, key: *u8, ownerId: *u8, ownerDisplayName: *u8, aclGrantCountReturn: *s32, aclGrants: *S3AclGrant, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Sets the ACL for the given bucket or object.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request
* @param key is the key of the object to set the ACL for; or NULL to set the
*        ACL for the bucket
* @param ownerId is the owner ID of the object/bucket.  Unfortunately, S3
*        requires this to be valid and thus it must have been fetched by a
*        previous S3 request, such as a list_buckets request.
* @param ownerDisplayName is the owner display name of the object/bucket.
*        Unfortunately, S3 requires this to be valid and thus it must have
*        been fetched by a previous S3 request, such as a list_buckets
*        request.
* @param aclGrantCount is the number of ACL grants to set for the
*        object/bucket
* @param aclGrants are the ACL grants to set for the object/bucket
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_set_acl :: (bucketContext: *S3BucketContext, key: *u8, ownerId: *u8, ownerDisplayName: *u8, aclGrantCount: s32, aclGrants: *S3AclGrant, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Gets the service access logging settings for a bucket.  The service access
* logging settings specify whether or not the S3 service will write service
* access logs for requests made for the given bucket, and if so, several
* settings controlling how these logs will be written.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request; this is the bucket for which service access logging is
*        being requested
* @param targetBucketReturn must be passed in as a buffer of at least
*        (S3_MAX_BUCKET_NAME_SIZE + 1) bytes in length, and will be filled
*        in with the target bucket name for access logging for the given
*        bucket, which is the bucket into which access logs for the specified
*        bucket will be written.  This is returned as an empty string if
*        service access logging is not enabled for the given bucket.
* @param targetPrefixReturn must be passed in as a buffer of at least
*        (S3_MAX_KEY_SIZE + 1) bytes in length, and will be filled in
*        with the key prefix for server access logs for the given bucket,
*        or the empty string if no such prefix is specified.
* @param aclGrantCountReturn returns the number of ACL grants that are
*        associated with the server access logging for the given bucket.
* @param aclGrants must be passed in as an array of at least
*        S3_MAX_ACL_GRANT_COUNT S3AclGrant structures, and these will be
*        filled in with the target grants associated with the server access
*        logging for the given bucket, whose number is returned in the
*        aclGrantCountReturn parameter.  These grants will be applied to the
*        ACL of any server access logging log files generated by the S3
*        service for the given bucket.
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_get_server_access_logging :: (bucketContext: *S3BucketContext, targetBucketReturn: *u8, targetPrefixReturn: *u8, aclGrantCountReturn: *s32, aclGrants: *S3AclGrant, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

/**
* Sets the service access logging settings for a bucket.  The service access
* logging settings specify whether or not the S3 service will write service
* access logs for requests made for the given bucket, and if so, several
* settings controlling how these logs will be written.
*
* @param bucketContext gives the bucket and associated parameters for this
*        request; this is the bucket for which service access logging is
*        being set
* @param targetBucket gives the target bucket name for access logging for the
*        given bucket, which is the bucket into which access logs for the
*        specified bucket will be written.
* @param targetPrefix is an option parameter which specifies the key prefix
*        for server access logs for the given bucket, or NULL if no such
*        prefix is to be used.
* @param aclGrantCount specifies the number of ACL grants that are to be
*        associated with the server access logging for the given bucket.
* @param aclGrants is as an array of S3AclGrant structures, whose number is
*        given by the aclGrantCount parameter.  These grants will be applied
*        to the ACL of any server access logging log files generated by the
*        S3 service for the given bucket.
* @param requestContext if non-NULL, gives the S3RequestContext to add this
*        request to, and does not perform the request immediately.  If NULL,
*        performs the request immediately and synchronously.
* @param handler gives the callbacks to call as the request is processed and
*        completed
* @param callbackData will be passed in as the callbackData parameter to
*        all callbacks for this request
**/
S3_set_server_access_logging :: (bucketContext: *S3BucketContext, targetBucket: *u8, targetPrefix: *u8, aclGrantCount: s32, aclGrants: *S3AclGrant, requestContext: *S3RequestContext, handler: *S3ResponseHandler, callbackData: *void) -> void #foreign libs3;

#scope_file

libs3 :: #library "libs3";
