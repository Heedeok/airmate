.class public Lorg/apache/commons/httpclient/util/EncodingUtil;
.super Ljava/lang/Object;
.source "EncodingUtil.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    sget-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.util.EncodingUtil"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->class$org$apache$commons$httpclient$util$EncodingUtil:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
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

.method private static doFormUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pairs"    # [Lorg/apache/commons/httpclient/NameValuePair;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_41

    .line 119
    new-instance v2, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v2}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 120
    .local v2, "codec":Lorg/apache/commons/codec/net/URLCodec;
    aget-object v3, p0, v1

    .line 121
    .local v3, "pair":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 122
    if-lez v1, :cond_1d

    .line 123
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :cond_1d
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 128
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .end local v2    # "codec":Lorg/apache/commons/codec/net/URLCodec;
    .end local v3    # "pair":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 132
    .end local v1    # "i":I
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pairs"    # [Lorg/apache/commons/httpclient/NameValuePair;
    .param p1, "charset"    # Ljava/lang/String;

    .line 81
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->doFormUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 82
    :catch_5
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 85
    :try_start_1c
    const-string v1, "ISO-8859-1"

    invoke-static {p0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->doFormUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_22} :catch_23

    return-object v1

    .line 86
    :catch_23
    move-exception v1

    .line 88
    .local v1, "fatal":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v3, "Encoding not supported: ISO-8859-1"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 232
    if-eqz p0, :cond_12

    .line 237
    :try_start_2
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 238
    :catch_9
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAsciiString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 279
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAsciiString([BII)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 257
    if-eqz p0, :cond_13

    .line 262
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_a

    return-object v0

    .line 263
    :catch_a
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 202
    if-eqz p0, :cond_40

    .line 206
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_38

    .line 211
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 212
    :catch_f
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 215
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ". System encoding used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 218
    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 207
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .line 155
    if-eqz p0, :cond_42

    .line 159
    if-eqz p3, :cond_3a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 164
    :try_start_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    .line 165
    :catch_10
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 168
    sget-object v1, Lorg/apache/commons/httpclient/util/EncodingUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ". System encoding used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 170
    :cond_34
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 160
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .line 187
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
