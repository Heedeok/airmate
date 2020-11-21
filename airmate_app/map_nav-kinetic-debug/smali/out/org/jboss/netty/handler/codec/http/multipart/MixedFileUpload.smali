.class public Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;
.super Ljava/lang/Object;
.source "MixedFileUpload.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;


# instance fields
.field private final definedSize:J

.field private fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

.field private final limitSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJ)V
    .registers 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentTransferEncoding"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "size"    # J
    .param p8, "limitSize"    # J

    .line 37
    move-object v0, p0

    move-wide/from16 v9, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    move-wide/from16 v11, p8

    iput-wide v11, v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    .line 39
    iget-wide v1, v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v3, v9, v1

    if-lez v3, :cond_24

    .line 40
    new-instance v13, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v13, v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    goto :goto_37

    .line 43
    :cond_24
    new-instance v13, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v13, v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 46
    :goto_37
    iput-wide v9, v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    .line 47
    return-void
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .registers 16
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_56

    .line 52
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_56

    .line 53
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    iget-wide v11, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 58
    .local v0, "diskFileUpload":Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 59
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 62
    :cond_54
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 65
    .end local v0    # "diskFileUpload":Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;
    :cond_56
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 66
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .registers 3
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 185
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public delete()V
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->delete()V

    .line 70
    return-void
.end method

.method public get()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .registers 2

    .line 177
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .registers 3

    .line 113
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .registers 3
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 121
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setCharset(Ljava/nio/charset/Charset;)V

    .line 122
    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .registers 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_38

    .line 140
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_38

    .line 142
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 149
    :cond_38
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/File;)V

    .line 150
    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_2e

    .line 155
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 161
    :cond_2e
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/InputStream;)V

    .line 162
    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 11
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_39

    .line 126
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_39

    .line 128
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    iget-wide v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 135
    :cond_39
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 136
    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .registers 3
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 3
    .param p1, "contentType"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContentType(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setFilename(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
