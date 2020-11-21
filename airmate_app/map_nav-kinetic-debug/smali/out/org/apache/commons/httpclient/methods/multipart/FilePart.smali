.class public Lorg/apache/commons/httpclient/methods/multipart/FilePart;
.super Lorg/apache/commons/httpclient/methods/multipart/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;


# instance fields
.field private source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.multipart.FilePart"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    .line 75
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 160
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 179
    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lorg/apache/commons/httpclient/methods/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .line 93
    if-nez p3, :cond_5

    const-string v0, "application/octet-stream"

    goto :goto_6

    :cond_5
    move-object v0, p3

    :goto_6
    if-nez p4, :cond_b

    const-string v1, "ISO-8859-1"

    goto :goto_c

    :cond_b
    move-object v1, p4

    :goto_c
    const-string v2, "binary"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p2, :cond_16

    .line 103
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    .line 104
    return-void

    .line 101
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 69
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected getSource()Lorg/apache/commons/httpclient/methods/multipart/PartSource;
    .registers 3

    .line 237
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter getSource()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendData(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->lengthOfData()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 214
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "No data to send."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 215
    return-void

    .line 218
    :cond_19
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 219
    .local v0, "tmp":[B
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 222
    .local v1, "instream":Ljava/io/InputStream;
    :goto_23
    :try_start_23
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-ltz v2, :cond_2f

    .line 223
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_34

    goto :goto_23

    .line 227
    .end local v3    # "len":I
    :cond_2f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 228
    nop

    .line 229
    return-void

    .line 227
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 191
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 192
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 194
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 195
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 197
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 199
    :cond_28
    return-void
.end method
