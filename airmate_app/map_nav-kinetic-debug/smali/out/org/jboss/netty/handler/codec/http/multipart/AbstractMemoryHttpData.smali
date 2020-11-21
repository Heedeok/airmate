.class public abstract Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;
.super Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;
.source "AbstractMemoryHttpData.java"


# instance fields
.field private channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private chunkPosition:I

.field protected isRenamed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "size"    # J

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 42
    return-void
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .registers 11
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    if-eqz p1, :cond_5a

    .line 82
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    int-to-long v1, v1

    .line 83
    .local v1, "localsize":J
    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3e

    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    iget-wide v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v5, v1

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1a

    goto :goto_3e

    .line 84
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3e
    :goto_3e
    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 88
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_4a

    .line 89
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_5a

    .line 91
    :cond_4a
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v5, v3, v4

    aput-object p1, v3, v0

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 95
    .end local v1    # "localsize":J
    :cond_5a
    :goto_5a
    if-eqz p2, :cond_5f

    .line 96
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    goto :goto_61

    .line 98
    :cond_5f
    if-eqz p1, :cond_62

    .line 102
    :goto_61
    return-void

    .line 99
    :cond_62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .registers 1

    .line 130
    return-void
.end method

.method public get()[B
    .registers 4

    .line 133
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_8

    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 136
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 137
    .local v0, "array":[B
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    .line 138
    return-object v0
.end method

.method public getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 161
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_32

    .line 169
    :cond_10
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    sub-int/2addr v0, v2

    .line 170
    .local v0, "sizeLeft":I
    if-nez v0, :cond_20

    .line 171
    iput v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    .line 172
    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v1

    .line 174
    :cond_20
    move v1, p1

    .line 175
    .local v1, "sliceLength":I
    if-ge v0, p1, :cond_24

    .line 176
    move v1, v0

    .line 178
    :cond_24
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 179
    .local v2, "chunk":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    .line 180
    return-object v2

    .line 166
    .end local v0    # "sizeLeft":I
    .end local v1    # "sliceLength":I
    .end local v2    # "chunk":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_32
    :goto_32
    iput v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    .line 167
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not represented by a file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 142
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .line 146
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_7

    .line 147
    const-string v0, ""

    return-object v0

    .line 149
    :cond_7
    if-nez p1, :cond_10

    .line 150
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_10
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInMemory()Z
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .registers 10
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    if-eqz p1, :cond_39

    .line 191
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 194
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->isRenamed:Z

    .line 195
    return v1

    .line 197
    :cond_d
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 198
    .local v0, "length":I
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 199
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 200
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 201
    .local v4, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 202
    .local v6, "written":I
    :goto_24
    if-ge v6, v0, :cond_2c

    .line 203
    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_24

    .line 205
    :cond_2c
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 206
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 207
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->isRenamed:Z

    .line 208
    if-ne v6, v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    return v1

    .line 189
    .end local v0    # "length":I
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local v3    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "written":I
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/io/File;)V
    .registers 12
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    if-eqz p1, :cond_43

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 109
    .local v0, "newsize":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3b

    .line 113
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 115
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    long-to-int v4, v0

    new-array v4, v4, [B

    .line 116
    .local v4, "array":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 117
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 118
    .local v6, "read":I
    :goto_1e
    int-to-long v7, v6

    cmp-long v9, v7, v0

    if-gez v9, :cond_29

    .line 119
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1e

    .line 121
    :cond_29
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 123
    invoke-static {v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    iput-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 124
    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 125
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    .line 126
    return-void

    .line 110
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "array":[B
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "read":I
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File too big to be loaded in memory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v0    # "newsize":J
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    if-eqz p1, :cond_57

    .line 62
    invoke-static {}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 63
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 64
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 65
    .local v2, "read":I
    const/4 v3, 0x0

    .line 66
    .local v3, "written":I
    :goto_f
    if-lez v2, :cond_1a

    .line 67
    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 68
    add-int/2addr v3, v2

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_f

    .line 71
    :cond_1a
    int-to-long v4, v3

    iput-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 72
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_51

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2e

    goto :goto_51

    .line 73
    :cond_2e
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Out of size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_51
    :goto_51
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 76
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    .line 77
    return-void

    .line 60
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v1    # "bytes":[B
    .end local v2    # "read":I
    .end local v3    # "written":I
    :cond_57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 9
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    if-eqz p1, :cond_3f

    .line 48
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    .line 49
    .local v0, "localsize":J
    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_37

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_16

    goto :goto_37

    .line 50
    :cond_16
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_37
    :goto_37
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 54
    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    .line 56
    return-void

    .line 46
    .end local v0    # "localsize":J
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
