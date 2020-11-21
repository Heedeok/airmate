.class public Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "SpdyFrameEncoder.java"


# instance fields
.field private volatile finished:Z

.field private final headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

.field private final version:I


# direct methods
.method public constructor <init>()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    const/4 v0, 0x2

    const/4 v1, 0x6

    const/16 v2, 0xf

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(IIII)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "version"    # I

    .line 56
    const/4 v0, 0x6

    const/16 v1, 0xf

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(IIII)V

    .line 66
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 8
    .param p1, "version"    # I
    .param p2, "compressionLevel"    # I
    .param p3, "windowBits"    # I
    .param p4, "memLevel"    # I

    .line 72
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    .line 73
    const/4 v0, 0x2

    if-lt p1, v0, :cond_12

    const/4 v0, 0x3

    if-gt p1, v0, :cond_12

    .line 77
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    .line 78
    invoke-static {p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->newInstance(IIII)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    .line 80
    return-void

    .line 74
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "uncompressed"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 372
    :try_start_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_b

    .line 373
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    monitor-exit p0

    return-object v0

    .line 375
    :cond_b
    :try_start_b
    invoke-static {}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 376
    .local v0, "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_26

    .line 377
    :try_start_12
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->finished:Z

    if-nez v2, :cond_20

    .line 378
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    invoke-virtual {v2, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 379
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    invoke-virtual {v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 381
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_23

    .line 382
    monitor-exit p0

    return-object v0

    .line 381
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 371
    .end local v0    # "compressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local p1    # "uncompressed":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 15
    .param p0, "version"    # I
    .param p1, "headerFrame"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    .line 335
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 336
    .local v1, "numHeaders":I
    if-nez v1, :cond_d

    .line 337
    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v2

    .line 339
    :cond_d
    const v2, 0xffff

    if-gt v1, v2, :cond_91

    .line 343
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 345
    .local v3, "headerBlock":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-static {p0, v3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 346
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 347
    .local v5, "name":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 348
    .local v6, "nameBytes":[B
    array-length v7, v6

    invoke-static {p0, v3, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 349
    invoke-interface {v3, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 350
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v7

    .line 351
    .local v7, "savedIndex":I
    const/4 v8, 0x0

    .line 352
    .local v8, "valueLength":I
    invoke-static {p0, v3, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 353
    invoke-interface {p1, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 354
    .local v10, "value":Ljava/lang/String;
    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 355
    .local v11, "valueBytes":[B
    invoke-interface {v3, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 356
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 357
    array-length v12, v11

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v8, v12

    .line 358
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "valueBytes":[B
    goto :goto_4a

    .line 359
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_68
    add-int/lit8 v8, v8, -0x1

    .line 360
    if-gt v8, v2, :cond_79

    .line 364
    invoke-static {p0, v3, v7, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->setLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 365
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v3, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 366
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nameBytes":[B
    .end local v7    # "savedIndex":I
    .end local v8    # "valueLength":I
    goto :goto_21

    .line 361
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "nameBytes":[B
    .restart local v7    # "savedIndex":I
    .restart local v8    # "valueLength":I
    :cond_79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "header exceeds allowable length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nameBytes":[B
    .end local v7    # "savedIndex":I
    .end local v8    # "valueLength":I
    :cond_90
    return-object v3

    .line 340
    .end local v3    # "headerBlock":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "header block contains too many headers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static setLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 5
    .param p0, "version"    # I
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "writerIndex"    # I
    .param p3, "length"    # I

    .line 325
    const/4 v0, 0x3

    if-ge p0, v0, :cond_7

    .line 326
    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    goto :goto_a

    .line 328
    :cond_7
    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    .line 330
    :goto_a
    return-void
.end method

.method private static writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 4
    .param p0, "version"    # I
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .line 317
    const/4 v0, 0x3

    if-ge p0, v0, :cond_7

    .line 318
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    goto :goto_a

    .line 320
    :cond_7
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 322
    :goto_a
    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    move-object v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v2, :cond_3d

    .line 109
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    .line 110
    .local v2, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 111
    .local v7, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v8

    .line 112
    .local v8, "flags":B
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v9, v6}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 114
    .local v6, "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v9

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    invoke-interface {v6, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 115
    invoke-interface {v6, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 116
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v9

    invoke-interface {v6, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    .line 117
    new-array v4, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v6, v4, v5

    aput-object v7, v4, v3

    invoke-static {v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 119
    .end local v2    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    .end local v6    # "header":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v7    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v8    # "flags":B
    :cond_3d
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    const/16 v7, 0xc

    const v8, 0x8000

    const/4 v9, 0x3

    if-eqz v2, :cond_cc

    .line 121
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 122
    .local v2, "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    iget v6, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    invoke-static {v6, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    .line 124
    .local v6, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v10

    .line 125
    .local v10, "flags":B
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v11

    if-eqz v11, :cond_61

    .line 126
    or-int/lit8 v11, v10, 0x2

    int-to-byte v10, v11

    .line 128
    :cond_61
    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v11

    .line 130
    .local v11, "headerBlockLength":I
    iget v12, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v12, v9, :cond_6f

    .line 131
    if-nez v11, :cond_6c

    goto :goto_6e

    :cond_6c
    add-int/lit8 v7, v11, 0xa

    :goto_6e
    goto :goto_71

    .line 133
    :cond_6f
    add-int/lit8 v7, v11, 0xa

    .line 135
    .local v7, "length":I
    :goto_71
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v13, v7, 0x8

    invoke-static {v12, v13}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    .line 137
    .local v12, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v13, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v8, v13

    invoke-interface {v12, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 138
    invoke-interface {v12, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 139
    invoke-interface {v12, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 140
    invoke-interface {v12, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    .line 141
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v8

    invoke-interface {v12, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 142
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getAssociatedToStreamId()I

    move-result v8

    invoke-interface {v12, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 143
    iget v8, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v8, v9, :cond_a9

    .line 145
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v8

    .line 146
    .local v8, "priority":B
    if-le v8, v9, :cond_a1

    .line 147
    const/4 v8, 0x3

    .line 149
    :cond_a1
    and-int/lit16 v13, v8, 0xff

    shl-int/lit8 v13, v13, 0xe

    invoke-interface {v12, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 150
    .end local v8    # "priority":B
    goto :goto_b4

    .line 151
    :cond_a9
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xd

    invoke-interface {v12, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 153
    :goto_b4
    iget v8, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v8, v9, :cond_c1

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    if-nez v8, :cond_c1

    .line 154
    invoke-interface {v12, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 156
    :cond_c1
    new-array v4, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v12, v4, v5

    aput-object v6, v4, v3

    invoke-static {v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 158
    .end local v2    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v6    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v7    # "length":I
    .end local v10    # "flags":B
    .end local v11    # "headerBlockLength":I
    .end local v12    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_cc
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v2, :cond_12b

    .line 160
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    .line 161
    .local v2, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    iget v7, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    invoke-static {v7, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 163
    .local v7, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v10

    .line 164
    .restart local v10    # "flags":B
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v11

    .line 166
    .restart local v11    # "headerBlockLength":I
    iget v12, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v12, v9, :cond_ef

    .line 167
    if-nez v11, :cond_ec

    goto :goto_ee

    :cond_ec
    add-int/lit8 v6, v11, 0x6

    :goto_ee
    goto :goto_f1

    .line 169
    :cond_ef
    add-int/lit8 v6, v11, 0x4

    .line 171
    .local v6, "length":I
    :goto_f1
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v13, v6, 0x8

    invoke-static {v12, v13}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v12

    .line 173
    .restart local v12    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v13, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v8, v13

    invoke-interface {v12, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 174
    invoke-interface {v12, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 175
    invoke-interface {v12, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 176
    invoke-interface {v12, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    .line 177
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v8

    invoke-interface {v12, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 178
    iget v8, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v8, v9, :cond_120

    .line 179
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    if-nez v8, :cond_11d

    .line 180
    invoke-interface {v12, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    goto :goto_120

    .line 182
    :cond_11d
    invoke-interface {v12, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 185
    :cond_120
    :goto_120
    new-array v4, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v12, v4, v5

    aput-object v7, v4, v3

    invoke-static {v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 187
    .end local v2    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .end local v6    # "length":I
    .end local v7    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v10    # "flags":B
    .end local v11    # "headerBlockLength":I
    .end local v12    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_12b
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    const/16 v10, 0x10

    if-eqz v2, :cond_159

    .line 189
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 190
    .local v2, "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 192
    .local v3, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v4, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v4, v8

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 193
    invoke-interface {v3, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 194
    invoke-interface {v3, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 195
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 196
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 197
    return-object v3

    .line 199
    .end local v2    # "spdyRstStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .end local v3    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_159
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    const/4 v11, 0x4

    if-eqz v2, :cond_1dd

    .line 201
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 202
    .local v2, "spdySettingsFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->clearPreviouslyPersistedSettings()Z

    move-result v3

    .line 204
    .local v3, "flags":B
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getIds()Ljava/util/Set;

    move-result-object v4

    .line 205
    .local v4, "IDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    .line 206
    .local v5, "numEntries":I
    mul-int/lit8 v6, v5, 0x8

    add-int/2addr v6, v11

    .line 207
    .restart local v6    # "length":I
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v10, v6, 0x8

    invoke-static {v7, v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 209
    .local v7, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v10, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v8, v10

    invoke-interface {v7, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 210
    invoke-interface {v7, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 211
    invoke-interface {v7, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 212
    invoke-interface {v7, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    .line 213
    invoke-interface {v7, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 214
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_18e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1dc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 215
    .local v10, "ID":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 216
    .local v11, "id":I
    const/4 v12, 0x0

    .line 217
    .local v12, "ID_flags":B
    invoke-interface {v2, v11}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersistValue(I)Z

    move-result v13

    if-eqz v13, :cond_1a8

    .line 218
    or-int/lit8 v13, v12, 0x1

    int-to-byte v12, v13

    .line 220
    :cond_1a8
    invoke-interface {v2, v11}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v13

    if-eqz v13, :cond_1b1

    .line 221
    or-int/lit8 v13, v12, 0x2

    int-to-byte v12, v13

    .line 223
    :cond_1b1
    iget v13, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v13, v9, :cond_1ce

    .line 227
    shr-int/lit8 v13, v11, 0x0

    and-int/lit16 v13, v13, 0xff

    invoke-interface {v7, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 228
    shr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    invoke-interface {v7, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 229
    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    invoke-interface {v7, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 230
    invoke-interface {v7, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_1d4

    .line 232
    :cond_1ce
    invoke-interface {v7, v12}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 233
    invoke-interface {v7, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    .line 235
    :goto_1d4
    invoke-interface {v2, v11}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v13

    invoke-interface {v7, v13}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 236
    .end local v10    # "ID":Ljava/lang/Integer;
    .end local v11    # "id":I
    .end local v12    # "ID_flags":B
    goto :goto_18e

    .line 237
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1dc
    return-object v7

    .line 239
    .end local v2    # "spdySettingsFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;
    .end local v3    # "flags":B
    .end local v4    # "IDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5    # "numEntries":I
    .end local v6    # "length":I
    .end local v7    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1dd
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyNoOpFrame;

    if-eqz v2, :cond_1f5

    .line 241
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v6}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 243
    .local v2, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v3, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v3, v8

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 244
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 245
    invoke-interface {v2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 246
    return-object v2

    .line 248
    .end local v2    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1f5
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v2, :cond_217

    .line 250
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    .line 251
    .local v2, "spdyPingFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 253
    .local v3, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v4, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v4, v8

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 254
    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 255
    invoke-interface {v3, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 256
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 257
    return-object v3

    .line 259
    .end local v2    # "spdyPingFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;
    .end local v3    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_217
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v2, :cond_251

    .line 261
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    .line 262
    .local v2, "spdyGoAwayFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;
    iget v3, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v3, v9, :cond_224

    const/4 v6, 0x4

    nop

    :cond_224
    move v3, v6

    .line 263
    .local v3, "length":I
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v5, v3, 0x8

    invoke-static {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 265
    .local v4, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v5, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v5, v8

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 266
    const/4 v5, 0x7

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 267
    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 268
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;->getLastGoodStreamId()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 269
    iget v5, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-lt v5, v9, :cond_250

    .line 270
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;->getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 272
    :cond_250
    return-object v4

    .line 274
    .end local v2    # "spdyGoAwayFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;
    .end local v3    # "length":I
    .end local v4    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_251
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v2, :cond_2ac

    .line 276
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 277
    .local v2, "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    iget v7, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    invoke-static {v7, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 279
    .local v7, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v10

    .line 280
    .local v10, "flags":B
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v12

    .line 282
    .local v12, "headerBlockLength":I
    iget v13, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v13, v9, :cond_274

    .line 283
    if-nez v12, :cond_271

    goto :goto_273

    :cond_271
    add-int/lit8 v11, v12, 0x6

    :goto_273
    goto :goto_276

    .line 285
    :cond_274
    add-int/lit8 v11, v12, 0x4

    .line 287
    .local v11, "length":I
    :goto_276
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v14, v11, 0x8

    invoke-static {v13, v14}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v13

    .line 289
    .local v13, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v14, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v8, v14

    invoke-interface {v13, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 290
    invoke-interface {v13, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 291
    invoke-interface {v13, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 292
    invoke-interface {v13, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    .line 293
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v6

    invoke-interface {v13, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 294
    iget v6, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v6, v9, :cond_2a1

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    if-eqz v6, :cond_2a1

    .line 295
    invoke-interface {v13, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 297
    :cond_2a1
    new-array v4, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v13, v4, v5

    aput-object v7, v4, v3

    invoke-static {v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 299
    .end local v2    # "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    .end local v7    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v10    # "flags":B
    .end local v11    # "length":I
    .end local v12    # "headerBlockLength":I
    .end local v13    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2ac
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v2, :cond_2d6

    .line 301
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    .line 302
    .local v2, "spdyWindowUpdateFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 304
    .local v3, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v4, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v4, v8

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 305
    const/16 v4, 0x9

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 306
    invoke-interface {v3, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 307
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getStreamId()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 308
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getDeltaWindowSize()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 309
    return-object v3

    .line 313
    .end local v2    # "spdyWindowUpdateFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;
    .end local v3    # "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2d6
    return-object v1
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_39

    .line 86
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 87
    .local v0, "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    goto :goto_39

    .line 91
    .restart local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :pswitch_17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_39

    .line 92
    :cond_29
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    monitor-enter v1

    .line 93
    const/4 v2, 0x1

    :try_start_2d
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->finished:Z

    .line 94
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->end()V

    .line 95
    monitor-exit v1

    goto :goto_39

    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_36

    throw v2

    .line 99
    .end local v0    # "e":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_39
    :goto_39
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 100
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
