.class public Lorg/xbill/DNS/utils/base64;
.super Ljava/lang/Object;
.source "base64.java"


# static fields
.field private static final Base64:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString([BILjava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p0, "b"    # [B
    .param p1, "lineLength"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "addClose"    # Z

    .line 71
    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int v3, v2, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2a

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    if-eqz p3, :cond_38

    .line 78
    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 81
    :cond_2a
    add-int v3, v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_38
    :goto_38
    add-int/2addr v2, p1

    goto :goto_a

    .line 85
    .end local v2    # "i":I
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static fromString(Ljava/lang/String;)[B
    .registers 17
    .param p0, "str"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v0

    .line 97
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 98
    .local v2, "raw":[B
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v4, v2

    if-ge v0, v4, :cond_20

    .line 99
    aget-byte v4, v2, v0

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 100
    aget-byte v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 102
    .end local v0    # "i":I
    :cond_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 103
    .local v4, "in":[B
    array-length v0, v4

    const/4 v5, 0x4

    rem-int/2addr v0, v5

    const/4 v6, 0x0

    if-eqz v0, :cond_2b

    .line 104
    return-object v6

    .line 107
    :cond_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v0

    .line 110
    .local v7, "ds":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_35
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    array-length v0, v4

    const/4 v9, 0x3

    add-int/2addr v0, v9

    div-int/2addr v0, v5

    if-ge v8, v0, :cond_b8

    .line 111
    new-array v10, v5, [S

    .line 112
    .local v10, "s":[S
    new-array v11, v9, [S

    .line 114
    .local v11, "t":[S
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_41
    if-ge v0, v5, :cond_54

    .line 115
    const-string v12, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    mul-int/lit8 v13, v8, 0x4

    add-int/2addr v13, v0

    aget-byte v13, v4, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    int-to-short v12, v12

    aput-short v12, v10, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 117
    .end local v0    # "j":I
    :cond_54
    aget-short v0, v10, v3

    const/4 v12, 0x2

    shl-int/2addr v0, v12

    const/4 v13, 0x1

    aget-short v14, v10, v13

    shr-int/2addr v14, v5

    add-int/2addr v0, v14

    int-to-short v0, v0

    aput-short v0, v11, v3

    .line 118
    aget-short v0, v10, v12

    const/4 v14, -0x1

    const/16 v15, 0x40

    if-ne v0, v15, :cond_72

    .line 119
    aput-short v14, v11, v12

    aput-short v14, v11, v13

    .line 120
    aget-short v0, v10, v13

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_a2

    .line 121
    return-object v6

    .line 123
    :cond_72
    aget-short v0, v10, v9

    if-ne v0, v15, :cond_8a

    .line 124
    aget-short v0, v10, v13

    shl-int/2addr v0, v5

    aget-short v15, v10, v12

    shr-int/2addr v15, v12

    add-int/2addr v0, v15

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, v11, v13

    .line 125
    aput-short v14, v11, v12

    .line 126
    aget-short v0, v10, v12

    and-int/2addr v0, v9

    if-eqz v0, :cond_a2

    .line 127
    return-object v6

    .line 130
    :cond_8a
    aget-short v0, v10, v13

    shl-int/2addr v0, v5

    aget-short v14, v10, v12

    shr-int/2addr v14, v12

    add-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, v11, v13

    .line 131
    aget-short v0, v10, v12

    shl-int/lit8 v0, v0, 0x6

    aget-short v13, v10, v9

    add-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, v11, v12

    .line 135
    :cond_a2
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_a3
    if-ge v0, v9, :cond_b3

    .line 136
    :try_start_a5
    aget-short v12, v11, v0

    if-ltz v12, :cond_ae

    .line 137
    aget-short v12, v11, v0

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ae} :catch_b1

    .line 135
    :cond_ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 139
    .end local v0    # "j":I
    :catch_b1
    move-exception v0

    goto :goto_b4

    .line 140
    :cond_b3
    nop

    .line 110
    .end local v10    # "s":[S
    .end local v11    # "t":[S
    :goto_b4
    add-int/lit8 v0, v8, 0x1

    goto/16 :goto_35

    .line 142
    .end local v8    # "i":I
    :cond_b8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 13
    .param p0, "b"    # [B

    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p0

    const/4 v4, 0x2

    add-int/2addr v3, v4

    const/4 v5, 0x3

    div-int/2addr v3, v5

    if-ge v2, v3, :cond_8e

    .line 31
    new-array v3, v5, [S

    .line 32
    .local v3, "s":[S
    const/4 v6, 0x4

    new-array v7, v6, [S

    .line 33
    .local v7, "t":[S
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_14
    const/4 v9, -0x1

    if-ge v8, v5, :cond_2d

    .line 34
    mul-int/lit8 v10, v2, 0x3

    add-int/2addr v10, v8

    array-length v11, p0

    if-ge v10, v11, :cond_28

    .line 35
    mul-int/lit8 v9, v2, 0x3

    add-int/2addr v9, v8

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v3, v8

    goto :goto_2a

    .line 37
    :cond_28
    aput-short v9, v3, v8

    .line 33
    :goto_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 40
    .end local v8    # "j":I
    :cond_2d
    aget-short v8, v3, v1

    shr-int/2addr v8, v4

    int-to-short v8, v8

    aput-short v8, v7, v1

    .line 41
    const/4 v8, 0x1

    aget-short v10, v3, v8

    if-ne v10, v9, :cond_40

    .line 42
    aget-short v10, v3, v1

    and-int/2addr v10, v5

    shl-int/2addr v10, v6

    int-to-short v10, v10

    aput-short v10, v7, v8

    goto :goto_4b

    .line 44
    :cond_40
    aget-short v10, v3, v1

    and-int/2addr v10, v5

    shl-int/2addr v10, v6

    aget-short v11, v3, v8

    shr-int/2addr v11, v6

    add-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v7, v8

    .line 45
    :goto_4b
    aget-short v10, v3, v8

    const/16 v11, 0x40

    if-ne v10, v9, :cond_56

    .line 46
    aput-short v11, v7, v5

    aput-short v11, v7, v4

    goto :goto_79

    .line 47
    :cond_56
    aget-short v10, v3, v4

    if-ne v10, v9, :cond_65

    .line 48
    aget-short v8, v3, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v4

    int-to-short v8, v8

    aput-short v8, v7, v4

    .line 49
    aput-short v11, v7, v5

    goto :goto_79

    .line 52
    :cond_65
    aget-short v8, v3, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v4

    aget-short v9, v3, v4

    shr-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v4

    .line 53
    aget-short v4, v3, v4

    and-int/lit8 v4, v4, 0x3f

    int-to-short v4, v4

    aput-short v4, v7, v5

    .line 55
    :goto_79
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7a
    if-ge v4, v6, :cond_8a

    .line 56
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    aget-short v8, v7, v4

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 30
    .end local v3    # "s":[S
    .end local v4    # "j":I
    .end local v7    # "t":[S
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 58
    .end local v2    # "i":I
    :cond_8e
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
