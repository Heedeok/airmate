.class public Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;
.super Ljava/lang/Object;
.source "MixedAttribute.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/Attribute;


# instance fields
.field private attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

.field private final limitSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitSize"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    .line 35
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "limitSize"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_28

    .line 42
    :try_start_10
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18

    .line 50
    :goto_17
    goto :goto_30

    .line 43
    :catch_18
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    :try_start_19
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_21

    .line 49
    goto :goto_17

    .line 47
    :catch_21
    move-exception v1

    .line 48
    .local v1, "e1":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_28
    :try_start_28
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_31

    .line 56
    nop

    .line 58
    :goto_30
    return-void

    .line 54
    :catch_31
    move-exception v0

    .line 55
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .registers 8
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_3b

    .line 62
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3b

    .line 63
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "diskAttribute":Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 66
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 69
    :cond_39
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 72
    .end local v0    # "diskAttribute":Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;
    :cond_3b
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 73
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .registers 3
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 156
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public delete()V
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->delete()V

    .line 77
    return-void
.end method

.method public get()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->get()[B

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

    .line 84
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getCharset()Ljava/nio/charset/Charset;

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

    .line 173
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;

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

    .line 177
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .registers 2

    .line 148
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

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

    .line 92
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getString()Ljava/lang/String;

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

    .line 96
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

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

    .line 112
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 116
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setCharset(Ljava/nio/charset/Charset;)V

    .line 117
    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    .line 131
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_1d

    .line 133
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 136
    :cond_1d
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setContent(Ljava/io/File;)V

    .line 137
    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_13

    .line 142
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 144
    :cond_13
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setContent(Ljava/io/InputStream;)V

    .line 145
    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 7
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 121
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_1e

    .line 123
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 126
    :cond_1e
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 127
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
