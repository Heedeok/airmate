.class public Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
.super Ljava/lang/Object;
.source "HttpResponseStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;


# instance fields
.field private final code:I

.field private final reasonPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Continue"

    const/16 v2, 0x64

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 34
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Switching Protocols"

    const/16 v2, 0x65

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 39
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Processing"

    const/16 v2, 0x66

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 44
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "OK"

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 49
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Created"

    const/16 v2, 0xc9

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 54
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Accepted"

    const/16 v2, 0xca

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 59
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Non-Authoritative Information"

    const/16 v2, 0xcb

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 65
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "No Content"

    const/16 v2, 0xcc

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 70
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Reset Content"

    const/16 v2, 0xcd

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 75
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Partial Content"

    const/16 v2, 0xce

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 80
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Multi-Status"

    const/16 v2, 0xcf

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 85
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Multiple Choices"

    const/16 v2, 0x12c

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 90
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Moved Permanently"

    const/16 v2, 0x12d

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 95
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Found"

    const/16 v2, 0x12e

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 100
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "See Other"

    const/16 v2, 0x12f

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 105
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Not Modified"

    const/16 v2, 0x130

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 110
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Use Proxy"

    const/16 v2, 0x131

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 115
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Temporary Redirect"

    const/16 v2, 0x133

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 120
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Bad Request"

    const/16 v2, 0x190

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 125
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Unauthorized"

    const/16 v2, 0x191

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 130
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Payment Required"

    const/16 v2, 0x192

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 135
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Forbidden"

    const/16 v2, 0x193

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 140
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Not Found"

    const/16 v2, 0x194

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 145
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Method Not Allowed"

    const/16 v2, 0x195

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 150
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Not Acceptable"

    const/16 v2, 0x196

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 155
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Proxy Authentication Required"

    const/16 v2, 0x197

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 161
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Request Timeout"

    const/16 v2, 0x198

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 166
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Conflict"

    const/16 v2, 0x199

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 171
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Gone"

    const/16 v2, 0x19a

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 176
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Length Required"

    const/16 v2, 0x19b

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 181
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Precondition Failed"

    const/16 v2, 0x19c

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 186
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Request Entity Too Large"

    const/16 v2, 0x19d

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 192
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Request-URI Too Long"

    const/16 v2, 0x19e

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 197
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Unsupported Media Type"

    const/16 v2, 0x19f

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 203
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Requested Range Not Satisfiable"

    const/16 v2, 0x1a0

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 209
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Expectation Failed"

    const/16 v2, 0x1a1

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 214
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Unprocessable Entity"

    const/16 v2, 0x1a6

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 219
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Locked"

    const/16 v2, 0x1a7

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 224
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Failed Dependency"

    const/16 v2, 0x1a8

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 229
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Unordered Collection"

    const/16 v2, 0x1a9

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 234
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Upgrade Required"

    const/16 v2, 0x1aa

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 239
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Internal Server Error"

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 245
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Not Implemented"

    const/16 v2, 0x1f5

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 250
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Bad Gateway"

    const/16 v2, 0x1f6

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 255
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Service Unavailable"

    const/16 v2, 0x1f7

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 260
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Gateway Timeout"

    const/16 v2, 0x1f8

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 265
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "HTTP Version Not Supported"

    const/16 v2, 0x1f9

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 271
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Variant Also Negotiates"

    const/16 v2, 0x1fa

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 277
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Insufficient Storage"

    const/16 v2, 0x1fb

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 282
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Not Extended"

    const/16 v2, 0x1fe

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    if-ltz p1, :cond_41

    .line 428
    if-eqz p2, :cond_39

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 433
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 435
    .local v1, "c":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1d

    .line 432
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 437
    .restart local v1    # "c":C
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reasonPhrase contains one of the following prohibited characters: \\r\\n: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_34
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    .line 444
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    .line 445
    return-void

    .line 429
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reasonPhrase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 0+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .registers 5
    .param p0, "code"    # I

    .line 290
    const/16 v0, 0x133

    if-eq p0, v0, :cond_f8

    const/16 v0, 0x1fe

    if-eq p0, v0, :cond_f5

    packed-switch p0, :pswitch_data_fc

    packed-switch p0, :pswitch_data_106

    packed-switch p0, :pswitch_data_11a

    packed-switch p0, :pswitch_data_12a

    packed-switch p0, :pswitch_data_152

    packed-switch p0, :pswitch_data_160

    .line 395
    const/16 v0, 0x64

    if-ge p0, v0, :cond_21

    .line 396
    const-string v0, "Unknown Status"

    goto :goto_46

    .line 397
    :cond_21
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_28

    .line 398
    const-string v0, "Informational"

    goto :goto_46

    .line 399
    :cond_28
    const/16 v0, 0x12c

    if-ge p0, v0, :cond_2f

    .line 400
    const-string v0, "Successful"

    goto :goto_46

    .line 401
    :cond_2f
    const/16 v0, 0x190

    if-ge p0, v0, :cond_36

    .line 402
    const-string v0, "Redirection"

    goto :goto_46

    .line 403
    :cond_36
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_3d

    .line 404
    const-string v0, "Client Error"

    goto :goto_46

    .line 405
    :cond_3d
    const/16 v0, 0x258

    if-ge p0, v0, :cond_44

    .line 406
    const-string v0, "Server Error"

    goto :goto_46

    .line 408
    :cond_44
    const-string v0, "Unknown Status"

    .line 411
    .local v0, "reasonPhrase":Ljava/lang/String;
    :goto_46
    new-instance v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 388
    .end local v0    # "reasonPhrase":Ljava/lang/String;
    :pswitch_65
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 386
    :pswitch_68
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 384
    :pswitch_6b
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 382
    :pswitch_6e
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 380
    :pswitch_71
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 378
    :pswitch_74
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 376
    :pswitch_77
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 374
    :pswitch_7a
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 372
    :pswitch_7d
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 370
    :pswitch_80
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 368
    :pswitch_83
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 366
    :pswitch_86
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 364
    :pswitch_89
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 362
    :pswitch_8c
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 360
    :pswitch_8f
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 358
    :pswitch_92
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 356
    :pswitch_95
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 354
    :pswitch_98
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 352
    :pswitch_9b
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 350
    :pswitch_9e
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 348
    :pswitch_a1
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 346
    :pswitch_a4
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 344
    :pswitch_a7
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 342
    :pswitch_aa
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 340
    :pswitch_ad
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 338
    :pswitch_b0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 336
    :pswitch_b3
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 334
    :pswitch_b6
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 332
    :pswitch_b9
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 330
    :pswitch_bc
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 328
    :pswitch_bf
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 324
    :pswitch_c2
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 322
    :pswitch_c5
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 320
    :pswitch_c8
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 318
    :pswitch_cb
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 316
    :pswitch_ce
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 314
    :pswitch_d1
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 312
    :pswitch_d4
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 310
    :pswitch_d7
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 308
    :pswitch_da
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 306
    :pswitch_dd
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 304
    :pswitch_e0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 302
    :pswitch_e3
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 300
    :pswitch_e6
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 298
    :pswitch_e9
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 296
    :pswitch_ec
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 294
    :pswitch_ef
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 292
    :pswitch_f2
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 390
    :cond_f5
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 326
    :cond_f8
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    nop

    :pswitch_data_fc
    .packed-switch 0x64
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0xc8
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x12c
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x190
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x1a6
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x1f4
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 24
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->compareTo(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 476
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 468
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 469
    return v1

    .line 472
    :cond_6
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1
.end method

.method public getCode()I
    .registers 2

    .line 451
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    return v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 458
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 463
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
