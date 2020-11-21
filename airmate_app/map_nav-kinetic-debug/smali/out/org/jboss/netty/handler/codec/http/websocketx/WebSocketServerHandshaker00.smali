.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.source "WebSocketServerHandshaker00.java"


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;

    .line 63
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .param p1, "webSocketURL"    # Ljava/lang/String;
    .param p2, "subprotocols"    # Ljava/lang/String;
    .param p3, "maxFramePayloadLength"    # J

    .line 79
    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V

    .line 80
    return-void
.end method


# virtual methods
.method public close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "frame"    # Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    .line 212
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 14
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "req"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 130
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 131
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Channel %s WS Version 00 server handshake"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 135
    :cond_1d
    const-string v0, "Upgrade"

    const-string v3, "Connection"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_173

    const-string v0, "WebSocket"

    const-string v3, "Upgrade"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 141
    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "Sec-WebSocket-Key2"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x1

    nop

    :cond_4b
    move v0, v1

    .line 144
    .local v0, "isHixie76":Z
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    new-instance v3, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v4, 0x65

    if-eqz v0, :cond_59

    const-string v5, "WebSocket Protocol Handshake"

    goto :goto_5b

    :cond_59
    const-string v5, "Web Socket Protocol Handshake"

    :goto_5b
    invoke-direct {v3, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 146
    .local v1, "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    const-string v2, "Upgrade"

    const-string v3, "WebSocket"

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v2, "Connection"

    const-string v3, "Upgrade"

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    if-eqz v0, :cond_11c

    .line 152
    const-string v2, "Sec-WebSocket-Origin"

    const-string v3, "Origin"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string v2, "Sec-WebSocket-Location"

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->getWebSocketUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v2, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "subprotocols":Ljava/lang/String;
    if-eqz v2, :cond_b3

    .line 156
    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "selectedSubprotocol":Ljava/lang/String;
    if-eqz v3, :cond_9c

    .line 160
    const-string v4, "Sec-WebSocket-Protocol"

    invoke-interface {v1, v4, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->setSelectedSubprotocol(Ljava/lang/String;)V

    goto :goto_b3

    .line 158
    :cond_9c
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested subprotocol(s) not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    .end local v3    # "selectedSubprotocol":Ljava/lang/String;
    :cond_b3
    :goto_b3
    const-string v3, "Sec-WebSocket-Key1"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "key1":Ljava/lang/String;
    const-string v4, "Sec-WebSocket-Key2"

    invoke-interface {p2, v4}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "key2":Ljava/lang/String;
    const-string v5, "[^0-9]"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "[^ ]"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 169
    .local v5, "a":I
    const-string v6, "[^0-9]"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "[^ ]"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 170
    .local v6, "b":I
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v7

    .line 171
    .local v7, "c":J
    const/16 v9, 0x10

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    .line 172
    .local v9, "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v9, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 173
    invoke-interface {v9, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 174
    invoke-interface {v9, v7, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    .line 175
    invoke-interface {v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v10

    invoke-static {v10}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->md5([B)[B

    move-result-object v10

    invoke-static {v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v10

    .line 176
    .local v10, "output":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v1, v10}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 177
    .end local v2    # "subprotocols":Ljava/lang/String;
    .end local v3    # "key1":Ljava/lang/String;
    .end local v4    # "key2":Ljava/lang/String;
    .end local v5    # "a":I
    .end local v6    # "b":I
    .end local v7    # "c":J
    .end local v9    # "input":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v10    # "output":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_141

    .line 179
    :cond_11c
    const-string v2, "WebSocket-Origin"

    const-string v3, "Origin"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v2, "WebSocket-Location"

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->getWebSocketUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v2, "WebSocket-Protocol"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "protocol":Ljava/lang/String;
    if-eqz v2, :cond_141

    .line 183
    const-string v3, "WebSocket-Protocol"

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_141
    :goto_141
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 189
    .local v2, "p":Lorg/jboss/netty/channel/ChannelPipeline;
    const-class v3, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v3

    if-eqz v3, :cond_152

    .line 190
    const-class v3, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 192
    :cond_152
    const-class v3, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    const-string v4, "wsdecoder"

    new-instance v5, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->getMaxFramePayloadLength()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(J)V

    invoke-interface {v2, v3, v4, v5}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 195
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    .line 197
    .local v3, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const-class v4, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    const-string v5, "wsencoder"

    new-instance v6, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;

    invoke-direct {v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;-><init>()V

    invoke-interface {v2, v4, v5, v6}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 199
    return-object v3

    .line 137
    .end local v0    # "isHixie76":Z
    .end local v1    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .end local v2    # "p":Lorg/jboss/netty/channel/ChannelPipeline;
    .end local v3    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_173
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v1, "not a WebSocket handshake request: missing upgrade"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
