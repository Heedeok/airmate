.class public Lorg/apache/commons/httpclient/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"


# instance fields
.field private headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/commons/httpclient/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/commons/httpclient/Header;

    .line 72
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public clear()V
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "headerIter":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/Header;

    .line 212
    .local v1, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 213
    const/4 v2, 0x1

    return v2

    .line 215
    .end local v1    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_1e
    goto :goto_6

    .line 217
    .end local v0    # "headerIter":Ljava/util/Iterator;
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getAllHeaders()[Lorg/apache/commons/httpclient/Header;
    .registers 3

    .line 197
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Header;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 113
    .local v0, "headers":[Lorg/apache/commons/httpclient/Header;
    array-length v1, v0

    if-nez v1, :cond_9

    .line 114
    const/4 v1, 0x0

    return-object v1

    .line 115
    :cond_9
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    .line 116
    new-instance v1, Lorg/apache/commons/httpclient/Header;

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 118
    :cond_20
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "valueBuffer":Ljava/lang/StringBuffer;
    nop

    .local v3, "i":I
    :goto_2c
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_41

    .line 121
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    add-int/lit8 v3, v2, 0x1

    goto :goto_2c

    .line 125
    .end local v2    # "i":I
    :cond_41
    new-instance v2, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "headerIter":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/Header;

    .line 163
    .local v1, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 164
    return-object v1

    .line 166
    .end local v1    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_1d
    goto :goto_6

    .line 168
    .end local v0    # "headerIter":Ljava/util/Iterator;
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "headersFound":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "headerIter":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/Header;

    .line 144
    .local v2, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 145
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_24
    goto :goto_b

    .line 149
    .end local v1    # "headerIter":Ljava/util/Iterator;
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/httpclient/Header;

    return-object v1
.end method

.method public getIterator()Ljava/util/Iterator;
    .registers 2

    .line 228
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 182
    iget-object v1, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/Header;

    .line 183
    .local v1, "header":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 184
    return-object v1

    .line 181
    .end local v1    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 188
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeHeader(Lorg/apache/commons/httpclient/Header;)V
    .registers 3
    .param p1, "header"    # Lorg/apache/commons/httpclient/Header;

    .line 81
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public setHeaders([Lorg/apache/commons/httpclient/Header;)V
    .registers 4
    .param p1, "headers"    # [Lorg/apache/commons/httpclient/Header;

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 95
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 97
    .end local v0    # "i":I
    :cond_f
    return-void
.end method
