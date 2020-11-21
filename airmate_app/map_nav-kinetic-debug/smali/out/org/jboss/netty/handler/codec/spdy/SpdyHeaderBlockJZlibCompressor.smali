.class Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;
.super Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;
.source "SpdyHeaderBlockJZlibCompressor.java"


# instance fields
.field private final z:Lorg/jboss/netty/util/internal/jzlib/ZStream;


# direct methods
.method public constructor <init>(IIII)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "compressionLevel"    # I
    .param p3, "windowBits"    # I
    .param p4, "memLevel"    # I

    .line 30
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;-><init>()V

    .line 27
    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .line 31
    const/4 v0, 0x2

    if-lt p1, v0, :cond_c9

    const/4 v0, 0x3

    if-gt p1, v0, :cond_c9

    .line 35
    if-ltz p2, :cond_ad

    const/16 v1, 0x9

    if-gt p2, v1, :cond_ad

    .line 39
    if-lt p3, v1, :cond_91

    const/16 v2, 0xf

    if-gt p3, v2, :cond_91

    .line 43
    const/4 v2, 0x1

    if-lt p4, v2, :cond_75

    if-gt p4, v1, :cond_75

    .line 48
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    invoke-virtual {v1, p2, p3, p4, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IIILjava/lang/Enum;)I

    move-result v1

    .line 50
    .local v1, "resultCode":I
    if-nez v1, :cond_5e

    .line 54
    if-ge p1, v0, :cond_39

    .line 55
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateSetDictionary([BI)I

    move-result v0

    goto :goto_44

    .line 57
    :cond_39
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateSetDictionary([BI)I

    move-result v0

    .line 59
    .end local v1    # "resultCode":I
    .local v0, "resultCode":I
    :goto_44
    if-nez v0, :cond_47

    .line 64
    return-void

    .line 60
    :cond_47
    new-instance v1, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set the SPDY dictionary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0    # "resultCode":I
    .restart local v1    # "resultCode":I
    :cond_5e
    new-instance v0, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to initialize an SPDY header block deflater: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    .end local v1    # "resultCode":I
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_c9
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


# virtual methods
.method public encode(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 8
    .param p1, "compressed"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 78
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    array-length v1, v1
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_61

    int-to-double v1, v1

    const-wide v3, 0x3ff004189374bc6aL    # 1.001

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0xc

    new-array v1, v1, [B

    .line 79
    .local v1, "out":[B
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 80
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v3, 0x0

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    .line 81
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v4, v1

    iput v4, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    .line 83
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v2

    .line 84
    .local v2, "resultCode":I
    if-nez v2, :cond_4a

    .line 88
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-eqz v4, :cond_3e

    .line 89
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {p1, v1, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_61

    .line 91
    .end local v1    # "out":[B
    .end local v2    # "resultCode":I
    :cond_3e
    nop

    .line 99
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;
    iget-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 97
    iget-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v0, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 98
    nop

    .line 99
    return-void

    .line 85
    .local v1, "out":[B
    .restart local v2    # "resultCode":I
    :cond_4a
    :try_start_4a
    new-instance v3, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compression failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_61

    .line 96
    .end local v1    # "out":[B
    .end local v2    # "resultCode":I
    :catchall_61
    move-exception v1

    .line 97
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;
    iget-object v3, v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v0, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v3, v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v0, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 96
    throw v1
.end method

.method public end()V
    .registers 3

    .line 103
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateEnd()I

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 105
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    .line 106
    return-void
.end method

.method public setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "decompressed"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 68
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 69
    .local v0, "in":[B
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 70
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    .line 71
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v2, 0x0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    .line 72
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v2, v0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    .line 73
    return-void
.end method
