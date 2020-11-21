.class public abstract Lorg/xbill/DNS/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;

.field private static final serialVersionUID:J = 0x25663ac63c372e5aL


# instance fields
.field protected dclass:I

.field protected name:Lorg/xbill/DNS/Name;

.field protected ttl:J

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .registers 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 38
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 39
    invoke-static {p4, p5}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 40
    iput-object p1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 41
    iput p2, p0, Lorg/xbill/DNS/Record;->type:I

    .line 42
    iput p3, p0, Lorg/xbill/DNS/Record;->dclass:I

    .line 43
    iput-wide p4, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 44
    return-void

    .line 36
    :cond_1b
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method protected static byteArrayFromString(Ljava/lang/String;)[B
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 345
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 346
    .local v1, "escaped":Z
    const/4 v2, 0x0

    .line 348
    .local v2, "hasEscapes":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    array-length v5, v0

    const/16 v6, 0x5c

    if-ge v4, v5, :cond_16

    .line 349
    aget-byte v5, v0, v4

    if-ne v5, v6, :cond_13

    .line 350
    const/4 v2, 0x1

    .line 351
    goto :goto_16

    .line 348
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 354
    .end local v4    # "i":I
    :cond_16
    :goto_16
    const/16 v4, 0xff

    if-nez v2, :cond_26

    .line 355
    array-length v3, v0

    if-gt v3, v4, :cond_1e

    .line 358
    return-object v0

    .line 356
    :cond_1e
    new-instance v3, Lorg/xbill/DNS/TextParseException;

    const-string v4, "text string too long"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_26
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 364
    .local v7, "digits":I
    const/4 v8, 0x0

    .line 365
    .local v8, "intval":I
    nop

    .local v3, "i":I
    :goto_2e
    array-length v9, v0

    const/4 v10, 0x3

    if-ge v3, v9, :cond_78

    .line 366
    aget-byte v9, v0, v3

    .line 367
    .local v9, "b":B
    if-eqz v1, :cond_68

    .line 368
    const/16 v11, 0x30

    if-lt v9, v11, :cond_56

    const/16 v11, 0x39

    if-gt v9, v11, :cond_56

    if-ge v7, v10, :cond_56

    .line 369
    add-int/lit8 v7, v7, 0x1

    .line 370
    mul-int/lit8 v8, v8, 0xa

    .line 371
    add-int/lit8 v11, v9, -0x30

    add-int/2addr v8, v11

    .line 372
    if-gt v8, v4, :cond_4e

    .line 375
    if-ge v7, v10, :cond_4c

    .line 376
    goto :goto_75

    .line 377
    :cond_4c
    int-to-byte v9, v8

    goto :goto_63

    .line 373
    :cond_4e
    new-instance v4, Lorg/xbill/DNS/TextParseException;

    const-string v6, "bad escape"

    invoke-direct {v4, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    :cond_56
    if-lez v7, :cond_63

    if-lt v7, v10, :cond_5b

    goto :goto_63

    .line 380
    :cond_5b
    new-instance v4, Lorg/xbill/DNS/TextParseException;

    const-string v6, "bad escape"

    invoke-direct {v4, v6}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 381
    :cond_63
    :goto_63
    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    const/4 v1, 0x0

    goto :goto_75

    .line 384
    :cond_68
    aget-byte v10, v0, v3

    if-ne v10, v6, :cond_70

    .line 385
    const/4 v1, 0x1

    .line 386
    const/4 v7, 0x0

    .line 387
    const/4 v8, 0x0

    goto :goto_75

    .line 390
    :cond_70
    aget-byte v10, v0, v3

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 365
    .end local v9    # "b":B
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 392
    .end local v3    # "i":I
    :cond_78
    if-lez v7, :cond_85

    if-lt v7, v10, :cond_7d

    goto :goto_85

    .line 393
    :cond_7d
    new-instance v3, Lorg/xbill/DNS/TextParseException;

    const-string v4, "bad escape"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_85
    :goto_85
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 395
    array-length v3, v0

    if-gt v3, v4, :cond_91

    .line 399
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 396
    :cond_91
    new-instance v3, Lorg/xbill/DNS/TextParseException;

    const-string v4, "text string too long"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static byteArrayToString([BZ)Ljava/lang/String;
    .registers 9
    .param p0, "array"    # [B
    .param p1, "quote"    # Z

    .line 407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x22

    if-eqz p1, :cond_c

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    :cond_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_41

    .line 411
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 412
    .local v3, "b":I
    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-lt v3, v4, :cond_31

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1f

    goto :goto_31

    .line 415
    :cond_1f
    if-eq v3, v1, :cond_29

    if-ne v3, v5, :cond_24

    goto :goto_29

    .line 419
    :cond_24
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3e

    .line 416
    :cond_29
    :goto_29
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3e

    .line 413
    :cond_31
    :goto_31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    sget-object v4, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    .end local v3    # "b":I
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 421
    .end local v2    # "i":I
    :cond_41
    if-eqz p1, :cond_46

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .registers 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 725
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    return-object p1

    .line 726
    :cond_7
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method static checkU16(Ljava/lang/String;I)I
    .registers 5
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # I

    .line 705
    if-ltz p1, :cond_8

    const v0, 0xffff

    if-gt p1, v0, :cond_8

    .line 709
    return p1

    .line 706
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " must be an unsigned 16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkU32(Ljava/lang/String;J)J
    .registers 6
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # J

    .line 715
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_10

    .line 719
    return-wide p1

    .line 716
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " must be an unsigned 32 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkU8(Ljava/lang/String;I)I
    .registers 5
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # I

    .line 695
    if-ltz p1, :cond_7

    const/16 v0, 0xff

    if-gt p1, v0, :cond_7

    .line 699
    return p1

    .line 696
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " must be an unsigned 8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .registers 14
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    new-instance v5, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v5, p5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .registers 18
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p6, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    move-object/from16 v0, p5

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 458
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 459
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 460
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 462
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 463
    .local v1, "t":Lorg/xbill/DNS/Tokenizer$Token;
    iget v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4b

    iget-object v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    const-string v3, "\\#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 464
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v2

    .line 465
    .local v2, "length":I
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v3

    .line 466
    .local v3, "data":[B
    if-nez v3, :cond_31

    .line 467
    const/4 v4, 0x0

    new-array v3, v4, [B

    .line 469
    .end local v3    # "data":[B
    .local v10, "data":[B
    :cond_31
    move-object v10, v3

    array-length v3, v10

    if-ne v2, v3, :cond_44

    .line 472
    new-instance v9, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v9, v10}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 473
    .local v9, "in":Lorg/xbill/DNS/DNSInput;
    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move v8, v2

    invoke-static/range {v3 .. v9}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v3

    return-object v3

    .line 470
    .end local v9    # "in":Lorg/xbill/DNS/DNSInput;
    :cond_44
    const-string v3, "invalid unknown RR encoding: length mismatch"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 475
    .end local v2    # "length":I
    .end local v10    # "data":[B
    :cond_4b
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 476
    const/4 v9, 0x1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-static/range {v4 .. v9}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 477
    .local v2, "rec":Lorg/xbill/DNS/Record;
    move-object/from16 v3, p6

    invoke-virtual {v2, v0, v3}, Lorg/xbill/DNS/Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 478
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 479
    iget v4, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_71

    iget v4, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v4, :cond_6a

    goto :goto_71

    .line 480
    :cond_6a
    const-string v4, "unexpected tokens at end of record"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v4

    throw v4

    .line 482
    :cond_71
    :goto_71
    return-object v2

    .line 457
    .end local v1    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .end local v2    # "rec":Lorg/xbill/DNS/Record;
    :cond_72
    move-object/from16 v3, p6

    new-instance v1, Lorg/xbill/DNS/RelativeNameException;

    move-object v2, p0

    invoke-direct {v1, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v1
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;I)Lorg/xbill/DNS/Record;
    .registers 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;
    .registers 16
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "section"    # I
    .param p2, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 184
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    .line 185
    .local v8, "type":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v9

    .line 187
    .local v9, "dclass":I
    if-nez p1, :cond_14

    .line 188
    invoke-static {v0, v8, v9}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v1

    return-object v1

    .line 190
    :cond_14
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v10

    .line 191
    .local v10, "ttl":J
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v12

    .line 192
    .local v12, "length":I
    if-nez v12, :cond_25

    if-eqz p2, :cond_25

    .line 193
    invoke-static {v0, v8, v9, v10, v11}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    return-object v1

    .line 194
    :cond_25
    move-object v1, v0

    move v2, v8

    move v3, v9

    move-wide v4, v10

    move v6, v12

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 195
    .local v1, "rec":Lorg/xbill/DNS/Record;
    return-object v1
.end method

.method public static fromWire([BI)Lorg/xbill/DNS/Record;
    .registers 4
    .param p0, "b"    # [B
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private static final getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;
    .registers 8
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "hasData"    # Z

    .line 56
    if-eqz p5, :cond_13

    .line 57
    invoke-static {p1}, Lorg/xbill/DNS/Type;->getProto(I)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 58
    .local v0, "proto":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_d

    .line 59
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    goto :goto_18

    .line 61
    :cond_d
    new-instance v1, Lorg/xbill/DNS/UNKRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/UNKRecord;-><init>()V

    goto :goto_18

    .line 63
    .end local v0    # "proto":Lorg/xbill/DNS/Record;
    :cond_13
    new-instance v1, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .local v1, "rec":Lorg/xbill/DNS/Record;
    :goto_18
    move-object v0, v1

    .line 64
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    .local v0, "rec":Lorg/xbill/DNS/Record;
    iput-object p0, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput p1, v0, Lorg/xbill/DNS/Record;->type:I

    .line 66
    iput p2, v0, Lorg/xbill/DNS/Record;->dclass:I

    .line 67
    iput-wide p3, v0, Lorg/xbill/DNS/Record;->ttl:J

    .line 68
    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;
    .registers 5
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I

    .line 172
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;
    .registers 12
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J

    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 154
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 155
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 156
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 158
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0

    .line 153
    :cond_19
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method private static newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;
    .registers 14
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "length"    # I
    .param p6, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-eqz p6, :cond_5

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_7
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 83
    .local v0, "rec":Lorg/xbill/DNS/Record;
    if-eqz p6, :cond_37

    .line 84
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lt v1, p5, :cond_2f

    .line 86
    invoke-virtual {p6, p5}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 88
    invoke-virtual {v0, p6}, Lorg/xbill/DNS/Record;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 90
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-gtz v1, :cond_27

    .line 92
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->clearActive()V

    goto :goto_37

    .line 91
    :cond_27
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid record length"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2f
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "truncated record"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_37
    :goto_37
    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;
    .registers 16
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "length"    # I
    .param p6, "data"    # [B

    .line 109
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 111
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 112
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 113
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 116
    const/4 v0, 0x0

    if-eqz p6, :cond_19

    .line 117
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, p6}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 119
    move-object v8, v1

    goto :goto_1a

    :cond_19
    move-object v8, v0

    .line 121
    .local v8, "in":Lorg/xbill/DNS/DNSInput;
    :goto_1a
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    :try_start_1f
    invoke-static/range {v2 .. v8}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_24

    return-object v1

    .line 123
    :catch_24
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    return-object v0

    .line 110
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "in":Lorg/xbill/DNS/DNSInput;
    :cond_26
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;
    .registers 13
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "data"    # [B

    .line 139
    array-length v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V
    .registers 6
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "noTTL"    # Z

    .line 241
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 242
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 243
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 244
    if-eqz p2, :cond_17

    .line 245
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    goto :goto_1c

    .line 247
    :cond_17
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 249
    :goto_1c
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 250
    .local v0, "lengthPosition":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 252
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 253
    .local v1, "rrlength":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 254
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 255
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 256
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 257
    return-void
.end method

.method private toWireCanonical(Z)[B
    .registers 4
    .param p1, "noTTL"    # Z

    .line 265
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 266
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Record;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V

    .line 267
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected static unknownToString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 431
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "\\# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 434
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-static {p0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method cloneRecord()Lorg/xbill/DNS/Record;
    .registers 3

    .line 606
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 608
    :catch_7
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 656
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 658
    .local v0, "arg":Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    if-ne p0, v0, :cond_7

    .line 659
    return v1

    .line 661
    :cond_7
    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v3, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 662
    .local v2, "n":I
    if-eqz v2, :cond_12

    .line 663
    return v2

    .line 664
    :cond_12
    iget v3, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v4, v0, Lorg/xbill/DNS/Record;->dclass:I

    sub-int/2addr v3, v4

    .line 665
    .end local v2    # "n":I
    .local v3, "n":I
    if-eqz v3, :cond_1a

    .line 666
    return v3

    .line 667
    :cond_1a
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    iget v4, v0, Lorg/xbill/DNS/Record;->type:I

    sub-int/2addr v2, v4

    .line 668
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_22

    .line 669
    return v2

    .line 670
    :cond_22
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v3

    .line 671
    .local v3, "rdata1":[B
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v4

    .line 672
    .local v4, "rdata2":[B
    nop

    .local v1, "i":I
    :goto_2b
    array-length v5, v3

    if-ge v1, v5, :cond_41

    array-length v5, v4

    if-ge v1, v5, :cond_41

    .line 673
    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v4, v1

    and-int/lit16 v6, v6, 0xff

    sub-int v2, v5, v6

    .line 674
    if-eqz v2, :cond_3e

    .line 675
    return v2

    .line 672
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 677
    .end local v1    # "i":I
    :cond_41
    array-length v1, v3

    array-length v5, v4

    sub-int/2addr v1, v5

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "arg"    # Ljava/lang/Object;

    .line 581
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    instance-of v1, p1, Lorg/xbill/DNS/Record;

    if-nez v1, :cond_8

    goto :goto_30

    .line 583
    :cond_8
    move-object v1, p1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 584
    .local v1, "r":Lorg/xbill/DNS/Record;
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    iget v3, v1, Lorg/xbill/DNS/Record;->type:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v3, v1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v3, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_2f

    .line 586
    :cond_22
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v0

    .line 587
    .local v0, "array1":[B
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v2

    .line 588
    .local v2, "array2":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 585
    .end local v0    # "array1":[B
    .end local v2    # "array2":[B
    :cond_2f
    :goto_2f
    return v0

    .line 582
    .end local v1    # "r":Lorg/xbill/DNS/Record;
    :cond_30
    :goto_30
    return v0
.end method

.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .registers 2

    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDClass()I
    .registers 2

    .line 544
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .registers 2

    .line 509
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method abstract getObject()Lorg/xbill/DNS/Record;
.end method

.method public getRRsetType()I
    .registers 3

    .line 532
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_e

    .line 533
    move-object v0, p0

    check-cast v0, Lorg/xbill/DNS/RRSIGRecord;

    .line 534
    .local v0, "sig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRSIGRecord;->getTypeCovered()I

    move-result v1

    return v1

    .line 536
    .end local v0    # "sig":Lorg/xbill/DNS/RRSIGRecord;
    :cond_e
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    return v0
.end method

.method public getTTL()J
    .registers 3

    .line 552
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 518
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 596
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    .line 597
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 598
    .local v1, "code":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_15

    .line 599
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 600
    .end local v2    # "i":I
    :cond_15
    return v1
.end method

.method abstract rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public rdataToString()Ljava/lang/String;
    .registers 2

    .line 300
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rdataToWireCanonical()[B
    .registers 4

    .line 285
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 286
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 287
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method abstract rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract rrToString()Ljava/lang/String;
.end method

.method abstract rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
.end method

.method public sameRRset(Lorg/xbill/DNS/Record;)Z
    .registers 4
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .line 568
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v1, p1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v1, p1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method setTTL(J)V
    .registers 3
    .param p1, "ttl"    # J

    .line 641
    iput-wide p1, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 642
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_17

    .line 311
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_24

    .line 313
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_24
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, "BINDTTL"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 316
    iget-wide v1, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_40

    .line 318
    :cond_3b
    iget-wide v1, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 319
    :goto_40
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 321
    :cond_52
    iget v1, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    :cond_60
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "rdata":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 327
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_7d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V
    .registers 6
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "section"    # I
    .param p3, "c"    # Lorg/xbill/DNS/Compression;

    .line 213
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 214
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 215
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 216
    if-nez p2, :cond_12

    .line 217
    return-void

    .line 218
    :cond_12
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 219
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 220
    .local v0, "lengthPosition":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 221
    invoke-virtual {p0, p1, p3, v1}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 222
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 223
    .local v1, "rrlength":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 224
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 225
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 226
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 227
    return-void
.end method

.method public toWire(I)[B
    .registers 4
    .param p1, "section"    # I

    .line 234
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 235
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 236
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWireCanonical()[B
    .registers 2

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    return-object v0
.end method

.method withDClass(IJ)Lorg/xbill/DNS/Record;
    .registers 5
    .param p1, "dclass"    # I
    .param p2, "ttl"    # J

    .line 632
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 633
    .local v0, "rec":Lorg/xbill/DNS/Record;
    iput p1, v0, Lorg/xbill/DNS/Record;->dclass:I

    .line 634
    iput-wide p2, v0, Lorg/xbill/DNS/Record;->ttl:J

    .line 635
    return-object v0
.end method

.method public withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .registers 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .line 619
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 621
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 622
    .local v0, "rec":Lorg/xbill/DNS/Record;
    iput-object p1, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 623
    return-object v0

    .line 620
    .end local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_d
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
.end method
