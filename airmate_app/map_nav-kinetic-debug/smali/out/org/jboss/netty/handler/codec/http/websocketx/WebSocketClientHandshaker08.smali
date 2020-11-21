.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
.source "WebSocketClientHandshaker08.java"


# static fields
.field public static final MAGIC_GUID:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z

.field private expectedChallengeResponseString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;)V
    .registers 14
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p5, "customHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)V
    .registers 15
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p4, "allowExtensions"    # Z
    .param p6, "maxFramePayloadLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 93
    .local p5, "customHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    .line 94
    iput-boolean p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->allowExtensions:Z

    .line 95
    return-void
.end method


# virtual methods
.method public finishHandshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpResponse;)V
    .registers 15
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "response"    # Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 200
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 202
    .local v0, "status":Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 206
    const-string v1, "Upgrade"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "upgrade":Ljava/lang/String;
    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebSocket"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 216
    const-string v2, "Connection"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "connection":Ljava/lang/String;
    if-eqz v2, :cond_8c

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Upgrade"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 222
    const-string v3, "Sec-WebSocket-Accept"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "accept":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v3, :cond_76

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->expectedChallengeResponseString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 228
    const-string v5, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v5}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "subprotocol":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->setActualSubprotocol(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->setHandshakeComplete()V

    .line 234
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v6

    const-class v7, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v6, v7}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v6

    check-cast v6, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    const-string v7, "ws-decoder"

    new-instance v8, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;

    iget-boolean v9, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->allowExtensions:Z

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->getMaxFramePayloadLength()J

    move-result-wide v10

    invoke-direct {v8, v4, v9, v10, v11}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(ZZJ)V

    invoke-virtual {v6, v7, v8}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 238
    return-void

    .line 224
    .end local v5    # "subprotocol":Ljava/lang/String;
    :cond_76
    new-instance v5, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    const/4 v4, 0x1

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->expectedChallengeResponseString:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v4, "Invalid challenge. Actual: %s. Expected: %s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v3    # "accept":Ljava/lang/String;
    :cond_8c
    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid handshake response connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Connection"

    invoke-interface {p2, v5}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    .end local v2    # "connection":Ljava/lang/String;
    :cond_a9
    new-instance v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handshake response upgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Upgrade"

    invoke-interface {p2, v4}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v1    # "upgrade":Ljava/lang/String;
    :cond_c6
    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid handshake response status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 19
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->getWebSocketUrl()Ljava/net/URI;

    move-result-object v1

    .line 122
    .local v1, "wsURL":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_36

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_36
    const/16 v3, 0x10

    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomBytes(I)[B

    move-result-object v3

    .line 129
    .local v3, "nonce":[B
    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->base64([B)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "acceptSeed":Ljava/lang/String;
    sget-object v6, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->sha1([B)[B

    move-result-object v6

    .line 133
    .local v6, "sha1":[B
    invoke-static {v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->base64([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->expectedChallengeResponseString:Ljava/lang/String;

    .line 135
    sget-object v7, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v7}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_83

    .line 136
    sget-object v7, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v9, "WS Version 08 Client Handshake key: %s. Expected response: %s."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    iget-object v11, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->expectedChallengeResponseString:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 141
    :cond_83
    new-instance v7, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v9, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v10, Lorg/jboss/netty/handler/codec/http/HttpMethod;->GET:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-direct {v7, v9, v10, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 142
    .local v7, "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    const-string v9, "Upgrade"

    const-string v10, "WebSocket"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v9, "Connection"

    const-string v10, "Upgrade"

    invoke-interface {v7, v9, v10}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v9, "Sec-WebSocket-Key"

    invoke-interface {v7, v9, v4}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string v9, "Host"

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v9

    .line 148
    .local v9, "wsPort":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, "originValue":Ljava/lang/String;
    const/16 v11, 0x50

    if-eq v9, v11, :cond_e1

    const/16 v11, 0x1bb

    if-eq v9, v11, :cond_e1

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 157
    :cond_e1
    const-string v11, "Sec-WebSocket-Origin"

    invoke-interface {v7, v11, v10}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->getExpectedSubprotocol()Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "expectedSubprotocol":Ljava/lang/String;
    if-eqz v11, :cond_f9

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f9

    .line 161
    const-string v12, "Sec-WebSocket-Protocol"

    invoke-interface {v7, v12, v11}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    :cond_f9
    const-string v12, "Sec-WebSocket-Version"

    const-string v13, "8"

    invoke-interface {v7, v12, v13}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->customHeaders:Ljava/util/Map;

    if-eqz v12, :cond_124

    .line 167
    iget-object v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->customHeaders:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_10e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_124

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 168
    .local v13, "header":Ljava/lang/String;
    iget-object v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;->customHeaders:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    .end local v13    # "header":Ljava/lang/String;
    goto :goto_10e

    .line 172
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_124
    move-object/from16 v12, p1

    invoke-interface {v12, v7}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v13

    .line 174
    .local v13, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v14

    const-class v15, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;

    const-string v0, "ws-encoder"

    move-object/from16 v16, v1

    .end local v1    # "wsURL":Ljava/net/URI;
    .local v16, "wsURL":Ljava/net/URI;
    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;

    invoke-direct {v1, v8}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;-><init>(Z)V

    invoke-interface {v14, v15, v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 176
    return-object v13
.end method
