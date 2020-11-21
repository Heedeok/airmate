.class Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;
.super Ljava/lang/Object;
.source "ChannelBufferByteInput.java"

# interfaces
.implements Lorg/jboss/marshalling/ByteInput;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 34
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 48
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->available()I

    move-result v0

    .line 57
    .local v0, "available":I
    if-nez v0, :cond_8

    .line 58
    const/4 v1, -0x1

    return v1

    .line 61
    :cond_8
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 62
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    .line 63
    return p3
.end method

.method public skip(J)J
    .registers 7
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 68
    .local v0, "readable":I
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-gez v3, :cond_c

    .line 69
    int-to-long p1, v0

    .line 71
    :cond_c
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 72
    return-wide p1
.end method
