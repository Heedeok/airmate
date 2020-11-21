.class public Lorg/jboss/netty/buffer/ChannelBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelBufferOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final startIndex:I

.field private final utf8out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->utf8out:Ljava/io/DataOutputStream;

    .line 47
    if-eqz p1, :cond_15

    .line 50
    iput-object p1, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 51
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->startIndex:I

    .line 52
    return-void

    .line 48
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    .line 78
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 73
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    if-nez p3, :cond_3

    .line 64
    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 68
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 2
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->write(I)V

    .line 82
    return-void
.end method

.method public writeByte(I)V
    .registers 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->write(I)V

    .line 86
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->write(I)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 93
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method public writeChar(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeShort(I)V

    .line 97
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 101
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeChar(I)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 104
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method public writeDouble(D)V
    .registers 5
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeLong(J)V

    .line 108
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeInt(I)V

    .line 112
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 116
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    .line 120
    return-void
.end method

.method public writeShort(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    int-to-short v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    .line 124
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->utf8out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public writtenBytes()I
    .registers 3

    .line 58
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method
