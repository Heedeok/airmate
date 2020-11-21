.class public final Lorg/jboss/netty/handler/codec/rtsp/RtspVersions;
.super Ljava/lang/Object;
.source "RtspVersions.java"


# static fields
.field public static final RTSP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 29
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpVersion;

    const-string v1, "RTSP"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspVersions;->RTSP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 38
    if-eqz p0, :cond_1c

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 43
    const-string v0, "RTSP/1.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 44
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspVersions;->RTSP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    return-object v0

    .line 47
    :cond_15
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpVersion;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 39
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
