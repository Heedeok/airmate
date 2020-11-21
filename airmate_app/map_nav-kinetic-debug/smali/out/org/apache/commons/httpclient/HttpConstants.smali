.class public Lorg/apache/commons/httpclient/HttpConstants;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# static fields
.field public static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final HTTP_ELEMENT_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    sget-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.HttpConstants"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpConstants;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/HttpConstants;->class$org$apache$commons$httpclient$HttpConstants:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 56
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

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 283
    if-eqz p0, :cond_12

    .line 288
    :try_start_2
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 289
    :catch_9
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
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

    .line 326
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAsciiString([BII)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 306
    if-eqz p0, :cond_13

    .line 311
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_a

    return-object v0

    .line 312
    :catch_a
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_1e

    .line 72
    :try_start_2
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 73
    :catch_9
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 76
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unsupported encoding: US-ASCII. System default encoding used"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 81
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 68
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "data"    # Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getContentBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 139
    if-eqz p0, :cond_53

    .line 143
    if-eqz p1, :cond_c

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 144
    :cond_c
    const-string p1, "ISO-8859-1"

    .line 148
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_12} :catch_13

    return-object v0

    .line 149
    :catch_13
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 152
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ". HTTP default encoding used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 158
    :cond_37
    :try_start_37
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_3d} :catch_3e

    return-object v1

    .line 159
    :catch_3e
    move-exception v1

    .line 161
    .local v1, "e2":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 162
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Unsupported encoding: ISO-8859-1. System encoding used"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 167
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 140
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "e2":Ljava/io/UnsupportedEncodingException;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentString([B)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [B

    .line 272
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .line 191
    if-eqz p0, :cond_56

    .line 195
    if-eqz p3, :cond_c

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 196
    :cond_c
    const-string p3, "ISO-8859-1"

    .line 200
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_13} :catch_14

    return-object v0

    .line 201
    :catch_14
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 204
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ". Default HTTP encoding used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 208
    :cond_38
    :try_start_38
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_3f} :catch_40

    return-object v1

    .line 209
    :catch_40
    move-exception v1

    .line 211
    .local v1, "e2":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 212
    sget-object v2, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Unsupported encoding: ISO-8859-1. System encoding used"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 217
    :cond_50
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    .line 192
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "e2":Ljava/io/UnsupportedEncodingException;
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContentString([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .line 234
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/commons/httpclient/HttpConstants;->getContentString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 124
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/commons/httpclient/HttpConstants;->getString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString([BII)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 97
    if-eqz p0, :cond_20

    .line 102
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_a

    return-object v0

    .line 103
    :catch_a
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 106
    sget-object v1, Lorg/apache/commons/httpclient/HttpConstants;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unsupported encoding: US-ASCII. System default encoding used"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 111
    :cond_1a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 98
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
