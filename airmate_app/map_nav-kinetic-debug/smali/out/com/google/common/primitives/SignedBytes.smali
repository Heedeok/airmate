.class public final Lcom/google/common/primitives/SignedBytes;
.super Ljava/lang/Object;
.source "SignedBytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = 0x40t


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .registers 8
    .param p0, "value"    # J

    .line 61
    long-to-int v0, p0

    int-to-byte v0, v0

    .line 62
    .local v0, "result":B
    int-to-long v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, v1, p0

    if-nez v5, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-string v2, "Out of range: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return v0
.end method

.method public static compare(BB)I
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B

    .line 94
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .line 145
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    array-length v0, p1

    if-nez v0, :cond_9

    .line 147
    const-string v0, ""

    return-object v0

    .line 151
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 156
    .end local v1    # "i":I
    :cond_26
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

    .line 176
    sget-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .registers 4
    .param p0, "array"    # [B

    .line 125
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

    .line 126
    aget-byte v0, p0, v1

    .line 127
    .local v0, "max":B
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 128
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_18

    .line 129
    aget-byte v0, p0, v1

    .line 127
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 132
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static varargs min([B)B
    .registers 4
    .param p0, "array"    # [B

    .line 106
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

    .line 107
    aget-byte v0, p0, v1

    .line 108
    .local v0, "min":B
    nop

    .local v2, "i":I
    :goto_e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_1b

    .line 109
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_18

    .line 110
    aget-byte v0, p0, v1

    .line 108
    :cond_18
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    .line 113
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public static saturatedCast(J)B
    .registers 5
    .param p0, "value"    # J

    .line 75
    const-wide/16 v0, 0x7f

    cmp-long v2, p0, v0

    if-lez v2, :cond_9

    .line 76
    const/16 v0, 0x7f

    return v0

    .line 78
    :cond_9
    const-wide/16 v0, -0x80

    cmp-long v2, p0, v0

    if-gez v2, :cond_12

    .line 79
    const/16 v0, -0x80

    return v0

    .line 81
    :cond_12
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method
