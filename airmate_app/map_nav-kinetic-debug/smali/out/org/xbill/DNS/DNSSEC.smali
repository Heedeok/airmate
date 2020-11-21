.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;,
        Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;,
        Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;,
        Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;,
        Lorg/xbill/DNS/DNSSEC$KeyMismatchException;,
        Lorg/xbill/DNS/DNSSEC$MalformedKeyException;,
        Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;,
        Lorg/xbill/DNS/DNSSEC$DNSSECException;,
        Lorg/xbill/DNS/DNSSEC$Algorithm;
    }
.end annotation


# static fields
.field private static final ASN1_INT:I = 0x2

.field private static final ASN1_SEQ:I = 0x30

.field private static final DSA_LEN:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BigIntegerLength(Ljava/math/BigInteger;)I
    .registers 2
    .param p0, "i"    # Ljava/math/BigInteger;

    .line 315
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static DSASignaturefromDNS([B)[B
    .registers 11
    .param p0, "dns"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    array-length v0, p0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_5c

    .line 490
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 491
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 493
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 495
    .local v2, "t":I
    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 496
    .local v4, "r":[B
    const/16 v5, 0x14

    .line 497
    .local v5, "rlen":I
    const/4 v6, 0x0

    aget-byte v7, v4, v6

    if-gez v7, :cond_22

    .line 498
    add-int/lit8 v5, v5, 0x1

    .line 500
    :cond_22
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v7

    .line 501
    .local v7, "s":[B
    const/16 v8, 0x14

    .line 502
    .local v8, "slen":I
    aget-byte v9, v7, v6

    if-gez v9, :cond_2e

    .line 503
    add-int/lit8 v8, v8, 0x1

    .line 505
    :cond_2e
    const/16 v9, 0x30

    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 506
    add-int v9, v5, v8

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 508
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 509
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 510
    if-le v5, v3, :cond_46

    .line 511
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 512
    :cond_46
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 514
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 515
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 516
    if-le v8, v3, :cond_54

    .line 517
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 518
    :cond_54
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 520
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 488
    .end local v0    # "in":Lorg/xbill/DNS/DNSInput;
    .end local v1    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v2    # "t":I
    .end local v4    # "r":[B
    .end local v5    # "rlen":I
    .end local v7    # "s":[B
    .end local v8    # "slen":I
    :cond_5c
    new-instance v0, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0
.end method

.method private static DSASignaturetoDNS([BI)[B
    .registers 11
    .param p0, "key"    # [B
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 526
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 528
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 530
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 531
    .local v2, "tmp":I
    const/16 v3, 0x30

    if-ne v2, v3, :cond_7f

    .line 533
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 535
    .local v3, "seqlen":I
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 536
    const/4 v4, 0x2

    if-ne v2, v4, :cond_79

    .line 538
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 539
    .local v5, "rlen":I
    const/16 v6, 0x15

    const/16 v7, 0x14

    if-ne v5, v6, :cond_37

    .line 540
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v8

    if-nez v8, :cond_31

    goto :goto_39

    .line 541
    :cond_31
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 542
    :cond_37
    if-ne v5, v7, :cond_73

    .line 544
    :goto_39
    invoke-virtual {v0, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v8

    .line 545
    .local v8, "bytes":[B
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 547
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 548
    if-ne v2, v4, :cond_6d

    .line 550
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 551
    .local v4, "slen":I
    if-ne v4, v6, :cond_59

    .line 552
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-nez v6, :cond_53

    goto :goto_5b

    .line 553
    :cond_53
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 554
    :cond_59
    if-ne v4, v7, :cond_67

    .line 556
    :goto_5b
    invoke-virtual {v0, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v6

    .line 557
    .end local v8    # "bytes":[B
    .local v6, "bytes":[B
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 559
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 555
    .end local v6    # "bytes":[B
    .restart local v8    # "bytes":[B
    :cond_67
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 549
    .end local v4    # "slen":I
    :cond_6d
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 543
    .end local v8    # "bytes":[B
    :cond_73
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 537
    .end local v5    # "rlen":I
    :cond_79
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 532
    .end local v3    # "seqlen":I
    :cond_7f
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private static algString(I)Ljava/lang/String;
    .registers 2
    .param p0, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .line 462
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1c

    const/16 v0, 0xa

    if-eq p0, v0, :cond_19

    packed-switch p0, :pswitch_data_22

    .line 476
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 472
    :pswitch_13
    const-string v0, "SHA256withRSA"

    return-object v0

    .line 470
    :pswitch_16
    const-string v0, "SHA1withRSA"

    return-object v0

    .line 474
    :cond_19
    const-string v0, "SHA512withRSA"

    return-object v0

    .line 467
    :cond_1c
    :pswitch_1c
    const-string v0, "SHA1withDSA"

    return-object v0

    .line 464
    :cond_1f
    const-string v0, "MD5withRSA"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x5
        :pswitch_16
        :pswitch_1c
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method static checkAlgorithm(Ljava/security/PrivateKey;I)V
    .registers 3
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .line 658
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1e

    packed-switch p1, :pswitch_data_2a

    .line 673
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 669
    :cond_13
    :pswitch_13
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_18

    goto :goto_22

    .line 670
    :cond_18
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 664
    :cond_1e
    :pswitch_1e
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_23

    .line 675
    :goto_22
    return-void

    .line 665
    :cond_23
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    nop

    :pswitch_data_2a
    .packed-switch 0x5
        :pswitch_1e
        :pswitch_13
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public static digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B
    .registers 5
    .param p0, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p1, "msg"    # Lorg/xbill/DNS/Message;
    .param p2, "previous"    # [B

    .line 179
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 180
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 182
    if-eqz p2, :cond_d

    .line 183
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 185
    :cond_d
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 186
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .registers 14
    .param p0, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .line 130
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 131
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 133
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    .line 134
    .local v1, "size":I
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    .line 136
    .local v2, "records":[Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v3

    .line 137
    .local v3, "it":Ljava/util/Iterator;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 138
    .local v4, "name":Lorg/xbill/DNS/Name;
    const/4 v5, 0x0

    .line 139
    .local v5, "wild":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 140
    .local v6, "sigLabels":I
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    if-le v7, v6, :cond_2c

    .line 141
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4, v7}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 142
    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 143
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/Record;

    aput-object v7, v2, v1

    goto :goto_2c

    .line 144
    :cond_3d
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 146
    new-instance v7, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 147
    .local v7, "header":Lorg/xbill/DNS/DNSOutput;
    if-eqz v5, :cond_4b

    .line 148
    invoke-virtual {v5, v7}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_4e

    .line 150
    :cond_4b
    invoke-virtual {v4, v7}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 151
    :goto_4e
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 152
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 153
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 154
    const/4 v8, 0x0

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_65
    array-length v10, v2

    if-ge v9, v10, :cond_95

    .line 155
    invoke-virtual {v7}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 156
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v10

    .line 157
    .local v10, "lengthPosition":I
    invoke-virtual {v0, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 158
    aget-object v11, v2, v9

    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 159
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v11

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x2

    .line 160
    .local v11, "rrlength":I
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 161
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 162
    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 163
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 154
    .end local v10    # "lengthPosition":I
    .end local v11    # "rrlength":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 165
    .end local v9    # "i":I
    :cond_95
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v8

    return-object v8
.end method

.method private static digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V
    .registers 6
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "sig"    # Lorg/xbill/DNS/SIGBase;

    .line 110
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 111
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 112
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 113
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 114
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 115
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 116
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 117
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 118
    return-void
.end method

.method private static fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .registers 8
    .param p0, "key"    # Ljava/security/interfaces/DSAPublicKey;

    .line 419
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 420
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 421
    .local v1, "q":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 422
    .local v2, "p":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 423
    .local v3, "g":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 424
    .local v4, "y":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x40

    div-int/lit8 v5, v5, 0x8

    .line 426
    .local v5, "t":I
    invoke-virtual {v0, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 427
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 428
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 429
    invoke-static {v0, v3}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 430
    invoke-static {v0, v4}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 432
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method static fromPublicKey(Ljava/security/PublicKey;I)[B
    .registers 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "data":[B
    const/4 v1, 0x1

    if-eq p1, v1, :cond_26

    const/4 v1, 0x3

    if-eq p1, v1, :cond_14

    const/16 v1, 0xa

    if-eq p1, v1, :cond_26

    packed-switch p1, :pswitch_data_38

    .line 456
    new-instance v1, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v1

    .line 452
    :cond_14
    :pswitch_14
    instance-of v1, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_20

    .line 454
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object v1

    return-object v1

    .line 453
    :cond_20
    new-instance v1, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v1

    .line 447
    :cond_26
    :pswitch_26
    instance-of v1, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_32

    .line 449
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v1

    return-object v1

    .line 448
    :cond_32
    new-instance v1, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v1

    :pswitch_data_38
    .packed-switch 0x5
        :pswitch_26
        :pswitch_14
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method private static fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .registers 6
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .line 400
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 401
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 402
    .local v1, "exponent":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 403
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 405
    .local v3, "exponentLength":I
    const/16 v4, 0x100

    if-ge v3, v4, :cond_19

    .line 406
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_20

    .line 408
    :cond_19
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 409
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 411
    :goto_20
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 412
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 414
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method static generateDS(Lorg/xbill/DNS/DNSKEYRecord;I)[B
    .registers 6
    .param p0, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p1, "digestid"    # I

    .line 765
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 767
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 768
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 769
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 773
    packed-switch p1, :pswitch_data_68

    .line 781
    :try_start_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_49

    .line 778
    :pswitch_1c
    const-string v1, "sha-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 779
    .local v1, "digest":Ljava/security/MessageDigest;
    goto :goto_2a

    .line 775
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :pswitch_23
    const-string v1, "sha-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_29} :catch_5e

    .line 776
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    nop

    .line 787
    :goto_2a
    nop

    .line 788
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 789
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->rdataToWireCanonical()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 790
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 792
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 781
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :goto_49
    :try_start_49
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown DS digest type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_49 .. :try_end_5e} :catch_5e

    .line 785
    :catch_5e
    move-exception v1

    .line 786
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no message digest support"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method

.method private static matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z
    .registers 4
    .param p0, "sig"    # Lorg/xbill/DNS/SIGBase;
    .param p1, "key"    # Lorg/xbill/DNS/KEYBase;

    .line 590
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_24

    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_24

    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;

    .line 326
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 327
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .registers 5
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 321
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/RRSIGRecord;
    .registers 22
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 694
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v15

    .line 695
    .local v15, "alg":I
    invoke-static {v0, v15}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 697
    new-instance v16, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v1, v16

    move v7, v15

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 704
    .local v1, "rrsig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v4

    invoke-static {v0, v2, v15, v4}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/RRSIGRecord;->setSignature([B)V

    .line 706
    return-object v1
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[B)[B
    .registers 9
    .param p0, "privkey"    # Ljava/security/PrivateKey;
    .param p1, "pubkey"    # Ljava/security/PublicKey;
    .param p2, "alg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 631
    :try_start_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 632
    .local v0, "s":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 633
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 634
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1
    :try_end_12
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_12} :catch_39

    move-object v0, v1

    .line 638
    .local v0, "signature":[B
    nop

    .line 640
    instance-of v1, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_38

    .line 642
    :try_start_18
    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    .line 643
    .local v1, "dsa":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 644
    .local v2, "P":Ljava/math/BigInteger;
    invoke-static {v2}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v3

    add-int/lit8 v3, v3, -0x40

    div-int/lit8 v3, v3, 0x8

    .line 645
    .local v3, "t":I
    invoke-static {v0, v3}, Lorg/xbill/DNS/DNSSEC;->DSASignaturetoDNS([BI)[B

    move-result-object v4
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2f} :catch_31

    move-object v0, v4

    .line 649
    .end local v1    # "dsa":Ljava/security/interfaces/DSAPublicKey;
    .end local v2    # "P":Ljava/math/BigInteger;
    .end local v3    # "t":I
    goto :goto_38

    .line 647
    :catch_31
    move-exception v1

    .line 648
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 652
    .end local v1    # "e":Ljava/io/IOException;
    :cond_38
    :goto_38
    return-object v0

    .line 636
    .end local v0    # "signature":[B
    :catch_39
    move-exception v0

    .line 637
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;
    .registers 23
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p3, "privkey"    # Ljava/security/PrivateKey;
    .param p4, "inception"    # Ljava/util/Date;
    .param p5, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 714
    move-object/from16 v0, p3

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v15

    .line 715
    .local v15, "alg":I
    invoke-static {v0, v15}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 717
    new-instance v16, Lorg/xbill/DNS/SIGRecord;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, v16

    move v7, v15

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 721
    .local v1, "sig":Lorg/xbill/DNS/SIGRecord;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 722
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 723
    if-eqz p1, :cond_38

    .line 724
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 725
    :cond_38
    move-object/from16 v4, p0

    invoke-virtual {v4, v2}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    invoke-static {v0, v5, v15, v6}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/SIGRecord;->setSignature([B)V

    .line 729
    return-object v1
.end method

.method private static toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .registers 9
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .line 356
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 358
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 359
    .local v1, "t":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_3f

    .line 362
    const/16 v2, 0x14

    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 363
    .local v2, "q":Ljava/math/BigInteger;
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x40

    invoke-static {v0, v3}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 364
    .local v3, "p":Ljava/math/BigInteger;
    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x40

    invoke-static {v0, v4}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 365
    .local v4, "g":Ljava/math/BigInteger;
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x40

    invoke-static {v0, v5}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 367
    .local v5, "y":Ljava/math/BigInteger;
    const-string v6, "DSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 368
    .local v6, "factory":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v5, v3, v2, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    return-object v7

    .line 360
    .end local v2    # "q":Ljava/math/BigInteger;
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "y":Ljava/math/BigInteger;
    .end local v6    # "factory":Ljava/security/KeyFactory;
    :cond_3f
    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v2
.end method

.method static toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .registers 5
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    .line 376
    .local v0, "alg":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_20

    packed-switch v0, :pswitch_data_38

    .line 387
    :try_start_11
    new-instance v1, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v1

    .line 393
    :catch_17
    move-exception v1

    goto :goto_25

    .line 390
    :catch_19
    move-exception v1

    goto :goto_30

    .line 385
    :cond_1b
    :pswitch_1b
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 382
    :cond_20
    :pswitch_20
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_24} :catch_19
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_24} :catch_17

    return-object v1

    .line 393
    :goto_25
    nop

    .line 394
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :goto_30
    nop

    .line 391
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v2

    nop

    :pswitch_data_38
    .packed-switch 0x5
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method private static toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .registers 7
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 341
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 342
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 343
    .local v1, "exponentLength":I
    if-nez v1, :cond_13

    .line 344
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 345
    :cond_13
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 346
    .local v2, "exponent":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;

    move-result-object v3

    .line 348
    .local v3, "modulus":Ljava/math/BigInteger;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 349
    .local v4, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v3, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static verify(Ljava/security/PublicKey;I[B[B)V
    .registers 7
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 566
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_11

    .line 568
    :try_start_4
    invoke-static {p3}, Lorg/xbill/DNS/DNSSEC;->DSASignaturefromDNS([B)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_a

    move-object p3, v0

    .line 572
    goto :goto_11

    .line 570
    :catch_a
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 576
    .end local v0    # "e":Ljava/io/IOException;
    :cond_11
    :goto_11
    :try_start_11
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 577
    .local v0, "s":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 578
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 579
    invoke-virtual {v0, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 584
    .end local v0    # "s":Ljava/security/Signature;
    nop

    .line 585
    return-void

    .line 580
    .restart local v0    # "s":Ljava/security/Signature;
    :cond_27
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v1
    :try_end_2d
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_2d} :catch_2d

    .line 582
    .end local v0    # "s":Ljava/security/Signature;
    :catch_2d
    move-exception v0

    .line 583
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;)V
    .registers 8
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 611
    invoke-static {p1, p2}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 614
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 615
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_3d

    .line 617
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_33

    .line 621
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v2

    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 623
    return-void

    .line 618
    :cond_33
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 616
    :cond_3d
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 612
    .end local v0    # "now":Ljava/util/Date;
    :cond_47
    new-instance v0, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v0, p2, p1}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v0
.end method

.method static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V
    .registers 12
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "bytes"    # [B
    .param p2, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p4, "key"    # Lorg/xbill/DNS/KEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 736
    invoke-static {p2, p4}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 739
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 740
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_6b

    .line 742
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_61

    .line 746
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 747
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v1, p2}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 748
    if-eqz p3, :cond_30

    .line 749
    invoke-virtual {p3}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 751
    :cond_30
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Header;

    .line 752
    .local v2, "header":Lorg/xbill/DNS/Header;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 753
    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 755
    iget v3, p0, Lorg/xbill/DNS/Message;->sig0start:I

    const/16 v4, 0xc

    sub-int/2addr v3, v4

    invoke-virtual {v1, p1, v4, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 758
    invoke-virtual {p4}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getAlgorithm()I

    move-result v4

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 760
    return-void

    .line 743
    .end local v1    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v2    # "header":Lorg/xbill/DNS/Header;
    :cond_61
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 741
    :cond_6b
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 737
    .end local v0    # "now":Ljava/util/Date;
    :cond_75
    new-instance v0, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v0, p4, p2}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v0
.end method

.method private static writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V
    .registers 5
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 332
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 333
    .local v0, "b":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_10

    .line 334
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    goto :goto_13

    .line 336
    :cond_10
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 337
    :goto_13
    return-void
.end method
