.class public Lorg/apache/commons/lang/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static count(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 163
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_18

    .line 166
    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 167
    .local v0, "strs":[Ljava/lang/String;
    aput-object p1, v0, v1

    .line 168
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->count(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 164
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_18
    :goto_18
    return v1
.end method

.method public static count(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 186
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_29

    .line 189
    :cond_e
    invoke-static {p1}, Lorg/apache/commons/lang/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;

    move-result-object v0

    .line 190
    .local v0, "chars":Lorg/apache/commons/lang/CharSet;
    const/4 v2, 0x0

    .line 191
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 192
    .local v3, "chrs":[C
    array-length v4, v3

    .line 193
    .local v4, "sz":I
    nop

    .local v1, "i":I
    :goto_19
    if-ge v1, v4, :cond_28

    .line 194
    aget-char v5, v3, v1

    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/CharSet;->contains(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 193
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 198
    .end local v1    # "i":I
    :cond_28
    return v2

    .line 187
    .end local v0    # "chars":Lorg/apache/commons/lang/CharSet;
    .end local v2    # "count":I
    .end local v3    # "chrs":[C
    .end local v4    # "sz":I
    :cond_29
    :goto_29
    return v1
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 281
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 284
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 285
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 286
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 282
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_18
    :goto_18
    return-object p0
.end method

.method public static delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 305
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    .line 308
    :cond_d
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :cond_13
    :goto_13
    return-object p0
.end method

.method public static evaluateSet([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;
    .registers 2
    .param p0, "set"    # [Ljava/lang/String;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/CharSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/CharSet;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static keep(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 223
    if-nez p0, :cond_4

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 229
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 230
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 231
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 227
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_1c
    :goto_1c
    const-string v0, ""

    return-object v0
.end method

.method public static keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 251
    if-nez p0, :cond_4

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 257
    :cond_11
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_17
    :goto_17
    const-string v0, ""

    return-object v0
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;
    .param p2, "expect"    # Z

    .line 321
    invoke-static {p1}, Lorg/apache/commons/lang/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;

    move-result-object v0

    .line 322
    .local v0, "chars":Lorg/apache/commons/lang/CharSet;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 323
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 324
    .local v2, "chrs":[C
    array-length v3, v2

    .line 325
    .local v3, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_25

    .line 326
    aget-char v5, v2, v4

    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/CharSet;->contains(C)Z

    move-result v5

    if-ne v5, p2, :cond_22

    .line 327
    aget-char v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 330
    .end local v4    # "i":I
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static squeeze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .line 97
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 100
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 101
    .local v0, "strs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 102
    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 98
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_18
    :goto_18
    return-object p0
.end method

.method public static squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 120
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3f

    .line 123
    :cond_d
    invoke-static {p1}, Lorg/apache/commons/lang/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang/CharSet;

    move-result-object v0

    .line 124
    .local v0, "chars":Lorg/apache/commons/lang/CharSet;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 125
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 126
    .local v2, "chrs":[C
    array-length v3, v2

    .line 127
    .local v3, "sz":I
    const/16 v4, 0x20

    .line 128
    .local v4, "lastChar":C
    const/16 v5, 0x20

    .line 129
    .local v5, "ch":C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    if-ge v6, v3, :cond_3a

    .line 130
    aget-char v5, v2, v6

    .line 131
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang/CharSet;->contains(C)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 132
    if-ne v5, v4, :cond_33

    if-eqz v6, :cond_33

    .line 133
    goto :goto_37

    .line 136
    :cond_33
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    move v4, v5

    .line 129
    :goto_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 139
    .end local v6    # "i":I
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 121
    .end local v0    # "chars":Lorg/apache/commons/lang/CharSet;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "chrs":[C
    .end local v3    # "sz":I
    .end local v4    # "lastChar":C
    .end local v5    # "ch":C
    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public static translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 368
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 369
    return-object p0

    .line 371
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 372
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 373
    .local v1, "chrs":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 374
    .local v2, "withChrs":[C
    array-length v3, v1

    .line 375
    .local v3, "sz":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 376
    .local v4, "withMax":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v3, :cond_3c

    .line 377
    aget-char v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 378
    .local v6, "idx":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_34

    .line 379
    if-le v6, v4, :cond_2e

    .line 380
    move v6, v4

    .line 382
    :cond_2e
    aget-char v7, v2, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_39

    .line 384
    :cond_34
    aget-char v7, v1, v5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 376
    .end local v6    # "idx":I
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 387
    .end local v5    # "i":I
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
