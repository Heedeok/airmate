.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.source "WebSocketServerHandshaker13.java"


# static fields
.field public static final WEBSOCKET_13_ACCEPT_GUID:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z

    .line 71
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 12
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "allowExtensions"    # Z
    .param p4, "maxFramePayloadLength"    # J

    .line 93
    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V

    .line 94
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->allowExtensions:Z

    .line 95
    return-void
.end method


# virtual methods
.method public close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "frame"    # Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    .line 202
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    .line 203
    .local v0, "f":Lorg/jboss/netty/channel/ChannelFuture;
    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 204
    return-object v0
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 20
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "req"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 139
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_23

    .line 140
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Channel %s WS Version 13 server handshake"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 143
    :cond_23
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v6, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v7, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v6, v7}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    move-object v6, v0

    .line 145
    .local v6, "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {v3, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "key":Ljava/lang/String;
    if-eqz v7, :cond_fb

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 152
    .local v8, "acceptSeed":Ljava/lang/String;
    :try_start_47
    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->sha1([B)[B

    move-result-object v0
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_55} :catch_f5

    .line 155
    .local v0, "sha1":[B
    nop

    .line 156
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->base64([B)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "accept":Ljava/lang/String;
    sget-object v10, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v10}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_74

    .line 159
    sget-object v10, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v11, "WS Version 13 Server Handshake key: %s. Response: %s."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v4

    aput-object v9, v12, v5

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 162
    :cond_74
    sget-object v10, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {v6, v10}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setStatus(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 163
    const-string v10, "Upgrade"

    const-string v11, "WebSocket"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v10, "Connection"

    const-string v11, "Upgrade"

    invoke-interface {v6, v10, v11}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v10, "Sec-WebSocket-Accept"

    invoke-interface {v6, v10, v9}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v10, "Sec-WebSocket-Protocol"

    invoke-interface {v3, v10}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, "subprotocols":Ljava/lang/String;
    if-eqz v10, :cond_be

    .line 168
    invoke-virtual {v1, v10}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "selectedSubprotocol":Ljava/lang/String;
    if-eqz v11, :cond_a7

    .line 172
    const-string v12, "Sec-WebSocket-Protocol"

    invoke-interface {v6, v12, v11}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v1, v11}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->setSelectedSubprotocol(Ljava/lang/String;)V

    goto :goto_be

    .line 170
    :cond_a7
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested subprotocol(s) not supported: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    .end local v11    # "selectedSubprotocol":Ljava/lang/String;
    :cond_be
    :goto_be
    invoke-interface {v2, v6}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v11

    .line 180
    .local v11, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v12

    .line 181
    .local v12, "p":Lorg/jboss/netty/channel/ChannelPipeline;
    const-class v13, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v12, v13}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v13

    if-eqz v13, :cond_d3

    .line 182
    const-class v13, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v12, v13}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 185
    :cond_d3
    const-class v13, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    const-string v14, "wsdecoder"

    new-instance v15, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;

    iget-boolean v4, v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->allowExtensions:Z

    move-object/from16 v16, v0

    .end local v0    # "sha1":[B
    .local v16, "sha1":[B
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->getMaxFramePayloadLength()J

    move-result-wide v0

    invoke-direct {v15, v5, v4, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;-><init>(ZZJ)V

    invoke-interface {v12, v13, v14, v15}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 187
    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    const-string v1, "wsencoder"

    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameEncoder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameEncoder;-><init>(Z)V

    invoke-interface {v12, v0, v1, v4}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 189
    return-object v11

    .line 153
    .end local v9    # "accept":Ljava/lang/String;
    .end local v10    # "subprotocols":Ljava/lang/String;
    .end local v11    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v12    # "p":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v16    # "sha1":[B
    :catch_f5
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    return-object v1

    .line 147
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "acceptSeed":Ljava/lang/String;
    :cond_fb
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v1, "not a WebSocket request: missing key"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
