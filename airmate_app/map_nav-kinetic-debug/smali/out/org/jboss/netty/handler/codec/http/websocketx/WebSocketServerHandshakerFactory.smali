.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;
.super Ljava/lang/Object;
.source "WebSocketServerHandshakerFactory.java"


# instance fields
.field private final allowExtensions:Z

.field private final maxFramePayloadLength:J

.field private final subprotocols:Ljava/lang/String;

.field private final webSocketURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z

    .line 48
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 6
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "maxFramePayloadLength"    # J

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    .line 69
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->allowExtensions:Z

    .line 70
    iput-wide p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    .line 71
    return-void
.end method


# virtual methods
.method public newHandshaker(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
    .registers 10
    .param p1, "req"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 81
    const-string v0, "Sec-WebSocket-Version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_40

    .line 83
    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 85
    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->allowExtensions:Z

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v1

    .line 87
    :cond_23
    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 89
    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker08;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->allowExtensions:Z

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker08;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v1

    .line 92
    :cond_3e
    const/4 v1, 0x0

    return-object v1

    .line 96
    :cond_40
    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method public sendUnsupportedWebSocketVersionResponse(Lorg/jboss/netty/channel/Channel;)V
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 108
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 111
    .local v0, "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setStatus(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 112
    const-string v1, "Sec-WebSocket-Version"

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 114
    return-void
.end method
