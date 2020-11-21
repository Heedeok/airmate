.class public Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "SpdyFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    }
.end annotation


# instance fields
.field private decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private flags:B

.field private final headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

.field private headerSize:I

.field private length:I

.field private final maxChunkSize:I

.field private final maxHeaderSize:I

.field private numHeaders:I

.field private spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

.field private spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

.field private final spdyVersion:I

.field private state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field private streamID:I

.field private type:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "version"    # I

    .line 80
    const/16 v0, 0x2000

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(III)V

    .line 81
    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "maxChunkSize"    # I
    .param p3, "maxHeaderSize"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>(Z)V

    .line 88
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4d

    const/4 v0, 0x3

    if-gt p1, v0, :cond_4d

    .line 92
    if-lez p2, :cond_36

    .line 96
    if-lez p3, :cond_1f

    .line 100
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    .line 101
    iput p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    .line 102
    iput p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    .line 103
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->newInstance(I)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    .line 104
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 105
    return-void

    .line 97
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxHeaderSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxChunkSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 16
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 563
    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerSize:I

    .line 564
    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    .line 565
    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 569
    :cond_12
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 570
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 572
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    const/4 v3, 0x0

    if-nez v0, :cond_26

    .line 574
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 575
    return-void

    .line 578
    :cond_26
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_2d

    const/4 v0, 0x2

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x4

    .line 580
    .local v0, "lengthFieldSize":I
    :goto_2e
    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    if-ne v4, v1, :cond_4b

    .line 582
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_3b

    .line 583
    return-void

    .line 585
    :cond_3b
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readLengthField()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    .line 586
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    if-gez v1, :cond_4b

    .line 587
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    .line 588
    return-void

    .line 592
    :cond_4b
    :goto_4b
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    if-lez v1, :cond_153

    .line 593
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerSize:I

    .line 594
    .local v1, "headerSize":I
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 597
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v4

    if-nez v4, :cond_67

    .line 598
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 599
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    .line 600
    return-void

    .line 602
    :cond_67
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readLengthField()I

    move-result v4

    .line 605
    .local v4, "nameLength":I
    if-gtz v4, :cond_73

    .line 606
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    .line 607
    return-void

    .line 609
    :cond_73
    add-int/2addr v1, v4

    .line 610
    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    if-gt v1, v5, :cond_13a

    .line 616
    invoke-direct {p0, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v5

    if-nez v5, :cond_89

    .line 617
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 618
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    .line 619
    return-void

    .line 621
    :cond_89
    new-array v5, v4, [B

    .line 622
    .local v5, "nameBytes":[B
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 623
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 626
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v7, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 627
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    .line 628
    return-void

    .line 632
    :cond_a5
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v7

    if-nez v7, :cond_b6

    .line 633
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 634
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    .line 635
    return-void

    .line 637
    :cond_b6
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readLengthField()I

    move-result v7

    .line 640
    .local v7, "valueLength":I
    if-gtz v7, :cond_c2

    .line 641
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    .line 642
    return-void

    .line 644
    :cond_c2
    add-int/2addr v1, v7

    .line 645
    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    if-gt v1, v8, :cond_121

    .line 651
    invoke-direct {p0, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v8

    if-nez v8, :cond_d8

    .line 652
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 653
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    .line 654
    return-void

    .line 656
    :cond_d8
    new-array v8, v7, [B

    .line 657
    .local v8, "valueBytes":[B
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v9, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 660
    const/4 v9, 0x0

    .line 661
    .local v9, "index":I
    move v10, v9

    const/4 v9, 0x0

    .line 662
    .local v9, "offset":I
    .local v10, "index":I
    :goto_e2
    if-ge v10, v7, :cond_117

    .line 663
    :goto_e4
    array-length v11, v8

    if-ge v10, v11, :cond_ee

    aget-byte v11, v8, v10

    if-eqz v11, :cond_ee

    .line 664
    add-int/lit8 v10, v10, 0x1

    goto :goto_e4

    .line 666
    :cond_ee
    array-length v11, v8

    if-ge v10, v11, :cond_fd

    add-int/lit8 v11, v10, 0x1

    aget-byte v11, v8, v11

    if-nez v11, :cond_fd

    .line 669
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    .line 670
    return-void

    .line 672
    :cond_fd
    new-instance v11, Ljava/lang/String;

    sub-int v12, v10, v9

    const-string v13, "UTF-8"

    invoke-direct {v11, v8, v9, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 675
    .local v11, "value":Ljava/lang/String;
    :try_start_106
    iget-object v12, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v12, v6, v11}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_106 .. :try_end_10b} :catch_110

    .line 680
    nop

    .line 681
    add-int/lit8 v10, v10, 0x1

    .line 682
    move v9, v10

    .line 683
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_e2

    .line 676
    .restart local v11    # "value":Ljava/lang/String;
    :catch_110
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    .line 679
    return-void

    .line 684
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "value":Ljava/lang/String;
    :cond_117
    iget v11, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    .line 685
    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerSize:I

    .line 686
    .end local v1    # "headerSize":I
    .end local v4    # "nameLength":I
    .end local v5    # "nameBytes":[B
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "valueLength":I
    .end local v8    # "valueBytes":[B
    .end local v9    # "offset":I
    .end local v10    # "index":I
    goto/16 :goto_4b

    .line 646
    .restart local v1    # "headerSize":I
    .restart local v4    # "nameLength":I
    .restart local v5    # "nameBytes":[B
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "valueLength":I
    :cond_121
    new-instance v2, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Header block exceeds "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    .end local v5    # "nameBytes":[B
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "valueLength":I
    :cond_13a
    new-instance v2, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header block exceeds "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    .end local v1    # "headerSize":I
    .end local v4    # "nameLength":I
    :cond_153
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 688
    return-void
.end method

.method private ensureBytes(I)Z
    .registers 5
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, p1, :cond_a

    .line 544
    return v1

    .line 547
    :cond_a
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 548
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 749
    const-string v0, "Received invalid control frame"

    .line 750
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    packed-switch v1, :pswitch_data_2a

    goto :goto_26

    .line 788
    :pswitch_8
    const-string v0, "Received invalid CREDENTIAL control frame"

    goto :goto_26

    .line 784
    :pswitch_b
    const-string v0, "Received invalid WINDOW_UPDATE control frame"

    .line 785
    goto :goto_26

    .line 780
    :pswitch_e
    const-string v0, "Received invalid HEADERS control frame"

    .line 781
    goto :goto_26

    .line 776
    :pswitch_11
    const-string v0, "Received invalid GOAWAY control frame"

    .line 777
    goto :goto_26

    .line 772
    :pswitch_14
    const-string v0, "Received invalid PING control frame"

    .line 773
    goto :goto_26

    .line 768
    :pswitch_17
    const-string v0, "Received invalid NOOP control frame"

    .line 769
    goto :goto_26

    .line 764
    :pswitch_1a
    const-string v0, "Received invalid SETTINGS control frame"

    .line 765
    goto :goto_26

    .line 760
    :pswitch_1d
    const-string v0, "Received invalid RST_STREAM control frame"

    .line 761
    goto :goto_26

    .line 756
    :pswitch_20
    const-string v0, "Received invalid SYN_REPLY control frame"

    .line 757
    goto :goto_26

    .line 752
    :pswitch_23
    const-string v0, "Received invalid SYN_STREAM control frame"

    .line 753
    nop

    .line 791
    :goto_26
    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 792
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .registers 3
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p1, "message"    # Ljava/lang/String;

    .line 795
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 796
    return-void
.end method

.method private isValidControlFrameHeader()Z
    .registers 7

    .line 691
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_82

    .line 725
    return v5

    .line 721
    :pswitch_c
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v0, v2, :cond_12

    const/4 v4, 0x1

    nop

    :cond_12
    return v4

    .line 714
    :pswitch_13
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v1, :cond_23

    .line 715
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eq v0, v3, :cond_21

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-lt v0, v2, :cond_20

    goto :goto_21

    :cond_20
    goto :goto_22

    :cond_21
    :goto_21
    const/4 v4, 0x1

    :goto_22
    return v4

    .line 717
    :cond_23
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-lt v0, v3, :cond_29

    const/4 v4, 0x1

    nop

    :cond_29
    return v4

    .line 711
    :pswitch_2a
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v1, :cond_35

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v0, v3, :cond_34

    :goto_32
    const/4 v4, 0x1

    goto :goto_3a

    :cond_34
    goto :goto_3a

    :cond_35
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v0, v2, :cond_34

    goto :goto_32

    :goto_3a
    return v4

    .line 708
    :pswitch_3b
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v0, v3, :cond_41

    const/4 v4, 0x1

    nop

    :cond_41
    return v4

    .line 705
    :pswitch_42
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_48

    const/4 v4, 0x1

    nop

    :cond_48
    return v4

    .line 702
    :pswitch_49
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-lt v0, v3, :cond_4f

    const/4 v4, 0x1

    nop

    :cond_4f
    return v4

    .line 699
    :pswitch_50
    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    if-nez v0, :cond_5a

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v0, v2, :cond_5a

    const/4 v4, 0x1

    nop

    :cond_5a
    return v4

    .line 696
    :pswitch_5b
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v1, :cond_66

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-lt v0, v2, :cond_65

    :goto_63
    const/4 v4, 0x1

    goto :goto_6b

    :cond_65
    goto :goto_6b

    :cond_66
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-lt v0, v3, :cond_65

    goto :goto_63

    :goto_6b
    return v4

    .line 693
    :pswitch_6c
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v1, :cond_79

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_78

    :goto_76
    const/4 v4, 0x1

    goto :goto_80

    :cond_78
    goto :goto_80

    :cond_79
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_78

    goto :goto_76

    :goto_80
    return v4

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_5b
        :pswitch_50
        :pswitch_49
        :pswitch_42
        :pswitch_3b
        :pswitch_2a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method private readCommonHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    .registers 10
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 330
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_b

    .line 331
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0

    .line 334
    :cond_b
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 335
    .local v0, "frameOffset":I
    add-int/lit8 v2, v0, 0x4

    .line 336
    .local v2, "flagsOffset":I
    add-int/lit8 v3, v0, 0x5

    .line 337
    .local v3, "lengthOffset":I
    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 340
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    .line 341
    .local v4, "control":Z
    :goto_21
    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    iput-byte v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    .line 342
    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v5

    iput v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 344
    if-eqz v4, :cond_72

    .line 346
    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v5

    and-int/lit16 v5, v5, 0x7fff

    iput v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    .line 348
    add-int/lit8 v5, v0, 0x2

    .line 349
    .local v5, "typeOffset":I
    invoke-static {p1, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v6

    iput v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    .line 352
    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    iget v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    if-ne v6, v7, :cond_6f

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->isValidControlFrameHeader()Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_6f

    .line 358
    :cond_4c
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->willGenerateControlFrame()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 359
    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_62

    if-eq v6, v1, :cond_5f

    packed-switch v6, :pswitch_data_7c

    .line 371
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_CONTROL_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_6e

    .line 363
    :cond_5f
    :pswitch_5f
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 364
    .local v1, "nextState":Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    goto :goto_6e

    .line 367
    .end local v1    # "nextState":Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :cond_62
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTINGS_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 368
    .restart local v1    # "nextState":Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    goto :goto_6e

    .line 373
    .end local v1    # "nextState":Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :cond_65
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eqz v1, :cond_6c

    .line 374
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->DISCARD_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_6e

    .line 376
    :cond_6c
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 378
    .restart local v1    # "nextState":Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :goto_6e
    return-object v1

    .line 353
    .end local v1    # "nextState":Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :cond_6f
    :goto_6f
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v1

    .line 381
    .end local v5    # "typeOffset":I
    :cond_72
    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    .line 383
    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method

.method private readControlFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 8
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 390
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x4

    if-eq v0, v1, :cond_85

    const/16 v5, 0x9

    if-eq v0, v5, :cond_64

    packed-switch v0, :pswitch_data_a6

    .line 442
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :pswitch_18
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v1, :cond_1e

    const/4 v3, 0x4

    nop

    :cond_1e
    move v0, v3

    .line 414
    .local v0, "minLength":I
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    if-ge v3, v0, :cond_26

    .line 415
    return-object v2

    .line 418
    :cond_26
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-static {p1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v2

    .line 419
    .local v2, "lastGoodStreamID":I
    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 421
    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v3, v1, :cond_3b

    .line 422
    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(I)V

    return-object v1

    .line 425
    :cond_3b
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v1

    .line 426
    .local v1, "statusCode":I
    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 428
    new-instance v3, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    invoke-direct {v3, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(II)V

    return-object v3

    .line 403
    .end local v0    # "minLength":I
    .end local v1    # "statusCode":I
    .end local v2    # "lastGoodStreamID":I
    :pswitch_4c
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_53

    .line 404
    return-object v2

    .line 407
    :cond_53
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    .line 408
    .local v0, "ID":I
    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 410
    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;-><init>(I)V

    return-object v1

    .line 431
    .end local v0    # "ID":I
    :cond_64
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_6b

    .line 432
    return-object v2

    .line 435
    :cond_6b
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    .line 436
    .local v0, "streamID":I
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v1

    .line 437
    .local v1, "deltaWindowSize":I
    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 439
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;

    invoke-direct {v2, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;-><init>(II)V

    return-object v2

    .line 392
    .end local v0    # "streamID":I
    .end local v1    # "deltaWindowSize":I
    :cond_85
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_8c

    .line 393
    return-object v2

    .line 396
    :cond_8c
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    .line 397
    .restart local v0    # "streamID":I
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v1

    .line 398
    .local v1, "statusCode":I
    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 400
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    invoke-direct {v2, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(II)V

    return-object v2

    :pswitch_data_a6
    .packed-switch 0x6
        :pswitch_4c
        :pswitch_18
    .end packed-switch
.end method

.method private readHeaderBlockFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .registers 13
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 449
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v0, v2, :cond_d4

    packed-switch v0, :pswitch_data_132

    .line 538
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :pswitch_17
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x4

    :goto_1d
    move v0, v2

    .line 481
    .local v0, "minLength":I
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    if-ge v2, v0, :cond_25

    .line 482
    return-object v1

    .line 485
    :cond_25
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v1

    .line 486
    .local v1, "streamID":I
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 487
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 490
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v6, :cond_41

    .line 491
    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 492
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v2, v7

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 496
    :cond_41
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v6, :cond_58

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v2, v7, :cond_58

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v2

    if-nez v2, :cond_58

    .line 497
    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 498
    iput v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 501
    :cond_58
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    .line 502
    .local v2, "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    iget-byte v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/2addr v5, v4

    if-eqz v5, :cond_64

    const/4 v3, 0x1

    nop

    :cond_64
    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    .line 504
    return-object v2

    .line 451
    .end local v0    # "minLength":I
    .end local v1    # "streamID":I
    .end local v2    # "spdySynReplyFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    :pswitch_68
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    const/16 v2, 0xa

    if-ge v0, v6, :cond_71

    const/16 v0, 0xc

    goto :goto_73

    :cond_71
    const/16 v0, 0xa

    .line 452
    .restart local v0    # "minLength":I
    :goto_73
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    if-ge v5, v0, :cond_7a

    .line 453
    return-object v1

    .line 456
    :cond_7a
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 457
    .local v1, "offset":I
    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v5

    .line 458
    .local v5, "streamID":I
    add-int/lit8 v8, v1, 0x4

    invoke-static {p1, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v8

    .line 459
    .local v8, "associatedToStreamID":I
    add-int/lit8 v9, v1, 0x8

    invoke-interface {p1, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v9

    shr-int/lit8 v9, v9, 0x5

    and-int/lit8 v9, v9, 0x7

    int-to-byte v9, v9

    .line 460
    .local v9, "priority":B
    iget v10, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v10, v6, :cond_9a

    .line 461
    shr-int/lit8 v10, v9, 0x1

    int-to-byte v9, v10

    .line 463
    :cond_9a
    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 464
    iget v10, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v10, v2

    iput v10, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 467
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v6, :cond_b9

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v2, v7, :cond_b9

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v2

    if-nez v2, :cond_b9

    .line 468
    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 469
    iput v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 472
    :cond_b9
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;

    invoke-direct {v2, v5, v8, v9}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;-><init>(IIB)V

    .line 474
    .local v2, "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    iget-byte v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/2addr v6, v4

    if-eqz v6, :cond_c5

    const/4 v6, 0x1

    goto :goto_c6

    :cond_c5
    const/4 v6, 0x0

    :goto_c6
    invoke-interface {v2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)V

    .line 475
    iget-byte v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/2addr v6, v7

    if-eqz v6, :cond_d0

    const/4 v3, 0x1

    nop

    :cond_d0
    invoke-interface {v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setUnidirectional(Z)V

    .line 477
    return-object v2

    .line 507
    .end local v0    # "minLength":I
    .end local v1    # "offset":I
    .end local v2    # "spdySynStreamFrame":Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .end local v5    # "streamID":I
    .end local v8    # "associatedToStreamID":I
    .end local v9    # "priority":B
    :cond_d4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v5, :cond_db

    .line 508
    return-object v1

    .line 512
    :cond_db
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_ea

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-le v0, v5, :cond_ea

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v2, :cond_ea

    .line 513
    return-object v1

    .line 516
    :cond_ea
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    .line 517
    .local v0, "streamID":I
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 518
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 521
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v1, v6, :cond_10a

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eqz v1, :cond_10a

    .line 522
    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 523
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v7

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 527
    :cond_10a
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v1, v6, :cond_121

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v1, v7, :cond_121

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v1

    if-nez v1, :cond_121

    .line 528
    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 529
    iput v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 532
    :cond_121
    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(I)V

    .line 533
    .local v1, "spdyHeadersFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;
    iget-byte v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/2addr v2, v4

    if-eqz v2, :cond_12d

    const/4 v3, 0x1

    nop

    :cond_12d
    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->setLast(Z)V

    .line 535
    return-object v1

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_68
        :pswitch_17
    .end packed-switch
.end method

.method private readLengthField()I
    .registers 3

    .line 552
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_c

    .line 553
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    return v0

    .line 555
    :cond_c
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method private willGenerateControlFrame()Z
    .registers 2

    .line 730
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    packed-switch v0, :pswitch_data_a

    .line 744
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 739
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 20
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyFrameDecoder$State:[I

    iget-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-virtual {v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_238

    .line 324
    new-instance v0, Ljava/lang/Error;

    const-string v4, "Shouldn\'t reach here."

    invoke-direct {v0, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :pswitch_1e
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-interface {v3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 321
    return-object v6

    .line 311
    :pswitch_26
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 312
    .local v0, "numBytes":I
    invoke-interface {v3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 313
    iget v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v4, v0

    iput v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 314
    iget v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v4, :cond_40

    .line 315
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 317
    :cond_40
    return-object v6

    .line 286
    .end local v0    # "numBytes":I
    :pswitch_41
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    if-nez v0, :cond_4f

    .line 287
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 288
    const-string v0, "Received invalid data frame"

    invoke-static {v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 289
    return-object v6

    .line 293
    :cond_4f
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    iget v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 296
    .local v0, "dataLength":I
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    if-ge v7, v0, :cond_5e

    .line 297
    return-object v6

    .line 300
    :cond_5e
    new-instance v6, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    iget v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    invoke-direct {v6, v7}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    .line 301
    .local v6, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-interface {v3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 302
    iget v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v7, v0

    iput v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 304
    iget v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v7, :cond_83

    .line 305
    iget-byte v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/2addr v7, v5

    if-eqz v7, :cond_7c

    const/4 v4, 0x1

    nop

    :cond_7c
    invoke-interface {v6, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    .line 306
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 308
    :cond_83
    return-object v6

    .line 254
    .end local v0    # "dataLength":I
    .end local v6    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    :pswitch_84
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 255
    .local v4, "compressedBytes":I
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v0, v4

    iput v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 258
    :try_start_93
    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decodeHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9a} :catch_c4

    .line 265
    nop

    .line 267
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    if-eqz v0, :cond_b6

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 268
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 269
    .local v0, "frame":Ljava/lang/Object;
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 270
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 271
    iget v5, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v5, :cond_b5

    .line 272
    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v5, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 274
    :cond_b5
    return-object v0

    .line 277
    .end local v0    # "frame":Ljava/lang/Object;
    :cond_b6
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_c3

    .line 278
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 279
    .restart local v0    # "frame":Ljava/lang/Object;
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 280
    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v5, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 281
    return-object v0

    .line 283
    .end local v0    # "frame":Ljava/lang/Object;
    :cond_c3
    return-object v6

    .line 259
    :catch_c4
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v5, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 261
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 262
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 263
    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 264
    return-object v6

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "compressedBytes":I
    :pswitch_d1
    :try_start_d1
    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readHeaderBlockFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 237
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    if-eqz v0, :cond_ec

    .line 238
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_e8

    .line 239
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 240
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 241
    .local v0, "frame":Ljava/lang/Object;
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 242
    return-object v0

    .line 244
    .end local v0    # "frame":Ljava/lang/Object;
    :cond_e8
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :try_end_ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_ec} :catch_ed

    .line 246
    :cond_ec
    return-object v6

    .line 247
    :catch_ed
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 249
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 250
    return-object v6

    .line 168
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_f6
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-nez v0, :cond_13c

    .line 170
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v7, :cond_103

    .line 171
    return-object v6

    .line 173
    :cond_103
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {v3, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    .line 174
    .local v0, "numEntries":I
    invoke-interface {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 175
    iget v9, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v9, v7

    iput v9, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 178
    iget v9, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    and-int/lit8 v9, v9, 0x7

    if-nez v9, :cond_134

    iget v9, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    shr-int/2addr v9, v8

    if-eq v9, v0, :cond_11f

    goto :goto_134

    .line 184
    :cond_11f
    new-instance v9, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;

    invoke-direct {v9}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;-><init>()V

    iput-object v9, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 186
    iget-byte v9, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/2addr v9, v5

    if-eqz v9, :cond_12d

    const/4 v9, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v9, 0x0

    .line 187
    .local v9, "clear":Z
    :goto_12e
    iget-object v10, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v10, v9}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setClearPreviouslyPersistedSettings(Z)V

    goto :goto_13c

    .line 179
    .end local v9    # "clear":Z
    :cond_134
    :goto_134
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 180
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 181
    return-object v6

    .line 190
    .end local v0    # "numEntries":I
    :cond_13c
    :goto_13c
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    shr-int/2addr v0, v8

    iget v9, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    shr-int/2addr v9, v8

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    .local v0, "readableEntries":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_149
    if-ge v9, v0, :cond_1b0

    .line 194
    iget v10, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v10, v8, :cond_16c

    .line 198
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    .line 201
    .local v10, "ID":I
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v11

    goto :goto_17b

    .line 203
    .end local v10    # "ID":I
    :cond_16c
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v11

    .line 204
    .local v11, "ID_flags":B
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v10

    invoke-static {v3, v10}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v10

    .line 205
    .restart local v10    # "ID":I
    invoke-interface {v3, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 207
    :goto_17b
    invoke-interface/range {p3 .. p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v12

    invoke-static {v3, v12}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v12

    .line 208
    .local v12, "value":I
    invoke-interface {v3, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 211
    if-nez v10, :cond_192

    .line 212
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 213
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 214
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 215
    return-object v6

    .line 218
    :cond_192
    iget-object v13, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v13, v10}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isSet(I)Z

    move-result v13

    if-nez v13, :cond_1ad

    .line 219
    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_1a0

    const/4 v13, 0x1

    goto :goto_1a1

    :cond_1a0
    const/4 v13, 0x0

    .line 220
    .local v13, "persistVal":Z
    :goto_1a1
    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_1a7

    const/4 v14, 0x1

    goto :goto_1a8

    :cond_1a7
    const/4 v14, 0x0

    .line 221
    .local v14, "persisted":Z
    :goto_1a8
    iget-object v15, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v15, v10, v12, v13, v14}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setValue(IIZZ)V

    .line 191
    .end local v10    # "ID":I
    .end local v11    # "ID_flags":B
    .end local v12    # "value":I
    .end local v13    # "persistVal":Z
    .end local v14    # "persisted":Z
    :cond_1ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_149

    .line 225
    .end local v9    # "i":I
    :cond_1b0
    iget v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    mul-int/lit8 v5, v0, 0x8

    sub-int/2addr v4, v5

    iput v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    .line 226
    iget v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v4, :cond_1c4

    .line 227
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 228
    iget-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 229
    .local v4, "frame":Ljava/lang/Object;
    iput-object v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    .line 230
    return-object v4

    .line 232
    .end local v4    # "frame":Ljava/lang/Object;
    :cond_1c4
    return-object v6

    .line 156
    .end local v0    # "readableEntries":I
    :pswitch_1c5
    :try_start_1c5
    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readControlFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "frame":Ljava/lang/Object;
    if-eqz v0, :cond_1cf

    .line 158
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :try_end_1cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c5 .. :try_end_1cf} :catch_1d0

    .line 160
    :cond_1cf
    return-object v0

    .line 161
    .end local v0    # "frame":Ljava/lang/Object;
    :catch_1d0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 163
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 165
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    return-object v6

    .line 124
    :pswitch_1d9
    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readCommonHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 125
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    sget-object v7, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    if-ne v0, v7, :cond_205

    .line 126
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    iget v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    if-eq v0, v7, :cond_202

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported version: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    goto :goto_205

    .line 129
    :cond_202
    invoke-direct/range {p0 .. p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 135
    :cond_205
    :goto_205
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_237

    .line 136
    iget-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    sget-object v7, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    if-ne v0, v7, :cond_233

    .line 137
    iget v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    if-nez v0, :cond_21d

    .line 138
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 139
    const-string v0, "Received invalid data frame"

    invoke-static {v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    .line 140
    return-object v6

    .line 143
    :cond_21d
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    iget v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    invoke-direct {v0, v6}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    .line 144
    .local v0, "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    iget-byte v6, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/2addr v6, v5

    if-eqz v6, :cond_22b

    const/4 v4, 0x1

    nop

    :cond_22b
    invoke-interface {v0, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    .line 145
    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 146
    return-object v0

    .line 149
    .end local v0    # "spdyDataFrame":Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
    :cond_233
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 152
    :cond_237
    return-object v6

    :pswitch_data_238
    .packed-switch 0x1
        :pswitch_1d9
        :pswitch_1c5
        :pswitch_f6
        :pswitch_d1
        :pswitch_84
        :pswitch_41
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_a

    .line 114
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->end()V

    .line 112
    return-object v0

    .line 114
    :catchall_a
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->end()V

    throw v0
.end method
