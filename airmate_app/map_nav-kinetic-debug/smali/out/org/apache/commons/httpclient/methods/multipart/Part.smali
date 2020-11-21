.class public abstract Lorg/apache/commons/httpclient/methods/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B

.field static synthetic class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.multipart.Part"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    .line 67
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->BOUNDARY_BYTES:[B

    .line 73
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 79
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    .line 85
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->QUOTE_BYTES:[B

    .line 92
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    .line 99
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 106
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 113
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CHARSET_BYTES:[B

    .line 120
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
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

.method public static getBoundary()Ljava/lang/String;
    .registers 1

    .line 129
    const-string v0, "----------------314159265358979323846"

    return-object v0
.end method

.method public static getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;)J
    .registers 3
    .param p0, "parts"    # [Lorg/apache/commons/httpclient/methods/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;[B)J
    .registers 10
    .param p0, "parts"    # [Lorg/apache/commons/httpclient/methods/multipart/Part;
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "getLengthOfParts(Parts[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 419
    if-eqz p0, :cond_3b

    .line 422
    const-wide/16 v0, 0x0

    .line 423
    .local v0, "total":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_28

    .line 425
    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->setPartBoundary([B)V

    .line 426
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/multipart/Part;->length()J

    move-result-wide v3

    .line 427
    .local v3, "l":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_23

    .line 428
    const-wide/16 v5, -0x1

    return-wide v5

    .line 430
    :cond_23
    const/4 v5, 0x0

    add-long/2addr v0, v3

    .line 423
    .end local v3    # "l":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 432
    .end local v2    # "i":I
    :cond_28
    sget-object v2, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 433
    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 434
    sget-object v2, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 435
    sget-object v2, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 436
    return-wide v0

    .line 420
    .end local v0    # "total":J
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;)V
    .registers 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lorg/apache/commons/httpclient/methods/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;[B)V

    .line 360
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;[B)V
    .registers 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lorg/apache/commons/httpclient/methods/multipart/Part;
    .param p2, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    if-eqz p1, :cond_33

    .line 379
    if-eqz p2, :cond_2b

    array-length v0, p2

    if-eqz v0, :cond_2b

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 384
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/apache/commons/httpclient/methods/multipart/Part;->setPartBoundary([B)V

    .line 385
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 387
    .end local v0    # "i":I
    :cond_18
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 388
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 389
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 390
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 391
    return-void

    .line 380
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partBoundary may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .registers 2

    .line 169
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_7

    .line 171
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    return-object v0

    .line 173
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/Part;->boundaryBytes:[B

    return-object v0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .registers 2

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter length()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->lengthOfData()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    .line 328
    const-wide/16 v0, -0x1

    return-wide v0

    .line 330
    :cond_14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 332
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 333
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 334
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 335
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 336
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 337
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->lengthOfData()J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter send(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 309
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 311
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 312
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 314
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendContentTypeHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 233
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 234
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "charSet":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 238
    sget-object v2, Lorg/apache/commons/httpclient/methods/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 239
    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 242
    .end local v1    # "charSet":Ljava/lang/String;
    :cond_30
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 218
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 219
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 221
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 222
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEnd(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 294
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 295
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEndOfHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 268
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 269
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 270
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendStart(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 207
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 208
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendTransferEncodingHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 255
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 256
    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 257
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 259
    :cond_1e
    return-void
.end method

.method setPartBoundary([B)V
    .registers 2
    .param p1, "boundaryBytes"    # [B

    .line 185
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/Part;->boundaryBytes:[B

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
