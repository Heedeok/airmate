.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .registers 9
    .param p0, "value"    # J

    .line 80
    const/16 v0, 0x8

    shr-long v0, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "out of range: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method public static compare(BB)I
    .registers 4
    .param p0, "a"    # B
    .param p1, "b"    # B

    .line 114
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .line 167
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    array-length v0, p1

    if-nez v0, :cond_9

    .line 169
    const-string v0, ""

    return-object v0

    .line 173
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1c
    array-length v2, p1

    if-ge v1, v2, :cond_2e

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 178
    .end local v1    # "i":I
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .registers 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .registers 4
    .param p0, "array"    # [B

    .line 146
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 147
    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 148
    .local v0, "max":I
    nop

    .local v2, "i":I
    :goto_12
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 149
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 150
    .local v2, "next":I
    if-le v2, v0, :cond_1f

    .line 151
    move v0, v2

    .line 148
    .end local v2    # "next":I
    :cond_1f
    add-int/lit8 v2, v1, 0x1

    goto :goto_12

    .line 154
    .end local v1    # "i":I
    :cond_22
    int-to-byte v1, v0

    return v1
.end method

.method public static varargs min([B)B
    .registers 4
    .param p0, "array"    # [B

    .line 126
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 128
    .local v0, "min":I
    nop

    .local v2, "i":I
    :goto_12
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 129
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 130
    .local v2, "next":I
    if-ge v2, v0, :cond_1f

    .line 131
    move v0, v2

    .line 128
    .end local v2    # "next":I
    :cond_1f
    add-int/lit8 v2, v1, 0x1

    goto :goto_12

    .line 134
    .end local v1    # "i":I
    :cond_22
    int-to-byte v1, v0

    return v1
.end method

.method public static saturatedCast(J)B
    .registers 5
    .param p0, "value"    # J

    .line 93
    const-wide/16 v0, 0xff

    cmp-long v2, p0, v0

    if-lez v2, :cond_8

    .line 94
    const/4 v0, -0x1

    return v0

    .line 96
    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_10

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_10
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method public static toInt(B)I
    .registers 2
    .param p0, "value"    # B

    .line 66
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
