.class public Lorg/xbill/DNS/DNSKEYRecordTest;
.super Ljunit/framework/TestCase;
.source "DNSKEYRecordTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_ctor_0arg()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    .line 48
    .local v0, "ar":Lorg/xbill/DNS/DNSKEYRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 50
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 51
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getTTL()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(JJ)V

    .line 52
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 53
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getFlags()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 54
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 55
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getProtocol()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 56
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public test_ctor_7arg()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 68
    const-string v0, "My.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 69
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.Relative.Name"

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v11

    .line 70
    .local v11, "r":Lorg/xbill/DNS/Name;
    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_84

    move-object v12, v1

    .line 72
    .local v12, "key":[B
    new-instance v10, Lorg/xbill/DNS/DNSKEYRecord;

    const/4 v3, 0x1

    const-wide/16 v4, 0x24ac

    const v6, 0x9832

    const/16 v7, 0x12

    const/16 v8, 0x67

    move-object v1, v10

    move-object v2, v0

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lorg/xbill/DNS/DNSKEYRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 73
    .local v1, "kr":Lorg/xbill/DNS/DNSKEYRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getType()I

    move-result v2

    const/16 v3, 0x30

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 75
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 76
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getTTL()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(JJ)V

    .line 77
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getFlags()I

    move-result v2

    const v3, 0x9832

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 78
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getProtocol()I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 79
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v2

    const/16 v3, 0x67

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 80
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSKEYRecord;->getKey()[B

    move-result-object v2

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertTrue(Z)V

    .line 84
    :try_start_6b
    new-instance v2, Lorg/xbill/DNS/DNSKEYRecord;

    const/4 v4, 0x1

    const-wide/16 v5, 0x24ac

    const v7, 0x9832

    const/16 v8, 0x12

    const/16 v9, 0x67

    move-object v3, v11

    move-object v10, v12

    invoke-direct/range {v2 .. v10}, Lorg/xbill/DNS/DNSKEYRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 85
    const-string v2, "RelativeNameException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->fail(Ljava/lang/String;)V
    :try_end_81
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_6b .. :try_end_81} :catch_82

    .line 87
    goto :goto_83

    :catch_82
    move-exception v2

    .line 88
    :goto_83
    return-void

    :array_84
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x5t
        0x7t
        0x9t
    .end array-data
.end method

.method public test_getObject()V
    .registers 4

    .line 61
    new-instance v0, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    .line 62
    .local v0, "ar":Lorg/xbill/DNS/DNSKEYRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 63
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-static {v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertTrue(Z)V

    .line 64
    return-void
.end method

.method public test_rdataFromString()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    .line 94
    .local v0, "kr":Lorg/xbill/DNS/DNSKEYRecord;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "43981 129 RSASHA1 AQIDBAUGBwgJ"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "st":Lorg/xbill/DNS/Tokenizer;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSKEYRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 96
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getFlags()I

    move-result v3

    const v4, 0xabcd

    invoke-static {v4, v3}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 97
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getProtocol()I

    move-result v3

    const/16 v4, 0x81

    invoke-static {v4, v3}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 98
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertEquals(II)V

    .line 99
    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_56

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSKEYRecord;->getKey()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DNSKEYRecordTest;->assertTrue(Z)V

    .line 102
    new-instance v3, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    move-object v0, v3

    .line 103
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "4626 170 ZONE AQIDBAUGBwgJ"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 105
    :try_start_4b
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSKEYRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 106
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/DNSKEYRecordTest;->fail(Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_4b .. :try_end_53} :catch_54

    .line 108
    goto :goto_55

    :catch_54
    move-exception v2

    .line 109
    :goto_55
    return-void

    :array_56
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method
