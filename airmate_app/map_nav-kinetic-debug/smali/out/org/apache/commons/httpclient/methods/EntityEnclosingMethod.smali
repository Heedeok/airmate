.class public abstract Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.super Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.source "EntityEnclosingMethod.java"


# static fields
.field public static final CONTENT_LENGTH_AUTO:J = -0x2L

.field public static final CONTENT_LENGTH_CHUNKED:J = -0x1L

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;


# instance fields
.field private chunked:Z

.field private repeatCount:I

.field private requestContentLength:J

.field private requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

.field private requestStream:Ljava/io/InputStream;

.field private requestString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.methods.EntityEnclosingMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 83
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 95
    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 97
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 108
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setFollowRedirects(Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 83
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 95
    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 97
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setFollowRedirects(Z)V

    .line 121
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 77
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
.method protected addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 8
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 401
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addContentLengthRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 404
    const-string v0, "content-length"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_59

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_59

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestContentLength()J

    move-result-wide v0

    .line 407
    .local v0, "len":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_50

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 409
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 411
    :cond_35
    new-instance v2, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, " does not support chunk encoding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_50
    const-string v2, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .end local v0    # "len":J
    :cond_59
    :goto_59
    return-void
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 6
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 370
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 373
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 378
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    .line 380
    .local v0, "requestEntity":Lorg/apache/commons/httpclient/methods/RequestEntity;
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 381
    const-string v1, "Content-Type"

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .end local v0    # "requestEntity":Lorg/apache/commons/httpclient/methods/RequestEntity;
    :cond_2a
    return-void
.end method

.method protected clearRequestBody()V
    .registers 3

    .line 150
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.clearRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 152
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 154
    return-void
.end method

.method protected generateRequestBody()[B
    .registers 3

    .line 168
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.renerateRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method protected generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .registers 8

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestBody()[B

    move-result-object v0

    .line 175
    .local v0, "requestBody":[B
    if-eqz v0, :cond_e

    .line 178
    new-instance v1, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([B)V

    iput-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    goto :goto_5d

    .line 179
    :cond_e
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 180
    new-instance v1, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    iget-wide v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 183
    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    goto :goto_5d

    .line 184
    :cond_21
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 185
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "charset":Ljava/lang/String;
    :try_start_29
    new-instance v3, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v1}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_32} :catch_33

    .line 198
    goto :goto_5d

    .line 189
    :catch_33
    move-exception v3

    .line 190
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v4, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 191
    sget-object v4, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 194
    :cond_52
    :try_start_52
    new-instance v4, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    iget-object v5, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v2}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_5b} :catch_5c

    .line 197
    goto :goto_5d

    .line 196
    :catch_5c
    move-exception v2

    .line 201
    .end local v1    # "charset":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5d
    :goto_5d
    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    return-object v1
.end method

.method public getFollowRedirects()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestCharSet()Ljava/lang/String;
    .registers 4

    .line 266
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_23

    .line 270
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-eqz v0, :cond_1e

    .line 271
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_1e
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_23
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestContentLength()J
    .registers 4

    .line 325
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.getRequestContentLength()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_10

    .line 328
    return-wide v1

    .line 330
    :cond_10
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    if-eqz v0, :cond_17

    .line 331
    const-wide/16 v0, -0x1

    return-wide v0

    .line 333
    :cond_17
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_21

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 336
    :cond_21
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_26

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentLength()J

    move-result-wide v1

    :goto_2c
    return-wide v1
.end method

.method public getRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .registers 2

    .line 538
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    return-object v0
.end method

.method protected hasRequestContent()Z
    .registers 3

    .line 135
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.hasRequestContent()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public recycle()V
    .registers 3

    .line 524
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 526
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 528
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 529
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->recycle()V

    .line 530
    return-void
.end method

.method public setContentChunked(Z)V
    .registers 2
    .param p1, "chunked"    # Z

    .line 316
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    .line 317
    return-void
.end method

.method public setFollowRedirects(Z)V
    .registers 4
    .param p1, "followRedirects"    # Z

    .line 224
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 227
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->setFollowRedirects(Z)V

    .line 228
    return-void

    .line 225
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity enclosing requests cannot be redirected without user intervention"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestBody(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "body"    # Ljava/io/InputStream;

    .line 428
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestBody(InputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 430
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    .line 431
    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .registers 4
    .param p1, "body"    # Ljava/lang/String;

    .line 448
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestBody(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 450
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setRequestContentLength(I)V
    .registers 4
    .param p1, "length"    # I

    .line 253
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestContentLength(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 254
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 255
    return-void
.end method

.method public setRequestContentLength(J)V
    .registers 5
    .param p1, "length"    # J

    .line 304
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestContentLength(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 305
    iput-wide p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    .line 306
    return-void
.end method

.method public setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V
    .registers 2
    .param p1, "requestEntity"    # Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 547
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    .line 548
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 549
    return-void
.end method

.method protected writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z
    .registers 10
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 469
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.writeRequestBody(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 473
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Request body has not been specified"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 474
    return v1

    .line 476
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_20

    .line 477
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    .line 479
    :cond_20
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_2c

    .line 480
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Request body is empty"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 481
    return v1

    .line 484
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestContentLength()J

    move-result-wide v2

    .line 486
    .local v2, "contentLength":J
    iget v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    if-lez v0, :cond_45

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_45

    .line 487
    :cond_3d
    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v1, "Unbuffered entity enclosing request can not be repeated."

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_45
    :goto_45
    iget v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    .line 493
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getRequestOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 495
    .local v0, "outstream":Ljava/io/OutputStream;
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_5a

    .line 496
    new-instance v4, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    invoke-direct {v4, v0}, Lorg/apache/commons/httpclient/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v4

    .line 499
    :cond_5a
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v4, v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->writeRequest(Ljava/io/OutputStream;)V

    .line 502
    instance-of v4, v0, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    if-eqz v4, :cond_69

    .line 503
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->finish()V

    .line 506
    :cond_69
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 508
    sget-object v4, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Request body sent"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 509
    return v1
.end method
