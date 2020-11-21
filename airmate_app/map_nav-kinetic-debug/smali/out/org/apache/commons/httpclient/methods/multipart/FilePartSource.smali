.class public Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;
.super Ljava/lang/Object;
.source "FilePartSource.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/multipart/PartSource;


# instance fields
.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->file:Ljava/io/File;

    .line 55
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->fileName:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->file:Ljava/io/File;

    .line 67
    if-eqz p1, :cond_2f

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->fileName:Ljava/lang/String;

    goto :goto_2f

    .line 72
    :cond_1f
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not readable."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_27
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not a normal file."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2f
    :goto_2f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 89
    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    .line 90
    if-eqz p1, :cond_7

    .line 91
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->fileName:Ljava/lang/String;

    .line 93
    :cond_7
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 125
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 127
    :cond_c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->fileName:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "noname"

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->fileName:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public getLength()J
    .registers 3

    .line 101
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 104
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method
