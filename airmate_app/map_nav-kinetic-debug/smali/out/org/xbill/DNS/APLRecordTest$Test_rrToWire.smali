.class public Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;
.super Ljunit/framework/TestCase;
.source "APLRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rrToWire"
.end annotation


# instance fields
.field m_addr4:Ljava/net/InetAddress;

.field m_addr4_bytes:[B

.field m_addr4_string:Ljava/lang/String;

.field m_addr6:Ljava/net/InetAddress;

.field m_addr6_bytes:[B

.field m_addr6_string:Ljava/lang/String;

.field m_an:Lorg/xbill/DNS/Name;

.field m_elements:Ljava/util/ArrayList;

.field m_rn:Lorg/xbill/DNS/Name;

.field m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 556
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 571
    const-string v0, "My.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    .line 572
    const-string v0, "My.Relative.Name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_rn:Lorg/xbill/DNS/Name;

    .line 573
    const-wide/32 v0, 0x13579

    iput-wide v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_ttl:J

    .line 574
    const-string v0, "193.160.232.5"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4_string:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4:Ljava/net/InetAddress;

    .line 576
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4_bytes:[B

    .line 578
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_string:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6:Ljava/net/InetAddress;

    .line 580
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_elements:Ljava/util/ArrayList;

    .line 583
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4:Ljava/net/InetAddress;

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v2, v1, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 584
    .local v0, "e":Lorg/xbill/DNS/APLRecord$Element;
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v1, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6:Ljava/net/InetAddress;

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-direct {v1, v3, v2, v4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    move-object v0, v1

    .line 587
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method public test_address_with_embedded_zero()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 639
    const-string v0, "232.0.11.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 640
    .local v0, "a":Ljava/net/InetAddress;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v1, "elements":Ljava/util/ArrayList;
    new-instance v2, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v8, 0x1

    const/16 v3, 0x1f

    invoke-direct {v2, v8, v0, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v9, Lorg/xbill/DNS/APLRecord;

    iget-object v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_ttl:J

    const/4 v4, 0x1

    move-object v2, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 645
    .local v2, "ar":Lorg/xbill/DNS/APLRecord;
    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_3e

    .line 647
    .local v3, "exp":[B
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 649
    .local v4, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v8}, Lorg/xbill/DNS/APLRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 650
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 651
    return-void

    :array_3e
    .array-data 1
        0x0t
        0x1t
        0x1ft
        -0x7ct
        -0x18t
        0x0t
        0xbt
        0x1t
    .end array-data
.end method

.method public test_basic()V
    .registers 18

    .line 601
    move-object/from16 v0, p0

    new-instance v7, Lorg/xbill/DNS/APLRecord;

    iget-object v2, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v4, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_ttl:J

    iget-object v6, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_elements:Ljava/util/ArrayList;

    const/4 v3, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 603
    .local v1, "ar":Lorg/xbill/DNS/APLRecord;
    const/16 v2, 0x1c

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v4, v2, v4

    const/16 v5, 0xc

    const/4 v6, 0x2

    aput-byte v5, v2, v6

    const/4 v7, 0x3

    const/16 v8, -0x7c

    aput-byte v8, v2, v7

    iget-object v8, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4_bytes:[B

    aget-byte v8, v8, v3

    const/4 v9, 0x4

    aput-byte v8, v2, v9

    iget-object v8, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4_bytes:[B

    aget-byte v8, v8, v4

    const/4 v10, 0x5

    aput-byte v8, v2, v10

    iget-object v8, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4_bytes:[B

    aget-byte v8, v8, v6

    const/4 v11, 0x6

    aput-byte v8, v2, v11

    iget-object v8, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr4_bytes:[B

    aget-byte v8, v8, v7

    const/4 v12, 0x7

    aput-byte v8, v2, v12

    const/16 v8, 0x8

    aput-byte v3, v2, v8

    const/16 v13, 0x9

    aput-byte v6, v2, v13

    const/16 v14, 0xa

    const/16 v15, 0x40

    aput-byte v15, v2, v14

    const/16 v15, 0x10

    const/16 v16, 0xb

    aput-byte v15, v2, v16

    iget-object v14, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v14, v3

    aput-byte v3, v2, v5

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v4

    const/16 v14, 0xd

    aput-byte v3, v2, v14

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v6

    const/16 v6, 0xe

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v7

    const/16 v6, 0xf

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v9

    aput-byte v3, v2, v15

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v10

    const/16 v6, 0x11

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v11

    const/16 v6, 0x12

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v12

    const/16 v6, 0x13

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v8

    const/16 v6, 0x14

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v13

    const/16 v6, 0x15

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    const/16 v6, 0xa

    aget-byte v3, v3, v6

    const/16 v6, 0x16

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v16

    const/16 v6, 0x17

    aput-byte v3, v2, v6

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v5

    const/16 v5, 0x18

    aput-byte v3, v2, v5

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    aget-byte v3, v3, v14

    const/16 v5, 0x19

    aput-byte v3, v2, v5

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    const/16 v5, 0xe

    aget-byte v3, v3, v5

    const/16 v5, 0x1a

    aput-byte v3, v2, v5

    iget-object v3, v0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_addr6_bytes:[B

    const/16 v5, 0xf

    aget-byte v3, v3, v5

    const/16 v5, 0x1b

    aput-byte v3, v2, v5

    .line 616
    .local v2, "exp":[B
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 618
    .local v3, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lorg/xbill/DNS/APLRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 619
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 620
    return-void
.end method

.method public test_empty()V
    .registers 8

    .line 592
    new-instance v6, Lorg/xbill/DNS/APLRecord;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_ttl:J

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 593
    .local v0, "ar":Lorg/xbill/DNS/APLRecord;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 595
    .local v1, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/APLRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 596
    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 597
    return-void
.end method

.method public test_non_IP()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    .line 627
    .local v0, "exp":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 628
    .local v1, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 629
    .local v2, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 631
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 633
    .local v3, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/xbill/DNS/APLRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 634
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 635
    return-void

    :array_2a
    .array-data 1
        0x0t
        0x3t
        -0x7et
        -0x7bt
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method

.method public test_short_address()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 655
    const-string v0, "232.0.11.0"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 656
    .local v0, "a":Ljava/net/InetAddress;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v1, "elements":Ljava/util/ArrayList;
    new-instance v2, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v8, 0x1

    const/16 v3, 0x1f

    invoke-direct {v2, v8, v0, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    new-instance v9, Lorg/xbill/DNS/APLRecord;

    iget-object v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_ttl:J

    const/4 v4, 0x1

    move-object v2, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 661
    .local v2, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_3e

    .line 663
    .local v3, "exp":[B
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 665
    .local v4, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v8}, Lorg/xbill/DNS/APLRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 666
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 667
    return-void

    nop

    :array_3e
    .array-data 1
        0x0t
        0x1t
        0x1ft
        -0x7dt
        -0x18t
        0x0t
        0xbt
    .end array-data
.end method

.method public test_wildcard_address()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 671
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 672
    .local v0, "a":Ljava/net/InetAddress;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v1, "elements":Ljava/util/ArrayList;
    new-instance v2, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v8, 0x1

    const/16 v3, 0x1f

    invoke-direct {v2, v8, v0, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v9, Lorg/xbill/DNS/APLRecord;

    iget-object v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->m_ttl:J

    const/4 v4, 0x1

    move-object v2, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 677
    .local v2, "ar":Lorg/xbill/DNS/APLRecord;
    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_3e

    .line 679
    .local v3, "exp":[B
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 681
    .local v4, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v8}, Lorg/xbill/DNS/APLRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 682
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/APLRecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 683
    return-void

    nop

    :array_3e
    .array-data 1
        0x0t
        0x1t
        0x1ft
        -0x80t
    .end array-data
.end method
