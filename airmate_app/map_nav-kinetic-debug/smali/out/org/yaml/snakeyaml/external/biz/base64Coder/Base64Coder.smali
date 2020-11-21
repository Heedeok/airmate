.class public Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static map1:[C

.field private static map2:[B

.field private static final systemLineSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 35
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    .line 38
    const/16 v0, 0x40

    new-array v1, v0, [C

    sput-object v1, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "i":I
    const/16 v2, 0x41

    .local v2, "c":C
    :goto_11
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_20

    .line 42
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .local v4, "i":I
    aput-char v2, v3, v1

    .line 41
    .end local v1    # "i":I
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_11

    .line 43
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_20
    const/16 v2, 0x61

    .restart local v2    # "c":C
    :goto_22
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_31

    .line 44
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 43
    .end local v1    # "i":I
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_22

    .line 45
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_31
    const/16 v2, 0x30

    .restart local v2    # "c":C
    :goto_33
    const/16 v3, 0x39

    if-gt v2, v3, :cond_42

    .line 46
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 45
    .end local v1    # "i":I
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_33

    .line 47
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_42
    sget-object v2, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    const/16 v4, 0x2b

    aput-char v4, v2, v1

    .line 48
    .end local v1    # "i":I
    sget-object v1, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    const/16 v4, 0x2f

    aput-char v4, v1, v3

    .line 52
    .end local v2    # "i":I
    .end local v3    # "i":I
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    .line 54
    const/4 v1, 0x0

    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5a
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    array-length v3, v3

    if-ge v2, v3, :cond_67

    .line 55
    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 56
    .end local v2    # "i":I
    :cond_67
    nop

    .restart local v1    # "i":I
    :goto_68
    if-ge v1, v0, :cond_76

    .line 57
    sget-object v2, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    sget-object v3, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 58
    .end local v1    # "i":I
    :cond_76
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .registers 3
    .param p0, "in"    # [C

    .line 246
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .registers 25
    .param p0, "in"    # [C
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .line 266
    rem-int/lit8 v3, p2, 0x4

    if-nez v3, :cond_bc

    .line 269
    move/from16 v2, p2

    .end local p2    # "iLen":I
    .local v2, "iLen":I
    :goto_6
    if-lez v2, :cond_15

    add-int v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aget-char v3, p0, v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_15

    .line 270
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 271
    :cond_15
    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    .line 272
    .local v3, "oLen":I
    new-array v4, v3, [B

    .line 273
    .local v4, "out":[B
    move/from16 v5, p1

    .line 274
    .local v5, "ip":I
    add-int v6, p1, v2

    .line 275
    .local v6, "iEnd":I
    const/4 v7, 0x0

    .line 276
    .local v7, "op":I
    :goto_20
    if-ge v5, v6, :cond_b7

    .line 277
    add-int/lit8 v8, v5, 0x1

    .local v8, "ip":I
    aget-char v5, p0, v5

    .line 278
    .local v5, "i0":I
    add-int/lit8 v9, v8, 0x1

    .local v9, "ip":I
    aget-char v8, p0, v8

    .line 279
    .local v8, "i1":I
    const/16 v10, 0x41

    if-ge v9, v6, :cond_33

    add-int/lit8 v11, v9, 0x1

    .local v11, "ip":I
    aget-char v9, p0, v9

    goto :goto_36

    .end local v11    # "ip":I
    :cond_33
    move v11, v9

    const/16 v9, 0x41

    .line 280
    .local v9, "i2":I
    .restart local v11    # "ip":I
    :goto_36
    if-ge v11, v6, :cond_42

    add-int/lit8 v10, v11, 0x1

    .local v10, "ip":I
    aget-char v11, p0, v11

    move/from16 v21, v11

    move v11, v10

    move/from16 v10, v21

    nop

    .line 281
    .local v10, "i3":I
    :cond_42
    const/16 v12, 0x7f

    if-gt v5, v12, :cond_a9

    if-gt v8, v12, :cond_a9

    if-gt v9, v12, :cond_a9

    if-gt v10, v12, :cond_a9

    .line 283
    sget-object v12, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v12, v12, v5

    .line 284
    .local v12, "b0":I
    sget-object v13, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v13, v13, v8

    .line 285
    .local v13, "b1":I
    sget-object v14, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v14, v14, v9

    .line 286
    .local v14, "b2":I
    sget-object v15, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map2:[B

    aget-byte v15, v15, v10

    .line 287
    .local v15, "b3":I
    if-ltz v12, :cond_9b

    if-ltz v13, :cond_9b

    if-ltz v14, :cond_9b

    if-ltz v15, :cond_9b

    .line 289
    shl-int/lit8 v16, v12, 0x2

    ushr-int/lit8 v17, v13, 0x4

    or-int v0, v16, v17

    .line 290
    .local v0, "o0":I
    and-int/lit8 v16, v13, 0xf

    shl-int/lit8 v16, v16, 0x4

    ushr-int/lit8 v17, v14, 0x2

    or-int v1, v16, v17

    .line 291
    .local v1, "o1":I
    and-int/lit8 v16, v14, 0x3

    shl-int/lit8 v16, v16, 0x6

    move/from16 v18, v2

    .end local v2    # "iLen":I
    .local v18, "iLen":I
    or-int v2, v16, v15

    .line 292
    .local v2, "o2":I
    move/from16 v19, v5

    .end local v5    # "i0":I
    .local v19, "i0":I
    add-int/lit8 v5, v7, 0x1

    move/from16 v20, v6

    .end local v6    # "iEnd":I
    .local v5, "op":I
    .local v20, "iEnd":I
    int-to-byte v6, v0

    aput-byte v6, v4, v7

    .line 293
    .end local v7    # "op":I
    if-ge v5, v3, :cond_8b

    .line 294
    add-int/lit8 v6, v5, 0x1

    .local v6, "op":I
    int-to-byte v7, v1

    aput-byte v7, v4, v5

    .line 295
    move v5, v6

    .end local v6    # "op":I
    :cond_8b
    if-ge v5, v3, :cond_94

    .line 296
    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "op":I
    int-to-byte v7, v2

    aput-byte v7, v4, v5

    .line 297
    move v7, v6

    goto :goto_95

    .end local v0    # "o0":I
    .end local v1    # "o1":I
    .end local v2    # "o2":I
    .end local v6    # "op":I
    .end local v8    # "i1":I
    .end local v9    # "i2":I
    .end local v10    # "i3":I
    .end local v12    # "b0":I
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v15    # "b3":I
    .end local v19    # "i0":I
    :cond_94
    move v7, v5

    .line 275
    .end local v5    # "op":I
    .restart local v7    # "op":I
    :goto_95
    move v5, v11

    move/from16 v2, v18

    move/from16 v6, v20

    goto :goto_20

    .line 288
    .end local v18    # "iLen":I
    .end local v20    # "iEnd":I
    .local v2, "iLen":I
    .local v5, "i0":I
    .local v6, "iEnd":I
    .restart local v8    # "i1":I
    .restart local v9    # "i2":I
    .restart local v10    # "i3":I
    .restart local v12    # "b0":I
    .restart local v13    # "b1":I
    .restart local v14    # "b2":I
    .restart local v15    # "b3":I
    :cond_9b
    move/from16 v18, v2

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v2    # "iLen":I
    .end local v5    # "i0":I
    .end local v6    # "iEnd":I
    .restart local v18    # "iLen":I
    .restart local v19    # "i0":I
    .restart local v20    # "iEnd":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    .end local v12    # "b0":I
    .end local v13    # "b1":I
    .end local v14    # "b2":I
    .end local v15    # "b3":I
    .end local v18    # "iLen":I
    .end local v19    # "i0":I
    .end local v20    # "iEnd":I
    .restart local v2    # "iLen":I
    .restart local v5    # "i0":I
    .restart local v6    # "iEnd":I
    :cond_a9
    move/from16 v18, v2

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v2    # "iLen":I
    .end local v5    # "i0":I
    .end local v6    # "iEnd":I
    .restart local v18    # "iLen":I
    .restart local v19    # "i0":I
    .restart local v20    # "iEnd":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    .end local v8    # "i1":I
    .end local v9    # "i2":I
    .end local v10    # "i3":I
    .end local v11    # "ip":I
    .end local v18    # "iLen":I
    .end local v19    # "i0":I
    .end local v20    # "iEnd":I
    .restart local v2    # "iLen":I
    .local v5, "ip":I
    .restart local v6    # "iEnd":I
    :cond_b7
    move/from16 v18, v2

    move/from16 v20, v6

    .end local v2    # "iLen":I
    .end local v6    # "iEnd":I
    .restart local v18    # "iLen":I
    .restart local v20    # "iEnd":I
    return-object v4

    .line 267
    .end local v3    # "oLen":I
    .end local v4    # "out":[B
    .end local v5    # "ip":I
    .end local v7    # "op":I
    .end local v18    # "iLen":I
    .end local v20    # "iEnd":I
    .restart local p2    # "iLen":I
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 212
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 213
    .local v1, "p":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "ip":I
    .local v3, "p":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 215
    .local v4, "c":C
    const/16 v5, 0x20

    if-eq v4, v5, :cond_29

    const/16 v5, 0xd

    if-eq v4, v5, :cond_29

    const/16 v5, 0xa

    if-eq v4, v5, :cond_29

    const/16 v5, 0x9

    if-eq v4, v5, :cond_29

    .line 216
    add-int/lit8 v5, v3, 0x1

    .local v5, "p":I
    aput-char v4, v0, v3

    .line 213
    move v3, v5

    .end local v4    # "c":C
    .end local v5    # "p":I
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 218
    .end local v1    # "ip":I
    :cond_2c
    invoke-static {v0, v2, v3}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode([CII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .registers 3
    .param p0, "in"    # [B

    .line 129
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .registers 3
    .param p0, "in"    # [B
    .param p1, "iLen"    # I

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .registers 19
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I

    .line 160
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 161
    .local v0, "oDataLen":I
    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 162
    .local v1, "oLen":I
    new-array v2, v1, [C

    .line 163
    .local v2, "out":[C
    move/from16 v3, p1

    .line 164
    .local v3, "ip":I
    add-int v4, p1, p2

    .line 165
    .local v4, "iEnd":I
    const/4 v5, 0x0

    move v6, v3

    const/4 v3, 0x0

    .line 166
    .local v3, "op":I
    .local v6, "ip":I
    :goto_15
    if-ge v6, v4, :cond_72

    .line 167
    add-int/lit8 v7, v6, 0x1

    .local v7, "ip":I
    aget-byte v6, p0, v6

    .end local v6    # "ip":I
    and-int/lit16 v6, v6, 0xff

    .line 168
    .local v6, "i0":I
    if-ge v7, v4, :cond_26

    add-int/lit8 v8, v7, 0x1

    .local v8, "ip":I
    aget-byte v7, p0, v7

    .end local v7    # "ip":I
    and-int/lit16 v7, v7, 0xff

    goto :goto_28

    .end local v8    # "ip":I
    .restart local v7    # "ip":I
    :cond_26
    move v8, v7

    const/4 v7, 0x0

    .line 169
    .local v7, "i1":I
    .restart local v8    # "ip":I
    :goto_28
    if-ge v8, v4, :cond_31

    add-int/lit8 v9, v8, 0x1

    .local v9, "ip":I
    aget-byte v8, p0, v8

    .end local v8    # "ip":I
    and-int/lit16 v8, v8, 0xff

    goto :goto_33

    .end local v9    # "ip":I
    .restart local v8    # "ip":I
    :cond_31
    move v9, v8

    const/4 v8, 0x0

    .line 170
    .local v8, "i2":I
    .restart local v9    # "ip":I
    :goto_33
    ushr-int/lit8 v10, v6, 0x2

    .line 171
    .local v10, "o0":I
    and-int/lit8 v11, v6, 0x3

    shl-int/lit8 v11, v11, 0x4

    ushr-int/lit8 v12, v7, 0x4

    or-int/2addr v11, v12

    .line 172
    .local v11, "o1":I
    and-int/lit8 v12, v7, 0xf

    shl-int/lit8 v12, v12, 0x2

    ushr-int/lit8 v13, v8, 0x6

    or-int/2addr v12, v13

    .line 173
    .local v12, "o2":I
    and-int/lit8 v13, v8, 0x3f

    .line 174
    .local v13, "o3":I
    add-int/lit8 v14, v3, 0x1

    .local v14, "op":I
    sget-object v15, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v15, v15, v10

    aput-char v15, v2, v3

    .line 175
    .end local v3    # "op":I
    add-int/lit8 v3, v14, 0x1

    .restart local v3    # "op":I
    sget-object v15, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v15, v15, v11

    aput-char v15, v2, v14

    .line 176
    .end local v14    # "op":I
    const/16 v14, 0x3d

    if-ge v3, v0, :cond_5e

    sget-object v15, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v15, v15, v12

    goto :goto_60

    :cond_5e
    const/16 v15, 0x3d

    :goto_60
    aput-char v15, v2, v3

    .line 177
    add-int/lit8 v3, v3, 0x1

    .line 178
    if-ge v3, v0, :cond_6b

    sget-object v14, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->map1:[C

    aget-char v14, v14, v13

    nop

    :cond_6b
    aput-char v14, v2, v3

    .line 179
    add-int/lit8 v3, v3, 0x1

    .line 180
    .end local v6    # "i0":I
    .end local v7    # "i1":I
    .end local v8    # "i2":I
    .end local v10    # "o0":I
    .end local v11    # "o1":I
    .end local v12    # "o2":I
    .end local v13    # "o3":I
    nop

    .line 165
    move v6, v9

    goto :goto_15

    .line 181
    .end local v9    # "ip":I
    .local v6, "ip":I
    :cond_72
    return-object v2
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # [B

    .line 82
    array-length v0, p0

    sget-object v1, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x4c

    invoke-static {p0, v2, v0, v3, v1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "lineLen"    # I
    .param p4, "lineSeparator"    # Ljava/lang/String;

    .line 104
    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 105
    .local v0, "blockLen":I
    if-lez v0, :cond_39

    .line 107
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 108
    .local v1, "lines":I
    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    mul-int v3, v3, v1

    add-int/2addr v2, v3

    .line 109
    .local v2, "bufLen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 111
    .local v4, "ip":I
    :goto_1e
    if-ge v4, p2, :cond_34

    .line 112
    sub-int v5, p2, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 113
    .local v5, "l":I
    add-int v6, p1, v4

    invoke-static {p0, v6, v5}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/2addr v4, v5

    .line 116
    .end local v5    # "l":I
    goto :goto_1e

    .line 117
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 106
    .end local v1    # "lines":I
    .end local v2    # "bufLen":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "ip":I
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
