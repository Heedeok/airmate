.class public Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "ByteBufferBackedChannelBuffer.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final capacity:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 41
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 42
    if-eqz p1, :cond_23

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    .line 49
    iget v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->writerIndex(I)V

    .line 50
    return-void

    .line 43
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    .line 52
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 53
    iget-object v0, p1, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    iget-object v0, p1, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 55
    iget v0, p1, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    iput v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    .line 56
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setIndex(II)V

    .line 57
    return-void
.end method


# virtual methods
.method public array()[B
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 76
    iget v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity:I

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 323
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_37

    .line 327
    .local v0, "src":Ljava/nio/ByteBuffer;
    nop

    .line 329
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_24

    :cond_20
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 330
    .local v1, "dst":Ljava/nio/ByteBuffer;
    :goto_24
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 331
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 332
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 333
    new-instance v2, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-direct {v2, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 324
    .end local v0    # "src":Ljava/nio/ByteBuffer;
    .end local v1    # "dst":Ljava/nio/ByteBuffer;
    :catch_37
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to read - Need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 317
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0

    .line 63
    :cond_11
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .registers 3
    .param p1, "index"    # I

    .line 92
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    if-nez p3, :cond_4

    .line 217
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    if-nez p3, :cond_3

    .line 200
    return-void

    .line 203
    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 204
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p2, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_30

    .line 209
    :cond_1c
    new-array v0, p3, [B

    .line 210
    .local v0, "tmp":[B
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 213
    .end local v0    # "tmp":[B
    :goto_30
    return-void
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 139
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 142
    .local v1, "bytesToCopy":I
    add-int v2, p1, v1

    :try_start_15
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1c} :catch_21

    .line 146
    nop

    .line 147
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    return-void

    .line 143
    :catch_21
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many bytes to read - Need "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maximum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 114
    instance-of v0, p2, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    if-eqz v0, :cond_1a

    .line 115
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    .line 116
    .local v0, "bbdst":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    iget-object v1, v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 118
    .local v1, "data":Ljava/nio/ByteBuffer;
    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    .line 120
    .end local v0    # "bbdst":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    goto :goto_36

    :cond_1a
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 121
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {p2, p3, v0, v1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    goto :goto_36

    .line 123
    :cond_33
    invoke-interface {p2, p3, p0, p1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 125
    :goto_36
    return-void
.end method

.method public getBytes(I[BII)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 128
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 130
    .local v0, "data":Ljava/nio/ByteBuffer;
    add-int v1, p1, p4

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_14

    .line 134
    nop

    .line 135
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 136
    return-void

    .line 131
    :catch_14
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many bytes to read - Need "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p1, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", maximum is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "index"    # I

    .line 110
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .registers 4
    .param p1, "index"    # I

    .line 100
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public hasArray()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 151
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 152
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "readBytes":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_26

    .line 229
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr p1, v1

    .line 231
    :cond_11
    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2, v1, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 232
    .local v1, "localReadBytes":I
    if-gez v1, :cond_20

    .line 233
    if-nez v0, :cond_48

    .line 234
    return v2

    .line 239
    :cond_20
    add-int/2addr v0, v1

    .line 240
    add-int/2addr p1, v1

    .line 241
    sub-int/2addr p3, v1

    .line 242
    .end local v1    # "localReadBytes":I
    if-gtz p3, :cond_11

    goto :goto_48

    .line 244
    :cond_26
    new-array v1, p3, [B

    .line 245
    .local v1, "tmp":[B
    const/4 v3, 0x0

    .line 247
    .local v3, "i":I
    :cond_29
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 248
    .local v4, "localReadBytes":I
    if-gez v4, :cond_34

    .line 249
    if-nez v0, :cond_39

    .line 250
    return v2

    .line 255
    :cond_34
    add-int/2addr v0, v4

    .line 256
    add-int/2addr v3, v0

    .line 257
    .end local v4    # "localReadBytes":I
    array-length v4, v1

    if-lt v3, v4, :cond_29

    .line 258
    :cond_39
    iget-object v2, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    .end local v1    # "tmp":[B
    .end local v3    # "i":I
    :cond_48
    :goto_48
    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .registers 8
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 268
    .local v0, "slice":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 270
    .local v1, "readBytes":I
    .local v2, "localReadBytes":I
    :goto_14
    if-ge v1, p3, :cond_2a

    .line 273
    :try_start_16
    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_1a
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_16 .. :try_end_1a} :catch_1c

    .end local v2    # "localReadBytes":I
    move v2, v3

    .line 276
    .restart local v2    # "localReadBytes":I
    goto :goto_1e

    .line 274
    :catch_1c
    move-exception v3

    .line 275
    .local v3, "e":Ljava/nio/channels/ClosedChannelException;
    const/4 v2, -0x1

    .line 277
    .end local v3    # "e":Ljava/nio/channels/ClosedChannelException;
    :goto_1e
    if-gez v2, :cond_25

    .line 278
    if-nez v1, :cond_24

    .line 279
    const/4 v3, -0x1

    return v3

    .line 281
    :cond_24
    return v1

    .line 283
    :cond_25
    if-nez v2, :cond_28

    .line 284
    goto :goto_2a

    .line 286
    :cond_28
    add-int/2addr v1, v2

    .line 287
    .end local v2    # "localReadBytes":I
    goto :goto_14

    .line 289
    :cond_2a
    :goto_2a
    return v1
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 193
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 195
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 196
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 173
    instance-of v0, p2, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    if-eqz v0, :cond_1a

    .line 174
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    .line 175
    .local v0, "bbsrc":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    iget-object v1, v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 177
    .local v1, "data":Ljava/nio/ByteBuffer;
    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 178
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 179
    .end local v0    # "bbsrc":Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    goto :goto_36

    :cond_1a
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 180
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {p2, p3, v0, v1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    goto :goto_36

    .line 182
    :cond_33
    invoke-interface {p2, p3, p0, p1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 184
    :goto_36
    return-void
.end method

.method public setBytes(I[BII)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 187
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 188
    .local v0, "data":Ljava/nio/ByteBuffer;
    add-int v1, p1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 190
    return-void
.end method

.method public setInt(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 165
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 166
    return-void
.end method

.method public setLong(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 169
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 170
    return-void
.end method

.method public setMedium(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 159
    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setByte(II)V

    .line 160
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setByte(II)V

    .line 161
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->setByte(II)V

    .line 162
    return-void
.end method

.method public setShort(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 155
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 156
    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 302
    if-nez p1, :cond_11

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity()I

    move-result v0

    if-ne p2, v0, :cond_11

    .line 303
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 304
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    .line 305
    return-object v0

    .line 307
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_11
    if-ltz p1, :cond_18

    if-nez p2, :cond_18

    .line 308
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 310
    :cond_18
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 293
    if-nez p1, :cond_17

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->capacity()I

    move-result v0

    if-ne p2, v0, :cond_17

    .line 294
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 296
    :cond_17
    iget-object v0, p0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
