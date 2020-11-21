.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "WebSocket08FrameEncoder.java"


# static fields
.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final maskPayload:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "maskPayload"    # Z

    .line 93
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 94
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    .line 95
    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz v2, :cond_16b

    .line 103
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    .line 104
    .local v2, "frame":Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 105
    .local v3, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v3, :cond_13

    .line 106
    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 110
    :cond_13
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v4, :cond_19

    .line 111
    const/4 v4, 0x1

    goto :goto_39

    .line 112
    :cond_19
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz v4, :cond_20

    .line 113
    const/16 v4, 0x9

    goto :goto_39

    .line 114
    :cond_20
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    if-eqz v4, :cond_27

    .line 115
    const/16 v4, 0xa

    goto :goto_39

    .line 116
    :cond_27
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v4, :cond_2e

    .line 117
    const/16 v4, 0x8

    goto :goto_39

    .line 118
    :cond_2e
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-eqz v4, :cond_34

    .line 119
    const/4 v4, 0x2

    goto :goto_39

    .line 120
    :cond_34
    instance-of v4, v2, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v4, :cond_14c

    .line 121
    const/4 v4, 0x0

    .line 123
    .local v4, "opcode":B
    :goto_39
    nop

    .line 126
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    .line 128
    .local v5, "length":I
    sget-object v6, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v6}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 129
    sget-object v6, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encoding WebSocket Frame opCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 132
    :cond_64
    const/4 v6, 0x0

    .line 133
    .local v6, "b0":I
    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->isFinalFragment()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 134
    or-int/lit16 v6, v6, 0x80

    .line 136
    :cond_6d
    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getRsv()I

    move-result v7

    rem-int/lit8 v7, v7, 0x8

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 137
    rem-int/lit16 v7, v4, 0x80

    or-int/2addr v6, v7

    .line 142
    const/16 v7, 0x9

    const/16 v9, 0x7d

    if-ne v4, v7, :cond_99

    if-gt v5, v9, :cond_82

    goto :goto_99

    .line 143
    :cond_82
    new-instance v7, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid payload for PING (payload length must be <= 125, was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    :cond_99
    :goto_99
    iget-boolean v7, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    const/4 v10, 0x0

    if-eqz v7, :cond_a0

    const/4 v7, 0x4

    goto :goto_a1

    :cond_a0
    const/4 v7, 0x0

    .line 148
    .local v7, "maskLength":I
    :goto_a1
    if-gt v5, v9, :cond_ba

    .line 149
    add-int/lit8 v9, v7, 0x2

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    .line 150
    .local v9, "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v9, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 151
    iget-boolean v11, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v11, :cond_b4

    int-to-byte v11, v5

    or-int/lit16 v11, v11, 0x80

    goto :goto_b5

    :cond_b4
    int-to-byte v11, v5

    :goto_b5
    int-to-byte v11, v11

    .line 152
    .local v11, "b":B
    invoke-interface {v9, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 153
    .end local v11    # "b":B
    goto :goto_f9

    .end local v9    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_ba
    const v9, 0xffff

    const/16 v11, 0xff

    if-gt v5, v9, :cond_e2

    .line 154
    add-int/lit8 v9, v7, 0x4

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    .line 155
    .restart local v9    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v9, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 156
    iget-boolean v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v12, :cond_d1

    const/16 v12, 0xfe

    goto :goto_d3

    :cond_d1
    const/16 v12, 0x7e

    :goto_d3
    invoke-interface {v9, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 157
    ushr-int/lit8 v12, v5, 0x8

    and-int/2addr v11, v12

    invoke-interface {v9, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 158
    and-int/lit16 v11, v5, 0xff

    invoke-interface {v9, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_f9

    .line 160
    .end local v9    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_e2
    add-int/lit8 v9, v7, 0xa

    invoke-static {v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    .line 161
    .restart local v9    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v9, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 162
    iget-boolean v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v12, :cond_f0

    goto :goto_f2

    :cond_f0
    const/16 v11, 0x7f

    :goto_f2
    invoke-interface {v9, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 163
    int-to-long v11, v5

    invoke-interface {v9, v11, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    .line 167
    :goto_f9
    iget-boolean v11, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v11, :cond_13d

    .line 168
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v11, v11, v13

    double-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 169
    .local v11, "random":Ljava/lang/Integer;
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 170
    .local v8, "mask":[B
    invoke-interface {v9, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 172
    invoke-static {v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    .line 173
    .local v12, "body":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v13, 0x0

    .line 174
    .local v13, "counter":I
    :goto_125
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v14

    if-lez v14, :cond_13c

    .line 175
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v14

    .line 176
    .local v14, "byteData":B
    add-int/lit8 v15, v13, 0x1

    .local v15, "counter":I
    rem-int/lit8 v13, v13, 0x4

    .end local v13    # "counter":I
    aget-byte v13, v8, v13

    xor-int/2addr v13, v14

    invoke-interface {v12, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 177
    .end local v14    # "byteData":B
    nop

    .line 173
    move v13, v15

    goto :goto_125

    .line 178
    .end local v11    # "random":Ljava/lang/Integer;
    .end local v15    # "counter":I
    :cond_13c
    goto :goto_13e

    .line 179
    .end local v8    # "mask":[B
    .end local v12    # "body":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_13d
    move-object v12, v3

    .restart local v12    # "body":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_13e
    move-object v8, v12

    .line 181
    .end local v12    # "body":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v8, "body":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v11, 0x2

    new-array v11, v11, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v9, v11, v10

    const/4 v10, 0x1

    aput-object v8, v11, v10

    invoke-static {v11}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v10

    return-object v10

    .line 123
    .end local v4    # "opcode":B
    .end local v5    # "length":I
    .end local v6    # "b0":I
    .end local v7    # "maskLength":I
    .end local v8    # "body":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v9    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_14c
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot encode frame of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    .end local v2    # "frame":Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    .end local v3    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_16b
    return-object v1
.end method
