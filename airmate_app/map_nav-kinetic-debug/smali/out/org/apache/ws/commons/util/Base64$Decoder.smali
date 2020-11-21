.class public abstract Lorg/apache/ws/commons/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Decoder"
.end annotation


# instance fields
.field private final byteBuffer:[B

.field private byteBufferOffset:I

.field private eofBytes:I

.field private num:I

.field private numBytes:I


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "pBufLen"    # I

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    .line 377
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 458
    :cond_a
    new-instance v0, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string v1, "Unexpected end of file"

    invoke-direct {v0, v1}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_12
    :goto_12
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    if-lez v0, :cond_20

    .line 461
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/ws/commons/util/Base64$Decoder;->writeBuffer([BII)V

    .line 462
    iput v2, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    .line 464
    :cond_20
    return-void
.end method

.method public write([CII)V
    .registers 11
    .param p1, "pData"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    .local v1, "pOffset":I
    .local p2, "i":I
    :goto_3
    if-ge p2, p3, :cond_104

    .line 395
    add-int/lit8 v2, v1, 0x1

    .local v2, "pOffset":I
    aget-char v1, p1, v1

    .line 396
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 397
    goto/16 :goto_e0

    .line 399
    :cond_11
    const/16 v3, 0x3d

    const/4 v4, 0x1

    if-ne v1, v3, :cond_70

    .line 400
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    .line 401
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shl-int/lit8 v3, v3, 0x6

    iput v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    .line 402
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    packed-switch v3, :pswitch_data_106

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid value for numBytes"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :pswitch_31
    new-instance v0, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string v3, "Trailing garbage detected"

    invoke-direct {v0, v3}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :pswitch_39
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 411
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    if-ne v3, v4, :cond_5b

    .line 412
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 414
    :cond_5b
    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    invoke-virtual {p0, v3, v0, v4}, Lorg/apache/ws/commons/util/Base64$Decoder;->writeBuffer([BII)V

    .line 415
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    .line 416
    goto/16 :goto_e0

    .line 408
    :pswitch_66
    goto/16 :goto_e0

    .line 405
    :pswitch_68
    new-instance v0, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string v3, "Unexpected end of stream character (=)"

    invoke-direct {v0, v3}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_70
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    if-gtz v3, :cond_fc

    .line 427
    if-ltz v1, :cond_da

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$100()[B

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_da

    .line 428
    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$100()[B

    move-result-object v3

    aget-byte v3, v3, v1

    .line 429
    .local v3, "result":I
    if-ltz v3, :cond_da

    .line 430
    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v3

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    .line 431
    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    const/4 v4, 0x4

    if-ne v5, v4, :cond_e0

    .line 432
    iget-object v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 433
    iget-object v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 434
    iget-object v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v6, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 435
    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    array-length v5, v5

    if-le v4, v5, :cond_d5

    .line 436
    iget-object v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    invoke-virtual {p0, v4, v0, v5}, Lorg/apache/ws/commons/util/Base64$Decoder;->writeBuffer([BII)V

    .line 437
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    .line 439
    :cond_d5
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    .line 440
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    .line 441
    goto :goto_e0

    .line 445
    .end local v3    # "result":I
    :cond_da
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 394
    .end local v1    # "c":C
    :cond_e0
    :goto_e0
    add-int/lit8 p2, p2, 0x1

    move v1, v2

    goto/16 :goto_3

    .line 446
    .restart local v1    # "c":C
    :cond_e5
    new-instance v0, Lorg/apache/ws/commons/util/Base64$DecodingException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid Base64 character: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_fc
    new-instance v0, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string v3, "Base64 characters after end of stream character (=) detected."

    invoke-direct {v0, v3}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    .end local v2    # "pOffset":I
    .end local p2    # "i":I
    .local v1, "pOffset":I
    :cond_104
    return-void

    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_68
        :pswitch_68
        :pswitch_66
        :pswitch_39
        :pswitch_31
    .end packed-switch
.end method

.method protected abstract writeBuffer([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
