.class public abstract Lorg/jboss/netty/buffer/HeapChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "HeapChannelBuffer.java"


# instance fields
.field protected final array:[B


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "length"    # I

    .line 42
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/jboss/netty/buffer/HeapChannelBuffer;-><init>([BII)V

    .line 43
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "array"    # [B

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/HeapChannelBuffer;-><init>([BII)V

    .line 52
    return-void
.end method

.method protected constructor <init>([BII)V
    .registers 6
    .param p1, "array"    # [B
    .param p2, "readerIndex"    # I
    .param p3, "writerIndex"    # I

    .line 61
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 62
    if-eqz p1, :cond_b

    .line 65
    iput-object p1, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    .line 66
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/buffer/HeapChannelBuffer;->setIndex(II)V

    .line 67
    return-void

    .line 63
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public array()[B
    .registers 2

    .line 82
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    return-object v0
.end method

.method public arrayOffset()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    array-length v0, v0

    return v0
.end method

.method public getByte(I)B
    .registers 3
    .param p1, "index"    # I

    .line 90
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    aget-byte v0, v0, p1

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

    .line 116
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-static {v0, p1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

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

    .line 111
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 112
    return-void
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/HeapChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 107
    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 94
    instance-of v0, p2, Lorg/jboss/netty/buffer/HeapChannelBuffer;

    if-eqz v0, :cond_d

    .line 95
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/buffer/HeapChannelBuffer;

    iget-object v0, v0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jboss/netty/buffer/HeapChannelBuffer;->getBytes(I[BII)V

    goto :goto_12

    .line 97
    :cond_d
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    .line 99
    :goto_12
    return-void
.end method

.method public getBytes(I[BII)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 102
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-void
.end method

.method public hasArray()Z
    .registers 2

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public setByte(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 120
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 121
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "readBytes":I
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-virtual {p2, v1, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 143
    .local v1, "localReadBytes":I
    if-gez v1, :cond_d

    .line 144
    if-nez v0, :cond_12

    .line 145
    const/4 v2, -0x1

    return v2

    .line 150
    :cond_d
    add-int/2addr v0, v1

    .line 151
    add-int/2addr p1, v1

    .line 152
    sub-int/2addr p3, v1

    .line 153
    .end local v1    # "localReadBytes":I
    if-gtz p3, :cond_1

    .line 155
    :cond_12
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

    .line 159
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-static {v0, p1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 165
    .local v1, "readBytes":I
    .local v2, "localReadBytes":I
    :cond_8
    :try_start_8
    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_c
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_8 .. :try_end_c} :catch_e

    .end local v2    # "localReadBytes":I
    move v2, v3

    .line 168
    .restart local v2    # "localReadBytes":I
    goto :goto_10

    .line 166
    :catch_e
    move-exception v3

    .line 167
    .local v3, "e":Ljava/nio/channels/ClosedChannelException;
    const/4 v2, -0x1

    .line 169
    .end local v3    # "e":Ljava/nio/channels/ClosedChannelException;
    :goto_10
    if-gez v2, :cond_16

    .line 170
    if-nez v1, :cond_1c

    .line 171
    const/4 v3, -0x1

    return v3

    .line 175
    :cond_16
    if-nez v2, :cond_19

    .line 176
    goto :goto_1c

    .line 178
    :cond_19
    add-int/2addr v1, v2

    .line 179
    .end local v2    # "localReadBytes":I
    if-lt v1, p3, :cond_8

    .line 181
    :cond_1c
    :goto_1c
    return v1
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 136
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 137
    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 124
    instance-of v0, p2, Lorg/jboss/netty/buffer/HeapChannelBuffer;

    if-eqz v0, :cond_d

    .line 125
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/buffer/HeapChannelBuffer;

    iget-object v0, v0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jboss/netty/buffer/HeapChannelBuffer;->setBytes(I[BII)V

    goto :goto_12

    .line 127
    :cond_d
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    .line 129
    :goto_12
    return-void
.end method

.method public setBytes(I[BII)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 132
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 185
    if-nez p1, :cond_1b

    .line 186
    if-nez p2, :cond_7

    .line 187
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 189
    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    array-length v0, v0

    if-ne p2, v0, :cond_15

    .line 190
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/HeapChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 191
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    .line 192
    return-object v0

    .line 194
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_15
    new-instance v0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;

    invoke-direct {v0, p0, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    return-object v0

    .line 197
    :cond_1b
    if-nez p2, :cond_20

    .line 198
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 200
    :cond_20
    new-instance v0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-object v0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 205
    iget-object v0, p0, Lorg/jboss/netty/buffer/HeapChannelBuffer;->array:[B

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/HeapChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
