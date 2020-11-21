.class Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;
.super Ljava/lang/Object;
.source "ReplayingDecoderBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBuffer;


# static fields
.field private static final REPLAY:Ljava/lang/Error;


# instance fields
.field private final parent:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
            "*>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/ReplayError;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayError;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
            "*>;)V"
        }
    .end annotation

    .line 38
    .local p1, "parent":Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;, "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->parent:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    .line 40
    return-void
.end method

.method private buf()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 43
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->parent:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private checkIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .line 695
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    if-gt p1, v0, :cond_b

    .line 698
    return-void

    .line 696
    :cond_b
    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0
.end method

.method private checkIndex(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 701
    add-int v0, p1, p2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 704
    return-void

    .line 702
    :cond_d
    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0
.end method

.method private checkReadableBytes(I)V
    .registers 3
    .param p1, "readableBytes"    # I

    .line 707
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_b

    .line 710
    return-void

    .line 708
    :cond_b
    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0
.end method


# virtual methods
.method public array()[B
    .registers 2

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .registers 2

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bytesBefore(B)I
    .registers 4
    .param p1, "value"    # B

    .line 228
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(B)I

    move-result v0

    .line 229
    .local v0, "bytes":I
    if-ltz v0, :cond_b

    .line 232
    return v0

    .line 230
    :cond_b
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public bytesBefore(IB)I
    .registers 5
    .param p1, "length"    # I
    .param p2, "value"    # B

    .line 244
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 245
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IB)I

    move-result v0

    .line 246
    .local v0, "bytes":I
    if-ltz v0, :cond_e

    .line 249
    return v0

    .line 247
    :cond_e
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public bytesBefore(IIB)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .line 262
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    .line 263
    .local v0, "bytes":I
    if-ltz v0, :cond_b

    .line 266
    return v0

    .line 264
    :cond_b
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 271
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 272
    .local v0, "bytes":I
    if-ltz v0, :cond_b

    .line 275
    return v0

    .line 273
    :cond_b
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 5
    .param p1, "length"    # I
    .param p2, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 253
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 254
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 255
    .local v0, "bytes":I
    if-ltz v0, :cond_e

    .line 258
    return v0

    .line 256
    :cond_e
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 4
    .param p1, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 236
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 237
    .local v0, "bytes":I
    if-ltz v0, :cond_b

    .line 240
    return v0

    .line 238
    :cond_b
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public capacity()I
    .registers 2

    .line 51
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_d

    .line 52
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    return v0

    .line 54
    :cond_d
    const v0, 0x7fffffff

    return v0
.end method

.method public clear()V
    .registers 2

    .line 75
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 84
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public copy()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 88
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 93
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()V
    .registers 2

    .line 97
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 105
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public ensureWritableBytes(I)V
    .registers 3
    .param p1, "writableBytes"    # I

    .line 101
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 80
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 2

    .line 287
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .registers 3
    .param p1, "index"    # I

    .line 109
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(I)V

    .line 110
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

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

    .line 147
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
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

    .line 152
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 129
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 142
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .line 138
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 133
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 134
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 135
    return-void
.end method

.method public getBytes(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 124
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 125
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    .line 126
    return-void
.end method

.method public getBytes(I[BII)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 119
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 120
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    .line 121
    return-void
.end method

.method public getChar(I)C
    .registers 3
    .param p1, "index"    # I

    .line 191
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 192
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "index"    # I

    .line 201
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 202
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .param p1, "index"    # I

    .line 196
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 197
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 156
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 157
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "index"    # I

    .line 166
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 167
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .registers 3
    .param p1, "index"    # I

    .line 171
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 172
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getMedium(I)I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .registers 3
    .param p1, "index"    # I

    .line 181
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 182
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedByte(I)S
    .registers 3
    .param p1, "index"    # I

    .line 114
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(I)V

    .line 115
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .registers 4
    .param p1, "index"    # I

    .line 161
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 162
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .registers 3
    .param p1, "index"    # I

    .line 176
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 177
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .registers 3
    .param p1, "index"    # I

    .line 186
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 187
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 207
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public indexOf(IIB)I
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 211
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v0

    .line 212
    .local v0, "endIndex":I
    if-ltz v0, :cond_b

    .line 215
    return v0

    .line 213
    :cond_b
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 220
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 221
    .local v0, "endIndex":I
    if-ltz v0, :cond_b

    .line 224
    return v0

    .line 222
    :cond_b
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public isDirect()Z
    .registers 2

    .line 59
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public markReaderIndex()V
    .registers 2

    .line 279
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 280
    return-void
.end method

.method public markWriterIndex()V
    .registers 2

    .line 283
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .line 291
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .registers 2

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 308
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .registers 4
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p1, "length"    # I

    .line 358
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 359
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 346
    .local v0, "endIndex":I
    if-ltz v0, :cond_2d

    .line 349
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 347
    :cond_2d
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

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

    .line 378
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 327
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 340
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 4
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .line 336
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 5
    .param p1, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 331
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 332
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 333
    return-void
.end method

.method public readBytes([B)V
    .registers 3
    .param p1, "dst"    # [B

    .line 322
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 323
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 324
    return-void
.end method

.method public readBytes([BII)V
    .registers 5
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 317
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 318
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    .line 319
    return-void
.end method

.method public readChar()C
    .registers 2

    .line 425
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 426
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .registers 3

    .line 435
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 436
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    .line 430
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 431
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .registers 2

    .line 390
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 391
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3

    .line 400
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 401
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMedium()I
    .registers 2

    .line 405
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 406
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readMedium()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .registers 2

    .line 415
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 416
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p1, "length"    # I

    .line 373
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 374
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "endIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    .line 366
    .local v0, "endIndex":I
    if-ltz v0, :cond_2d

    .line 369
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 367
    :cond_2d
    sget-object v1, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v1
.end method

.method public readUnsignedByte()S
    .registers 2

    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 313
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .registers 3

    .line 395
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 396
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .registers 2

    .line 410
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 411
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 2

    .line 420
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 421
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readable()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public readableBytes()I
    .registers 3

    .line 299
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_d

    .line 300
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    return v0

    .line 302
    :cond_d
    const v0, 0x7fffffff

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public readerIndex()I
    .registers 2

    .line 382
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    return v0
.end method

.method public readerIndex(I)V
    .registers 3
    .param p1, "readerIndex"    # I

    .line 386
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 387
    return-void
.end method

.method public resetReaderIndex()V
    .registers 2

    .line 440
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 441
    return-void
.end method

.method public resetWriterIndex()V
    .registers 2

    .line 444
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setByte(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 448
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
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

    .line 477
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
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

    .line 486
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 460
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 472
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "length"    # I

    .line 468
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 464
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 456
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(I[BII)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 452
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setChar(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 510
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setDouble(ID)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 518
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setFloat(IF)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 514
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setIndex(II)V
    .registers 4
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .line 490
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setInt(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 494
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setLong(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 498
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setMedium(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 502
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setShort(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 506
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setZero(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 481
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 5
    .param p1, "firstIndexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    .line 524
    .local v0, "oldReaderIndex":I
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v1

    .line 525
    .local v1, "newReaderIndex":I
    if-ltz v1, :cond_24

    .line 528
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 529
    sub-int v2, v1, v0

    return v2

    .line 526
    :cond_24
    sget-object v2, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v2
.end method

.method public skipBytes(I)V
    .registers 3
    .param p1, "length"    # I

    .line 533
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 534
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 535
    return-void
.end method

.method public slice()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 538
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 542
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 543
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method terminate()V
    .registers 2

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    .line 48
    return-void
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 547
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 551
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 552
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers()[Ljava/nio/ByteBuffer;
    .registers 2

    .line 556
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 560
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 561
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 600
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

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->writerIndex()I

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

    .line 575
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 576
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .param p4, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 584
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 565
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 566
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .registers 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "terminatorFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .param p1, "charsetName"    # Ljava/nio/charset/Charset;

    .line 570
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writable()Z
    .registers 2

    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public writableBytes()I
    .registers 2

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public writeByte(I)V
    .registers 3
    .param p1, "value"    # I

    .line 618
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .registers 4
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 630
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 642
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 4
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .line 638
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 5
    .param p1, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 634
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes([B)V
    .registers 3
    .param p1, "src"    # [B

    .line 626
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes([BII)V
    .registers 5
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 622
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeChar(I)V
    .registers 3
    .param p1, "value"    # I

    .line 683
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeDouble(D)V
    .registers 4
    .param p1, "value"    # D

    .line 691
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeFloat(F)V
    .registers 3
    .param p1, "value"    # F

    .line 687
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "value"    # I

    .line 655
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "value"    # J

    .line 659
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeMedium(I)V
    .registers 3
    .param p1, "value"    # I

    .line 663
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeShort(I)V
    .registers 3
    .param p1, "value"    # I

    .line 679
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeZero(I)V
    .registers 3
    .param p1, "length"    # I

    .line 667
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writerIndex()I
    .registers 2

    .line 671
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    return v0
.end method

.method public writerIndex(I)V
    .registers 3
    .param p1, "writerIndex"    # I

    .line 675
    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method
