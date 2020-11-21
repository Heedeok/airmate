.class public abstract Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;
.super Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;
.source "AbstractDiskHttpData.java"


# instance fields
.field protected file:Ljava/io/File;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private isRenamed:Z


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

.method private static readFrom(Ljava/io/File;)[B
    .registers 11
    .param p0, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 325
    .local v0, "srcsize":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2b

    .line 329
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 330
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 331
    .local v3, "fileChannel":Ljava/nio/channels/FileChannel;
    long-to-int v4, v0

    new-array v4, v4, [B

    .line 332
    .local v4, "array":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 333
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 334
    .local v6, "read":I
    :goto_1c
    int-to-long v7, v6

    cmp-long v9, v7, v0

    if-gez v9, :cond_27

    .line 335
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1c

    .line 337
    :cond_27
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 338
    return-object v4

    .line 326
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "array":[B
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "read":I
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File too big to be loaded in memory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private tempFile()Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "newpostfix":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getDiskFilename()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "diskFilename":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 81
    :cond_19
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPostfix()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_1d
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getBaseDirectory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 86
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_3d

    .line 88
    :cond_2c
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPrefix()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getBaseDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 91
    .local v2, "tmpFile":Ljava/io/File;
    :goto_3d
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->deleteOnExit()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 94
    :cond_46
    return-object v2
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .registers 10
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    if-eqz p1, :cond_76

    .line 129
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 130
    .local v0, "localsize":I
    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3e

    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_19

    goto :goto_3e

    .line 131
    :cond_19
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 135
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 136
    .local v2, "written":I
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v3, :cond_4d

    .line 137
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 139
    :cond_4d
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v3, :cond_5e

    .line 140
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 143
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5e
    :goto_5e
    if-ge v2, v0, :cond_68

    .line 144
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_5e

    .line 146
    :cond_68
    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 147
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 149
    .end local v0    # "localsize":I
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "written":I
    :cond_76
    if-eqz p2, :cond_a5

    .line 150
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_82

    .line 151
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 153
    :cond_82
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_93

    .line 154
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 157
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :cond_93
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 158
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    goto :goto_a7

    .line 162
    :cond_a5
    if-eqz p1, :cond_a8

    .line 166
    :goto_a7
    return-void

    .line 163
    :cond_a8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .registers 2

    .line 210
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    if-nez v0, :cond_d

    .line 211
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 212
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 215
    :cond_d
    return-void
.end method

.method protected abstract deleteOnExit()Z
.end method

.method public get()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_8

    .line 219
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 221
    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract getBaseDirectory()Ljava/lang/String;
.end method

.method public getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_7

    .line 226
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 228
    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    .line 229
    .local v0, "array":[B
    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_47

    if-nez p1, :cond_7

    goto :goto_47

    .line 236
    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_18

    .line 237
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v0, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 240
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    :cond_18
    const/4 v0, 0x0

    .line 241
    .local v0, "read":I
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 242
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_1d
    if-ge v0, p1, :cond_33

    .line 243
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 244
    .local v2, "readnow":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    .line 245
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 246
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 247
    goto :goto_33

    .line 249
    :cond_31
    add-int/2addr v0, v2

    .line 251
    .end local v2    # "readnow":I
    goto :goto_1d

    .line 252
    :cond_33
    :goto_33
    if-nez v0, :cond_38

    .line 253
    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v2

    .line 255
    :cond_38
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 256
    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 257
    .local v2, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 258
    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 259
    return-object v2

    .line 234
    .end local v0    # "read":I
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_47
    :goto_47
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method protected abstract getDiskFilename()Ljava/lang/String;
.end method

.method public getFile()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    return-object v0
.end method

.method protected abstract getPostfix()Ljava/lang/String;
.end method

.method protected abstract getPrefix()Ljava/lang/String;
.end method

.method public getString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_7

    .line 268
    const-string v0, ""

    return-object v0

    .line 270
    :cond_7
    if-nez p1, :cond_1b

    .line 271
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    .line 272
    .local v0, "array":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 274
    .end local v0    # "array":[B
    :cond_1b
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    .line 275
    .restart local v0    # "array":[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public isInMemory()Z
    .registers 2

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .registers 16
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    if-eqz p1, :cond_63

    .line 286
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5e

    .line 288
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 289
    .local v0, "inputStream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 290
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 291
    .local v9, "in":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    .line 292
    .local v10, "out":Ljava/nio/channels/FileChannel;
    const/16 v3, 0x2004

    .line 293
    .local v3, "chunkSize":I
    const-wide/16 v4, 0x0

    .local v4, "position":J
    :goto_23
    move-wide v11, v4

    .line 294
    .end local v4    # "position":J
    .local v11, "position":J
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v6, v11, v4

    if-gez v6, :cond_43

    .line 295
    int-to-long v4, v3

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    sub-long/2addr v6, v11

    cmp-long v8, v4, v6

    if-gez v8, :cond_36

    .line 296
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    sub-long/2addr v4, v11

    long-to-int v3, v4

    .line 298
    .end local v3    # "chunkSize":I
    .local v13, "chunkSize":I
    :cond_36
    move v13, v3

    int-to-long v6, v13

    move-object v3, v9

    move-wide v4, v11

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    add-long/2addr v3, v11

    .line 293
    move-wide v4, v3

    move v3, v13

    goto :goto_23

    .line 300
    .end local v13    # "chunkSize":I
    .restart local v3    # "chunkSize":I
    :cond_43
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 301
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    .line 302
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v6, v11, v4

    if-nez v6, :cond_59

    .line 303
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 304
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 305
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 306
    return v1

    .line 308
    :cond_59
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 309
    const/4 v1, 0x0

    return v1

    .line 312
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local v3    # "chunkSize":I
    .end local v9    # "in":Ljava/nio/channels/FileChannel;
    .end local v10    # "out":Ljava/nio/channels/FileChannel;
    .end local v11    # "position":J
    :cond_5e
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 313
    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 314
    return v1

    .line 284
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 170
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->delete()V

    .line 172
    :cond_7
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 175
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    .line 176
    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 13
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    if-eqz p1, :cond_87

    .line 182
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 183
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->delete()V

    .line 185
    :cond_9
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 188
    .local v1, "localfileChannel":Ljava/nio/channels/FileChannel;
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 189
    .local v2, "bytes":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 190
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 191
    .local v4, "read":I
    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    .line 192
    .local v4, "written":I
    .local v6, "read":I
    :goto_29
    if-lez v6, :cond_3c

    .line 193
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 194
    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v4, v7

    .line 195
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    goto :goto_29

    .line 197
    :cond_3c
    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 198
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    int-to-long v7, v4

    iput-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 200
    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_81

    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v5, v7, v9

    if-ltz v5, :cond_56

    goto :goto_81

    .line 201
    :cond_56
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 202
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 203
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Out of size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_81
    :goto_81
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    .line 206
    iput-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    .line 207
    return-void

    .line 180
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v1    # "localfileChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "bytes":[B
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "written":I
    .end local v6    # "read":I
    :cond_87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 12
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    if-eqz p1, :cond_83

    .line 101
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    .line 102
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3d

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1a

    goto :goto_3d

    .line 103
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_47

    .line 106
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    .line 108
    :cond_47
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_53

    .line 110
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 111
    return-void

    .line 113
    :cond_53
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 115
    .local v1, "localfileChannel":Ljava/nio/channels/FileChannel;
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 116
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 117
    .local v4, "written":I
    :goto_64
    int-to-long v5, v4

    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_71

    .line 118
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_64

    .line 120
    :cond_71
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    add-int/2addr v5, v4

    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 121
    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 122
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    .line 124
    return-void

    .line 99
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v1    # "localfileChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "written":I
    :cond_83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
