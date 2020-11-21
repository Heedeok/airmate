.class public Lorg/apache/xmlrpc/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeBasicAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "pUser"    # Ljava/lang/String;
    .param p1, "pPassword"    # Ljava/lang/String;
    .param p2, "pEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 44
    return-object v0

    .line 46
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "s":Ljava/lang/String;
    if-nez p2, :cond_1c

    .line 48
    const-string p2, "UTF-8"

    .line 50
    :cond_1c
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 51
    .local v2, "bytes":[B
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v0}, Lorg/apache/ws/commons/util/Base64;->encode([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNonIdentityTransferEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pHeaderValue"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 87
    return-object v0

    .line 89
    :cond_4
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 90
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "encoding":Ljava/lang/String;
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 92
    .local v3, "offset":I
    if-ltz v3, :cond_22

    .line 93
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_22
    const-string v4, "identity"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "offset":I
    :cond_33
    goto :goto_b

    .line 99
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_34
    return-object v0
.end method

.method public static isUsingGzipEncoding(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pHeaderValue"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 63
    return v0

    .line 65
    :cond_4
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 66
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "encoding":Ljava/lang/String;
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 68
    .local v3, "offset":I
    if-ltz v3, :cond_21

    .line 69
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_21
    const-string v4, "gzip"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "offset":I
    :cond_2f
    goto :goto_b

    .line 75
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_30
    return v0
.end method

.method public static isUsingGzipEncoding(Ljava/util/Enumeration;)Z
    .registers 2
    .param p0, "pValues"    # Ljava/util/Enumeration;

    .line 110
    if-eqz p0, :cond_16

    .line 111
    :cond_2
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 112
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static parseAuthorization(Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;Ljava/lang/String;)V
    .registers 10
    .param p0, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;
    .param p1, "pLine"    # Ljava/lang/String;

    .line 153
    if-nez p1, :cond_3

    .line 154
    return-void

    .line 156
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_13

    .line 159
    return-void

    .line 161
    :cond_13
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "type":Ljava/lang/String;
    const-string v2, "basic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 163
    return-void

    .line 165
    :cond_20
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_27

    .line 166
    return-void

    .line 168
    :cond_27
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "auth":Ljava/lang/String;
    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lorg/apache/ws/commons/util/Base64;->decode([CII)[B

    move-result-object v3

    .line 171
    .local v3, "c":[B
    invoke-virtual {p0}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->getBasicEncoding()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "enc":Ljava/lang/String;
    if-nez v4, :cond_41

    .line 173
    const-string v6, "UTF-8"

    move-object v4, v6

    .line 175
    :cond_41
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 176
    .local v6, "str":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 177
    .local v7, "col":I
    if-ltz v7, :cond_5e

    .line 178
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->setBasicUserName(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;->setBasicPassword(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_5e} :catch_5f

    .line 182
    .end local v3    # "c":[B
    .end local v4    # "enc":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "col":I
    :cond_5e
    goto :goto_60

    .line 181
    :catch_5f
    move-exception v3

    .line 183
    :goto_60
    return-void
.end method

.method public static readLine(Ljava/io/InputStream;[B)Ljava/lang/String;
    .registers 7
    .param p0, "pIn"    # Ljava/io/InputStream;
    .param p1, "pBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 133
    .local v1, "count":I
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 134
    .local v2, "next":I
    if-ltz v2, :cond_23

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    .line 135
    goto :goto_23

    .line 137
    :cond_d
    const/16 v3, 0xd

    if-eq v2, v3, :cond_17

    .line 138
    add-int/lit8 v3, v1, 0x1

    .local v3, "count":I
    int-to-byte v4, v2

    aput-byte v4, p1, v1

    .line 140
    move v1, v3

    .end local v3    # "count":I
    :cond_17
    array-length v3, p1

    if-ge v1, v3, :cond_1b

    .end local v2    # "next":I
    goto :goto_2

    .line 141
    .restart local v2    # "next":I
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v3, "HTTP Header too long"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_23
    :goto_23
    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, p1, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v3
.end method
