.class public Lorg/xbill/DNS/NameTest$Test_DNSInput_init;
.super Ljunit/framework/TestCase;
.source "NameTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NameTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_DNSInput_init"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 475
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_bad_compression()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 615
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    .line 617
    .local v0, "raw":[B
    :try_start_6
    new-instance v1, Lorg/xbill/DNS/Name;

    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 618
    const-string v1, "WireParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_6 .. :try_end_15} :catch_16

    .line 620
    goto :goto_17

    :catch_16
    move-exception v1

    .line 621
    :goto_17
    return-void

    :array_18
    .array-data 1
        -0x40t
        0x2t
        0x0t
    .end array-data
.end method

.method public test_basic()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 480
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 482
    .local v0, "raw":[B
    const-string v1, "Www.DnsJava.org."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 484
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/Name;-><init>([B)V

    .line 485
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    return-void

    :array_16
    .array-data 1
        0x3t
        0x57t
        0x77t
        0x77t
        0x7t
        0x44t
        0x6et
        0x73t
        0x4at
        0x61t
        0x76t
        0x61t
        0x3t
        0x6ft
        0x72t
        0x67t
        0x0t
    .end array-data
.end method

.method public test_basic_compression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 565
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    .line 566
    .local v0, "raw":[B
    const-string v1, "abc."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 568
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 569
    .local v2, "in":Lorg/xbill/DNS/DNSInput;
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 571
    const-string v3, "verbosecompression"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 572
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 573
    .local v3, "n":Lorg/xbill/DNS/Name;
    const-string v4, "verbosecompression"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->unset(Ljava/lang/String;)V

    .line 574
    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    return-void

    nop

    :array_2a
    .array-data 1
        0xat
        0x3t
        0x61t
        0x62t
        0x63t
        0x0t
        -0x40t
        0x1t
    .end array-data
.end method

.method public test_basic_compression_state_restore()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 625
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    .line 626
    .local v0, "raw":[B
    const-string v1, "abc."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 627
    .local v1, "e":Lorg/xbill/DNS/Name;
    const-string v2, "def."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 629
    .local v2, "e2":Lorg/xbill/DNS/Name;
    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 630
    .local v3, "in":Lorg/xbill/DNS/DNSInput;
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 632
    new-instance v4, Lorg/xbill/DNS/Name;

    invoke-direct {v4, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 633
    .local v4, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v4}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 635
    new-instance v5, Lorg/xbill/DNS/Name;

    invoke-direct {v5, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    move-object v4, v5

    .line 636
    invoke-static {v2, v4}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    return-void

    :array_2e
    .array-data 1
        0xat
        0x3t
        0x61t
        0x62t
        0x63t
        0x0t
        -0x40t
        0x1t
        0x3t
        0x64t
        0x65t
        0x66t
        0x0t
    .end array-data
.end method

.method public test_incomplete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>([B)V

    .line 492
    const-string v0, "WireParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->fail(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_10} :catch_11

    .line 494
    goto :goto_12

    :catch_11
    move-exception v0

    .line 495
    :goto_12
    return-void

    nop

    :array_14
    .array-data 1
        0x3t
        0x57t
        0x77t
        0x77t
    .end array-data
.end method

.method public test_invalid_length()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_14

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>([B)V

    .line 508
    const-string v0, "WireParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->fail(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_10} :catch_11

    .line 510
    goto :goto_12

    :catch_11
    move-exception v0

    .line 511
    :goto_12
    return-void

    nop

    :array_14
    .array-data 1
        0x4t
        0x57t
        0x77t
        0x77t
    .end array-data
.end method

.method public test_long_jump_compression()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 604
    const/16 v0, 0x107

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    .line 605
    .local v0, "raw":[B
    const-string v1, "abc."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 607
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 608
    .local v2, "in":Lorg/xbill/DNS/DNSInput;
    const/16 v3, 0x105

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 609
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 610
    .local v3, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    return-void

    :array_20
    .array-data 1
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x3t
        0x61t
        0x62t
        0x63t
        0x0t
        -0x3ft
        0x0t
    .end array-data
.end method

.method public test_max_label_length()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 515
    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    .line 516
    .local v0, "raw":[B
    const-string v1, "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 518
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Name;

    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 519
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 520
    return-void

    nop

    :array_1c
    .array-data 1
        0x3ft
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x0t
    .end array-data
.end method

.method public test_max_labels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 546
    const/16 v0, 0xff

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    .line 547
    .local v0, "raw":[B
    const-string v1, "a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a.a."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 548
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Name;

    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 549
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    const/16 v4, 0x80

    invoke-static {v4, v3}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(II)V

    .line 550
    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    return-void

    :array_24
    .array-data 1
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x0t
    .end array-data
.end method

.method public test_max_name()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 525
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc.ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "e":Lorg/xbill/DNS/Name;
    const/16 v1, 0xff

    new-array v1, v1, [B

    fill-array-data v1, :array_1c

    .line 528
    .local v1, "raw":[B
    new-instance v2, Lorg/xbill/DNS/Name;

    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 529
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-static {v0, v2}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    return-void

    :array_1c
    .array-data 1
        0x3ft
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x3ft
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x3ft
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x3dt
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x0t
    .end array-data
.end method

.method public test_root()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 499
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 500
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Name;

    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 501
    .local v1, "n":Lorg/xbill/DNS/Name;
    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public test_toolong_name()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 535
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    .line 538
    .local v0, "raw":[B
    :try_start_7
    new-instance v1, Lorg/xbill/DNS/Name;

    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 539
    const-string v1, "WireParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_7 .. :try_end_16} :catch_17

    .line 541
    goto :goto_18

    :catch_17
    move-exception v1

    .line 542
    :goto_18
    return-void

    nop

    :array_1a
    .array-data 1
        0x3ft
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x3ft
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x62t
        0x3ft
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x63t
        0x3et
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x64t
        0x0t
    .end array-data
.end method

.method public test_toomany_labels()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 555
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    .line 557
    .local v0, "raw":[B
    :try_start_7
    new-instance v1, Lorg/xbill/DNS/Name;

    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 558
    const-string v1, "WireParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_7 .. :try_end_16} :catch_17

    .line 560
    goto :goto_18

    :catch_17
    move-exception v1

    .line 561
    :goto_18
    return-void

    nop

    :array_1a
    .array-data 1
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x1t
        0x61t
        0x0t
    .end array-data
.end method

.method public test_two_part_compression()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 591
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    .line 592
    .local v0, "raw":[B
    const-string v1, "B.abc."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 594
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 595
    .local v2, "in":Lorg/xbill/DNS/DNSInput;
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 597
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 598
    .local v3, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 599
    return-void

    nop

    :array_20
    .array-data 1
        0xat
        0x3t
        0x61t
        0x62t
        0x63t
        0x0t
        0x1t
        0x42t
        -0x40t
        0x1t
    .end array-data
.end method

.method public test_two_part_compression_state_restore()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 641
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    .line 642
    .local v0, "raw":[B
    const-string v1, "B.abc."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 643
    .local v1, "e":Lorg/xbill/DNS/Name;
    const-string v2, "def."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 645
    .local v2, "e2":Lorg/xbill/DNS/Name;
    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 646
    .local v3, "in":Lorg/xbill/DNS/DNSInput;
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 648
    new-instance v4, Lorg/xbill/DNS/Name;

    invoke-direct {v4, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 649
    .local v4, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v4}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 651
    new-instance v5, Lorg/xbill/DNS/Name;

    invoke-direct {v5, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    move-object v4, v5

    .line 652
    invoke-static {v2, v4}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    return-void

    :array_2e
    .array-data 1
        0xat
        0x3t
        0x61t
        0x62t
        0x63t
        0x0t
        0x1t
        0x42t
        -0x40t
        0x1t
        0x3t
        0x64t
        0x65t
        0x66t
        0x0t
    .end array-data
.end method

.method public test_two_pointer_compression()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 579
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    .line 580
    .local v0, "raw":[B
    const-string v1, "abc."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 582
    .local v1, "e":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 583
    .local v2, "in":Lorg/xbill/DNS/DNSInput;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 585
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 586
    .local v3, "n":Lorg/xbill/DNS/Name;
    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest$Test_DNSInput_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    return-void

    :array_20
    .array-data 1
        0xat
        0x3t
        0x61t
        0x62t
        0x63t
        0x0t
        -0x40t
        0x1t
        -0x40t
        0x6t
    .end array-data
.end method
