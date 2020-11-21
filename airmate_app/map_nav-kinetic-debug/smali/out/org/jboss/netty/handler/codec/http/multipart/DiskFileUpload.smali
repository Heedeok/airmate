.class public Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;
.super Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;
.source "DiskFileUpload.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;


# static fields
.field public static baseDirectory:Ljava/lang/String;

.field public static deleteOnExitTemporaryFile:Z

.field public static postfix:Ljava/lang/String;

.field public static prefix:Ljava/lang/String;


# instance fields
.field private contentTransferEncoding:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    .line 31
    const-string v0, "FUp_"

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->prefix:Ljava/lang/String;

    .line 33
    const-string v0, ".tmp"

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->postfix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentTransferEncoding"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "size"    # J

    .line 43
    invoke-direct {p0, p1, p5, p6, p7}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 44
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->setFilename(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->setContentType(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p4}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 26
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    .line 88
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "v":I
    if-eqz v0, :cond_f

    .line 90
    return v0

    .line 93
    :cond_f
    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .registers 5
    .param p1, "arg0"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 79
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_c

    .line 83
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;)I

    move-result v0

    return v0

    .line 80
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

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

    .line 131
    sget-boolean v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_6

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    .line 75
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected getBaseDirectory()Ljava/lang/String;
    .registers 2

    .line 136
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->baseDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->contentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method protected getDiskFilename()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .registers 2

    .line 50
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->FileUpload:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method protected getPostfix()Ljava/lang/String;
    .registers 2

    .line 147
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->postfix:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .registers 2

    .line 152
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 66
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->contentTransferEncoding:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4
    .param p1, "contentType"    # Ljava/lang/String;

    .line 97
    if-eqz p1, :cond_5

    .line 100
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->contentType:Ljava/lang/String;

    .line 101
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;

    .line 58
    if-eqz p1, :cond_5

    .line 61
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->filename:Ljava/lang/String;

    .line 62
    return-void

    .line 59
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_58

    :cond_56
    const-string v1, "\r\n"

    :goto_58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Completed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->isCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\r\nIsInMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->isInMemory()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\r\nRealFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DefaultDeleteAfter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
