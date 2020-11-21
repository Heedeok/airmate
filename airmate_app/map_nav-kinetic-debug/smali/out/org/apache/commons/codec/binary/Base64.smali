.class public Lorg/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 53
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    .line 97
    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    .line 98
    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    .line 102
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_20

    .line 103
    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 105
    .end local v2    # "i":I
    :cond_20
    const/16 v0, 0x5a

    .local v0, "i":I
    :goto_22
    const/16 v2, 0x41

    if-lt v0, v2, :cond_30

    .line 106
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 108
    .end local v0    # "i":I
    :cond_30
    const/16 v0, 0x7a

    .restart local v0    # "i":I
    :goto_32
    const/16 v2, 0x61

    if-lt v0, v2, :cond_42

    .line 109
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 111
    .end local v0    # "i":I
    :cond_42
    const/16 v0, 0x39

    .restart local v0    # "i":I
    :goto_44
    const/16 v2, 0x30

    if-lt v0, v2, :cond_54

    .line 112
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    .line 115
    .end local v0    # "i":I
    :cond_54
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/16 v2, 0x3e

    const/16 v3, 0x2b

    aput-byte v2, v0, v3

    .line 116
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/16 v4, 0x3f

    const/16 v5, 0x2f

    aput-byte v4, v0, v5

    .line 118
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_65
    const/16 v6, 0x19

    if-gt v0, v6, :cond_73

    .line 119
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v0, 0x41

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 122
    .end local v0    # "i":I
    :cond_73
    const/16 v0, 0x1a

    move v6, v0

    const/4 v0, 0x0

    .local v0, "j":I
    .local v6, "i":I
    :goto_77
    const/16 v7, 0x33

    if-gt v6, v7, :cond_87

    .line 123
    sget-object v7, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v8, v0, 0x61

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    .line 122
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 126
    .end local v0    # "j":I
    .end local v6    # "i":I
    :cond_87
    const/16 v0, 0x34

    .local v0, "i":I
    .local v1, "j":I
    :goto_89
    const/16 v6, 0x3d

    if-gt v0, v6, :cond_99

    .line 127
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v1, 0x30

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 130
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_99
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v3, v0, v2

    .line 131
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v0, v4

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .registers 16
    .param p0, "base64Data"    # [B

    .line 374
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 377
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 378
    new-array v0, v1, [B

    return-object v0

    .line 381
    :cond_b
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 382
    .local v0, "numberQuadruple":I
    const/4 v2, 0x0

    .line 383
    .local v2, "decodedData":[B
    const/4 v3, 0x0

    .local v3, "b1":B
    const/4 v4, 0x0

    .local v4, "b2":B
    const/4 v5, 0x0

    .local v5, "b3":B
    const/4 v6, 0x0

    .local v6, "b4":B
    const/4 v7, 0x0

    .local v7, "marker0":B
    const/4 v8, 0x0

    .line 387
    .local v8, "marker1":B
    const/4 v9, 0x0

    .line 388
    .local v9, "encodedIndex":I
    const/4 v10, 0x0

    .line 391
    .local v10, "dataIndex":I
    array-length v11, p0

    .line 393
    .local v11, "lastData":I
    :cond_18
    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_27

    .line 394
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_18

    .line 395
    new-array v1, v1, [B

    return-object v1

    .line 398
    :cond_27
    sub-int v12, v11, v0

    new-array v2, v12, [B

    .line 401
    .end local v11    # "lastData":I
    nop

    .local v1, "i":I
    :goto_2c
    if-ge v1, v0, :cond_9d

    .line 402
    mul-int/lit8 v10, v1, 0x4

    .line 403
    add-int/lit8 v11, v10, 0x2

    aget-byte v7, p0, v11

    .line 404
    add-int/lit8 v11, v10, 0x3

    aget-byte v8, p0, v11

    .line 406
    sget-object v11, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v12, p0, v10

    aget-byte v3, v11, v12

    .line 407
    sget-object v11, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p0, v12

    aget-byte v4, v11, v12

    .line 409
    if-eq v7, v13, :cond_71

    if-eq v8, v13, :cond_71

    .line 411
    sget-object v11, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    .line 412
    sget-object v11, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v6, v11, v8

    .line 414
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v9

    .line 415
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    .line 417
    add-int/lit8 v11, v9, 0x2

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    goto :goto_98

    .line 418
    :cond_71
    if-ne v7, v13, :cond_7c

    .line 420
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v9

    goto :goto_98

    .line 421
    :cond_7c
    if-ne v8, v13, :cond_98

    .line 423
    sget-object v11, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    .line 425
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v9

    .line 426
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    .line 429
    :cond_98
    :goto_98
    add-int/lit8 v9, v9, 0x3

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 431
    .end local v1    # "i":I
    :cond_9d
    return-object v2
.end method

.method static discardNonBase64([B)[B
    .registers 7
    .param p0, "data"    # [B

    .line 474
    array-length v0, p0

    new-array v0, v0, [B

    .line 475
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 477
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "bytesCopied":I
    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_1c

    .line 478
    aget-byte v4, p0, v1

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 479
    add-int/lit8 v4, v3, 0x1

    .local v4, "bytesCopied":I
    aget-byte v5, p0, v1

    aput-byte v5, v0, v3

    .line 477
    move v3, v4

    .end local v4    # "bytesCopied":I
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 483
    .end local v1    # "i":I
    :cond_1c
    new-array v1, v3, [B

    .line 485
    .local v1, "packedData":[B
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    return-object v1
.end method

.method static discardWhitespace([B)[B
    .registers 7
    .param p0, "data"    # [B

    .line 442
    array-length v0, p0

    new-array v0, v0, [B

    .line 443
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 445
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "bytesCopied":I
    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_23

    .line 446
    aget-byte v4, p0, v1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1f

    packed-switch v4, :pswitch_data_2a

    .line 453
    add-int/lit8 v4, v3, 0x1

    .local v4, "bytesCopied":I
    aget-byte v5, p0, v1

    aput-byte v5, v0, v3

    .line 445
    move v3, v4

    goto :goto_20

    .line 451
    .end local v4    # "bytesCopied":I
    :cond_1f
    :pswitch_1f
    nop

    .line 445
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 457
    .end local v1    # "i":I
    :cond_23
    new-array v1, v3, [B

    .line 459
    .local v1, "packedData":[B
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    return-object v1

    nop

    :pswitch_data_2a
    .packed-switch 0x9
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public static encodeBase64([B)[B
    .registers 2
    .param p0, "binaryData"    # [B

    .line 178
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .registers 31
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .line 233
    move-object/from16 v0, p0

    array-length v2, v0

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    .line 234
    .local v2, "lengthDataBits":I
    rem-int/lit8 v4, v2, 0x18

    .line 235
    .local v4, "fewerThan24bits":I
    div-int/lit8 v5, v2, 0x18

    .line 236
    .local v5, "numberTriplets":I
    const/4 v6, 0x0

    .line 237
    .local v6, "encodedData":[B
    const/4 v7, 0x0

    .line 238
    .local v7, "encodedDataLength":I
    const/4 v8, 0x0

    .line 240
    .local v8, "nbrChunks":I
    if-eqz v4, :cond_15

    .line 242
    add-int/lit8 v9, v5, 0x1

    mul-int/lit8 v9, v9, 0x4

    goto :goto_17

    .line 245
    :cond_15
    mul-int/lit8 v9, v5, 0x4

    .line 251
    .end local v7    # "encodedDataLength":I
    .local v9, "encodedDataLength":I
    :goto_17
    if-eqz p1, :cond_31

    .line 253
    sget-object v10, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v10, v10

    if-nez v10, :cond_20

    const/4 v10, 0x0

    goto :goto_2a

    :cond_20
    int-to-float v10, v9

    const/high16 v11, 0x42980000    # 76.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    :goto_2a
    move v8, v10

    .line 255
    sget-object v10, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v10, v10

    mul-int v10, v10, v8

    add-int/2addr v9, v10

    .line 258
    :cond_31
    new-array v6, v9, [B

    .line 260
    const/4 v10, 0x0

    .local v10, "k":B
    const/4 v11, 0x0

    .local v11, "l":B
    const/4 v12, 0x0

    .local v12, "b1":B
    const/4 v13, 0x0

    .local v13, "b2":B
    const/4 v14, 0x0

    .line 262
    .local v14, "b3":B
    const/4 v15, 0x0

    .line 263
    .local v15, "encodedIndex":I
    const/16 v16, 0x0

    .line 264
    .local v16, "dataIndex":I
    const/16 v17, 0x0

    .line 265
    .local v17, "i":I
    const/16 v18, 0x4c

    .line 266
    .local v18, "nextSeparatorIndex":I
    const/16 v19, 0x0

    .line 269
    .local v19, "chunksSoFar":I
    const/16 v17, 0x0

    move/from16 v3, v18

    move/from16 v20, v19

    move/from16 v28, v15

    move v15, v10

    move/from16 v10, v17

    move/from16 v17, v28

    .end local v18    # "nextSeparatorIndex":I
    .end local v19    # "chunksSoFar":I
    .local v3, "nextSeparatorIndex":I
    .local v10, "i":I
    .local v15, "k":B
    .local v17, "encodedIndex":I
    .local v20, "chunksSoFar":I
    :goto_4e
    if-ge v10, v5, :cond_f7

    .line 270
    mul-int/lit8 v16, v10, 0x3

    .line 271
    aget-byte v12, v0, v16

    .line 272
    add-int/lit8 v18, v16, 0x1

    aget-byte v13, v0, v18

    .line 273
    add-int/lit8 v18, v16, 0x2

    aget-byte v14, v0, v18

    .line 277
    and-int/lit8 v7, v13, 0xf

    int-to-byte v11, v7

    .line 278
    and-int/lit8 v7, v12, 0x3

    int-to-byte v15, v7

    .line 280
    and-int/lit8 v7, v12, -0x80

    if-nez v7, :cond_6a

    shr-int/lit8 v7, v12, 0x2

    :goto_68
    int-to-byte v7, v7

    goto :goto_6f

    :cond_6a
    shr-int/lit8 v7, v12, 0x2

    xor-int/lit16 v7, v7, 0xc0

    goto :goto_68

    .line 282
    .local v7, "val1":B
    :goto_6f
    and-int/lit8 v18, v13, -0x80

    if-nez v18, :cond_79

    move/from16 v21, v2

    .end local v2    # "lengthDataBits":I
    .local v21, "lengthDataBits":I
    shr-int/lit8 v2, v13, 0x4

    :goto_77
    int-to-byte v2, v2

    goto :goto_80

    .end local v21    # "lengthDataBits":I
    .restart local v2    # "lengthDataBits":I
    :cond_79
    move/from16 v21, v2

    .end local v2    # "lengthDataBits":I
    .restart local v21    # "lengthDataBits":I
    shr-int/lit8 v2, v13, 0x4

    xor-int/lit16 v2, v2, 0xf0

    goto :goto_77

    .line 284
    .local v2, "val2":B
    :goto_80
    and-int/lit8 v18, v14, -0x80

    if-nez v18, :cond_8a

    move/from16 v22, v5

    .end local v5    # "numberTriplets":I
    .local v22, "numberTriplets":I
    shr-int/lit8 v5, v14, 0x6

    :goto_88
    int-to-byte v5, v5

    goto :goto_91

    .end local v22    # "numberTriplets":I
    .restart local v5    # "numberTriplets":I
    :cond_8a
    move/from16 v22, v5

    .end local v5    # "numberTriplets":I
    .restart local v22    # "numberTriplets":I
    shr-int/lit8 v5, v14, 0x6

    xor-int/lit16 v5, v5, 0xfc

    goto :goto_88

    .line 287
    .local v5, "val3":B
    :goto_91
    sget-object v18, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v18, v18, v7

    aput-byte v18, v6, v17

    .line 291
    add-int/lit8 v18, v17, 0x1

    sget-object v19, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v23, v15, 0x4

    or-int v23, v2, v23

    aget-byte v19, v19, v23

    aput-byte v19, v6, v18

    .line 293
    add-int/lit8 v18, v17, 0x2

    sget-object v19, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v23, v11, 0x2

    or-int v23, v23, v5

    aget-byte v19, v19, v23

    aput-byte v19, v6, v18

    .line 295
    add-int/lit8 v18, v17, 0x3

    sget-object v19, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v23, v14, 0x3f

    aget-byte v19, v19, v23

    aput-byte v19, v6, v18

    .line 297
    move/from16 v24, v2

    .end local v2    # "val2":B
    .local v24, "val2":B
    add-int/lit8 v2, v17, 0x4

    .line 300
    .end local v17    # "encodedIndex":I
    .local v2, "encodedIndex":I
    if-eqz p1, :cond_e5

    .line 302
    if-ne v2, v3, :cond_e5

    .line 303
    move/from16 v25, v3

    .end local v3    # "nextSeparatorIndex":I
    .local v25, "nextSeparatorIndex":I
    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    move/from16 v26, v5

    .end local v5    # "val3":B
    .local v26, "val3":B
    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v5

    move/from16 v27, v7

    const/4 v7, 0x0

    .end local v7    # "val1":B
    .local v27, "val1":B
    invoke-static {v3, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    move/from16 v3, v20

    .end local v20    # "chunksSoFar":I
    .local v3, "chunksSoFar":I
    add-int/lit8 v20, v3, 0x1

    .line 310
    .end local v3    # "chunksSoFar":I
    .restart local v20    # "chunksSoFar":I
    add-int/lit8 v3, v20, 0x1

    mul-int/lit8 v3, v3, 0x4c

    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v5

    mul-int v5, v5, v20

    add-int/2addr v3, v5

    .line 313
    .end local v25    # "nextSeparatorIndex":I
    .local v3, "nextSeparatorIndex":I
    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v5

    add-int/2addr v2, v5

    .line 269
    move/from16 v17, v2

    goto :goto_ef

    .end local v24    # "val2":B
    .end local v26    # "val3":B
    .end local v27    # "val1":B
    :cond_e5
    move/from16 v25, v3

    move/from16 v3, v20

    .end local v20    # "chunksSoFar":I
    .local v3, "chunksSoFar":I
    .restart local v25    # "nextSeparatorIndex":I
    move/from16 v17, v2

    move/from16 v20, v3

    move/from16 v3, v25

    .end local v2    # "encodedIndex":I
    .end local v25    # "nextSeparatorIndex":I
    .local v3, "nextSeparatorIndex":I
    .restart local v17    # "encodedIndex":I
    .restart local v20    # "chunksSoFar":I
    :goto_ef
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v21

    move/from16 v5, v22

    goto/16 :goto_4e

    .line 319
    .end local v21    # "lengthDataBits":I
    .end local v22    # "numberTriplets":I
    .local v2, "lengthDataBits":I
    .local v5, "numberTriplets":I
    :cond_f7
    move/from16 v21, v2

    move/from16 v25, v3

    move/from16 v22, v5

    move/from16 v3, v20

    .end local v2    # "lengthDataBits":I
    .end local v5    # "numberTriplets":I
    .end local v20    # "chunksSoFar":I
    .local v3, "chunksSoFar":I
    .restart local v21    # "lengthDataBits":I
    .restart local v22    # "numberTriplets":I
    .restart local v25    # "nextSeparatorIndex":I
    mul-int/lit8 v2, v10, 0x3

    .line 321
    .end local v16    # "dataIndex":I
    .local v2, "dataIndex":I
    const/16 v5, 0x3d

    const/16 v7, 0x8

    if-ne v4, v7, :cond_132

    .line 322
    aget-byte v12, v0, v2

    .line 323
    and-int/lit8 v7, v12, 0x3

    int-to-byte v15, v7

    .line 326
    and-int/lit8 v7, v12, -0x80

    if-nez v7, :cond_114

    shr-int/lit8 v7, v12, 0x2

    :goto_112
    int-to-byte v7, v7

    goto :goto_119

    :cond_114
    shr-int/lit8 v7, v12, 0x2

    xor-int/lit16 v7, v7, 0xc0

    goto :goto_112

    .line 328
    .restart local v7    # "val1":B
    :goto_119
    sget-object v16, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v16, v16, v7

    aput-byte v16, v6, v17

    .line 329
    add-int/lit8 v16, v17, 0x1

    sget-object v18, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v19, v15, 0x4

    aget-byte v18, v18, v19

    aput-byte v18, v6, v16

    .line 330
    add-int/lit8 v16, v17, 0x2

    aput-byte v5, v6, v16

    .line 331
    add-int/lit8 v16, v17, 0x3

    aput-byte v5, v6, v16

    goto :goto_17e

    .line 332
    .end local v7    # "val1":B
    :cond_132
    const/16 v7, 0x10

    if-ne v4, v7, :cond_17e

    .line 334
    aget-byte v12, v0, v2

    .line 335
    add-int/lit8 v7, v2, 0x1

    aget-byte v13, v0, v7

    .line 336
    and-int/lit8 v7, v13, 0xf

    int-to-byte v11, v7

    .line 337
    and-int/lit8 v7, v12, 0x3

    int-to-byte v15, v7

    .line 339
    and-int/lit8 v7, v12, -0x80

    if-nez v7, :cond_14a

    shr-int/lit8 v7, v12, 0x2

    :goto_148
    int-to-byte v7, v7

    goto :goto_14f

    :cond_14a
    shr-int/lit8 v7, v12, 0x2

    xor-int/lit16 v7, v7, 0xc0

    goto :goto_148

    .line 341
    .restart local v7    # "val1":B
    :goto_14f
    and-int/lit8 v16, v13, -0x80

    if-nez v16, :cond_157

    shr-int/lit8 v5, v13, 0x4

    :goto_155
    int-to-byte v5, v5

    goto :goto_15c

    :cond_157
    shr-int/lit8 v5, v13, 0x4

    xor-int/lit16 v5, v5, 0xf0

    goto :goto_155

    .line 344
    .local v5, "val2":B
    :goto_15c
    sget-object v16, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v16, v16, v7

    aput-byte v16, v6, v17

    .line 345
    add-int/lit8 v16, v17, 0x1

    sget-object v18, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v19, v15, 0x4

    or-int v19, v5, v19

    aget-byte v18, v18, v19

    aput-byte v18, v6, v16

    .line 347
    add-int/lit8 v16, v17, 0x2

    sget-object v18, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v19, v11, 0x2

    aget-byte v18, v18, v19

    aput-byte v18, v6, v16

    .line 348
    add-int/lit8 v16, v17, 0x3

    const/16 v18, 0x3d

    aput-byte v18, v6, v16

    .line 351
    .end local v5    # "val2":B
    .end local v7    # "val1":B
    :cond_17e
    :goto_17e
    if-eqz p1, :cond_190

    .line 353
    if-ge v3, v8, :cond_190

    .line 354
    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    sget-object v7, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v7, v7

    sub-int v7, v9, v7

    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {v5, v1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    :cond_190
    return-object v6
.end method

.method public static encodeBase64Chunked([B)[B
    .registers 2
    .param p0, "binaryData"    # [B

    .line 189
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .registers 6
    .param p0, "arrayOctect"    # [B

    .line 154
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardWhitespace([B)[B

    move-result-object p0

    .line 156
    array-length v0, p0

    .line 157
    .local v0, "length":I
    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 160
    return v1

    .line 162
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_19

    .line 163
    aget-byte v4, p0, v3

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v4

    if-nez v4, :cond_16

    .line 164
    return v2

    .line 162
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 167
    .end local v3    # "i":I
    :cond_19
    return v1
.end method

.method private static isBase64(B)Z
    .registers 4
    .param p0, "octect"    # B

    .line 135
    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_6

    .line 136
    return v0

    .line 137
    :cond_6
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 138
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_f
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 206
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 209
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0

    .line 207
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .registers 3
    .param p1, "pArray"    # [B

    .line 220
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 506
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 510
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    return-object v0

    .line 507
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .registers 3
    .param p1, "pArray"    # [B

    .line 521
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
