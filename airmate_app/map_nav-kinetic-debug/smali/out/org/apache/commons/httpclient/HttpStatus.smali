.class public Lorg/apache/commons/httpclient/HttpStatus;
.super Ljava/lang/Object;
.source "HttpStatus.java"


# static fields
.field private static final REASON_PHRASES:[[Ljava/lang/String;

.field public static final SC_ACCEPTED:I = 0xca

.field public static final SC_BAD_GATEWAY:I = 0x1f6

.field public static final SC_BAD_REQUEST:I = 0x190

.field public static final SC_CONFLICT:I = 0x199

.field public static final SC_CONTINUE:I = 0x64

.field public static final SC_CREATED:I = 0xc9

.field public static final SC_EXPECTATION_FAILED:I = 0x1a1

.field public static final SC_FAILED_DEPENDENCY:I = 0x1a8

.field public static final SC_FORBIDDEN:I = 0x193

.field public static final SC_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final SC_GONE:I = 0x19a

.field public static final SC_HTTP_VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final SC_INSUFFICIENT_SPACE_ON_RESOURCE:I = 0x1a3

.field public static final SC_INSUFFICIENT_STORAGE:I = 0x1fb

.field public static final SC_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final SC_LENGTH_REQUIRED:I = 0x19b

.field public static final SC_LOCKED:I = 0x1a7

.field public static final SC_METHOD_FAILURE:I = 0x1a4

.field public static final SC_METHOD_NOT_ALLOWED:I = 0x195

.field public static final SC_MOVED_PERMANENTLY:I = 0x12d

.field public static final SC_MOVED_TEMPORARILY:I = 0x12e

.field public static final SC_MULTIPLE_CHOICES:I = 0x12c

.field public static final SC_MULTI_STATUS:I = 0xcf

.field public static final SC_NON_AUTHORITATIVE_INFORMATION:I = 0xcb

.field public static final SC_NOT_ACCEPTABLE:I = 0x196

.field public static final SC_NOT_FOUND:I = 0x194

.field public static final SC_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SC_NOT_MODIFIED:I = 0x130

.field public static final SC_NO_CONTENT:I = 0xcc

.field public static final SC_OK:I = 0xc8

.field public static final SC_PARTIAL_CONTENT:I = 0xce

.field public static final SC_PAYMENT_REQUIRED:I = 0x192

.field public static final SC_PRECONDITION_FAILED:I = 0x19c

.field public static final SC_PROCESSING:I = 0x66

.field public static final SC_PROXY_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final SC_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final SC_REQUEST_TIMEOUT:I = 0x198

.field public static final SC_REQUEST_TOO_LONG:I = 0x19d

.field public static final SC_REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final SC_RESET_CONTENT:I = 0xcd

.field public static final SC_SEE_OTHER:I = 0x12f

.field public static final SC_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SC_SWITCHING_PROTOCOLS:I = 0x65

.field public static final SC_TEMPORARY_REDIRECT:I = 0x133

.field public static final SC_UNAUTHORIZED:I = 0x191

.field public static final SC_UNPROCESSABLE_ENTITY:I = 0x1a6

.field public static final SC_UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final SC_USE_PROXY:I = 0x131


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-array v3, v2, [Ljava/lang/String;

    aput-object v3, v0, v1

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    .line 247
    const-string v0, "OK"

    const/16 v1, 0xc8

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 248
    const-string v0, "Created"

    const/16 v1, 0xc9

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 249
    const-string v0, "Accepted"

    const/16 v1, 0xca

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 250
    const-string v0, "No Content"

    const/16 v1, 0xcc

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 251
    const-string v0, "Moved Permanently"

    const/16 v1, 0x12d

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 252
    const-string v0, "Moved Temporarily"

    const/16 v1, 0x12e

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 253
    const-string v0, "Not Modified"

    const/16 v1, 0x130

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 254
    const-string v0, "Bad Request"

    const/16 v1, 0x190

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 255
    const-string v0, "Unauthorized"

    const/16 v1, 0x191

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 256
    const-string v0, "Forbidden"

    const/16 v1, 0x193

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 257
    const-string v0, "Not Found"

    const/16 v1, 0x194

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 258
    const-string v0, "Internal Server Error"

    const/16 v1, 0x1f4

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 259
    const-string v0, "Not Implemented"

    const/16 v1, 0x1f5

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 260
    const-string v0, "Bad Gateway"

    const/16 v1, 0x1f6

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 261
    const-string v0, "Service Unavailable"

    const/16 v1, 0x1f7

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 264
    const-string v0, "Continue"

    const/16 v1, 0x64

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 265
    const-string v0, "Temporary Redirect"

    const/16 v1, 0x133

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 266
    const-string v0, "Method Not Allowed"

    const/16 v1, 0x195

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 267
    const-string v0, "Conflict"

    const/16 v1, 0x199

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 268
    const-string v0, "Precondition Failed"

    const/16 v1, 0x19c

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 269
    const-string v0, "Request Too Long"

    const/16 v1, 0x19d

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 270
    const-string v0, "Request-URI Too Long"

    const/16 v1, 0x19e

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 271
    const-string v0, "Unsupported Media Type"

    const/16 v1, 0x19f

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 272
    const-string v0, "Multiple Choices"

    const/16 v1, 0x12c

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 273
    const-string v0, "See Other"

    const/16 v1, 0x12f

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 274
    const-string v0, "Use Proxy"

    const/16 v1, 0x131

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 275
    const-string v0, "Payment Required"

    const/16 v1, 0x192

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 276
    const-string v0, "Not Acceptable"

    const/16 v1, 0x196

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 277
    const-string v0, "Proxy Authentication Required"

    const/16 v1, 0x197

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 279
    const-string v0, "Request Timeout"

    const/16 v1, 0x198

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 282
    const-string v0, "Switching Protocols"

    const/16 v1, 0x65

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 283
    const-string v0, "Non Authoritative Information"

    const/16 v1, 0xcb

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 285
    const-string v0, "Reset Content"

    const/16 v1, 0xcd

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 286
    const-string v0, "Partial Content"

    const/16 v1, 0xce

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 287
    const-string v0, "Gateway Timeout"

    const/16 v1, 0x1f8

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 288
    const-string v0, "Http Version Not Supported"

    const/16 v1, 0x1f9

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 290
    const-string v0, "Gone"

    const/16 v1, 0x19a

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 292
    const-string v0, "Length Required"

    const/16 v1, 0x19b

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 294
    const-string v0, "Requested Range Not Satisfiable"

    const/16 v1, 0x1a0

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 296
    const-string v0, "Expectation Failed"

    const/16 v1, 0x1a1

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 300
    const-string v0, "Processing"

    const/16 v1, 0x66

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 301
    const-string v0, "Multi-Status"

    const/16 v1, 0xcf

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 302
    const-string v0, "Unprocessable Entity"

    const/16 v1, 0x1a6

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 303
    const-string v0, "Insufficient Space On Resource"

    const/16 v1, 0x1a3

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 305
    const-string v0, "Method Failure"

    const/16 v1, 0x1a4

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 306
    const-string v0, "Locked"

    const/16 v1, 0x1a7

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 307
    const-string v0, "Insufficient Storage"

    const/16 v1, 0x1fb

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 308
    const-string v0, "Failed Dependency"

    const/16 v1, 0x1a8

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpStatus;->addStatusCodeMap(ILjava/lang/String;)V

    .line 309
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addStatusCodeMap(ILjava/lang/String;)V
    .registers 5
    .param p0, "statusCode"    # I
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 100
    div-int/lit8 v0, p0, 0x64

    .line 101
    .local v0, "classIndex":I
    sget-object v1, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v1, v1, v0

    mul-int/lit8 v2, v0, 0x64

    sub-int v2, p0, v2

    aput-object p1, v1, v2

    .line 102
    return-void
.end method

.method public static getStatusText(I)Ljava/lang/String;
    .registers 5
    .param p0, "statusCode"    # I

    .line 79
    if-ltz p0, :cond_25

    .line 82
    div-int/lit8 v0, p0, 0x64

    .line 83
    .local v0, "classIndex":I
    mul-int/lit8 v1, v0, 0x64

    sub-int v1, p0, v1

    .line 84
    .local v1, "codeIndex":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_23

    sget-object v3, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-gt v0, v3, :cond_23

    if-ltz v1, :cond_23

    sget-object v3, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_1c

    goto :goto_23

    .line 88
    :cond_1c
    sget-object v2, Lorg/apache/commons/httpclient/HttpStatus;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2

    .line 86
    :cond_23
    :goto_23
    const/4 v2, 0x0

    return-object v2

    .line 80
    .end local v0    # "classIndex":I
    .end local v1    # "codeIndex":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status code may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
