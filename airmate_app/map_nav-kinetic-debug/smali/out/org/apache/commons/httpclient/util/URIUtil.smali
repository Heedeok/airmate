.class public Lorg/apache/commons/httpclient/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/util/URIUtil$Coder;
    }
.end annotation


# static fields
.field protected static final empty:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/httpclient/util/URIUtil;->empty:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "escaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 521
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/net/URLCodec;->decodeUrl([B)[B

    move-result-object v0

    .line 522
    .local v0, "rawdata":[B
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 523
    .end local v0    # "rawdata":[B
    :catch_11
    move-exception v0

    .line 524
    .local v0, "e":Lorg/apache/commons/codec/DecoderException;
    new-instance v1, Lorg/apache/commons/httpclient/URIException;

    invoke-virtual {v0}, Lorg/apache/commons/codec/DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "escaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil$Coder;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "allowed"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 487
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "allowed"    # Ljava/util/BitSet;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 502
    invoke-static {p0, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/codec/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    .line 504
    .local v0, "rawdata":[B
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encodeAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 198
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 218
    sget-object v0, Lorg/apache/commons/httpclient/util/URIUtil;->empty:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 363
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 382
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePathQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 277
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodePathQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePathQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 296
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 297
    .local v1, "at":I
    if-gez v1, :cond_f

    .line 298
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_f
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {v3, v4, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {v0, v3, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 446
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 468
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinAuthority(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 239
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeWithinAuthority(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinAuthority(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 260
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 324
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeWithinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 346
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 404
    invoke-static {}, Lorg/apache/commons/httpclient/URI;->getDefaultProtocolCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/URIUtil;->encodeWithinQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWithinQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .line 426
    sget-object v0, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_4
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "at":I
    const-string v1, "/"

    const/4 v2, 0x0

    if-ltz v0, :cond_1d

    const-string v3, "/"

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v0, 0x2

    nop

    :cond_1d
    :goto_1d
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "from":I
    if-gez v1, :cond_2a

    if-ltz v0, :cond_28

    const-string v2, "/"

    goto :goto_2e

    :cond_28
    move-object v2, p0

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    return-object v2
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Ljava/lang/String;

    .line 63
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 64
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/httpclient/util/URIUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "at":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 67
    .local v2, "to":I
    if-ltz v1, :cond_20

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v3, v0

    :goto_21
    return-object v3

    .line 63
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "at":I
    .end local v2    # "to":I
    :cond_22
    :goto_22
    return-object p0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "uri"    # Ljava/lang/String;

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "at":I
    const-string v1, "/"

    const/4 v2, 0x0

    if-ltz v0, :cond_1d

    const-string v3, "/"

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v0, 0x2

    nop

    :cond_1d
    :goto_1d
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, "from":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, "to":I
    const/16 v3, 0x3f

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_32

    .line 123
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 126
    :cond_32
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_48

    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v2, :cond_48

    .line 127
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 130
    :cond_48
    if-gez v1, :cond_51

    if-ltz v0, :cond_4f

    const-string v3, "/"

    goto :goto_55

    :cond_4f
    move-object v3, p0

    goto :goto_55

    :cond_51
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_55
    return-object v3
.end method

.method public static getPathQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .line 141
    if-nez p0, :cond_4

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_4
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "at":I
    const-string v1, "/"

    const/4 v2, 0x0

    if-ltz v0, :cond_1d

    const-string v3, "/"

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v0, 0x2

    nop

    :cond_1d
    :goto_1d
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "from":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 154
    .local v2, "to":I
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_33

    .line 155
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 158
    :cond_33
    if-gez v1, :cond_3c

    if-ltz v0, :cond_3a

    const-string v3, "/"

    goto :goto_40

    :cond_3a
    move-object v3, p0

    goto :goto_40

    :cond_3c
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_40
    return-object v3
.end method

.method public static getQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "uri"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4f

    .line 80
    :cond_a
    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "at":I
    const-string v2, "/"

    const/4 v3, 0x0

    if-ltz v1, :cond_23

    const-string v4, "/"

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v3, v1, 0x2

    nop

    :cond_23
    :goto_23
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 86
    .local v2, "from":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 88
    .local v3, "to":I
    const-string v4, "?"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 89
    if-ltz v1, :cond_4e

    .line 90
    add-int/lit8 v2, v1, 0x1

    .line 95
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_43

    .line 96
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 99
    :cond_43
    if-ltz v2, :cond_4d

    if-ne v2, v3, :cond_48

    goto :goto_4d

    :cond_48
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    nop

    :cond_4d
    :goto_4d
    return-object v0

    .line 92
    :cond_4e
    return-object v0

    .line 78
    .end local v1    # "at":I
    .end local v2    # "from":I
    .end local v3    # "to":I
    :cond_4f
    :goto_4f
    return-object v0
.end method
