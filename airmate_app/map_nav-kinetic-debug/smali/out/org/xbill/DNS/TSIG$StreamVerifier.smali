.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private key:Lorg/xbill/DNS/TSIG;

.field private lastTSIG:Lorg/xbill/DNS/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Lorg/xbill/DNS/utils/HMAC;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .registers 6
    .param p1, "tsig"    # Lorg/xbill/DNS/TSIG;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 438
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v1}, Lorg/xbill/DNS/TSIG;->access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v2}, Lorg/xbill/DNS/TSIG;->access$100(Lorg/xbill/DNS/TSIG;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 440
    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 441
    return-void
.end method


# virtual methods
.method public verify(Lorg/xbill/DNS/Message;[B)I
    .registers 19
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v3

    .line 459
    .local v3, "tsig":Lorg/xbill/DNS/TSIGRecord;
    iget v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 461
    iget v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    if-ne v4, v5, :cond_3c

    .line 462
    iget-object v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    iget-object v5, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {v4, v1, v2, v5}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v4

    .line 463
    .local v4, "result":I
    if-nez v4, :cond_39

    .line 464
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v5

    .line 465
    .local v5, "signature":[B
    new-instance v6, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 466
    .local v6, "out":Lorg/xbill/DNS/DNSOutput;
    array-length v7, v5

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 467
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 468
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v7, v5}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 470
    .end local v5    # "signature":[B
    .end local v6    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_39
    iput-object v3, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 471
    return v4

    .line 474
    .end local v4    # "result":I
    :cond_3c
    const/4 v4, 0x3

    if-eqz v3, :cond_46

    .line 475
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 476
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v6

    .line 477
    .local v6, "header":[B
    if-eqz v3, :cond_57

    .line 478
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 479
    :cond_57
    iget-object v4, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v4, v6}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 482
    if-nez v3, :cond_62

    .line 483
    array-length v4, v2

    array-length v7, v6

    sub-int/2addr v4, v7

    goto :goto_66

    .line 485
    :cond_62
    iget v4, v1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v7, v6

    sub-int/2addr v4, v7

    .line 486
    .local v4, "len":I
    :goto_66
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    array-length v8, v6

    invoke-virtual {v7, v2, v8, v4}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 488
    const/4 v7, 0x4

    if-eqz v3, :cond_123

    .line 489
    iget v9, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iput v9, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 490
    iput-object v3, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 503
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v9

    iget-object v10, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v10}, Lorg/xbill/DNS/TSIG;->access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10f

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v9

    iget-object v10, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    invoke-static {v10}, Lorg/xbill/DNS/TSIG;->access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_96

    goto :goto_10f

    .line 512
    :cond_96
    new-instance v9, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v9}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 513
    .local v9, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 514
    .local v10, "time":J
    const/16 v12, 0x20

    shr-long v12, v10, v12

    long-to-int v12, v12

    .line 515
    .local v12, "timeHigh":I
    const-wide v13, 0xffffffffL

    and-long/2addr v13, v10

    .line 516
    .local v13, "timeLow":J
    invoke-virtual {v9, v12}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 517
    invoke-virtual {v9, v13, v14}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 518
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v15

    invoke-virtual {v9, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 519
    iget-object v15, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v9}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 521
    iget-object v8, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v8

    if-nez v8, :cond_e7

    .line 522
    const-string v5, "verbose"

    invoke-static {v5}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 523
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "BADSIG failure"

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    :cond_e2
    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 525
    const/16 v5, 0x10

    return v5

    .line 528
    :cond_e7
    iget-object v7, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v7}, Lorg/xbill/DNS/utils/HMAC;->clear()V

    .line 529
    new-instance v7, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 530
    .end local v9    # "out":Lorg/xbill/DNS/DNSOutput;
    .local v7, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 531
    iget-object v8, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v7}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 532
    iget-object v8, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v3}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 534
    iput v5, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 535
    const/4 v5, 0x0

    return v5

    .line 506
    .end local v7    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v10    # "time":J
    .end local v12    # "timeHigh":I
    .end local v13    # "timeLow":J
    :cond_10f
    :goto_10f
    const-string v5, "verbose"

    invoke-static {v5}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 507
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "BADKEY failure"

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 508
    :cond_11e
    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 509
    const/16 v5, 0x11

    return v5

    .line 493
    :cond_123
    iget v8, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    iget v9, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v8, v9

    const/16 v9, 0x64

    if-lt v8, v9, :cond_12e

    const/4 v8, 0x1

    goto :goto_12f

    :cond_12e
    const/4 v8, 0x0

    .line 494
    .local v8, "required":Z
    :goto_12f
    if-eqz v8, :cond_134

    .line 495
    iput v7, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 496
    return v5

    .line 498
    :cond_134
    const/4 v5, 0x2

    iput v5, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 499
    const/4 v5, 0x0

    return v5
.end method
