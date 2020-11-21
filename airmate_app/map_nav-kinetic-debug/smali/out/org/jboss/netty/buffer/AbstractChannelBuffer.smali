.class public abstract Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.super Ljava/lang/Object;
.source "AbstractChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBuffer;


# instance fields
.field private markedReaderIndex:I

.field private markedWriterIndex:I

.field private readerIndex:I

.field private writerIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesBefore(B)I
    .registers 4
    .param p1, "value"    # B

    .line 594
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IB)I
    .registers 4
    .param p1, "length"    # I
    .param p2, "value"    # B

    .line 602
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 603
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IIB)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .line 612
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IIB)I

    move-result v0

    .line 613
    .local v0, "endIndex":I
    if-gez v0, :cond_a

    .line 614
    const/4 v1, -0x1

    return v1

    .line 616
    :cond_a
    sub-int v1, v0, p1

    return v1
.end method

.method public bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 621
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 622
    .local v0, "endIndex":I
    if-gez v0, :cond_a

    .line 623
    const/4 v1, -0x1

    return v1

    .line 625
    :cond_a
    sub-int v1, v0, p1

    return v1
.end method

.method public bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 4
    .param p1, "length"    # I
    .param p2, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 607
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 608
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method public bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 4
    .param p1, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 598
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method protected checkReadableBytes(I)V
    .registers 5
    .param p1, "minimumReadableBytes"    # I

    .line 660
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_7

    .line 664
    return-void

    .line 661
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough readable bytes - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 72
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .registers 3
    .param p1, "that"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 642
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->compare(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public copy()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3

    .line 522
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()V
    .registers 4

    .line 107
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    if-nez v0, :cond_5

    .line 108
    return-void

    .line 110
    :cond_5
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 111
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 112
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    .line 113
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    .line 114
    iput v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 115
    return-void
.end method

.method public ensureWritableBytes(I)V
    .registers 5
    .param p1, "writableBytes"    # I

    .line 118
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v0

    if-gt p1, v0, :cond_7

    .line 122
    return-void

    .line 119
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writable bytes exceeded: Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 635
    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_6

    .line 636
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->equals(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)Z

    move-result v0

    return v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 161
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 162
    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .line 165
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    if-gt p3, v0, :cond_16

    .line 169
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 170
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 171
    return-void

    .line 166
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read: Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes(I[B)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 157
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(I[BII)V

    .line 158
    return-void
.end method

.method public getChar(I)C
    .registers 3
    .param p1, "index"    # I

    .line 145
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "index"    # I

    .line 153
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .param p1, "index"    # I

    .line 149
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getMedium(I)I
    .registers 4
    .param p1, "index"    # I

    .line 133
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    .line 134
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    .line 135
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 137
    :cond_c
    return v0
.end method

.method public getUnsignedByte(I)S
    .registers 3
    .param p1, "index"    # I

    .line 125
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .registers 6
    .param p1, "index"    # I

    .line 141
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedShort(I)I
    .registers 4
    .param p1, "index"    # I

    .line 129
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 630
    invoke-static {p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->hashCode(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public indexOf(IIB)I
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 586
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I

    move-result v0

    return v0
.end method

.method public indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 590
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method public markReaderIndex()V
    .registers 2

    .line 91
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    .line 92
    return-void
.end method

.method public markWriterIndex()V
    .registers 2

    .line 99
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    .line 100
    return-void
.end method

.method public readByte()B
    .registers 4

    .line 235
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-eq v0, v1, :cond_11

    .line 239
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getByte(I)B

    move-result v0

    return v0

    .line 236
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Readable byte limit exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .registers 5
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 376
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    .line 377
    .local v0, "readBytes":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 378
    return v0
.end method

.method public readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "length"    # I

    .line 303
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 304
    if-nez p1, :cond_8

    .line 305
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 307
    :cond_8
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 308
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-interface {v0, p0, v1, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 309
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 310
    return-object v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 316
    .local v0, "endIndex":I
    if-ltz v0, :cond_13

    .line 319
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 317
    :cond_13
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 383
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 384
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 385
    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 367
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 368
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 369
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 370
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 371
    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 348
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 349
    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 6
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .line 352
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    if-gt p2, v0, :cond_16

    .line 356
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 357
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 358
    return-void

    .line 353
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read: Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 5
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 361
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 362
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 363
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 364
    return-void
.end method

.method public readBytes([B)V
    .registers 4
    .param p1, "dst"    # [B

    .line 344
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes([BII)V

    .line 345
    return-void
.end method

.method public readBytes([BII)V
    .registers 5
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 338
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 339
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(I[BII)V

    .line 340
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 341
    return-void
.end method

.method public readChar()C
    .registers 2

    .line 291
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .registers 3

    .line 299
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    .line 295
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .registers 4

    .line 273
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 274
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v1

    .line 275
    .local v1, "v":I
    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 276
    return v1
.end method

.method public readLong()J
    .registers 5

    .line 284
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 285
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getLong(I)J

    move-result-wide v1

    .line 286
    .local v1, "v":J
    iget v3, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 287
    return-wide v1
.end method

.method public readMedium()I
    .registers 3

    .line 258
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readUnsignedMedium()I

    move-result v0

    .line 259
    .local v0, "value":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    .line 260
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 262
    :cond_c
    return v0
.end method

.method public readShort()S
    .registers 4

    .line 247
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 248
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v1

    .line 249
    .local v1, "v":S
    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 250
    return v1
.end method

.method public readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "length"    # I

    .line 323
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 324
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 325
    return-object v0
.end method

.method public readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 331
    .local v0, "endIndex":I
    if-ltz v0, :cond_13

    .line 334
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 332
    :cond_13
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public readUnsignedByte()S
    .registers 2

    .line 243
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedInt()J
    .registers 5

    .line 280
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .registers 4

    .line 266
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    .line 267
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getUnsignedMedium(I)I

    move-result v1

    .line 268
    .local v1, "v":I
    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 269
    return v1
.end method

.method public readUnsignedShort()I
    .registers 3

    .line 254
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readable()Z
    .registers 2

    .line 75
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public readableBytes()I
    .registers 3

    .line 83
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readerIndex()I
    .registers 2

    .line 39
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return v0
.end method

.method public readerIndex(I)V
    .registers 3
    .param p1, "readerIndex"    # I

    .line 43
    if-ltz p1, :cond_9

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-gt p1, v0, :cond_9

    .line 46
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 47
    return-void

    .line 44
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public resetReaderIndex()V
    .registers 2

    .line 95
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex(I)V

    .line 96
    return-void
.end method

.method public resetWriterIndex()V
    .registers 2

    .line 103
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 104
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 190
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 191
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .line 194
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-gt p3, v0, :cond_16

    .line 198
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 199
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 200
    return-void

    .line 195
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to write: Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBytes(I[B)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 186
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(I[BII)V

    .line 187
    return-void
.end method

.method public setChar(II)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setShort(II)V

    .line 175
    return-void
.end method

.method public setDouble(ID)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 182
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    .line 183
    return-void
.end method

.method public setFloat(IF)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 178
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    .line 179
    return-void
.end method

.method public setIndex(II)V
    .registers 6
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .line 62
    if-ltz p1, :cond_f

    if-gt p1, p2, :cond_f

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_f

    .line 66
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 67
    iput p2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 68
    return-void

    .line 63
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid writerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setZero(II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 203
    if-nez p2, :cond_3

    .line 204
    return-void

    .line 206
    :cond_3
    if-ltz p2, :cond_41

    .line 211
    ushr-int/lit8 v0, p2, 0x3

    .line 212
    .local v0, "nLong":I
    and-int/lit8 v1, p2, 0x7

    .line 213
    .local v1, "nBytes":I
    move v2, p1

    move p1, v0

    .local v2, "index":I
    .local p1, "i":I
    :goto_b
    if-lez p1, :cond_17

    .line 214
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    .line 215
    add-int/lit8 v2, v2, 0x8

    .line 213
    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    .line 217
    .end local p1    # "i":I
    :cond_17
    const/4 p1, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1f

    .line 218
    invoke-virtual {p0, v2, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    goto :goto_40

    .line 219
    :cond_1f
    if-ge v1, v3, :cond_2f

    .line 220
    move v3, v2

    move v2, v1

    .local v2, "i":I
    .local v3, "index":I
    :goto_23
    if-lez v2, :cond_2d

    .line 221
    invoke-virtual {p0, v3, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    .line 222
    add-int/lit8 v3, v3, 0x1

    .line 220
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 232
    .end local v2    # "i":I
    :cond_2d
    move v2, v3

    goto :goto_40

    .line 225
    .end local v3    # "index":I
    .local v2, "index":I
    :cond_2f
    invoke-virtual {p0, v2, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    .line 226
    add-int/lit8 v2, v2, 0x4

    .line 227
    add-int/lit8 v3, v1, -0x4

    .local v3, "i":I
    :goto_36
    if-lez v3, :cond_40

    .line 228
    invoke-virtual {p0, v2, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 227
    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    .line 232
    .end local v3    # "i":I
    :cond_40
    :goto_40
    return-void

    .line 207
    .end local v0    # "nLong":I
    .end local v1    # "nBytes":I
    .end local v2    # "index":I
    .local p1, "index":I
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be 0 or greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 5
    .param p1, "firstIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 399
    .local v0, "oldReaderIndex":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v1

    .line 400
    .local v1, "newReaderIndex":I
    if-ltz v1, :cond_10

    .line 403
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex(I)V

    .line 404
    sub-int v2, v1, v0

    return v2

    .line 401
    :cond_10
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public skipBytes(I)V
    .registers 6
    .param p1, "length"    # I

    .line 388
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p1

    .line 389
    .local v0, "newReaderIndex":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-gt v0, v1, :cond_a

    .line 393
    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    .line 394
    return-void

    .line 390
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Readable bytes exceeded - Need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public slice()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3

    .line 526
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 530
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers()[Ljava/nio/ByteBuffer;
    .registers 3

    .line 534
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 538
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ridx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .param p4, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    if-nez p4, :cond_7

    .line 558
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :cond_7
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0, p4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 562
    .local v0, "terminatorIndex":I
    if-gez v0, :cond_14

    .line 563
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 566
    :cond_14
    sub-int v1, v0, p1

    invoke-virtual {p0, p1, v1, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 546
    if-nez p2, :cond_5

    .line 547
    const-string v0, ""

    return-object v0

    .line 550
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->decodeString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .registers 5
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 542
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writable()Z
    .registers 2

    .line 79
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public writableBytes()I
    .registers 3

    .line 87
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeByte(I)V
    .registers 4
    .param p1, "value"    # I

    .line 408
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    .line 409
    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    .line 479
    .local v0, "writtenBytes":I
    if-lez v0, :cond_d

    .line 480
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 482
    :cond_d
    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .registers 5
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    .line 488
    .local v0, "writtenBytes":I
    if-lez v0, :cond_d

    .line 489
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 491
    :cond_d
    return v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 471
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 472
    .local v0, "length":I
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 473
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 474
    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 453
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 454
    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 6
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .line 457
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-gt p2, v0, :cond_16

    .line 461
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 462
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 463
    return-void

    .line 458
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to write - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 5
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 466
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 467
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 468
    return-void
.end method

.method public writeBytes([B)V
    .registers 4
    .param p1, "src"    # [B

    .line 449
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes([BII)V

    .line 450
    return-void
.end method

.method public writeBytes([BII)V
    .registers 5
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 444
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(I[BII)V

    .line 445
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 446
    return-void
.end method

.method public writeChar(I)V
    .registers 2
    .param p1, "value"    # I

    .line 432
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeShort(I)V

    .line 433
    return-void
.end method

.method public writeDouble(D)V
    .registers 5
    .param p1, "value"    # D

    .line 440
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeLong(J)V

    .line 441
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .param p1, "value"    # F

    .line 436
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    .line 437
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "value"    # I

    .line 422
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    .line 423
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 424
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "value"    # J

    .line 427
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    .line 428
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 429
    return-void
.end method

.method public writeMedium(I)V
    .registers 3
    .param p1, "value"    # I

    .line 417
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setMedium(II)V

    .line 418
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 419
    return-void
.end method

.method public writeShort(I)V
    .registers 3
    .param p1, "value"    # I

    .line 412
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setShort(II)V

    .line 413
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 414
    return-void
.end method

.method public writeZero(I)V
    .registers 7
    .param p1, "length"    # I

    .line 495
    if-nez p1, :cond_3

    .line 496
    return-void

    .line 498
    :cond_3
    if-ltz p1, :cond_35

    .line 502
    ushr-int/lit8 v0, p1, 0x3

    .line 503
    .local v0, "nLong":I
    and-int/lit8 v1, p1, 0x7

    .line 504
    .local v1, "nBytes":I
    move v2, v0

    .local v2, "i":I
    :goto_a
    if-lez v2, :cond_14

    .line 505
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeLong(J)V

    .line 504
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 507
    .end local v2    # "i":I
    :cond_14
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1c

    .line 508
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    goto :goto_34

    .line 509
    :cond_1c
    if-ge v1, v2, :cond_27

    .line 510
    move v2, v1

    .restart local v2    # "i":I
    :goto_1f
    if-lez v2, :cond_34

    .line 511
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeByte(I)V

    .line 510
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 514
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    .line 515
    add-int/lit8 v2, v1, -0x4

    .restart local v2    # "i":I
    :goto_2c
    if-lez v2, :cond_34

    .line 516
    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeByte(I)V

    .line 515
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 519
    .end local v2    # "i":I
    :cond_34
    :goto_34
    return-void

    .line 499
    .end local v0    # "nLong":I
    .end local v1    # "nBytes":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be 0 or greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writerIndex()I
    .registers 2

    .line 50
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return v0
.end method

.method public writerIndex(I)V
    .registers 5
    .param p1, "writerIndex"    # I

    .line 54
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    if-lt p1, v0, :cond_d

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_d

    .line 58
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    .line 59
    return-void

    .line 55
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid readerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
