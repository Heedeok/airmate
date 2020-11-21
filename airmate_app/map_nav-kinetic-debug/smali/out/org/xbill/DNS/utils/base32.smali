.class public Lorg/xbill/DNS/utils/base32;
.super Ljava/lang/Object;
.source "base32.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/utils/base32$Alphabet;
    }
.end annotation


# instance fields
.field private alphabet:Ljava/lang/String;

.field private lowercase:Z

.field private padding:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "alphabet"    # Ljava/lang/String;
    .param p2, "padding"    # Z
    .param p3, "lowercase"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/xbill/DNS/utils/base32;->padding:Z

    .line 40
    iput-boolean p3, p0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    .line 41
    return-void
.end method

.method private static blockLenToPadding(I)I
    .registers 2
    .param p0, "blocklen"    # I

    .line 45
    packed-switch p0, :pswitch_data_10

    .line 57
    const/4 v0, -0x1

    return v0

    .line 55
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 53
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 51
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 49
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 47
    :pswitch_d
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static paddingToBlockLen(I)I
    .registers 2
    .param p0, "padlen"    # I

    .line 63
    packed-switch p0, :pswitch_data_10

    .line 75
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 65
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 67
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 69
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 71
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 73
    :pswitch_d
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)[B
    .registers 22
    .param p1, "str"    # Ljava/lang/String;

    .line 149
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 150
    .local v2, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 151
    .local v3, "raw":[B
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v5, v3

    if-ge v0, v5, :cond_25

    .line 153
    aget-byte v5, v3, v0

    int-to-char v5, v5

    .line 154
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_22

    .line 155
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 156
    int-to-byte v6, v5

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 151
    .end local v5    # "c":C
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 160
    .end local v0    # "i":I
    :cond_25
    iget-boolean v0, v1, Lorg/xbill/DNS/utils/base32;->padding:Z

    const/16 v5, 0x3d

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v0, :cond_36

    .line 161
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/2addr v0, v7

    if-eqz v0, :cond_41

    .line 162
    return-object v6

    .line 164
    :cond_36
    :goto_36
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/2addr v0, v7

    if-eqz v0, :cond_41

    .line 165
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_36

    .line 168
    :cond_41
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 170
    .local v8, "in":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 171
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v0

    .line 173
    .local v9, "ds":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4f
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    array-length v0, v8

    div-int/2addr v0, v7

    if-ge v10, v0, :cond_f6

    .line 174
    new-array v11, v7, [S

    .line 175
    .local v11, "s":[S
    const/4 v0, 0x5

    new-array v12, v0, [I

    .line 177
    .local v12, "t":[I
    const/16 v13, 0x8

    .line 178
    .local v13, "padlen":I
    move v14, v13

    const/4 v13, 0x0

    .local v13, "j":I
    .local v14, "padlen":I
    :goto_5d
    if-ge v13, v7, :cond_85

    .line 179
    mul-int/lit8 v15, v10, 0x8

    add-int/2addr v15, v13

    aget-byte v15, v8, v15

    int-to-char v15, v15

    .line 180
    .local v15, "c":C
    if-ne v15, v5, :cond_68

    .line 181
    goto :goto_85

    .line 182
    :cond_68
    iget-object v5, v1, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    mul-int/lit8 v16, v10, 0x8

    add-int v16, v16, v13

    aget-byte v7, v8, v16

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v11, v13

    .line 183
    aget-short v5, v11, v13

    if-gez v5, :cond_7c

    .line 184
    return-object v6

    .line 185
    :cond_7c
    add-int/lit8 v14, v14, -0x1

    .line 178
    .end local v15    # "c":C
    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x3d

    const/16 v7, 0x8

    goto :goto_5d

    .line 187
    .end local v13    # "j":I
    :cond_85
    :goto_85
    invoke-static {v14}, Lorg/xbill/DNS/utils/base32;->paddingToBlockLen(I)I

    move-result v5

    .line 188
    .local v5, "blocklen":I
    if-gez v5, :cond_8c

    .line 189
    return-object v6

    .line 192
    :cond_8c
    aget-short v7, v11, v4

    const/4 v13, 0x3

    shl-int/2addr v7, v13

    const/4 v15, 0x1

    aget-short v16, v11, v15

    const/16 v17, 0x2

    shr-int/lit8 v16, v16, 0x2

    or-int v7, v7, v16

    aput v7, v12, v4

    .line 194
    aget-short v7, v11, v15

    and-int/2addr v7, v13

    const/16 v16, 0x6

    shl-int/lit8 v7, v7, 0x6

    aget-short v18, v11, v17

    shl-int/lit8 v18, v18, 0x1

    or-int v7, v7, v18

    aget-short v18, v11, v13

    const/16 v19, 0x4

    shr-int/lit8 v18, v18, 0x4

    or-int v7, v7, v18

    aput v7, v12, v15

    .line 196
    aget-short v7, v11, v13

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    aget-short v18, v11, v19

    shr-int/lit8 v15, v18, 0x1

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v7, v15

    aput v7, v12, v17

    .line 198
    aget-short v7, v11, v19

    const/4 v15, 0x7

    shl-int/2addr v7, v15

    aget-short v18, v11, v0

    shl-int/lit8 v17, v18, 0x2

    or-int v7, v7, v17

    aget-short v17, v11, v16

    shr-int/lit8 v17, v17, 0x3

    or-int v7, v7, v17

    aput v7, v12, v13

    .line 200
    aget-short v7, v11, v16

    and-int/2addr v7, v15

    shl-int/lit8 v0, v7, 0x5

    aget-short v7, v11, v15

    or-int/2addr v0, v7

    aput v0, v12, v19

    .line 203
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_de
    if-ge v0, v5, :cond_ed

    .line 204
    :try_start_e0
    aget v7, v12, v0

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e8} :catch_eb

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 206
    .end local v0    # "j":I
    :catch_eb
    move-exception v0

    goto :goto_ee

    .line 207
    :cond_ed
    nop

    .line 173
    .end local v5    # "blocklen":I
    .end local v11    # "s":[S
    .end local v12    # "t":[I
    .end local v14    # "padlen":I
    :goto_ee
    add-int/lit8 v0, v10, 0x1

    const/16 v5, 0x3d

    const/16 v7, 0x8

    goto/16 :goto_4f

    .line 210
    .end local v10    # "i":I
    :cond_f6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString([B)Ljava/lang/String;
    .registers 20
    .param p1, "b"    # [B

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    array-length v5, v1

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/4 v7, 0x5

    div-int/2addr v5, v7

    if-ge v4, v5, :cond_c8

    .line 90
    new-array v5, v7, [S

    .line 91
    .local v5, "s":[S
    const/16 v8, 0x8

    new-array v8, v8, [I

    .line 93
    .local v8, "t":[I
    const/4 v9, 0x5

    .line 94
    .local v9, "blocklen":I
    move v10, v9

    const/4 v9, 0x0

    .local v9, "j":I
    .local v10, "blocklen":I
    :goto_1b
    if-ge v9, v7, :cond_35

    .line 95
    mul-int/lit8 v11, v4, 0x5

    add-int/2addr v11, v9

    array-length v12, v1

    if-ge v11, v12, :cond_2e

    .line 96
    mul-int/lit8 v11, v4, 0x5

    add-int/2addr v11, v9

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    int-to-short v11, v11

    aput-short v11, v5, v9

    goto :goto_32

    .line 98
    :cond_2e
    aput-short v3, v5, v9

    .line 99
    add-int/lit8 v10, v10, -0x1

    .line 94
    :goto_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 102
    .end local v9    # "j":I
    :cond_35
    invoke-static {v10}, Lorg/xbill/DNS/utils/base32;->blockLenToPadding(I)I

    move-result v9

    .line 107
    .local v9, "padlen":I
    aget-short v11, v5, v3

    const/4 v12, 0x3

    shr-int/2addr v11, v12

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v8, v3

    .line 109
    aget-short v11, v5, v3

    const/4 v13, 0x7

    and-int/2addr v11, v13

    const/4 v14, 0x2

    shl-int/2addr v11, v14

    const/4 v15, 0x1

    aget-short v16, v5, v15

    const/16 v17, 0x6

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x3

    or-int v11, v11, v16

    int-to-byte v11, v11

    aput v11, v8, v15

    .line 111
    aget-short v11, v5, v15

    shr-int/2addr v11, v15

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v8, v14

    .line 113
    aget-short v11, v5, v15

    and-int/2addr v11, v15

    shl-int/2addr v11, v6

    aget-short v16, v5, v14

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0xf

    or-int v11, v11, v16

    int-to-byte v11, v11

    aput v11, v8, v12

    .line 115
    aget-short v11, v5, v14

    and-int/lit8 v11, v11, 0xf

    shl-int/2addr v11, v15

    aget-short v16, v5, v12

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v15, v16, 0x1

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput v11, v8, v6

    .line 117
    aget-short v11, v5, v12

    shr-int/2addr v11, v14

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v8, v7

    .line 119
    aget-short v11, v5, v12

    and-int/2addr v11, v12

    shl-int/2addr v11, v12

    aget-short v12, v5, v6

    shr-int/lit8 v7, v12, 0x5

    and-int/2addr v7, v13

    or-int/2addr v7, v11

    int-to-byte v7, v7

    aput v7, v8, v17

    .line 121
    aget-short v6, v5, v6

    and-int/lit8 v6, v6, 0x1f

    int-to-byte v6, v6

    aput v6, v8, v13

    .line 124
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_99
    array-length v7, v8

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_b3

    .line 125
    iget-object v7, v0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    aget v11, v8, v6

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 126
    .local v7, "c":C
    iget-boolean v11, v0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    if-eqz v11, :cond_ad

    .line 127
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 128
    :cond_ad
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    .end local v7    # "c":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 132
    .end local v6    # "j":I
    :cond_b3
    iget-boolean v6, v0, Lorg/xbill/DNS/utils/base32;->padding:Z

    if-eqz v6, :cond_c4

    .line 133
    array-length v6, v8

    sub-int/2addr v6, v9

    .restart local v6    # "j":I
    :goto_b9
    array-length v7, v8

    if-ge v6, v7, :cond_c4

    .line 134
    const/16 v7, 0x3d

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    add-int/lit8 v6, v6, 0x1

    goto :goto_b9

    .line 89
    .end local v5    # "s":[S
    .end local v6    # "j":I
    .end local v8    # "t":[I
    .end local v9    # "padlen":I
    .end local v10    # "blocklen":I
    :cond_c4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 138
    .end local v4    # "i":I
    :cond_c8
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method
