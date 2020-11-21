.class public Lorg/apache/commons/httpclient/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 136
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 137
    :cond_8
    instance-of v2, p1, Lorg/apache/commons/httpclient/NameValuePair;

    if-eqz v2, :cond_26

    .line 138
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/httpclient/NameValuePair;

    .line 139
    .local v2, "that":Lorg/apache/commons/httpclient/NameValuePair;
    iget-object v3, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v0, 0x1

    nop

    :cond_25
    return v0

    .line 142
    .end local v2    # "that":Lorg/apache/commons/httpclient/NameValuePair;
    :cond_26
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 147
    const/16 v0, 0x11

    .line 148
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 149
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 150
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
