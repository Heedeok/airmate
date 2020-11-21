.class public Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;
.super Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;
.source "DiskAttribute.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/Attribute;


# static fields
.field public static baseDirectory:Ljava/lang/String;

.field public static deleteOnExitTemporaryFile:Z

.field public static postfix:Ljava/lang/String;

.field public static prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    .line 32
    const-string v0, "Attr_"

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->prefix:Ljava/lang/String;

    .line 34
    const-string v0, ".att"

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->postfix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 53
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->setValue(Ljava/lang/String;)V

    .line 54
    return-void
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

    .line 79
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 80
    .local v0, "localsize":I
    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1c

    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->size:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_1c

    .line 81
    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    .line 83
    :cond_1c
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    .line 84
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/Attribute;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 108
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .registers 5
    .param p1, "arg0"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 100
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_c

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/Attribute;)I

    move-result v0

    return v0

    .line 101
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected deleteOnExit()Z
    .registers 2

    .line 122
    sget-boolean v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_6

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 96
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected getBaseDirectory()Ljava/lang/String;
    .registers 2

    .line 127
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    return-object v0
.end method

.method protected getDiskFilename()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->postfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .registers 2

    .line 57
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method protected getPostfix()Ljava/lang/String;
    .registers 2

    .line 137
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->postfix:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .registers 2

    .line 142
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->get()[B

    move-result-object v0

    .line 62
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .line 87
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_23

    .line 69
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 70
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 71
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1f

    .line 72
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    .line 74
    :cond_1f
    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 75
    return-void

    .line 67
    .end local v0    # "bytes":[B
    .end local v1    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v0

    .line 115
    :catch_1d
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=IoException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
