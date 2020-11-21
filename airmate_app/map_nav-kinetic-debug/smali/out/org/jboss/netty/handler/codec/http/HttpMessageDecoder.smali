.class public abstract Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "HttpMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
        "Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:J

.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private contentRead:I

.field private headerSize:I

.field private final maxChunkSize:I

.field private final maxHeaderSize:I

.field private final maxInitialLineLength:I

.field private message:Lorg/jboss/netty/handler/codec/http/HttpMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 101
    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 138
    const/16 v0, 0x2000

    const/16 v1, 0x1000

    invoke-direct {p0, v1, v0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;-><init>(III)V

    .line 139
    return-void
.end method

.method protected constructor <init>(III)V
    .registers 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .line 147
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    .line 149
    if-lez p1, :cond_41

    .line 154
    if-lez p2, :cond_2a

    .line 159
    if-ltz p3, :cond_13

    .line 164
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    .line 165
    iput p2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    .line 166
    iput p3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    .line 167
    return-void

    .line 160
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxChunkSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxHeaderSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxInitialLineLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findEndOfString(Ljava/lang/String;)I
    .registers 3
    .param p0, "sb"    # Ljava/lang/String;

    .line 759
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "result":I
    :goto_4
    if-lez v0, :cond_16

    .line 760
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_13

    .line 761
    goto :goto_16

    .line 759
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 764
    :cond_16
    :goto_16
    return v0
.end method

.method private static findNonWhitespace(Ljava/lang/String;I)I
    .registers 4
    .param p0, "sb"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 739
    move v0, p1

    .local v0, "result":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 740
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_12

    .line 741
    goto :goto_15

    .line 739
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 744
    :cond_15
    :goto_15
    return v0
.end method

.method private static findWhitespace(Ljava/lang/String;I)I
    .registers 4
    .param p0, "sb"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 749
    move v0, p1

    .local v0, "result":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 750
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 751
    goto :goto_15

    .line 749
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 754
    :cond_15
    :goto_15
    return v0
.end method

.method private static getChunkSize(Ljava/lang/String;)I
    .registers 5
    .param p0, "hex"    # Ljava/lang/String;

    .line 636
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 637
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 638
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 639
    .local v2, "c":C
    const/16 v3, 0x3b

    if-eq v2, v3, :cond_24

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_24

    .line 637
    .end local v2    # "c":C
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 640
    .restart local v2    # "c":C
    :cond_24
    :goto_24
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 641
    nop

    .line 645
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_29
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private read(Lorg/jboss/netty/buffer/ChannelBuffer;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "len"    # I

    .line 492
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 493
    .local v0, "internal":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-lt v1, p2, :cond_18

    .line 494
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    .line 495
    .local v1, "index":I
    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 498
    .local v2, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    add-int v3, v1, p2

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 499
    return-object v2

    .line 501
    .end local v1    # "index":I
    .end local v2    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_18
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1
.end method

.method private readFixedLengthContent(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 9
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 462
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    .line 463
    .local v0, "length":J
    nop

    .line 464
    long-to-int v2, v0

    iget v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    sub-int/2addr v2, v3

    .line 465
    .local v2, "toRead":I
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v3

    if-le v2, v3, :cond_17

    .line 466
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v2

    .line 468
    :cond_17
    iget v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    .line 469
    iget v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_4f

    .line 470
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v3

    if-nez v3, :cond_45

    .line 471
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 472
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    aput-object v6, v3, v5

    new-instance v5, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->read(Lorg/jboss/netty/buffer/ChannelBuffer;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    aput-object v5, v3, v4

    return-object v3

    .line 474
    :cond_45
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {p0, p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->read(Lorg/jboss/netty/buffer/ChannelBuffer;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v3

    .line 477
    :cond_4f
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_5b

    .line 478
    long-to-int v3, v0

    invoke-direct {p0, p1, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->read(Lorg/jboss/netty/buffer/ChannelBuffer;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_65

    .line 480
    :cond_5b
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    long-to-int v4, v0

    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 482
    :goto_65
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .registers 8
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 594
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 598
    .local v1, "headerSize":I
    :goto_9
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    int-to-char v2, v2

    .line 599
    .local v2, "nextByte":C
    add-int/lit8 v1, v1, 0x1

    .line 601
    const/16 v3, 0xa

    if-eq v2, v3, :cond_49

    const/16 v4, 0xd

    if-eq v2, v4, :cond_19

    goto :goto_23

    .line 603
    :cond_19
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v4

    int-to-char v2, v4

    .line 604
    add-int/lit8 v1, v1, 0x1

    .line 605
    if-ne v2, v3, :cond_23

    .line 606
    goto :goto_4a

    .line 614
    :cond_23
    :goto_23
    iget v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    if-ge v1, v3, :cond_2b

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    .end local v2    # "nextByte":C
    goto :goto_9

    .line 619
    .restart local v2    # "nextByte":C
    :cond_2b
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP header is larger than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_49
    nop

    .line 628
    .end local v2    # "nextByte":C
    :goto_4a
    iput v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .registers 11
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 507
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 508
    .local v1, "message":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 510
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 511
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_56

    .line 512
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->clearHeaders()V

    .line 514
    :cond_14
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 515
    .local v5, "firstChar":C
    if-eqz v3, :cond_39

    const/16 v6, 0x20

    if-eq v5, v6, :cond_22

    const/16 v7, 0x9

    if-ne v5, v7, :cond_39

    .line 516
    :cond_22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_47

    .line 518
    :cond_39
    if-eqz v3, :cond_3e

    .line 519
    invoke-interface {v1, v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    :cond_3e
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 522
    .local v6, "header":[Ljava/lang/String;
    aget-object v3, v6, v0

    .line 523
    const/4 v7, 0x1

    aget-object v4, v6, v7

    .line 526
    .end local v6    # "header":[Ljava/lang/String;
    :goto_47
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 527
    .end local v5    # "firstChar":C
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_14

    .line 530
    if-eqz v3, :cond_56

    .line 531
    invoke-interface {v1, v3, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    :cond_56
    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 538
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    goto :goto_79

    .line 539
    :cond_5f
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 546
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    goto :goto_79

    .line 547
    :cond_68
    const-wide/16 v5, -0x1

    invoke-static {v1, v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_77

    .line 548
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    goto :goto_79

    .line 550
    :cond_77
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 552
    .local v0, "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    :goto_79
    return-object v0
.end method

.method private static readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;
    .registers 8
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "maxLineLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 650
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 652
    .local v1, "lineLength":I
    :goto_8
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    .line 653
    .local v2, "nextByte":B
    const/16 v3, 0xd

    const/16 v4, 0xa

    if-ne v2, v3, :cond_1d

    .line 654
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    .line 655
    if-ne v2, v4, :cond_2c

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 658
    :cond_1d
    if-ne v2, v4, :cond_24

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 661
    :cond_24
    if-ge v1, p1, :cond_2d

    .line 670
    add-int/lit8 v1, v1, 0x1

    .line 671
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    .end local v2    # "nextByte":B
    :cond_2c
    goto :goto_8

    .line 666
    .restart local v2    # "nextByte":B
    :cond_2d
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An HTTP line is larger than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    .registers 11
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    .line 557
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 559
    .local v2, "lastHeader":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7d

    .line 560
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;

    invoke-direct {v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;-><init>()V

    .line 562
    .local v3, "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :cond_13
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 563
    .local v4, "firstChar":C
    const/4 v5, 0x1

    if-eqz v2, :cond_4e

    const/16 v6, 0x20

    if-eq v4, v6, :cond_22

    const/16 v6, 0x9

    if-ne v4, v6, :cond_4e

    .line 564
    :cond_22
    invoke-interface {v3, v2}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 565
    .local v6, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4d

    .line 566
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .line 567
    .local v7, "lastPos":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, "newString":Ljava/lang/String;
    invoke-interface {v6, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v5    # "newString":Ljava/lang/String;
    .end local v6    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lastPos":I
    :cond_4d
    goto :goto_72

    .line 573
    :cond_4e
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 574
    .local v6, "header":[Ljava/lang/String;
    aget-object v7, v6, v0

    .line 575
    .local v7, "name":Ljava/lang/String;
    const-string v8, "Content-Length"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_71

    const-string v8, "Transfer-Encoding"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_71

    const-string v8, "Trailer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_71

    .line 578
    aget-object v5, v6, v5

    invoke-interface {v3, v7, v5}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    :cond_71
    move-object v2, v7

    .line 583
    .end local v6    # "header":[Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :goto_72
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .end local v4    # "firstChar":C
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    .line 586
    return-object v3

    .line 589
    .end local v3    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :cond_7d
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    return-object v0
.end method

.method private reset()Ljava/lang/Object;
    .registers 4

    .line 436
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 437
    .local v0, "message":Lorg/jboss/netty/handler/codec/http/HttpMessage;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 439
    .local v1, "content":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 440
    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 441
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 443
    :cond_c
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 445
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 446
    return-object v0
.end method

.method private static skipControlCharacters(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 451
    :goto_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    int-to-char v0, v0

    .line 452
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 454
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 455
    nop

    .line 458
    .end local v0    # "c":C
    return-void

    .line 457
    :cond_1c
    goto :goto_0
.end method

.method private static splitHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p0, "sb"    # Ljava/lang/String;

    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 707
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 708
    .local v2, "nameStart":I
    move v3, v2

    .local v3, "nameEnd":I
    :goto_a
    const/16 v4, 0x3a

    if-ge v3, v0, :cond_1e

    .line 709
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 710
    .local v5, "ch":C
    if-eq v5, v4, :cond_1e

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 711
    goto :goto_1e

    .line 708
    .end local v5    # "ch":C
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 715
    :cond_1e
    :goto_1e
    move v5, v3

    .local v5, "colonEnd":I
    :goto_1f
    if-ge v5, v0, :cond_2d

    .line 716
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_2a

    .line 717
    add-int/lit8 v5, v5, 0x1

    .line 718
    goto :goto_2d

    .line 715
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 722
    :cond_2d
    :goto_2d
    invoke-static {p0, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v4

    .line 723
    .local v4, "valueStart":I
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v4, v0, :cond_42

    .line 724
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    const-string v1, ""

    aput-object v1, v6, v7

    return-object v6

    .line 730
    :cond_42
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findEndOfString(Ljava/lang/String;)I

    move-result v8

    .line 731
    .local v8, "valueEnd":I
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    return-object v6
.end method

.method private static splitInitialLine(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "sb"    # Ljava/lang/String;

    .line 684
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 685
    .local v1, "aStart":I
    invoke-static {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 687
    .local v2, "aEnd":I
    invoke-static {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 688
    .local v3, "bStart":I
    invoke-static {p0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findWhitespace(Ljava/lang/String;I)I

    move-result v4

    .line 690
    .local v4, "bEnd":I
    invoke-static {p0, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v5

    .line 691
    .local v5, "cStart":I
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findEndOfString(Ljava/lang/String;)I

    move-result v6

    .line 693
    .local v6, "cEnd":I
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v7, v8

    if-ge v5, v6, :cond_30

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_30
    const-string v0, ""

    :goto_32
    const/4 v8, 0x2

    aput-object v0, v7, v8

    return-object v7
.end method


# virtual methods
.method protected abstract createMessage([Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
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

    .line 101
    move-object v0, p4

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;
    .registers 15
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_22c

    .line 402
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_17
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    move-result-object v0

    .line 392
    .local v0, "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-nez v1, :cond_24

    .line 394
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 396
    :cond_24
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    .line 398
    return-object v0

    .line 338
    .end local v0    # "trailer":Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    :pswitch_28
    nop

    .line 339
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    long-to-int v0, v0

    .line 340
    .local v0, "chunkSize":I
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v1

    .line 348
    .local v1, "readLimit":I
    if-nez v1, :cond_33

    .line 349
    return-object v4

    .line 352
    :cond_33
    move v2, v0

    .line 353
    .local v2, "toRead":I
    iget v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v2, v3, :cond_3a

    .line 354
    iget v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    .line 356
    :cond_3a
    if-le v2, v1, :cond_3d

    .line 357
    move v2, v1

    .line 359
    :cond_3d
    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 360
    .local v3, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    if-le v0, v2, :cond_4a

    .line 361
    sub-int/2addr v0, v2

    goto :goto_4b

    .line 363
    :cond_4a
    const/4 v0, 0x0

    .line 365
    :goto_4b
    int-to-long v5, v0

    iput-wide v5, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 367
    if-nez v0, :cond_55

    .line 369
    sget-object v5, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 372
    :cond_55
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 373
    return-object v3

    .line 378
    .end local v0    # "chunkSize":I
    .end local v1    # "readLimit":I
    .end local v2    # "toRead":I
    .end local v3    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :cond_5c
    :goto_5c
    :pswitch_5c
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    .line 379
    .local v0, "next":B
    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v0, v1, :cond_72

    .line 380
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_7a

    .line 381
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 382
    return-object v4

    .line 384
    :cond_72
    if-ne v0, v2, :cond_7a

    .line 385
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 386
    return-object v4

    .line 388
    .end local v0    # "next":B
    :cond_7a
    goto :goto_5c

    .line 318
    :pswitch_7b
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    invoke-static {p3, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->getChunkSize(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "chunkSize":I
    int-to-long v2, v1

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 321
    if-nez v1, :cond_90

    .line 322
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 323
    return-object v4

    .line 324
    :cond_90
    iget v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v1, v2, :cond_9a

    .line 326
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    goto :goto_9f

    .line 328
    :cond_9a
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 332
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "chunkSize":I
    :goto_9f
    :pswitch_9f
    nop

    .line 333
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    long-to-int v1, v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 334
    .local v0, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 335
    return-object v0

    .line 274
    .end local v0    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :pswitch_b2
    nop

    .line 275
    iget-wide v5, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    long-to-int v0, v5

    .line 276
    .local v0, "chunkSize":I
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v5

    .line 284
    .local v5, "readLimit":I
    if-nez v5, :cond_bd

    .line 285
    return-object v4

    .line 288
    :cond_bd
    move v4, v0

    .line 289
    .local v4, "toRead":I
    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v4, v6, :cond_c4

    .line 290
    iget v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    .line 292
    :cond_c4
    if-le v4, v5, :cond_c7

    .line 293
    move v4, v5

    .line 295
    :cond_c7
    new-instance v6, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 296
    .local v6, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    if-le v0, v4, :cond_d4

    .line 297
    sub-int/2addr v0, v4

    goto :goto_d5

    .line 299
    :cond_d4
    const/4 v0, 0x0

    .line 301
    :goto_d5
    int-to-long v7, v0

    iput-wide v7, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 303
    if-nez v0, :cond_ec

    .line 305
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    .line 306
    invoke-interface {v6}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v7

    if-nez v7, :cond_ec

    .line 308
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    aput-object v1, v2, v3

    return-object v2

    .line 311
    :cond_ec
    return-object v6

    .line 254
    .end local v0    # "chunkSize":I
    .end local v4    # "toRead":I
    .end local v5    # "readLimit":I
    .end local v6    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :pswitch_ed
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v0

    .line 255
    .local v0, "toRead":I
    iget v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v0, v4, :cond_f7

    .line 256
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    .line 258
    :cond_f7
    new-instance v4, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 260
    .local v4, "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v5

    if-nez v5, :cond_118

    .line 262
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    .line 263
    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v5

    if-nez v5, :cond_118

    .line 265
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    aput-object v1, v2, v3

    return-object v2

    .line 268
    :cond_118
    return-object v4

    .line 175
    .end local v0    # "toRead":I
    .end local v4    # "chunk":Lorg/jboss/netty/handler/codec/http/HttpChunk;
    :pswitch_119
    :try_start_119
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->skipControlCharacters(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 176
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V
    :try_end_121
    .catchall {:try_start_119 .. :try_end_121} :catchall_1ed

    .line 177
    nop

    .line 402
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint()V

    .line 179
    nop

    .line 182
    :pswitch_126
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    invoke-static {p3, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitInitialLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "initialLine":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_13a

    .line 185
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 186
    return-object v4

    .line 189
    :cond_13a
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->createMessage([Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 190
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 193
    .end local v0    # "initialLine":[Ljava/lang/String;
    :pswitch_145
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-result-object v0

    .line 194
    .local v0, "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 195
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    if-ne v0, v1, :cond_158

    .line 197
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 199
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    return-object v1

    .line 200
    :cond_158
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    if-ne v0, v1, :cond_166

    .line 204
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-string v2, "Transfer-Encoding"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    return-object v1

    .line 207
    :cond_166
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v5, -0x1

    invoke-static {v1, v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v1

    .line 208
    .local v1, "contentLength":J
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_1e4

    cmp-long v7, v1, v5

    if-nez v7, :cond_17f

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->isDecodingRequest()Z

    move-result v7

    if-eqz v7, :cond_17f

    goto :goto_1e4

    .line 213
    :cond_17f
    sget-object v7, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State:[I

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_248

    .line 234
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :pswitch_1a1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-gt v5, v6, :cond_1b1

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-static {v5}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v5

    if-eqz v5, :cond_1ce

    .line 228
    :cond_1b1
    sget-object v4, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 229
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v4, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 230
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    return-object v3

    .line 215
    :pswitch_1be
    iget v7, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    int-to-long v7, v7

    cmp-long v9, v1, v7

    if-gtz v9, :cond_1cf

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-static {v7}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v7

    if-eqz v7, :cond_1ce

    goto :goto_1cf

    .line 238
    .end local v1    # "contentLength":J
    :cond_1ce
    return-object v4

    .line 217
    .restart local v1    # "contentLength":J
    :cond_1cf
    :goto_1cf
    sget-object v4, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 218
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v4, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 221
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-static {v3, v5, v6}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    .line 222
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    return-object v3

    .line 209
    :cond_1e4
    :goto_1e4
    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 210
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 178
    .end local v0    # "nextState":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .end local v1    # "contentLength":J
    :catchall_1ed
    move-exception v0

    .line 402
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint()V

    .line 178
    throw v0

    .line 241
    .end local v1    # "this":Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
    :pswitch_1f3
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v0

    .line 242
    .local v0, "toRead":I
    iget v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v0, v4, :cond_1fd

    .line 243
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    .line 245
    :cond_1fd
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v4

    if-nez v4, :cond_21c

    .line 246
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v4, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    aput-object v4, v2, v1

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    aput-object v1, v2, v3

    return-object v2

    .line 249
    :cond_21c
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v1

    .line 271
    .end local v0    # "toRead":I
    :pswitch_226
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readFixedLengthContent(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_226
        :pswitch_1f3
        :pswitch_119
        :pswitch_126
        :pswitch_145
        :pswitch_ed
        :pswitch_b2
        :pswitch_7b
        :pswitch_9f
        :pswitch_28
        :pswitch_5c
        :pswitch_17
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_1be
        :pswitch_1a1
    .end packed-switch
.end method

.method protected isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .registers 7
    .param p1, "msg"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 409
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 410
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 411
    .local v0, "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    .line 418
    .local v2, "code":I
    const/16 v3, 0x64

    const/4 v4, 0x1

    if-lt v2, v3, :cond_27

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_27

    .line 419
    const/16 v3, 0x65

    if-ne v2, v3, :cond_26

    const-string v3, "Sec-WebSocket-Accept"

    invoke-interface {v0, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 421
    return v1

    .line 423
    :cond_26
    return v4

    .line 426
    :cond_27
    const/16 v3, 0x130

    if-eq v2, v3, :cond_2f

    packed-switch v2, :pswitch_data_32

    .end local v0    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .end local v2    # "code":I
    goto :goto_30

    .line 428
    .restart local v0    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .restart local v2    # "code":I
    :cond_2f
    :pswitch_2f
    return v4

    .line 431
    .end local v0    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .end local v2    # "code":I
    :cond_30
    :goto_30
    return v1

    nop

    :pswitch_data_32
    .packed-switch 0xcc
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method protected abstract isDecodingRequest()Z
.end method
