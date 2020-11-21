.class Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;
.super Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;
.source "SpdyHeaderBlockZlibDecompressor.java"


# instance fields
.field private final decompressor:Ljava/util/zip/Inflater;

.field private final out:[B

.field private final version:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "version"    # I

    .line 31
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;-><init>()V

    .line 28
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    .line 29
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    .line 32
    const/4 v0, 0x2

    if-lt p1, v0, :cond_19

    const/4 v0, 0x3

    if-gt p1, v0, :cond_19

    .line 36
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->version:I

    .line 37
    return-void

    .line 33
    :cond_19
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
.method public decode(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 5
    .param p1, "decompressed"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 50
    .local v0, "numBytes":I
    if-nez v0, :cond_2f

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 51
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->version:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1f

    .line 52
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Inflater;->setDictionary([B)V

    goto :goto_26

    .line 54
    :cond_1f
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Inflater;->setDictionary([B)V

    .line 56
    :goto_26
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    move v0, v1

    .line 58
    :cond_2f
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V
    :try_end_35
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_35} :catch_37

    .line 62
    .end local v0    # "numBytes":I
    nop

    .line 63
    return-void

    .line 59
    :catch_37
    move-exception v0

    .line 60
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    const-string v2, "Received invalid header block"

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public end()V
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 68
    return-void
.end method

.method public setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "compressed"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 41
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 42
    .local v0, "in":[B
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    .line 43
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 44
    return-void
.end method
