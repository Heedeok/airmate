.class public Lorg/jboss/netty/buffer/ChannelBufferInputStream;
.super Ljava/io/InputStream;
.source "ChannelBufferInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final endIndex:I

.field private final lineBuf:Ljava/lang/StringBuilder;

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 50
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .registers 6
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "length"    # I

    .line 62
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    .line 63
    if-eqz p1, :cond_5f

    .line 66
    if-ltz p2, :cond_48

    .line 69
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-gt p2, v0, :cond_25

    .line 74
    iput-object p1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 75
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    .line 76
    iget v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->endIndex:I

    .line 77
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 78
    return-void

    .line 70
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read - Needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAvailable(I)V
    .registers 5
    .param p1, "fieldSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    if-ltz p1, :cond_2c

    .line 229
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    if-gt p1, v0, :cond_9

    .line 233
    return-void

    .line 230
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldSize is too long! Length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_2c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "fieldSize cannot be a negative number"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->endIndex:I

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 94
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    .line 95
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 105
    const/4 v0, -0x1

    return v0

    .line 107
    :cond_a
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    .line 113
    .local v0, "available":I
    if-nez v0, :cond_8

    .line 114
    const/4 v1, -0x1

    return v1

    .line 117
    :cond_8
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 118
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    .line 119
    return p3
.end method

.method public readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 138
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->read()I

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0

    .line 143
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readBytes()I
    .registers 3

    .line 84
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readFully([BII)V

    .line 162
    return-void
.end method

.method public readFully([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 166
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    .line 167
    return-void
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 171
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 179
    :goto_6
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->read()I

    move-result v0

    .line 180
    .local v0, "b":I
    if-ltz v0, :cond_18

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 181
    goto :goto_18

    .line 184
    :cond_11
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .end local v0    # "b":I
    goto :goto_6

    .line 187
    :cond_18
    :goto_18
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 188
    :goto_20
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_40

    .line 189
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_20

    .line 194
    :cond_40
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 199
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    .line 204
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    .line 125
    return-void
.end method

.method public skip(J)J
    .registers 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_10

    .line 130
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 132
    :cond_10
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public skipBytes(I)I
    .registers 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    .local v0, "nBytes":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 222
    return v0
.end method
