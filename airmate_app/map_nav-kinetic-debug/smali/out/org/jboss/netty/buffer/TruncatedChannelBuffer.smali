.class public Lorg/jboss/netty/buffer/TruncatedChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "TruncatedChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/WrappedChannelBuffer;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final length:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .line 38
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 39
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_11

    .line 44
    iput-object p1, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 45
    iput p2, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->length:I

    .line 46
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->writerIndex(I)V

    .line 47
    return-void

    .line 40
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is too large, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but can\'t go higher than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIndex(I)V
    .registers 5
    .param p1, "index"    # I

    .line 210
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 214
    return-void

    .line 211
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIndex(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 217
    if-ltz p2, :cond_30

    .line 221
    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_b

    .line 225
    return-void

    .line 222
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public array()[B
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 66
    iget v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->length:I

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 114
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4

    .line 107
    new-instance v0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v2, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->length:I

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 108
    .local v0, "duplicate":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    .line 109
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .registers 3
    .param p1, "index"    # I

    .line 82
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(I)V

    .line 83
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 189
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 183
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 184
    return-void
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 137
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 138
    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 126
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 127
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 128
    return-void
.end method

.method public getBytes(I[BII)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 131
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 132
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    .line 133
    return-void
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 97
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 98
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "index"    # I

    .line 102
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 103
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .param p1, "index"    # I

    .line 87
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 88
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .registers 3
    .param p1, "index"    # I

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 93
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .registers 2

    .line 70
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 141
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(I)V

    .line 142
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 143
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 195
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 201
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 177
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 178
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 171
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 172
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 173
    return-void
.end method

.method public setBytes(I[BII)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 166
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 167
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    .line 168
    return-void
.end method

.method public setInt(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 156
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 157
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    .line 158
    return-void
.end method

.method public setLong(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 161
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setLong(IJ)V

    .line 163
    return-void
.end method

.method public setMedium(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 151
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 152
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setMedium(II)V

    .line 153
    return-void
.end method

.method public setShort(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 146
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 147
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    .line 148
    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 118
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 119
    if-nez p2, :cond_8

    .line 120
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 122
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 205
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->checkIndex(II)V

    .line 206
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method
