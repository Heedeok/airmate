.class public final Lorg/jboss/netty/handler/codec/base64/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    return-void
.end method

.method private static alphabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B
    .registers 3
    .param p0, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 53
    if-eqz p0, :cond_5

    .line 56
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->alphabet:[B

    return-object v0

    .line 54
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z
    .registers 3
    .param p0, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 67
    if-eqz p0, :cond_5

    .line 70
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->breakLinesByDefault:Z

    return v0

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B
    .registers 3
    .param p0, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 60
    if-eqz p0, :cond_5

    .line 63
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->decodabet:[B

    return-object v0

    .line 61
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 240
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 264
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 274
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 269
    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 20
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;
    .param p4, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 281
    move-object v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v0, :cond_8b

    .line 284
    if-eqz v2, :cond_83

    .line 287
    if-eqz v3, :cond_7b

    .line 291
    invoke-static/range {p3 .. p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->decodabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v4

    .line 293
    .local v4, "DECODABET":[B
    mul-int/lit8 v5, p2, 0x3

    const/4 v6, 0x4

    div-int/2addr v5, v6

    .line 294
    .local v5, "len34":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-interface {v3, v7, v5}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    .line 295
    .local v7, "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v8, 0x0

    .line 297
    .local v8, "outBuffPosn":I
    new-array v6, v6, [B

    .line 298
    .local v6, "b4":[B
    const/4 v9, 0x0

    .line 299
    .local v9, "b4Posn":I
    const/4 v10, 0x0

    .line 300
    .local v10, "i":I
    const/4 v11, 0x0

    .line 301
    .local v11, "sbiCrop":B
    const/4 v12, 0x0

    .line 302
    .local v12, "sbiDecode":B
    move/from16 v10, p1

    :goto_24
    add-int v13, p1, p2

    const/4 v14, 0x0

    if-ge v10, v13, :cond_76

    .line 303
    invoke-interface {p0, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v11, v13

    .line 304
    aget-byte v12, v4, v11

    .line 306
    const/4 v13, -0x5

    if-lt v12, v13, :cond_4e

    .line 307
    const/4 v13, -0x1

    if-lt v12, v13, :cond_4b

    .line 308
    add-int/lit8 v13, v9, 0x1

    .local v13, "b4Posn":I
    aput-byte v11, v6, v9

    .line 309
    .end local v9    # "b4Posn":I
    const/4 v9, 0x3

    if-le v13, v9, :cond_4a

    .line 310
    invoke-static {v6, v14, v7, v8, v2}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode4to3([BILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)I

    move-result v9

    add-int/2addr v8, v9

    .line 312
    const/4 v9, 0x0

    .line 315
    .end local v13    # "b4Posn":I
    .restart local v9    # "b4Posn":I
    const/16 v13, 0x3d

    if-ne v11, v13, :cond_4b

    .line 316
    goto :goto_76

    .line 302
    .end local v9    # "b4Posn":I
    .restart local v13    # "b4Posn":I
    :cond_4a
    move v9, v13

    .end local v13    # "b4Posn":I
    .restart local v9    # "b4Posn":I
    :cond_4b
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    .line 321
    :cond_4e
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad Base64 input character at "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (decimal)"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 327
    :cond_76
    :goto_76
    invoke-interface {v7, v14, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 288
    .end local v4    # "DECODABET":[B
    .end local v5    # "len34":I
    .end local v6    # "b4":[B
    .end local v7    # "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v8    # "outBuffPosn":I
    .end local v9    # "b4Posn":I
    .end local v10    # "i":I
    .end local v11    # "sbiCrop":B
    .end local v12    # "sbiDecode":B
    :cond_7b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "bufferFactory"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_83
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "dialect"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_8b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "src"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 248
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 244
    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;
    .param p2, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 253
    if-eqz p0, :cond_16

    .line 257
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 258
    .local v0, "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 259
    return-object v0

    .line 254
    .end local v0    # "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decode4to3([BILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)I
    .registers 9
    .param p0, "src"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "dest"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "destOffset"    # I
    .param p4, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 334
    invoke-static {p4}, Lorg/jboss/netty/handler/codec/base64/Base64;->decodabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v0

    .line 336
    .local v0, "DECODABET":[B
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_27

    .line 338
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    .line 342
    .local v1, "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-interface {p2, p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 343
    const/4 v2, 0x1

    return v2

    .line 344
    .end local v1    # "outBuff":I
    :cond_27
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_5b

    .line 346
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    .line 351
    .restart local v1    # "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-interface {p2, p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 352
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    invoke-interface {p2, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 353
    const/4 v2, 0x2

    return v2

    .line 358
    .end local v1    # "outBuff":I
    :cond_5b
    :try_start_5b
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2
    :try_end_7f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b .. :try_end_7f} :catch_99

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 365
    .restart local v1    # "outBuff":I
    nop

    .line 367
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-interface {p2, p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 368
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    invoke-interface {p2, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 369
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    invoke-interface {p2, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 370
    const/4 v2, 0x3

    return v2

    .line 363
    .end local v1    # "outBuff":I
    :catch_99
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "not encoded in Base64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 74
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 119
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 127
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 123
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 11
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;
    .param p4, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 132
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZ)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z

    .line 137
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 11
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z
    .param p4, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 149
    sget-object v4, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 11
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z
    .param p4, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 143
    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 21
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z
    .param p4, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;
    .param p5, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 156
    move/from16 v0, p2

    move-object/from16 v1, p5

    if-eqz p0, :cond_7d

    .line 159
    if-eqz p4, :cond_75

    .line 162
    if-eqz v1, :cond_6d

    .line 166
    mul-int/lit8 v2, v0, 0x4

    div-int/lit8 v8, v2, 0x3

    .line 167
    .local v8, "len43":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    rem-int/lit8 v3, v0, 0x3

    const/4 v10, 0x4

    if-lez v3, :cond_19

    const/4 v3, 0x4

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    add-int/2addr v3, v8

    if-eqz p3, :cond_20

    div-int/lit8 v4, v8, 0x4c

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    add-int/2addr v3, v4

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v11

    .line 172
    .local v11, "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v2, 0x0

    .line 173
    .local v2, "d":I
    const/4 v3, 0x0

    .line 174
    .local v3, "e":I
    add-int/lit8 v7, v0, -0x2

    .line 175
    .local v7, "len2":I
    move v6, v2

    move v12, v3

    const/4 v2, 0x0

    .end local v3    # "e":I
    .local v2, "lineLength":I
    .local v6, "d":I
    .local v12, "e":I
    :goto_2d
    move v13, v2

    .line 176
    .end local v2    # "lineLength":I
    .local v13, "lineLength":I
    if-ge v6, v7, :cond_54

    .line 177
    add-int v3, v6, p1

    const/4 v4, 0x3

    move-object v2, p0

    move-object v5, v11

    move v9, v6

    .end local v6    # "d":I
    .local v9, "d":I
    move v6, v12

    move v14, v7

    .end local v7    # "len2":I
    .local v14, "len2":I
    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode3to4(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)V

    .line 179
    add-int/lit8 v2, v13, 0x4

    .line 180
    .end local v13    # "lineLength":I
    .restart local v2    # "lineLength":I
    if-eqz p3, :cond_4f

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_4f

    .line 181
    add-int/lit8 v3, v12, 0x4

    const/16 v4, 0xa

    invoke-interface {v11, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 182
    add-int/lit8 v12, v12, 0x1

    .line 183
    const/4 v2, 0x0

    .line 176
    :cond_4f
    add-int/lit8 v6, v9, 0x3

    .end local v9    # "d":I
    .restart local v6    # "d":I
    add-int/2addr v12, v10

    .line 175
    move v7, v14

    goto :goto_2d

    .line 187
    .end local v2    # "lineLength":I
    .end local v14    # "len2":I
    .restart local v7    # "len2":I
    .restart local v13    # "lineLength":I
    :cond_54
    move v9, v6

    move v14, v7

    .end local v6    # "d":I
    .end local v7    # "len2":I
    .restart local v9    # "d":I
    .restart local v14    # "len2":I
    if-ge v9, v0, :cond_66

    .line 188
    add-int v3, v9, p1

    sub-int v4, v0, v9

    move-object v2, p0

    move-object v5, v11

    move v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode3to4(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)V

    .line 189
    add-int/lit8 v12, v12, 0x4

    .line 192
    .end local v12    # "e":I
    .local v2, "e":I
    :cond_66
    move v2, v12

    const/4 v3, 0x0

    invoke-interface {v11, v3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 163
    .end local v2    # "e":I
    .end local v8    # "len43":I
    .end local v9    # "d":I
    .end local v11    # "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v13    # "lineLength":I
    .end local v14    # "len2":I
    :cond_6d
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "bufferFactory"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_75
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "dialect"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_7d
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "src"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 83
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 78
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;
    .param p2, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 88
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Z)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "breakLines"    # Z

    .line 92
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "breakLines"    # Z
    .param p2, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 102
    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "breakLines"    # Z
    .param p2, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 97
    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 10
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "breakLines"    # Z
    .param p2, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;
    .param p3, "bufferFactory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 108
    if-eqz p0, :cond_1a

    .line 112
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 114
    .local v0, "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 115
    return-object v0

    .line 109
    .end local v0    # "dest":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encode3to4(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)V
    .registers 11
    .param p0, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "dest"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "destOffset"    # I
    .param p5, "dialect"    # Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    .line 199
    invoke-static {p5}, Lorg/jboss/netty/handler/codec/base64/Base64;->alphabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v0

    .line 212
    .local v0, "ALPHABET":[B
    const/4 v1, 0x0

    if-lez p2, :cond_10

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x1

    if-le p2, v3, :cond_1f

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2f

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    nop

    :cond_2f
    or-int/2addr v1, v2

    .line 217
    .local v1, "inBuff":I
    const/16 v2, 0x3d

    packed-switch p2, :pswitch_data_9e

    goto :goto_9c

    .line 219
    :pswitch_36
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    invoke-interface {p3, p4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 220
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    invoke-interface {p3, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 221
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    invoke-interface {p3, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 222
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    invoke-interface {p3, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 223
    goto :goto_9c

    .line 225
    :pswitch_5d
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    invoke-interface {p3, p4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 226
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    invoke-interface {p3, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 227
    add-int/lit8 v3, p4, 0x2

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    invoke-interface {p3, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 228
    add-int/lit8 v3, p4, 0x3

    invoke-interface {p3, v3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 229
    goto :goto_9c

    .line 231
    :pswitch_80
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    invoke-interface {p3, p4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 232
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    invoke-interface {p3, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 233
    add-int/lit8 v3, p4, 0x2

    invoke-interface {p3, v3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 234
    add-int/lit8 v3, p4, 0x3

    invoke-interface {p3, v3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 237
    :goto_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_80
        :pswitch_5d
        :pswitch_36
    .end packed-switch
.end method
