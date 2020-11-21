.class public Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;
.super Ljava/lang/Object;
.source "ByteArrays.java"


# static fields
.field private static final HEX_CHAR_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->HEX_CHAR_TABLE:[B

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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static varargs concat([[B)[B
    .registers 10
    .param p0, "arrays"    # [[B

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "length":I
    move-object v1, p0

    .local v1, "arr$":[[B
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

    .line 47
    .local v5, "array":[B
    array-length v6, v5

    add-int/2addr v4, v6

    .line 46
    .end local v5    # "array":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 50
    .end local v0    # "i$":I
    .end local v1    # "arr$":[[B
    .end local v2    # "len$":I
    :cond_f
    new-array v0, v4, [B

    .line 51
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 52
    .local v1, "pos":I
    move-object v2, p0

    .local v2, "arr$":[[B
    array-length v5, v2

    move v6, v1

    const/4 v1, 0x0

    .local v1, "i$":I
    .local v5, "len$":I
    .local v6, "pos":I
    :goto_16
    if-ge v1, v5, :cond_23

    aget-object v7, v2, v1

    .line 53
    .local v7, "array":[B
    array-length v8, v7

    invoke-static {v7, v3, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length v8, v7

    add-int/2addr v6, v8

    .line 52
    .end local v7    # "array":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 57
    .end local v1    # "i$":I
    .end local v2    # "arr$":[[B
    .end local v5    # "len$":I
    :cond_23
    return-object v0
.end method

.method public static getHexString([BI)Ljava/lang/String;
    .registers 13
    .param p0, "raw"    # [B
    .param p1, "len"    # I

    .line 26
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    .line 27
    .local v0, "hex":[B
    const/4 v1, 0x0

    .line 28
    .local v1, "index":I
    const/4 v2, 0x0

    .line 30
    .local v2, "pos":I
    move-object v3, p0

    .local v3, "arr$":[B
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_9
    if-ge v5, v4, :cond_32

    aget-byte v6, v3, v5

    .line 31
    .local v6, "b":B
    if-lt v2, p1, :cond_10

    .line 32
    goto :goto_32

    .line 34
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 35
    and-int/lit16 v7, v6, 0xff

    .line 36
    .local v7, "v":I
    add-int/lit8 v8, v1, 0x1

    .local v8, "index":I
    sget-object v9, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->HEX_CHAR_TABLE:[B

    ushr-int/lit8 v10, v7, 0x4

    aget-byte v9, v9, v10

    aput-byte v9, v0, v1

    .line 37
    .end local v1    # "index":I
    add-int/lit8 v1, v8, 0x1

    .restart local v1    # "index":I
    sget-object v9, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->HEX_CHAR_TABLE:[B

    and-int/lit8 v10, v7, 0xf

    aget-byte v9, v9, v10

    aput-byte v9, v0, v8

    .line 38
    .end local v8    # "index":I
    add-int/lit8 v8, v1, 0x1

    .restart local v8    # "index":I
    const/16 v9, 0x20

    aput-byte v9, v0, v1

    .line 30
    .end local v1    # "index":I
    .end local v6    # "b":B
    .end local v7    # "v":I
    add-int/lit8 v5, v5, 0x1

    move v1, v8

    goto :goto_9

    .line 41
    .end local v3    # "arr$":[B
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v8    # "index":I
    .restart local v1    # "index":I
    :cond_32
    :goto_32
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static toBytes(I)[B
    .registers 4
    .param p0, "input"    # I

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 106
    .local v0, "result":[B
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 107
    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 108
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 109
    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 111
    return-object v0
.end method

.method public static toBytes(S)[B
    .registers 4
    .param p0, "input"    # S

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 117
    .local v0, "result":[B
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 118
    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 120
    return-object v0
.end method

.method public static toFixSizeBytes(Ljava/lang/String;IB)[B
    .registers 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "padding"    # B

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1c

    .line 95
    new-array v0, p1, [B

    .line 96
    .local v0, "result":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 97
    .local v1, "source":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, p1, :cond_1b

    .line 98
    array-length v3, v1

    if-ge v2, v3, :cond_15

    aget-byte v3, v1, v2

    goto :goto_16

    :cond_15
    move v3, p2

    :goto_16
    aput-byte v3, v0, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 100
    .end local v2    # "i":I
    :cond_1b
    return-object v0

    .line 92
    .end local v0    # "result":[B
    .end local v1    # "source":[B
    :cond_1c
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "exceeds limit in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 81
    add-int/lit8 v0, p1, 0x4

    array-length v1, p0

    if-gt v0, v1, :cond_27

    .line 84
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

    .line 82
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

    .line 72
    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-gt v0, v1, :cond_16

    .line 75
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

    .line 73
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

    .line 61
    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_19

    .line 64
    new-array v0, p2, [B

    .line 65
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p2, :cond_13

    .line 66
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 68
    .end local v1    # "i":I
    :cond_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 62
    .end local v0    # "result":[B
    :cond_19
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Requested chunk exceeds byte array limits"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
