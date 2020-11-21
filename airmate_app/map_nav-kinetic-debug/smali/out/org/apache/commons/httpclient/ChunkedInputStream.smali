.class public Lorg/apache/commons/httpclient/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;


# instance fields
.field private bof:Z

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private in:Ljava/io/InputStream;

.field private method:Lorg/apache/commons/httpclient/HttpMethod;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    sget-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.ChunkedInputStream"

    invoke-static {v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 81
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    .line 104
    if-eqz p1, :cond_17

    .line 107
    iput-object p1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    .line 108
    iput-object p2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    .line 109
    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    .line 110
    return-void

    .line 105
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 87
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

.method static exhaustInputStream(Ljava/io/InputStream;)V
    .registers 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 369
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_b

    goto :goto_4

    .line 372
    :cond_b
    return-void
.end method

.method private static getChunkSizeFromInputStream(Ljava/io/InputStream;)I
    .registers 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 249
    .local v2, "state":I
    :goto_7
    const/4 v3, -0x1

    if-eq v2, v3, :cond_56

    .line 250
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 251
    .local v4, "b":I
    if-eq v4, v3, :cond_4e

    .line 254
    const/16 v3, 0x22

    packed-switch v2, :pswitch_data_98

    .line 291
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "assertion failed"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :pswitch_1d
    if-eq v4, v3, :cond_2c

    const/16 v3, 0x5c

    if-eq v4, v3, :cond_24

    goto :goto_2d

    .line 281
    :cond_24
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 282
    .end local v4    # "b":I
    .local v3, "b":I
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 283
    goto :goto_4d

    .line 285
    .end local v3    # "b":I
    .restart local v4    # "b":I
    :cond_2c
    const/4 v2, 0x0

    .line 288
    :goto_2d
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 290
    goto :goto_4d

    .line 269
    :pswitch_31
    const/16 v3, 0xa

    if-ne v4, v3, :cond_37

    .line 270
    const/4 v2, -0x1

    goto :goto_4d

    .line 273
    :cond_37
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Protocol violation: Unexpected single newline character in chunk size"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :pswitch_3f
    const/16 v5, 0xd

    if-eq v4, v5, :cond_4b

    if-eq v4, v3, :cond_46

    goto :goto_47

    .line 261
    :cond_46
    const/4 v2, 0x2

    .line 264
    :goto_47
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 266
    goto :goto_4d

    .line 258
    :cond_4b
    const/4 v2, 0x1

    .line 259
    nop

    .line 293
    .end local v4    # "b":I
    :goto_4d
    goto :goto_7

    .line 252
    .restart local v4    # "b":I
    :cond_4e
    new-instance v1, Ljava/io/IOException;

    const-string v3, "chunked stream ended unexpectedly"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    .end local v4    # "b":I
    :cond_56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "dataString":Ljava/lang/String;
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 298
    .local v4, "separator":I
    if-lez v4, :cond_6f

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_73

    :cond_6f
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 304
    .end local v3    # "dataString":Ljava/lang/String;
    .local v1, "dataString":Ljava/lang/String;
    :goto_73
    :try_start_73
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_7d} :catch_7f

    .line 307
    .local v3, "result":I
    nop

    .line 308
    return v3

    .line 305
    .end local v3    # "result":I
    :catch_7f
    move-exception v3

    .line 306
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Bad chunk size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_31
        :pswitch_1d
    .end packed-switch
.end method

.method private nextChunk()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    if-nez v0, :cond_7

    .line 219
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->readCRLF()V

    .line 221
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->getChunkSizeFromInputStream(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    .line 223
    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    .line 224
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-nez v0, :cond_1e

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 226
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->parseTrailerHeaders()V

    .line 228
    :cond_1e
    return-void
.end method

.method private parseTrailerHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "footers":[Lorg/apache/commons/httpclient/Header;
    :try_start_1
    const-string v1, "US-ASCII"

    .line 319
    .local v1, "charset":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    if-eqz v2, :cond_12

    .line 320
    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 322
    :cond_12
    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v2, v1}, Lorg/apache/commons/httpclient/HttpParser;->parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v2
    :try_end_18
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_1 .. :try_end_18} :catch_2d

    move-object v0, v2

    .line 328
    .end local v1    # "charset":Ljava/lang/String;
    nop

    .line 329
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    if-eqz v1, :cond_2c

    .line 330
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    .line 331
    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/httpclient/HttpMethod;->addResponseFooter(Lorg/apache/commons/httpclient/Header;)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 334
    .end local v1    # "i":I
    :cond_2c
    return-void

    .line 323
    :catch_2d
    move-exception v1

    .line 324
    .local v1, "e":Lorg/apache/commons/httpclient/HttpException;
    sget-object v2, Lorg/apache/commons/httpclient/ChunkedInputStream;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Error parsing trailer headers"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 325
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 326
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {v2, v1}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 327
    throw v2
.end method

.method private readCRLF()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 205
    .local v0, "cr":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 206
    .local v1, "lf":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_15

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    .line 210
    return-void

    .line 207
    :cond_15
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CRLF expected at end of chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_17

    .line 345
    const/4 v0, 0x1

    :try_start_5
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_c

    .line 346
    invoke-static {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    .line 349
    :cond_c
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 350
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    .line 351
    goto :goto_17

    .line 349
    :catchall_11
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    .line 350
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    throw v1

    .line 353
    :cond_17
    :goto_17
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_25

    .line 142
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 143
    return v1

    .line 145
    :cond_a
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-lt v0, v2, :cond_18

    .line 146
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->nextChunk()V

    .line 147
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_18

    .line 148
    return v1

    .line 151
    :cond_18
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    .line 152
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 140
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_2d

    .line 172
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 173
    return v1

    .line 175
    :cond_a
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-lt v0, v2, :cond_18

    .line 176
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->nextChunk()V

    .line 177
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_18

    .line 178
    return v1

    .line 181
    :cond_18
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 182
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 183
    .local v0, "count":I
    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    .line 184
    return v0

    .line 169
    .end local v0    # "count":I
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
