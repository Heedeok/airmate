.class public Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lorg/apache/commons/httpclient/Credentials;


# instance fields
.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "usernamePassword"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_20

    .line 71
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 72
    .local v0, "atColon":I
    if-ltz v0, :cond_1d

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    .line 74
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    goto :goto_1f

    .line 76
    :cond_1d
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    .line 78
    :goto_1f
    return-void

    .line 69
    .end local v0    # "atColon":I
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username:password string may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-eqz p1, :cond_a

    .line 92
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 94
    return-void

    .line 90
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 199
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 202
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 203
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    .line 205
    .local v2, "that":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    iget-object v3, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 207
    return v1

    .line 210
    .end local v2    # "that":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :cond_2e
    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 183
    const/16 v0, 0x11

    .line 184
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 185
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 186
    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 4
    .param p1, "userName"    # Ljava/lang/String;

    .line 122
    if-eqz p1, :cond_5

    .line 125
    iput-object p1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    .line 126
    return-void

    .line 123
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    if-nez v1, :cond_16

    const-string v1, "null"

    goto :goto_18

    :cond_16
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
