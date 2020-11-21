.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
.source "WebSocketClientHandshaker00.java"


# instance fields
.field private expectedChallengeResponseBytes:[B


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p4, "customHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 7
    .param p1, "webSocketURL"    # Ljava/net/URI;
    .param p2, "version"    # Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p3, "subprotocol"    # Ljava/lang/String;
    .param p5, "maxFramePayloadLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 86
    .local p4, "customHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    .line 87
    return-void
.end method

.method private static insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v0

    .line 254
    .local v0, "count":I
    new-array v1, v0, [C

    .line 255
    .local v1, "randomChars":[C
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 256
    .local v3, "randCount":I
    :goto_b
    if-ge v3, v0, :cond_35

    .line 257
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x405f800000000000L    # 126.0

    mul-double v4, v4, v6

    const-wide v6, 0x4040800000000000L    # 33.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 258
    .local v4, "rand":I
    const/16 v5, 0x21

    if-ge v5, v4, :cond_27

    const/16 v5, 0x2f

    if-lt v4, v5, :cond_2f

    :cond_27
    const/16 v5, 0x3a

    if-ge v5, v4, :cond_34

    const/16 v5, 0x7e

    if-ge v4, v5, :cond_34

    .line 259
    :cond_2f
    int-to-char v5, v4

    aput-char v5, v1, v3

    .line 260
    add-int/lit8 v3, v3, 0x1

    .line 262
    .end local v4    # "rand":I
    :cond_34
    goto :goto_b

    .line 264
    :cond_35
    move-object v4, p0

    const/4 p0, 0x0

    .local v4, "key":Ljava/lang/String;
    .local p0, "i":I
    :goto_37
    if-ge p0, v0, :cond_60

    .line 265
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v5

    .line 266
    .local v5, "split":I
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "part1":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "part2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v9, v1, p0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .end local v5    # "split":I
    .end local v6    # "part1":Ljava/lang/String;
    .end local v7    # "part2":Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    goto :goto_37

    .line 271
    .end local p0    # "i":I
    :cond_60
    return-object v4
.end method

.method private static insertSpaces(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "spaces"    # I

    .line 275
    const/4 v0, 0x0

    move-object v1, p0

    const/4 p0, 0x0

    .local v1, "key":Ljava/lang/String;
    .local p0, "i":I
    :goto_3
    if-ge p0, p1, :cond_2e

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v3, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v2

    .line 277
    .local v2, "split":I
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "part1":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "part2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .end local v2    # "split":I
    .end local v3    # "part1":Ljava/lang/String;
    .end local v4    # "part2":Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 282
    .end local p0    # "i":I
    :cond_2e
    return-object v1
.end method


# virtual methods
.method public finishHandshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpResponse;)V
    .registers 13
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "response"    # Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;
        }
    .end annotation

    .line 217
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "WebSocket Protocol Handshake"

    const/16 v2, 0x65

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    .line 219
    .local v0, "status":Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 223
    const-string v1, "Upgrade"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "upgrade":Ljava/lang/String;
    if-eqz v1, :cond_8f

    const-string v2, "WebSocket"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 229
    const-string v2, "Connection"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "connection":Ljava/lang/String;
    if-eqz v2, :cond_72

    const-string v3, "Upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 235
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v3

    .line 236
    .local v3, "challenge":[B
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->expectedChallengeResponseBytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 240
    const-string v4, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v4}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "subprotocol":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->setActualSubprotocol(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->setHandshakeComplete()V

    .line 245
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v5

    const-class v6, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    invoke-interface {v5, v6}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;

    const-string v6, "ws-decoder"

    new-instance v7, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->getMaxFramePayloadLength()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(J)V

    invoke-virtual {v5, v6, v7}, Lorg/jboss/netty/handler/codec/http/HttpResponseDecoder;->replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 249
    return-void

    .line 237
    .end local v4    # "subprotocol":Ljava/lang/String;
    :cond_6a
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v5, "Invalid challenge"

    invoke-direct {v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    .end local v3    # "challenge":[B
    :cond_72
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

    .line 225
    .end local v2    # "connection":Ljava/lang/String;
    :cond_8f
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

    .line 220
    .end local v1    # "upgrade":Ljava/lang/String;
    :cond_ac
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
    .registers 30
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 113
    move-object/from16 v0, p0

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v3

    .line 114
    .local v3, "spaces1":I
    invoke-static {v2, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v1

    .line 116
    .local v1, "spaces2":I
    const v2, 0x7fffffff

    div-int v4, v2, v3

    .line 117
    .local v4, "max1":I
    div-int/2addr v2, v1

    .line 119
    .local v2, "max2":I
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v6

    .line 120
    .local v6, "number1":I
    invoke-static {v5, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v7

    .line 122
    .local v7, "number2":I
    mul-int v8, v6, v3

    .line 123
    .local v8, "product1":I
    mul-int v9, v7, v1

    .line 125
    .local v9, "product2":I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "key1":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "key2":Ljava/lang/String;
    invoke-static {v10}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 129
    invoke-static {v11}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertRandomCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 131
    invoke-static {v10, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 132
    invoke-static {v11, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->insertSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 134
    const/16 v12, 0x8

    invoke-static {v12}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomBytes(I)[B

    move-result-object v13

    .line 136
    .local v13, "key3":[B
    const/4 v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 137
    .local v15, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 139
    .local v12, "number1Array":[B
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 140
    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 143
    .local v5, "number2Array":[B
    const/16 v14, 0x10

    new-array v14, v14, [B

    .line 144
    .local v14, "challenge":[B
    move/from16 v17, v1

    move/from16 v18, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    .end local v1    # "spaces2":I
    .end local v2    # "max2":I
    .local v17, "spaces2":I
    .local v18, "max2":I
    invoke-static {v12, v1, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-static {v5, v1, v14, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/16 v2, 0x8

    invoke-static {v13, v1, v14, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-static {v14}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->md5([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->expectedChallengeResponseBytes:[B

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->getWebSocketUrl()Ljava/net/URI;

    move-result-object v1

    .line 151
    .local v1, "wsURL":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a9

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_a9

    .line 153
    move-object/from16 v19, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v19, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    .end local v3    # "spaces1":I
    .local v20, "spaces1":I
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_af

    .line 157
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "spaces1":I
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "spaces1":I
    :cond_a9
    move-object/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "spaces1":I
    .restart local v19    # "path":Ljava/lang/String;
    .restart local v20    # "spaces1":I
    move-object/from16 v2, v19

    .end local v19    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    :goto_af
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    move/from16 v21, v4

    .end local v4    # "max1":I
    .local v21, "max1":I
    sget-object v4, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-object/from16 v22, v5

    .end local v5    # "number2Array":[B
    .local v22, "number2Array":[B
    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpMethod;->GET:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-direct {v3, v4, v5, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 158
    .local v3, "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    const-string v4, "Upgrade"

    const-string v5, "WebSocket"

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string v4, "Connection"

    const-string v5, "Upgrade"

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string v4, "Host"

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 163
    .local v4, "wsPort":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v23, "path":Ljava/lang/String;
    const-string v2, "http://"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "originValue":Ljava/lang/String;
    const/16 v5, 0x50

    if-eq v4, v5, :cond_10d

    const/16 v5, 0x1bb

    if-eq v4, v5, :cond_10d

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v1

    .end local v1    # "wsURL":Ljava/net/URI;
    .local v24, "wsURL":Ljava/net/URI;
    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10f

    .line 169
    .end local v24    # "wsURL":Ljava/net/URI;
    .restart local v1    # "wsURL":Ljava/net/URI;
    :cond_10d
    move-object/from16 v24, v1

    .end local v1    # "wsURL":Ljava/net/URI;
    .restart local v24    # "wsURL":Ljava/net/URI;
    :goto_10f
    const-string v1, "Origin"

    invoke-interface {v3, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v1, "Sec-WebSocket-Key1"

    invoke-interface {v3, v1, v10}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v1, "Sec-WebSocket-Key2"

    invoke-interface {v3, v1, v11}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->getExpectedSubprotocol()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "expectedSubprotocol":Ljava/lang/String;
    if-eqz v1, :cond_131

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_131

    .line 175
    const-string v5, "Sec-WebSocket-Protocol"

    invoke-interface {v3, v5, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    :cond_131
    iget-object v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Ljava/util/Map;

    if-eqz v5, :cond_160

    .line 179
    iget-object v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_13f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_160

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v25, v1

    .end local v1    # "expectedSubprotocol":Ljava/lang/String;
    .local v25, "expectedSubprotocol":Ljava/lang/String;
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "header":Ljava/lang/String;
    move-object/from16 v26, v2

    .end local v2    # "originValue":Ljava/lang/String;
    .local v26, "originValue":Ljava/lang/String;
    iget-object v2, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;->customHeaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    .end local v1    # "header":Ljava/lang/String;
    nop

    .line 179
    move-object/from16 v1, v25

    move-object/from16 v2, v26

    goto :goto_13f

    .line 184
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v25    # "expectedSubprotocol":Ljava/lang/String;
    .end local v26    # "originValue":Ljava/lang/String;
    .local v1, "expectedSubprotocol":Ljava/lang/String;
    .restart local v2    # "originValue":Ljava/lang/String;
    :cond_160
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    .end local v1    # "expectedSubprotocol":Ljava/lang/String;
    .end local v2    # "originValue":Ljava/lang/String;
    .restart local v25    # "expectedSubprotocol":Ljava/lang/String;
    .restart local v26    # "originValue":Ljava/lang/String;
    invoke-static {v13}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 186
    move-object/from16 v1, p1

    invoke-interface {v1, v3}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 188
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v5

    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;

    const-string v1, "ws-encoder"

    move-object/from16 v27, v3

    .end local v3    # "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .local v27, "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;

    invoke-direct {v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;-><init>()V

    invoke-interface {v5, v0, v1, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 190
    return-object v2
.end method
