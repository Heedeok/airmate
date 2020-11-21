.class public Lcom/github/rosjava/android_remocons/common_tools/system/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final HEX_CHAR_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/system/Util;->HEX_CHAR_TABLE:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static varargs concat([[B)[B
    .registers 9
    .param p0, "arrays"    # [[B

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    .end local v0    # "length":I
    .local v3, "length":I
    :goto_5
    if-ge v0, v1, :cond_e

    aget-object v4, p0, v0

    .line 39
    .local v4, "array":[B
    array-length v5, v4

    add-int/2addr v3, v5

    .line 38
    .end local v4    # "array":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 42
    :cond_e
    new-array v0, v3, [B

    .line 43
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 44
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    const/4 v1, 0x0

    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_14
    if-ge v1, v4, :cond_21

    aget-object v6, p0, v1

    .line 45
    .local v6, "array":[B
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    array-length v7, v6

    add-int/2addr v5, v7

    .line 44
    .end local v6    # "array":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 49
    :cond_21
    return-object v0
.end method

.method public static getHexString([BI)Ljava/lang/String;
    .registers 12
    .param p0, "raw"    # [B
    .param p1, "len"    # I

    .line 18
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    .line 19
    .local v0, "hex":[B
    const/4 v1, 0x0

    .line 20
    .local v1, "index":I
    const/4 v2, 0x0

    .line 22
    .local v2, "pos":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_31

    aget-byte v5, p0, v4

    .line 23
    .local v5, "b":B
    if-lt v2, p1, :cond_f

    .line 24
    goto :goto_31

    .line 26
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 27
    and-int/lit16 v6, v5, 0xff

    .line 28
    .local v6, "v":I
    add-int/lit8 v7, v1, 0x1

    .local v7, "index":I
    sget-object v8, Lcom/github/rosjava/android_remocons/common_tools/system/Util;->HEX_CHAR_TABLE:[B

    ushr-int/lit8 v9, v6, 0x4

    aget-byte v8, v8, v9

    aput-byte v8, v0, v1

    .line 29
    .end local v1    # "index":I
    add-int/lit8 v1, v7, 0x1

    .restart local v1    # "index":I
    sget-object v8, Lcom/github/rosjava/android_remocons/common_tools/system/Util;->HEX_CHAR_TABLE:[B

    and-int/lit8 v9, v6, 0xf

    aget-byte v8, v8, v9

    aput-byte v8, v0, v7

    .line 30
    .end local v7    # "index":I
    add-int/lit8 v7, v1, 0x1

    .restart local v7    # "index":I
    const/16 v8, 0x20

    aput-byte v8, v0, v1

    .line 22
    .end local v1    # "index":I
    .end local v5    # "b":B
    .end local v6    # "v":I
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_8

    .line 33
    .end local v7    # "index":I
    .restart local v1    # "index":I
    :cond_31
    :goto_31
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static toBytes(I)[B
    .registers 4
    .param p0, "input"    # I

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 98
    .local v0, "result":[B
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 99
    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 100
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 101
    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 103
    return-object v0
.end method

.method public static toBytes(S)[B
    .registers 4
    .param p0, "input"    # S

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 109
    .local v0, "result":[B
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 110
    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 112
    return-object v0
.end method

.method public static toFixSizeBytes(Ljava/lang/String;IB)[B
    .registers 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "padding"    # B

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1c

    .line 87
    new-array v0, p1, [B

    .line 88
    .local v0, "result":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 89
    .local v1, "source":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, p1, :cond_1b

    .line 90
    array-length v3, v1

    if-ge v2, v3, :cond_15

    aget-byte v3, v1, v2

    goto :goto_16

    :cond_15
    move v3, p2

    :goto_16
    aput-byte v3, v0, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 92
    .end local v2    # "i":I
    :cond_1b
    return-object v0

    .line 84
    .end local v0    # "result":[B
    .end local v1    # "source":[B
    :cond_1c
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "exceeds limit in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInteger([BI)I
    .registers 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I

    .line 73
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-gt v0, v1, :cond_27

    .line 76
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    .line 74
    :cond_27
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Requested chunk exceeds byte array limits"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toShort([BI)S
    .registers 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I

    .line 64
    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-gt v0, v1, :cond_16

    .line 67
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 65
    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Requested chunk exceeds byte array limits"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString([BII)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 53
    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_19

    .line 56
    new-array v0, p2, [B

    .line 57
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p2, :cond_13

    .line 58
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 60
    .end local v1    # "i":I
    :cond_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 54
    .end local v0    # "result":[B
    :cond_19
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Requested chunk exceeds byte array limits"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
