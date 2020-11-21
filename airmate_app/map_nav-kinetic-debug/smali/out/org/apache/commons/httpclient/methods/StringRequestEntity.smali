.class public Lorg/apache/commons/httpclient/methods/StringRequestEntity;
.super Ljava/lang/Object;
.source "StringRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# instance fields
.field private charset:Ljava/lang/String;

.field private content:[B

.field private contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "content"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p1, :cond_11

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    .line 76
    return-void

    .line 71
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_5c

    .line 96
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    .line 100
    if-eqz p2, :cond_48

    .line 101
    invoke-static {p2}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    .line 102
    .local v0, "values":[Lorg/apache/commons/httpclient/HeaderElement;
    const/4 v1, 0x0

    .line 103
    .local v1, "charsetPair":Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 104
    aget-object v3, v0, v2

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_20

    .line 106
    goto :goto_23

    .line 103
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 109
    .end local v2    # "i":I
    :cond_23
    :goto_23
    if-nez p3, :cond_2e

    if-eqz v1, :cond_2e

    .line 111
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    goto :goto_48

    .line 112
    :cond_2e
    if-eqz p3, :cond_48

    if-nez v1, :cond_48

    .line 114
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    .line 117
    .end local v0    # "values":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v1    # "charsetPair":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_48
    :goto_48
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 118
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    goto :goto_5b

    .line 120
    :cond_55
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    .line 122
    :goto_5b
    return-void

    .line 93
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 4

    .line 160
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 162
    :try_start_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v0

    .line 163
    :catch_e
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 167
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_17
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 153
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 135
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

    .line 142
    if-eqz p1, :cond_b

    .line 145
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 146
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 147
    return-void

    .line 143
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
