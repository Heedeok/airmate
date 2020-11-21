.class public Lorg/apache/commons/lang/CharSet;
.super Ljava/lang/Object;
.source "CharSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

.field public static final ASCII_ALPHA_LOWER:Lorg/apache/commons/lang/CharSet;

.field public static final ASCII_ALPHA_UPPER:Lorg/apache/commons/lang/CharSet;

.field public static final ASCII_NUMERIC:Lorg/apache/commons/lang/CharSet;

.field protected static final COMMON:Ljava/util/Map;

.field public static final EMPTY:Lorg/apache/commons/lang/CharSet;

.field private static final serialVersionUID:J = 0x528affa5f57a3936L


# instance fields
.field private set:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->EMPTY:Lorg/apache/commons/lang/CharSet;

    .line 57
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string v2, "a-zA-Z"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

    .line 63
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string v2, "a-z"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_LOWER:Lorg/apache/commons/lang/CharSet;

    .line 69
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string v2, "A-Z"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_UPPER:Lorg/apache/commons/lang/CharSet;

    .line 75
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    const-string v2, "0-9"

    invoke-direct {v0, v2}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->ASCII_NUMERIC:Lorg/apache/commons/lang/CharSet;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    .line 85
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    sget-object v2, Lorg/apache/commons/lang/CharSet;->EMPTY:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string v1, ""

    sget-object v2, Lorg/apache/commons/lang/CharSet;->EMPTY:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string v1, "a-zA-Z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string v1, "A-Za-z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string v1, "a-z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_LOWER:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string v1, "A-Z"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_ALPHA_UPPER:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    const-string v1, "0-9"

    sget-object v2, Lorg/apache/commons/lang/CharSet;->ASCII_NUMERIC:Lorg/apache/commons/lang/CharSet;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "setStr"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/CharSet;->add(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "set"    # [Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    .line 185
    array-length v0, p1

    .line 186
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_16

    .line 187
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/CharSet;->add(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 189
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;
    .registers 3
    .param p0, "setStr"    # Ljava/lang/String;

    .line 142
    sget-object v0, Lorg/apache/commons/lang/CharSet;->COMMON:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "set":Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 144
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/lang/CharSet;

    return-object v1

    .line 146
    :cond_c
    new-instance v1, Lorg/apache/commons/lang/CharSet;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang/CharSet;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;
    .registers 2
    .param p0, "setStrs"    # [Ljava/lang/String;

    .line 158
    if-nez p0, :cond_4

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/CharSet;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected add(Ljava/lang/String;)V
    .registers 10
    .param p1, "str"    # Ljava/lang/String;

    .line 198
    if-nez p1, :cond_3

    .line 199
    return-void

    .line 202
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 203
    .local v0, "len":I
    const/4 v1, 0x0

    .line 204
    .local v1, "pos":I
    :goto_8
    if-ge v1, v0, :cond_8b

    .line 205
    sub-int v2, v0, v1

    .line 206
    .local v2, "remainder":I
    const/16 v3, 0x2d

    const/16 v4, 0x5e

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lt v2, v5, :cond_3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_3b

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_3b

    .line 208
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v7, v1, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {v4, v5, v7, v6}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x4

    goto :goto_8

    .line 210
    :cond_3b
    const/4 v5, 0x3

    if-lt v2, v5, :cond_5d

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_5d

    .line 212
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/lang/CharRange;-><init>(CC)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v1, v1, 0x3

    goto :goto_8

    .line 214
    :cond_5d
    const/4 v3, 0x2

    if-lt v2, v3, :cond_79

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_79

    .line 216
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/lang/CharRange;-><init>(CZ)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 220
    :cond_79
    iget-object v3, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    new-instance v4, Lorg/apache/commons/lang/CharRange;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5}, Lorg/apache/commons/lang/CharRange;-><init>(C)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 224
    .end local v2    # "remainder":I
    :cond_8b
    return-void
.end method

.method public contains(C)Z
    .registers 5
    .param p1, "ch"    # C

    .line 246
    iget-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/CharRange;

    .line 248
    .local v1, "range":Lorg/apache/commons/lang/CharRange;
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang/CharRange;->contains(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 249
    const/4 v2, 0x1

    return v2

    .line 252
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "range":Lorg/apache/commons/lang/CharRange;
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 269
    if-ne p1, p0, :cond_4

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_4
    instance-of v0, p1, Lorg/apache/commons/lang/CharSet;

    if-nez v0, :cond_a

    .line 273
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_a
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/CharSet;

    .line 276
    .local v0, "other":Lorg/apache/commons/lang/CharSet;
    iget-object v1, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    iget-object v2, v0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCharRanges()[Lorg/apache/commons/lang/CharRange;
    .registers 3

    .line 234
    iget-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/lang/CharRange;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang/CharRange;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 286
    iget-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x59

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Lorg/apache/commons/lang/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
