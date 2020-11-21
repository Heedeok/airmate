.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;,
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([ZZII)I
    .registers 5
    .param p0, "x0"    # [Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([ZZII)I
    .registers 5
    .param p0, "x0"    # [Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .registers 2
    .param p0, "backingArray"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 343
    array-length v0, p0

    if-nez v0, :cond_8

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 346
    :cond_8
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([Z)V

    return-object v0
.end method

.method public static compare(ZZ)I
    .registers 3
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .line 73
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public static varargs concat([[Z)[Z
    .registers 10
    .param p0, "arrays"    # [[Z

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[Z
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .local v0, "i$":I
    .local v4, "length":I
    :goto_6
    if-ge v0, v2, :cond_f

    aget-object v5, v1, v0

    .line 193
    .local v5, "array":[Z
    array-length v6, v5

    add-int/2addr v4, v6

    .line 192
    .end local v5    # "array":[Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 195
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[Z
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [Z

    .line 196
    .local v0, "result":[Z
    const/4 v1, 0x0

    .line 197
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[Z
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 198
    .local v7, "array":[Z
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    array-length v8, v7

    add-int/2addr v6, v8

    .line 197
    .end local v7    # "array":[Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 201
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[Z
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static contains([ZZ)Z
    .registers 7
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .line 91
    move-object v0, p0

    .local v0, "arr$":[Z
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_f

    aget-boolean v4, v0, v3

    .line 92
    .local v4, "value":Z
    if-ne v4, p1, :cond_c

    .line 93
    const/4 v2, 0x1

    return v2

    .line 91
    .end local v4    # "value":Z
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 96
    .end local v0    # "arr$":[Z
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_f
    return v2
.end method

.method private static copyOf([ZI)[Z
    .registers 5
    .param p0, "original"    # [Z
    .param p1, "length"    # I

    .line 231
    new-array v0, p1, [Z

    .line 232
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    return-object v0
.end method

.method public static ensureCapacity([ZII)[Z
    .registers 9
    .param p0, "array"    # [Z
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    if-ltz p2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    array-length v0, p0

    if-ge v0, p1, :cond_30

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Booleans;->copyOf([ZI)[Z

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p0

    :goto_31
    return-object v0
.end method

.method public static hashCode(Z)I
    .registers 2
    .param p0, "value"    # Z

    .line 59
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 v0, 0x4d5

    :goto_7
    return v0
.end method

.method public static indexOf([ZZ)I
    .registers 4
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .line 113
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static indexOf([ZZII)I
    .registers 6
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 119
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 120
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 121
    return v0

    .line 119
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([Z[Z)I
    .registers 7
    .param p0, "array"    # [Z
    .param p1, "target"    # [Z

    .line 139
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 142
    return v1

    .line 146
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 147
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    .line 148
    add-int v3, v0, v2

    aget-boolean v3, p0, v3

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_27

    .line 149
    nop

    .line 146
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 147
    .restart local v2    # "j":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 152
    .end local v2    # "j":I
    :cond_2a
    return v0

    .line 154
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .registers 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [Z

    .line 246
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    array-length v0, p1

    if-nez v0, :cond_9

    .line 248
    const-string v0, ""

    return-object v0

    .line 252
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 257
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([ZZ)I
    .registers 4
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .line 167
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([ZZII)I
    .registers 6
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 173
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 174
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 175
    return v0

    .line 173
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 178
    .end local v0    # "i":I
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[Z>;"
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .line 314
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v0, :cond_c

    .line 315
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->toBooleanArray()[Z

    move-result-object v0

    return-object v0

    .line 318
    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 319
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 320
    .local v1, "len":I
    new-array v2, v1, [Z

    .line 321
    .local v2, "array":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_27

    .line 323
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 325
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method
