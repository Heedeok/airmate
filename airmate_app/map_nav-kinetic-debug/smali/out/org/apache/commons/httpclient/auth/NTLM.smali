.class final Lorg/apache/commons/httpclient/auth/NTLM;
.super Ljava/lang/Object;
.source "NTLM.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ASCII"


# instance fields
.field private credentialCharset:Ljava/lang/String;

.field private currentPosition:I

.field private currentResponse:[B


# direct methods
.method constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 79
    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-void
.end method

.method private addByte(B)V
    .registers 4
    .param p1, "b"    # B

    .line 190
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    aput-byte p1, v0, v1

    .line 191
    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 192
    return-void
.end method

.method private addBytes([B)V
    .registers 6
    .param p1, "bytes"    # [B

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 200
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 201
    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method private calcResp([B[B[B)V
    .registers 15
    .param p1, "keys"    # [B
    .param p2, "plaintext"    # [B
    .param p3, "results"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 501
    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 502
    .local v1, "keys1":[B
    new-array v2, v0, [B

    .line 503
    .local v2, "keys2":[B
    new-array v3, v0, [B

    .line 504
    .local v3, "keys3":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    if-ge v5, v0, :cond_12

    .line 505
    aget-byte v6, p1, v5

    aput-byte v6, v1, v5

    .line 504
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 508
    .end local v5    # "i":I
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_13
    if-ge v5, v0, :cond_1e

    .line 509
    add-int/lit8 v6, v5, 0x7

    aget-byte v6, p1, v6

    aput-byte v6, v2, v5

    .line 508
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 512
    .end local v5    # "i":I
    :cond_1e
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1f
    if-ge v5, v0, :cond_2a

    .line 513
    add-int/lit8 v6, v5, 0xe

    aget-byte v6, p1, v6

    aput-byte v6, v3, v5

    .line 512
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 515
    .end local v5    # "i":I
    :cond_2a
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v0

    .line 517
    .local v0, "results1":[B
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v5

    .line 519
    .local v5, "results2":[B
    invoke-direct {p0, v3, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v6

    .line 521
    .local v6, "results3":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_37
    const/16 v8, 0x8

    if-ge v7, v8, :cond_42

    .line 522
    aget-byte v8, v0, v7

    aput-byte v8, p3, v7

    .line 521
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 524
    .end local v7    # "i":I
    :cond_42
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_43
    if-ge v7, v8, :cond_4e

    .line 525
    add-int/lit8 v9, v7, 0x8

    aget-byte v10, v5, v7

    aput-byte v10, p3, v9

    .line 524
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 527
    .end local v7    # "i":I
    :cond_4e
    nop

    .local v4, "i":I
    :goto_4f
    if-ge v4, v8, :cond_5a

    .line 528
    add-int/lit8 v7, v4, 0x10

    aget-byte v9, v6, v4

    aput-byte v9, p3, v7

    .line 527
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 530
    .end local v4    # "i":I
    :cond_5a
    return-void
.end method

.method private convertShort(I)[B
    .registers 9
    .param p1, "num"    # I

    .line 538
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 539
    .local v1, "val":[B
    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "hex":Ljava/lang/String;
    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_22

    .line 541
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 543
    :cond_22
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "low":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "high":Ljava/lang/String;
    invoke-static {v4, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 547
    const/4 v5, 0x1

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 548
    return-object v1
.end method

.method private encrypt([B[B)[B
    .registers 7
    .param p1, "key"    # [B
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->getCipher([B)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 167
    .local v0, "ecipher":Ljavax/crypto/Cipher;
    :try_start_4
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_8} :catch_12
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_8} :catch_9

    .line 168
    .local v1, "enc":[B
    return-object v1

    .line 171
    .end local v1    # "enc":[B
    :catch_9
    move-exception v1

    .line 172
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v3, "Data not padded correctly for DES encryption."

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 169
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_12
    move-exception v1

    .line 170
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v3, "Invalid block size for DES encryption."

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getCipher([B)Ljavax/crypto/Cipher;
    .registers 6
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 114
    :try_start_0
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 115
    .local v0, "ecipher":Ljavax/crypto/Cipher;
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->setupKey([B)[B

    move-result-object v1

    move-object p1, v1

    .line 116
    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_29
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_16} :catch_20
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_16} :catch_17

    .line 117
    return-object v0

    .line 122
    .end local v0    # "ecipher":Ljavax/crypto/Cipher;
    :catch_17
    move-exception v0

    .line 123
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "NoPadding option for DES is not available."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_20
    move-exception v0

    .line 121
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "Invalid key for DES encryption."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_29
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "DES encryption is not available."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getResponse()Ljava/lang/String;
    .registers 4

    .line 212
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    if-le v0, v1, :cond_1b

    .line 213
    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    new-array v0, v0, [B

    .line 214
    .local v0, "tmp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    if-ge v1, v2, :cond_19

    .line 215
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    aget-byte v2, v2, v1

    aput-byte v2, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 217
    .end local v1    # "i":I
    :cond_19
    nop

    .line 218
    .local v0, "resp":[B
    goto :goto_1d

    .line 219
    .end local v0    # "resp":[B
    :cond_1b
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    .line 221
    .restart local v0    # "resp":[B
    :goto_1d
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hashPassword(Ljava/lang/String;[B)[B
    .registers 16
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 433
    .local v0, "passw":[B
    const/4 v1, 0x7

    new-array v2, v1, [B

    .line 434
    .local v2, "lmPw1":[B
    new-array v3, v1, [B

    .line 436
    .local v3, "lmPw2":[B
    array-length v4, v0

    .line 437
    .local v4, "len":I
    if-le v4, v1, :cond_13

    .line 438
    const/4 v4, 0x7

    .line 442
    :cond_13
    const/4 v5, 0x0

    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_15
    if-ge v6, v4, :cond_1e

    .line 443
    aget-byte v7, v0, v6

    aput-byte v7, v2, v6

    .line 442
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 445
    :cond_1e
    :goto_1e
    if-ge v6, v1, :cond_25

    .line 446
    aput-byte v5, v2, v6

    .line 445
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 449
    :cond_25
    array-length v1, v0

    .line 450
    .end local v4    # "len":I
    .local v1, "len":I
    const/16 v4, 0xe

    if-le v1, v4, :cond_2c

    .line 451
    const/16 v1, 0xe

    .line 453
    :cond_2c
    const/4 v6, 0x7

    :goto_2d
    if-ge v6, v1, :cond_38

    .line 454
    add-int/lit8 v7, v6, -0x7

    aget-byte v8, v0, v6

    aput-byte v8, v3, v7

    .line 453
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 456
    :cond_38
    :goto_38
    if-ge v6, v4, :cond_41

    .line 457
    add-int/lit8 v7, v6, -0x7

    aput-byte v5, v3, v7

    .line 456
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 461
    :cond_41
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_80

    .line 467
    .local v4, "magic":[B
    invoke-direct {p0, v2, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v7

    .line 469
    .local v7, "lmHpw1":[B
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v8

    .line 471
    .local v8, "lmHpw2":[B
    const/16 v9, 0x15

    new-array v9, v9, [B

    .line 472
    .local v9, "lmHpw":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_55
    array-length v11, v7

    if-ge v10, v11, :cond_5f

    .line 473
    aget-byte v11, v7, v10

    aput-byte v11, v9, v10

    .line 472
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 475
    .end local v10    # "i":I
    :cond_5f
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_60
    array-length v11, v8

    if-ge v10, v11, :cond_6c

    .line 476
    add-int/lit8 v11, v10, 0x8

    aget-byte v12, v8, v10

    aput-byte v12, v9, v11

    .line 475
    add-int/lit8 v10, v10, 0x1

    goto :goto_60

    .line 478
    .end local v10    # "i":I
    :cond_6c
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6d
    const/4 v11, 0x5

    if-ge v10, v11, :cond_77

    .line 479
    add-int/lit8 v11, v10, 0x10

    aput-byte v5, v9, v11

    .line 478
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    .line 483
    .end local v10    # "i":I
    :cond_77
    const/16 v5, 0x18

    new-array v5, v5, [B

    .line 484
    .local v5, "lmResp":[B
    invoke-direct {p0, v9, p2, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->calcResp([B[B[B)V

    .line 486
    return-object v5

    nop

    :array_80
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method private prepareResponse(I)V
    .registers 3
    .param p1, "length"    # I

    .line 181
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    .line 183
    return-void
.end method

.method private setupKey([B)[B
    .registers 13
    .param p1, "key56"    # [B

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 135
    .local v0, "key":[B
    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    const/4 v4, 0x6

    shl-int/2addr v2, v4

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 138
    aget-byte v2, p1, v3

    const/4 v5, 0x3

    and-int/2addr v2, v5

    const/4 v7, 0x5

    shl-int/2addr v2, v7

    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v8, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v2, v8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 140
    aget-byte v2, p1, v6

    const/4 v8, 0x7

    and-int/2addr v2, v8

    const/4 v9, 0x4

    shl-int/2addr v2, v9

    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    shr-int/2addr v10, v9

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v2, v10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 142
    aget-byte v2, p1, v5

    and-int/lit8 v2, v2, 0xf

    shl-int/2addr v2, v5

    aget-byte v5, p1, v9

    and-int/lit16 v5, v5, 0xff

    shr-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    .line 144
    aget-byte v2, p1, v9

    and-int/lit8 v2, v2, 0x1f

    shl-int/2addr v2, v6

    aget-byte v5, p1, v7

    and-int/lit16 v5, v5, 0xff

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    .line 146
    aget-byte v2, p1, v7

    and-int/lit8 v2, v2, 0x3f

    shl-int/2addr v2, v3

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shr-int/2addr v5, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 148
    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    .line 150
    nop

    .local v1, "i":I
    :goto_85
    array-length v2, v0

    if-ge v1, v2, :cond_91

    .line 151
    aget-byte v2, v0, v1

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 153
    .end local v1    # "i":I
    :cond_91
    return-object v0
.end method


# virtual methods
.method public getCredentialCharset()Ljava/lang/String;
    .registers 2

    .line 555
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 97
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1d

    .line 100
    :cond_f
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->parseType2Message(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/httpclient/auth/NTLM;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 98
    :cond_1d
    :goto_1d
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/httpclient/auth/NTLM;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "response":Ljava/lang/String;
    :goto_21
    nop

    .line 103
    return-object v0
.end method

.method public getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 235
    const-string v0, "ASCII"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 236
    .local v0, "hostBytes":[B
    const-string v1, "ASCII"

    invoke-static {p2, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 238
    .local v1, "domainBytes":[B
    array-length v2, v0

    const/16 v3, 0x20

    add-int/2addr v2, v3

    array-length v4, v1

    add-int/2addr v2, v4

    .line 239
    .local v2, "finalLength":I
    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->prepareResponse(I)V

    .line 242
    const-string v4, "NTLMSSP"

    const-string v5, "ASCII"

    invoke-static {v4, v5}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 243
    .local v4, "protocol":[B
    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 244
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 247
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 248
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 249
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 250
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 253
    const/4 v7, 0x6

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 254
    const/16 v7, 0x52

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 255
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 256
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 259
    array-length v7, v1

    .line 260
    .local v7, "iDomLen":I
    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v8

    .line 261
    .local v8, "domLen":[B
    aget-byte v9, v8, v5

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 262
    aget-byte v9, v8, v6

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 265
    aget-byte v9, v8, v5

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 266
    aget-byte v9, v8, v6

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 269
    array-length v9, v0

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v9

    .line 270
    .local v9, "domOff":[B
    aget-byte v10, v9, v5

    invoke-direct {p0, v10}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 271
    aget-byte v10, v9, v6

    invoke-direct {p0, v10}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 272
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 273
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 276
    array-length v10, v0

    invoke-direct {p0, v10}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v10

    .line 277
    .local v10, "hostLen":[B
    aget-byte v11, v10, v5

    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 278
    aget-byte v11, v10, v6

    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 281
    aget-byte v11, v10, v5

    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 282
    aget-byte v11, v10, v6

    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 285
    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v3

    .line 286
    .local v3, "hostOff":[B
    aget-byte v11, v3, v5

    invoke-direct {p0, v11}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 287
    aget-byte v6, v3, v6

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 288
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 289
    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 292
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 295
    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 297
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponse()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 23
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 335
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 336
    .local v1, "ntRespLen":I
    const/16 v2, 0x18

    .line 337
    .local v2, "lmRespLen":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 338
    .end local p4    # "domain":Ljava/lang/String;
    .local v3, "domain":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 339
    .end local p3    # "host":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 340
    .end local p1    # "user":Ljava/lang/String;
    .local v5, "user":Ljava/lang/String;
    const-string v6, "ASCII"

    invoke-static {v3, v6}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 341
    .local v6, "domainBytes":[B
    const-string v7, "ASCII"

    invoke-static {v4, v7}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 342
    .local v7, "hostBytes":[B
    iget-object v8, v0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    invoke-static {v5, v8}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 343
    .local v8, "userBytes":[B
    array-length v9, v6

    .line 344
    .local v9, "domainLen":I
    array-length v10, v7

    .line 345
    .local v10, "hostLen":I
    array-length v11, v8

    .line 346
    .local v11, "userLen":I
    add-int/lit8 v12, v1, 0x40

    add-int/2addr v12, v2

    add-int/2addr v12, v9

    add-int/2addr v12, v11

    add-int/2addr v12, v10

    .line 348
    .local v12, "finalLength":I
    invoke-direct {v0, v12}, Lorg/apache/commons/httpclient/auth/NTLM;->prepareResponse(I)V

    .line 349
    const-string v13, "NTLMSSP"

    const-string v14, "ASCII"

    invoke-static {v13, v14}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v13

    .line 350
    .local v13, "ntlmssp":[B
    invoke-direct {v0, v13}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 351
    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 352
    const/4 v15, 0x3

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 353
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 354
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 355
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 358
    const/16 v15, 0x18

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 359
    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 362
    add-int/lit8 v14, v12, -0x18

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 363
    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 364
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 367
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 368
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 371
    invoke-direct {v0, v12}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 372
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 373
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 376
    invoke-direct {v0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 377
    invoke-direct {v0, v9}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 380
    const/16 v14, 0x40

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 381
    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 382
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 385
    invoke-direct {v0, v11}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 386
    invoke-direct {v0, v11}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 389
    add-int/lit8 v14, v9, 0x40

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 390
    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 391
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 394
    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 395
    invoke-direct {v0, v10}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 398
    add-int/lit8 v14, v9, 0x40

    add-int/2addr v14, v11

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 400
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_db
    const/4 v15, 0x6

    if-ge v14, v15, :cond_e5

    .line 401
    const/4 v15, 0x0

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 400
    add-int/lit8 v14, v14, 0x1

    goto :goto_db

    .line 405
    .end local v14    # "i":I
    :cond_e5
    const/4 v14, 0x0

    invoke-direct {v0, v12}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 406
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 407
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 410
    const/4 v15, 0x6

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 411
    const/16 v15, 0x52

    invoke-direct {v0, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 412
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 413
    invoke-direct {v0, v14}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    .line 415
    invoke-direct {v0, v6}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 416
    invoke-direct {v0, v8}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 417
    invoke-direct {v0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 418
    move-object/from16 v14, p2

    move-object/from16 v15, p5

    move/from16 v16, v1

    .end local v1    # "ntRespLen":I
    .local v16, "ntRespLen":I
    invoke-direct {v0, v14, v15}, Lorg/apache/commons/httpclient/auth/NTLM;->hashPassword(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponse()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parseType2Message(Ljava/lang/String;)[B
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 309
    const-string v0, "ASCII"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    .line 310
    .local v0, "msg":[B
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 312
    .local v2, "nonce":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1a

    .line 313
    add-int/lit8 v4, v3, 0x18

    aget-byte v4, v0, v4

    aput-byte v4, v2, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 315
    .end local v3    # "i":I
    :cond_1a
    return-object v2
.end method

.method public setCredentialCharset(Ljava/lang/String;)V
    .registers 2
    .param p1, "credentialCharset"    # Ljava/lang/String;

    .line 562
    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    .line 563
    return-void
.end method
