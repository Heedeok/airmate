.class public Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "LengthFieldBasedFrameDecoder.java"


# instance fields
.field private bytesToDiscard:J

.field private discardingTooLongFrame:Z

.field private final failFast:Z

.field private final initialBytesToStrip:I

.field private final lengthAdjustment:I

.field private final lengthFieldEndOffset:I

.field private final lengthFieldLength:I

.field private final lengthFieldOffset:I

.field private final maxFrameLength:I

.field private tooLongFrameLength:J


# direct methods
.method public constructor <init>(III)V
    .registers 10
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I

    .line 213
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 214
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 13
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I
    .param p4, "lengthAdjustment"    # I
    .param p5, "initialBytesToStrip"    # I

    .line 236
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIIIZ)V

    .line 240
    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .registers 10
    .param p1, "maxFrameLength"    # I
    .param p2, "lengthFieldOffset"    # I
    .param p3, "lengthFieldLength"    # I
    .param p4, "lengthAdjustment"    # I
    .param p5, "initialBytesToStrip"    # I
    .param p6, "failFast"    # Z

    .line 268
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 269
    if-lez p1, :cond_af

    .line 275
    if-ltz p2, :cond_98

    .line 281
    if-ltz p5, :cond_81

    .line 287
    const/4 v0, 0x1

    if-eq p3, v0, :cond_31

    const/4 v0, 0x2

    if-eq p3, v0, :cond_31

    const/4 v0, 0x3

    if-eq p3, v0, :cond_31

    const/4 v0, 0x4

    if-eq p3, v0, :cond_31

    const/16 v0, 0x8

    if-ne p3, v0, :cond_1a

    goto :goto_31

    .line 290
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lengthFieldLength must be either 1, 2, 3, 4, or 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_31
    :goto_31
    sub-int v0, p1, p3

    if-gt p2, v0, :cond_46

    .line 303
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    .line 304
    iput p2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    .line 305
    iput p3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    .line 306
    iput p4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    .line 307
    add-int v0, p2, p3

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    .line 308
    iput p5, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    .line 309
    iput-boolean p6, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    .line 310
    return-void

    .line 296
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFrameLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "must be equal to or greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lengthFieldOffset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lengthFieldLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialBytesToStrip must be a non-negative integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lengthFieldOffset must be a non-negative integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFrameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "frameLength"    # J

    .line 440
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_33

    .line 441
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusted frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - discarded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_57

    .line 447
    :cond_33
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusted frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - discarding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 453
    :goto_57
    return-void
.end method

.method private failIfNecessary(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "firstDetectionOfTooLongFrame"    # Z

    .line 399
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    .line 402
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 403
    .local v0, "tooLongFrameLength":J
    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 404
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 405
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v2, :cond_1c

    if-eqz p2, :cond_1c

    .line 407
    :cond_19
    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    .line 409
    .end local v0    # "tooLongFrameLength":J
    :cond_1c
    goto :goto_28

    .line 411
    :cond_1d
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    .line 412
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    .line 416
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 12
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 317
    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 318
    .local v2, "bytesToDiscard":J
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 319
    .local v0, "localBytesToDiscard":I
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 320
    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 321
    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 322
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failIfNecessary(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    .line 323
    return-object v1

    .line 326
    .end local v0    # "localBytesToDiscard":I
    .end local v2    # "bytesToDiscard":J
    :cond_1d
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    if-ge v0, v2, :cond_26

    .line 327
    return-object v1

    .line 330
    :cond_26
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    add-int/2addr v0, v2

    .line 332
    .local v0, "actualLengthFieldOffset":I
    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_55

    packed-switch v2, :pswitch_data_122

    .line 349
    new-instance v1, Ljava/lang/Error;

    const-string v2, "should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :pswitch_3e
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v2

    .line 344
    .local v2, "frameLength":J
    goto :goto_5a

    .line 340
    .end local v2    # "frameLength":J
    :pswitch_43
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v2

    int-to-long v2, v2

    .line 341
    .restart local v2    # "frameLength":J
    goto :goto_5a

    .line 337
    .end local v2    # "frameLength":J
    :pswitch_49
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedShort(I)I

    move-result v2

    int-to-long v2, v2

    .line 338
    .restart local v2    # "frameLength":J
    goto :goto_5a

    .line 334
    .end local v2    # "frameLength":J
    :pswitch_4f
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v2

    int-to-long v2, v2

    .line 335
    .restart local v2    # "frameLength":J
    goto :goto_5a

    .line 346
    .end local v2    # "frameLength":J
    :cond_55
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v2

    .line 347
    .restart local v2    # "frameLength":J
    nop

    .line 352
    :goto_5a
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_105

    .line 358
    iget v4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    iget v5, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 359
    iget v4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_da

    .line 366
    iget v4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_8e

    .line 368
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 369
    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    .line 370
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    int-to-long v5, v5

    sub-long v5, v2, v5

    iput-wide v5, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    .line 371
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 372
    invoke-direct {p0, p1, v4}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failIfNecessary(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    .line 373
    return-object v1

    .line 377
    :cond_8e
    long-to-int v4, v2

    .line 378
    .local v4, "frameLengthInt":I
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    if-ge v5, v4, :cond_96

    .line 379
    return-object v1

    .line 382
    :cond_96
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    if-gt v1, v4, :cond_b1

    .line 388
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 391
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 392
    .local v1, "readerIndex":I
    iget v5, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    sub-int v5, v4, v5

    .line 393
    .local v5, "actualFrameLength":I
    invoke-virtual {p0, p3, v1, v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 394
    .local v6, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    add-int v7, v1, v5

    invoke-interface {p3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 395
    return-object v6

    .line 383
    .end local v1    # "readerIndex":I
    .end local v5    # "actualFrameLength":I
    .end local v6    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_b1
    invoke-interface {p3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 384
    new-instance v1, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjusted frame length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") is less "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "than initialBytesToStrip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    .end local v4    # "frameLengthInt":I
    :cond_da
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 361
    new-instance v1, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adjusted frame length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") is less "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "than lengthFieldEndOffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_105
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 354
    new-instance v1, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "negative pre-adjustment length field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3e
    .end packed-switch
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 434
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 435
    .local v0, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 436
    return-object v0
.end method
