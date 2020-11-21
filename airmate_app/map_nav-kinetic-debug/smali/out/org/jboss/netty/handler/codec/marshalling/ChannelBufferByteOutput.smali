.class Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;
.super Ljava/lang/Object;
.source "ChannelBufferByteOutput.java"

# interfaces
.implements Lorg/jboss/marshalling/ByteOutput;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;I)V
    .registers 4
    .param p1, "factory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .param p2, "estimatedLength"    # I

    .line 46
    invoke-static {p2, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public getBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 59
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 63
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 67
    return-void
.end method
