.class public final Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;
.super Ljava/lang/Object;
.source "RtspResponseStatuses.java"


# static fields
.field public static final AGGREGATE_OPERATION_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFERENCE_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final DESTINATION_UNREACHABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final HEADER_FIELD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INVALID_RANGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final KEY_MANAGEMENT_FAILURE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOW_STORAGE_SPACE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_TEMPORARILY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ENOUGH_BANDWIDTH:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final ONLY_AGGREGATE_OPERATION_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final OPTION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_IS_READONLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_NOT_UNDERSTOOD:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final RTSP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SESSION_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_TRANSPORT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 34
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 39
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 44
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Low on Storage Space"

    const/16 v2, 0xfa

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 50
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 55
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 60
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Moved Temporarily"

    const/16 v2, 0x12e

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 65
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 70
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 75
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 80
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 85
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 90
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 95
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 100
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 105
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 110
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 116
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 121
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 126
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 131
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 136
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 141
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 146
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 151
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Parameter Not Understood"

    const/16 v2, 0x1c3

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 157
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Conference Not Found"

    const/16 v2, 0x1c4

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 163
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Not Enough Bandwidth"

    const/16 v2, 0x1c5

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 169
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Session Not Found"

    const/16 v2, 0x1c6

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 175
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Method Not Valid in This State"

    const/16 v2, 0x1c7

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 181
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Header Field Not Valid for Resource"

    const/16 v2, 0x1c8

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 187
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Invalid Range"

    const/16 v2, 0x1c9

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 193
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Parameter Is Read-Only"

    const/16 v2, 0x1ca

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 199
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Aggregate operation not allowed"

    const/16 v2, 0x1cb

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 205
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Only Aggregate operation allowed"

    const/16 v2, 0x1cc

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 211
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Unsupported transport"

    const/16 v2, 0x1cd

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 217
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Destination unreachable"

    const/16 v2, 0x1ce

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 223
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Key management failure"

    const/16 v2, 0x1cf

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 229
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 234
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 239
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 244
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 249
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 254
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "RTSP Version not supported"

    const/16 v2, 0x1f9

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 260
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "Option not supported"

    const/16 v2, 0x227

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    return-void
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .registers 2
    .param p0, "code"    # I

    .line 270
    const/16 v0, 0xfa

    if-eq p0, v0, :cond_48

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_45

    const/16 v0, 0x1f9

    if-eq p0, v0, :cond_42

    const/16 v0, 0x227

    if-eq p0, v0, :cond_3f

    packed-switch p0, :pswitch_data_4c

    .line 288
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    return-object v0

    .line 285
    :pswitch_18
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 284
    :pswitch_1b
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 283
    :pswitch_1e
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 282
    :pswitch_21
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 281
    :pswitch_24
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 280
    :pswitch_27
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 279
    :pswitch_2a
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 278
    :pswitch_2d
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 277
    :pswitch_30
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 276
    :pswitch_33
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 275
    :pswitch_36
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 274
    :pswitch_39
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 273
    :pswitch_3c
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 287
    :cond_3f
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 286
    :cond_42
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 272
    :cond_45
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    .line 271
    :cond_48
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1c3
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method
