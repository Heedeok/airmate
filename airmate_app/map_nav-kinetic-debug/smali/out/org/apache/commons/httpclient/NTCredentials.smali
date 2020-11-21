.class public Lorg/apache/commons/httpclient/NTCredentials;
.super Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
.source "NTCredentials.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz p4, :cond_14

    .line 82
    iput-object p4, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    .line 83
    if-eqz p3, :cond_c

    .line 86
    iput-object p3, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    .line 87
    return-void

    .line 84
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Domain may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 180
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 181
    :cond_8
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 182
    instance-of v2, p1, Lorg/apache/commons/httpclient/NTCredentials;

    if-eqz v2, :cond_2c

    .line 183
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/httpclient/NTCredentials;

    .line 185
    .local v2, "that":Lorg/apache/commons/httpclient/NTCredentials;
    iget-object v3, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v0, 0x1

    nop

    :cond_2b
    return v0

    .line 190
    .end local v2    # "that":Lorg/apache/commons/httpclient/NTCredentials;
    :cond_2c
    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 164
    invoke-super {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->hashCode()I

    move-result v0

    .line 165
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 166
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 167
    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_5

    .line 104
    iput-object p1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    .line 105
    return-void

    .line 102
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Domain may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;

    .line 128
    if-eqz p1, :cond_5

    .line 131
    iput-object p1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    .line 132
    return-void

    .line 129
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "sbResult":Ljava/lang/StringBuffer;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
