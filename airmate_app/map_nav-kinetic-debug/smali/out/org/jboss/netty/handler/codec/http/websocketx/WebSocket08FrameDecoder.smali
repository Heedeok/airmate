.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "WebSocket08FrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
        "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z

.field private fragmentedFramesCount:I

.field private fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

.field private frameFinalFlag:Z

.field private frameOpcode:I

.field private framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private framePayloadBytesRead:I

.field private framePayloadLength:J

.field private frameRsv:I

.field private final maskedPayload:Z

.field private maskingKey:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final maxFramePayloadLength:J

.field private receivedClosingHandshake:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5
    .param p1, "maskedPayload"    # Z
    .param p2, "allowExtensions"    # Z

    .line 112
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(ZZJ)V

    .line 113
    return-void
.end method

.method public constructor <init>(ZZJ)V
    .registers 6
    .param p1, "maskedPayload"    # Z
    .param p2, "allowExtensions"    # Z
    .param p3, "maxFramePayloadLength"    # J

    .line 128
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->FRAME_START:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    .line 129
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    .line 130
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->allowExtensions:Z

    .line 131
    iput-wide p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maxFramePayloadLength:J

    .line 132
    return-void
.end method

.method private checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;
        }
    .end annotation

    .line 408
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    if-nez v0, :cond_c

    .line 409
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;-><init>([B)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    goto :goto_11

    .line 411
    :cond_c
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->write([B)V
    :try_end_11
    .catch Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 415
    :goto_11
    goto :goto_18

    .line 413
    :catch_12
    move-exception v0

    .line 414
    .local v0, "ex":Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;
    const-string v1, "invalid UTF-8 bytes"

    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 416
    .end local v0    # "ex":Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;
    :goto_18
    return-void
.end method

.method private protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;
        }
    .end annotation

    .line 383
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->CORRUPT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 384
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 385
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 386
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 388
    :cond_1d
    new-instance v0, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toFrameLength(J)I
    .registers 5
    .param p0, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 392
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    .line 395
    long-to-int v0, p0

    return v0

    .line 393
    :cond_9
    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unmask(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 7
    .param p1, "frame"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 376
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    .line 377
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 378
    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:Lorg/jboss/netty/buffer/ChannelBuffer;

    rem-int/lit8 v4, v1, 0x4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v3

    xor-int/2addr v2, v3

    invoke-interface {p1, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 380
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method


# virtual methods
.method protected checkCloseFrameBody(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 8
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;
        }
    .end annotation

    .line 419
    if-eqz p2, :cond_6a

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6a

    .line 422
    :cond_9
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 423
    const-string v0, "Invalid close frame body"

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 427
    :cond_15
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 428
    .local v0, "idx":I
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 431
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v1

    .line 432
    .local v1, "statusCode":I
    if-ltz v1, :cond_27

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_37

    :cond_27
    const/16 v2, 0x3ec

    if-lt v1, v2, :cond_2f

    const/16 v2, 0x3ee

    if-le v1, v2, :cond_37

    :cond_2f
    const/16 v2, 0x3f4

    if-lt v1, v2, :cond_4b

    const/16 v2, 0xbb7

    if-gt v1, v2, :cond_4b

    .line 434
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid close frame status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 438
    :cond_4b
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    if-lez v2, :cond_66

    .line 439
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    new-array v2, v2, [B

    .line 440
    .local v2, "b":[B
    invoke-interface {p2, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 442
    :try_start_5a
    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-direct {v3, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;-><init>([B)V
    :try_end_5f
    .catch Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception; {:try_start_5a .. :try_end_5f} :catch_60

    .line 445
    goto :goto_66

    .line 443
    :catch_60
    move-exception v3

    .line 444
    .local v3, "ex":Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;
    const-string v4, "Invalid close frame reason text. Invalid UTF-8 bytes"

    invoke-direct {p0, p1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 449
    .end local v2    # "b":[B
    .end local v3    # "ex":Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;
    :cond_66
    :goto_66
    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 450
    return-void

    .line 420
    .end local v0    # "idx":I
    .end local v1    # "statusCode":I
    :cond_6a
    :goto_6a
    return-void
.end method

.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x1"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "x3"    # Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    move-object v0, p4

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;)Ljava/lang/Object;
    .registers 24
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-boolean v3, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->actualReadableBytes()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 141
    return-object v4

    .line 144
    :cond_13
    sget-object v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$websocketx$WebSocket08FrameDecoder$State:[I

    invoke-virtual/range {p4 .. p4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x2

    const/16 v6, 0xa

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v3, :pswitch_data_314

    .line 371
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Shouldn\'t reach here."

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    :pswitch_30
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    .line 369
    return-object v4

    .line 258
    :pswitch_34
    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_1cb

    .line 251
    :pswitch_38
    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_1bc

    .line 146
    :pswitch_3c
    iput v10, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    .line 147
    const-wide/16 v12, -0x1

    iput-wide v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 148
    iput-object v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 151
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    .line 152
    .local v3, "b":B
    and-int/lit16 v12, v3, 0x80

    if-eqz v12, :cond_4e

    const/4 v12, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v12, 0x0

    :goto_4f
    iput-boolean v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    .line 153
    and-int/lit8 v12, v3, 0x70

    shr-int/2addr v12, v7

    iput v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    .line 154
    and-int/lit8 v12, v3, 0xf

    iput v12, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    .line 156
    sget-object v12, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v12}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_7a

    .line 157
    sget-object v12, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Decoding WebSocket Frame opCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 161
    :cond_7a
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    .line 162
    and-int/lit16 v12, v3, 0x80

    if-eqz v12, :cond_84

    const/4 v12, 0x1

    goto :goto_85

    :cond_84
    const/4 v12, 0x0

    .line 163
    .local v12, "frameMasked":Z
    :goto_85
    and-int/lit8 v13, v3, 0x7f

    .line 165
    .local v13, "framePayloadLen1":I
    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    if-eqz v14, :cond_a6

    iget-boolean v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->allowExtensions:Z

    if-nez v14, :cond_a6

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSV != 0 and no extension negotiated, RSV:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 167
    return-object v4

    .line 170
    :cond_a6
    iget-boolean v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    if-eqz v14, :cond_b2

    if-nez v12, :cond_b2

    .line 171
    const-string v5, "unmasked client to server frame"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 172
    return-object v4

    .line 174
    :cond_b2
    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v15, 0x7

    if-le v14, v15, :cond_fa

    .line 177
    iget-boolean v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-nez v14, :cond_c1

    .line 178
    const-string v5, "fragmented control frame"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 179
    return-object v4

    .line 183
    :cond_c1
    const/16 v14, 0x7d

    if-le v13, v14, :cond_cb

    .line 184
    const-string v5, "control frame with payload length > 125 octets"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 185
    return-object v4

    .line 189
    :cond_cb
    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v14, v8, :cond_ee

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v14, v9, :cond_ee

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v14, v6, :cond_ee

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "control frame using reserved opcode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 191
    return-object v4

    .line 197
    :cond_ee
    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v14, v8, :cond_13d

    if-ne v13, v11, :cond_13d

    .line 198
    const-string v5, "received close control frame with payload len 1"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 199
    return-object v4

    .line 203
    :cond_fa
    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eqz v14, :cond_11d

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v14, v11, :cond_11d

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v14, v5, :cond_11d

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data frame using reserved opcode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 205
    return-object v4

    .line 209
    :cond_11d
    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-nez v14, :cond_12b

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-nez v14, :cond_12b

    .line 210
    const-string v5, "received continuation data frame outside fragmented message"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 211
    return-object v4

    .line 215
    :cond_12b
    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-eqz v14, :cond_13d

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eqz v14, :cond_13d

    iget v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v14, v9, :cond_13d

    .line 216
    const-string v5, "received non-continuation data frame while inside fragmented message"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 217
    return-object v4

    .line 222
    :cond_13d
    const/16 v14, 0x7e

    if-ne v13, v14, :cond_156

    .line 223
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 224
    iget-wide v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    const-wide/16 v16, 0x7e

    cmp-long v18, v14, v16

    if-gez v18, :cond_172

    .line 225
    const-string v5, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 226
    return-object v4

    .line 228
    :cond_156
    const/16 v14, 0x7f

    if-ne v13, v14, :cond_16f

    .line 229
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v14

    iput-wide v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 233
    iget-wide v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    const-wide/32 v16, 0x10000

    cmp-long v18, v14, v16

    if-gez v18, :cond_172

    .line 234
    const-string v5, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 235
    return-object v4

    .line 238
    :cond_16f
    int-to-long v14, v13

    iput-wide v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    .line 241
    :cond_172
    iget-wide v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget-wide v10, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maxFramePayloadLength:J

    cmp-long v16, v14, v10

    if-lez v16, :cond_196

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max frame length of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maxFramePayloadLength:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " has been exceeded."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    .line 243
    return-object v4

    .line 245
    :cond_196
    sget-object v10, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v10}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1b6

    .line 246
    sget-object v10, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Decoding WebSocket Frame length="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 249
    :cond_1b6
    sget-object v10, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->MASKING_KEY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {v0, v10}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 251
    move v10, v3

    .end local v3    # "b":B
    .local v10, "b":B
    :goto_1bc
    iget-boolean v3, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    if-eqz v3, :cond_1c6

    .line 252
    invoke-interface {v2, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iput-object v3, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 254
    :cond_1c6
    sget-object v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->PAYLOAD:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 258
    :goto_1cb
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->actualReadableBytes()I

    move-result v3

    .line 259
    .local v3, "rbytes":I
    const/4 v7, 0x0

    .line 261
    .local v7, "payloadBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v11, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    add-int/2addr v11, v3

    int-to-long v14, v11

    .line 265
    .local v14, "willHaveReadByteCount":J
    iget-wide v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v11, v14, v5

    if-nez v11, :cond_1df

    .line 267
    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    goto :goto_220

    .line 268
    :cond_1df
    iget-wide v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v11, v14, v5

    if-gez v11, :cond_20c

    .line 271
    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    .line 272
    .end local v7    # "payloadBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v5, "payloadBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v6, :cond_201

    .line 273
    invoke-interface/range {p2 .. p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v6

    iget-wide v7, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-static {v7, v8}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->toFrameLength(J)I

    move-result v7

    invoke-interface {v6, v7}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    iput-object v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 275
    :cond_201
    iget-object v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 276
    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    add-int/2addr v6, v3

    iput v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    .line 279
    return-object v4

    .line 280
    .end local v5    # "payloadBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .restart local v7    # "payloadBuffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_20c
    iget-wide v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v11, v14, v5

    if-lez v11, :cond_220

    .line 283
    iget-wide v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget v11, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    int-to-long v8, v11

    sub-long/2addr v5, v8

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->toFrameLength(J)I

    move-result v5

    invoke-interface {v2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 288
    :cond_220
    :goto_220
    sget-object v5, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->FRAME_START:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {v0, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 291
    iget-object v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v5, :cond_22c

    .line 292
    iput-object v7, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_231

    .line 294
    :cond_22c
    iget-object v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 298
    :goto_231
    iget-boolean v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    if-eqz v5, :cond_23a

    .line 299
    iget-object v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->unmask(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 304
    :cond_23a
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_24c

    .line 305
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    iget-boolean v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v8, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v4, v5, v6, v8}, Lorg/jboss/netty/handler/codec/http/websocketx/PingWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4

    .line 306
    :cond_24c
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_25e

    .line 307
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    iget-boolean v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v8, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v4, v5, v6, v8}, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4

    .line 308
    :cond_25e
    iget v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_278

    .line 309
    iget-object v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkCloseFrameBody(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 310
    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    .line 311
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    iget-boolean v5, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v8, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v4, v5, v6, v8}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4

    .line 316
    :cond_278
    const/4 v5, 0x0

    .line 317
    .local v5, "aggregatedText":Ljava/lang/String;
    iget-boolean v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-eqz v6, :cond_2a2

    .line 320
    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/16 v8, 0x9

    if-eq v6, v8, :cond_2a0

    .line 321
    const/4 v6, 0x0

    iput v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    .line 324
    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v8, 0x1

    if-eq v6, v8, :cond_28f

    iget-object v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    if-eqz v6, :cond_2a0

    .line 326
    :cond_28f
    iget-object v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V

    .line 330
    iget-object v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-virtual {v6}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    iput-object v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    .line 356
    :cond_2a0
    const/4 v6, 0x1

    goto :goto_2ca

    .line 338
    :cond_2a2
    iget v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-nez v6, :cond_2b7

    .line 340
    iput-object v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    .line 341
    iget v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2c4

    .line 342
    iget-object v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V

    goto :goto_2c4

    .line 346
    :cond_2b7
    iget-object v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    if-eqz v4, :cond_2c4

    .line 347
    iget-object v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V

    .line 352
    :cond_2c4
    :goto_2c4
    iget v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    .line 356
    :goto_2ca
    iget v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v4, v6, :cond_2da

    .line 357
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    iget-boolean v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v8, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v4, v6, v8, v9}, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4

    .line 358
    :cond_2da
    iget v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2eb

    .line 359
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    iget-boolean v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v8, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v4, v6, v8, v9}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v4

    .line 360
    :cond_2eb
    iget v4, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-nez v4, :cond_2fb

    .line 361
    new-instance v4, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    iget-boolean v6, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v8, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v9, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v4, v6, v8, v9, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;)V

    return-object v4

    .line 363
    :cond_2fb
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot decode web socket frame with opcode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_data_314
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
    .end packed-switch
.end method
