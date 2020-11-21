.class public Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
.super Ljava/lang/Object;
.source "MultipartRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field static synthetic class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private multipartBoundary:[B

.field private params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

.field protected parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.multipart.MultipartRequestEntity"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->log:Lorg/apache/commons/logging/Log;

    .line 87
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V
    .registers 5
    .param p1, "parts"    # [Lorg/apache/commons/httpclient/methods/multipart/Part;
    .param p2, "params"    # Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-eqz p1, :cond_14

    .line 119
    if-eqz p2, :cond_c

    .line 122
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    .line 123
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .line 124
    return-void

    .line 120
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 79
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

.method private static generateMultipartBoundary()[B
    .registers 5

    .line 95
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 96
    .local v0, "rand":Ljava/util/Random;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-array v1, v1, [B

    .line 97
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 98
    sget-object v3, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    sget-object v4, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 100
    .end local v2    # "i":I
    :cond_23
    return-object v1
.end method


# virtual methods
.method public getContentLength()J
    .registers 4

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;[B)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 173
    :catch_b
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 175
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .registers 3

    .line 136
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    if-nez v0, :cond_1d

    .line 137
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    const-string v1, "http.method.multipart.boundary"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 139
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    goto :goto_1d

    .line 141
    :cond_17
    invoke-static {}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->generateMultipartBoundary()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    .line 144
    .end local v0    # "temp":Ljava/lang/String;
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 4

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 153
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/multipart/Part;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_12

    .line 154
    return v0

    .line 152
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    .end local v1    # "i":I
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;[B)V

    .line 165
    return-void
.end method
