.class public abstract Lcom/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HashCode;->hexDigits:[C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract asInt()I
.end method

.method public abstract asLong()J
.end method

.method public abstract bits()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 78
    instance-of v0, p1, Lcom/google/common/hash/HashCode;

    if-eqz v0, :cond_14

    .line 79
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 82
    .local v0, "that":Lcom/google/common/hash/HashCode;
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    return v1

    .line 84
    .end local v0    # "that":Lcom/google/common/hash/HashCode;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 110
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    .line 112
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    .local v2, "arr$":[B
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_f
    if-ge v4, v3, :cond_2a

    aget-byte v5, v2, v4

    .line 114
    .local v5, "b":B
    sget-object v6, Lcom/google/common/hash/HashCode;->hexDigits:[C

    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/common/hash/HashCode;->hexDigits:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 116
    .end local v2    # "arr$":[B
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeBytesTo([BII)I
    .registers 9
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .line 65
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    .line 66
    .local v0, "hash":[B
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    array-length v3, v0

    const/4 v4, 0x1

    aput v3, v1, v4

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->min([I)I

    move-result p3

    .line 67
    add-int v1, p2, p3

    array-length v3, p1

    invoke-static {p2, v1, v3}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 68
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    return p3
.end method
