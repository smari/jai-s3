# S3 Library

This is a Jai wrapper for [libs3](https://github.com/ceph/libs3).

## Usage

Clone this repository to a folder named `S3` in your Jai library directory.

First, you will need to obtain and build `libs3`:
```
git clone https://github.com/ceph/libs3.git
```

(While we depend on `libs3`, for license compatability reasons we don't include it in this distribution.)

Next, copy `libs3.so.trunk0` from the build folder into the base directory of this library, and symlink it to `libs3.so`.

Now you should be able to build the test program. You'll want to set the constants at the top first though...

```
jai test.jai -import_dir ..
```

You can use the library with a simple import:

```
#import "S3";
```


## Functions

### Utilities
Defining a connection. This does not actually connect to anything, just provides you with a convenient data struct you can carry around.

```
S3_make_connection :: (host: string, access_key: string, secret_key: string, protocol: S3Protocol = .S3ProtocolHTTP, uri_style: S3UriStyle = .S3UriStylePath) -> S3ConnectionInfo
```

Get a bucket context. This doesn't actually get anything, just provides you with a bucket context struct which some functions require.

```
S3_get_bucket :: (conn: S3ConnectionInfo, bucket_name: string) -> S3BucketContext;
```

### List buckets

List buckets. This will return an array of S3Buckets. Free up that array afterwards with `S3_free_list`.

```
S3_list_buckets :: (conn: S3ConnectionInfo) -> [..]S3Bucket;
```

### List bucket contents

List the contents of a bucket. Returns an array of S3Objects. Free up that array afterwards with `S3_free_list`.
Note that there are two version of this. One takes an `S3BucketContext`. If you're listing multiple buckets or
using the bucket a lot, this will be faster, since the other version simply contstructs such a context and passes
it along.

```
S3_list_bucket :: (ctx: S3BucketContext) -> [..]S3Object;
S3_list_bucket :: (conn: S3ConnectionInfo, bucket_name: string) -> [..]S3Object;
```

### Get Object Contents

Get an object's contents. There are two general places for the object contents to go: a `File` or a `string` buffer.

Note that there are two version of each of those, where one takes an `S3BucketContext`. If you're listing multiple buckets or
using the bucket a lot, this will be faster, since the other version simply contstructs such a context and passes
it along.

```
S3_get_object_to_buffer :: (ctx: S3BucketContext, key: string) -> string;
S3_get_object_to_buffer :: (conn: S3ConnectionInfo, bucket_name: string, key: string) -> string;
S3_get_object_to_file :: (ctx: S3BucketContext, key: string, file: File);
S3_get_object_to_file :: (conn: S3ConnectionInfo, bucket_name: string, key: string, file: File);
```

### Cleanup functions

Free a connection info struct:
```
S3_free_connection :: (s: S3ConnectionInfo);
```

Free lists of `S3Object` or `S3Bucket`.
```
S3_free_list :: (list: [..]S3Object);
S3_free_list :: (list: [..]S3Bucket);
```

## Author

Smári McCarthy <smari@ecosophy.is>

## Licence

Copyright 2023 Ecosophy <info@ecosophy.is>

Released under the terms of the [Apache 2.0 License](https://www.apache.org/licenses/LICENSE-2.0).
