.class public Lorg/apache/ws/commons/util/NamespaceContextImpl;
.super Ljava/lang/Object;
.source "NamespaceContextImpl.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field private cachedPrefix:Ljava/lang/String;

.field private cachedURI:Ljava/lang/String;

.field private prefixList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkContext(I)Ljava/lang/String;
    .registers 5
    .param p1, "i"    # I

    .line 277
    invoke-virtual {p0}, Lorg/apache/ws/commons/util/NamespaceContextImpl;->getContext()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 278
    return-object v1

    .line 280
    :cond_8
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    .line 281
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3f

    .line 282
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    .line 284
    goto :goto_43

    .line 285
    :cond_3f
    iput-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    .line 286
    iput-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    .line 288
    :goto_43
    return-object v0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 5
    .param p1, "pPrefix"    # Ljava/lang/String;

    .line 81
    if-eqz p1, :cond_62

    .line 84
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 85
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 86
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    .line 88
    goto :goto_45

    .line 89
    :cond_3f
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    .line 91
    nop

    .line 95
    :goto_45
    return-void

    .line 92
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " isn\'t the prefix, which has been defined last."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace prefix must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pURI"    # Ljava/lang/String;

    .line 164
    if-eqz p1, :cond_68

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 168
    const-string v0, ""

    return-object v0

    .line 170
    :cond_b
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 171
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 172
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    return-object v0

    .line 174
    :cond_22
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_50

    .line 175
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_2c
    if-lez v0, :cond_50

    .line 176
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 177
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4d

    .line 179
    return-object v1

    .line 175
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v0, v0, -0x2

    goto :goto_2c

    .line 185
    .end local v0    # "i":I
    :cond_50
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 186
    const-string v0, "xml"

    return-object v0

    .line 187
    :cond_5b
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 188
    const-string v0, "xmlns"

    return-object v0

    .line 190
    :cond_66
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace URI must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()I
    .registers 4

    .line 250
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_d
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x2

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pPrefix"    # Ljava/lang/String;

    .line 104
    if-eqz p1, :cond_51

    .line 107
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 108
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    return-object v0

    .line 109
    :cond_11
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 110
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1b
    if-lez v0, :cond_39

    .line 111
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 112
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 110
    :cond_36
    add-int/lit8 v0, v0, -0x2

    goto :goto_1b

    .line 117
    .end local v0    # "i":I
    :cond_39
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 118
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0

    .line 119
    :cond_44
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 120
    const-string v0, "http://www.w3.org/2000/xmlns/"

    return-object v0

    .line 122
    :cond_4f
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace prefix must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pURI"    # Ljava/lang/String;

    .line 135
    if-eqz p1, :cond_51

    .line 138
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 139
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    return-object v0

    .line 140
    :cond_11
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 141
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1b
    if-lez v0, :cond_39

    .line 142
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 143
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 141
    :cond_36
    add-int/lit8 v0, v0, -0x2

    goto :goto_1b

    .line 148
    .end local v0    # "i":I
    :cond_39
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 149
    const-string v0, "xml"

    return-object v0

    .line 150
    :cond_44
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 151
    const-string v0, "xmlns"

    return-object v0

    .line 153
    :cond_4f
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace URI must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 6
    .param p1, "pURI"    # Ljava/lang/String;

    .line 200
    if-eqz p1, :cond_60

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "list":Ljava/util/List;
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 205
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_18
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v1, :cond_40

    .line 207
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_22
    if-lez v1, :cond_40

    .line 208
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 209
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_3d
    add-int/lit8 v1, v1, -0x2

    goto :goto_22

    .line 214
    .end local v1    # "i":I
    :cond_40
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 215
    const-string v1, "xmlns"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    goto :goto_5b

    :cond_4e
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 217
    const-string v1, "xml"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_5b
    :goto_5b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 201
    .end local v0    # "list":Ljava/util/List;
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace URI must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefixes()Ljava/util/List;
    .registers 4

    .line 297
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 298
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 299
    :cond_7
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-nez v0, :cond_12

    .line 300
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 302
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 304
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v1, v1, 0x2

    goto :goto_20

    .line 306
    .end local v1    # "i":I
    :cond_34
    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-object v0
.end method

.method public isPrefixDeclared(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pPrefix"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 226
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 227
    :cond_12
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 228
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1c
    if-lez v0, :cond_30

    .line 229
    iget-object v2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 230
    return v1

    .line 228
    :cond_2d
    add-int/lit8 v0, v0, -0x2

    goto :goto_1c

    .line 235
    .end local v0    # "i":I
    :cond_30
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 47
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    :cond_e
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pPrefix"    # Ljava/lang/String;
    .param p2, "pURI"    # Ljava/lang/String;

    .line 56
    if-eqz p1, :cond_2e

    .line 59
    if-eqz p2, :cond_26

    .line 62
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 63
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    .line 64
    :cond_13
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->prefixList:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_21
    iput-object p2, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedURI:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/apache/ws/commons/util/NamespaceContextImpl;->cachedPrefix:Ljava/lang/String;

    .line 69
    return-void

    .line 60
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace prefix must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The namespace prefix must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
