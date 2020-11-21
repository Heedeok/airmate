.class public final Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;
.super Ljava/lang/Object;
.source "SpdyHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders$Names;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getAssociatedToStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v0

    return v0
.end method

.method public static getAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 137
    const-string v0, "X-SPDY-Associated-To-Stream-ID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)B
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 169
    const-string v0, "X-SPDY-Priority"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static getScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 211
    const-string v0, "X-SPDY-Scheme"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v0

    return v0
.end method

.method public static getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 89
    const-string v0, "X-SPDY-Stream-ID"

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 190
    const-string v0, "X-SPDY-URL"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeAssociatedToStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 113
    return-void
.end method

.method public static removeAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 119
    const-string v0, "X-SPDY-Associated-To-Stream-ID"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static removePriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 159
    const-string v0, "X-SPDY-Priority"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static removeScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 204
    const-string v0, "X-SPDY-Scheme"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static removeStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 1
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    .line 68
    return-void
.end method

.method public static removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 74
    const-string v0, "X-SPDY-Stream-ID"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static removeUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 183
    const-string v0, "X-SPDY-URL"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static setAssociatedToStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "associatedToStreamId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    .line 146
    return-void
.end method

.method public static setAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "associatedToStreamId"    # I

    .line 152
    const-string v0, "X-SPDY-Associated-To-Stream-ID"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public static setPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;B)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "priority"    # B

    .line 176
    const-string v0, "X-SPDY-Priority"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method public static setScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "scheme"    # Ljava/lang/String;

    .line 218
    const-string v0, "X-SPDY-Scheme"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public static setStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "streamId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    .line 98
    return-void
.end method

.method public static setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "streamId"    # I

    .line 104
    const-string v0, "X-SPDY-Stream-ID"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public static setUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "url"    # Ljava/lang/String;

    .line 197
    const-string v0, "X-SPDY-URL"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    return-void
.end method
