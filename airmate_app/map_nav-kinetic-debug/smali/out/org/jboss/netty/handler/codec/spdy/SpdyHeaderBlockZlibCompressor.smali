.class Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;
.super Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;
.source "SpdyHeaderBlockZlibCompressor.java"


# instance fields
.field private final compressor:Ljava/util/zip/Deflater;

.field private final out:[B


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "compressionLevel"    # I

    .line 29
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;-><init>()V

    .line 26
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    .line 30
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4a

    const/4 v0, 0x3

    if-gt p1, v0, :cond_4a

    .line 34
    if-ltz p2, :cond_2e

    const/16 v1, 0x9

    if-gt p2, v1, :cond_2e

    .line 38
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    .line 39
    if-ge p1, v0, :cond_26

    .line 40
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    goto :goto_2d

    .line 42
    :cond_26
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 44
    :goto_2d
    return-void

    .line 35
    :cond_2e
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

    .line 31
    :cond_4a
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
    .registers 7
    .param p1, "compressed"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 55
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 56
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    .line 57
    .local v0, "numBytes":I
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    invoke-interface {p1, v1, v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 58
    .end local v0    # "numBytes":I
    goto :goto_0

    .line 59
    :cond_1b
    return-void
.end method

.method public end()V
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 64
    return-void
.end method

.method public setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "decompressed"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 48
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 49
    .local v0, "in":[B
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 50
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 51
    return-void
.end method
