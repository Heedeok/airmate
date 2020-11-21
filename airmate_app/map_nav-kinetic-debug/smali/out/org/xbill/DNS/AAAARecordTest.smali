.class public Lorg/xbill/DNS/AAAARecordTest;
.super Ljunit/framework/TestCase;
.source "AAAARecordTest.java"


# instance fields
.field m_addr:Ljava/net/InetAddress;

.field m_addr_bytes:[B

.field m_addr_string:Ljava/lang/String;

.field m_an:Lorg/xbill/DNS/Name;

.field m_rn:Lorg/xbill/DNS/Name;

.field m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 54
    const-string v0, "My.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_an:Lorg/xbill/DNS/Name;

    .line 55
    const-string v0, "My.Relative.Name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_rn:Lorg/xbill/DNS/Name;

    .line 56
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_string:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    .line 58
    iget-object v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_bytes:[B

    .line 59
    const-wide/32 v0, 0x13579

    iput-wide v0, p0, Lorg/xbill/DNS/AAAARecordTest;->m_ttl:J

    .line 60
    return-void
.end method

.method public test_ctor_0arg()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    .line 65
    .local v0, "ar":Lorg/xbill/DNS/AAAARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/AAAARecordTest;->assertNull(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(II)V

    .line 67
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(II)V

    .line 68
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getTTL()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(JJ)V

    .line 69
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/AAAARecordTest;->assertNull(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public test_ctor_4arg()V
    .registers 10

    .line 81
    new-instance v6, Lorg/xbill/DNS/AAAARecord;

    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/AAAARecordTest;->m_ttl:J

    iget-object v5, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/AAAARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    .line 82
    .local v0, "ar":Lorg/xbill/DNS/AAAARecord;
    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_an:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getType()I

    move-result v1

    const/16 v2, 0x1c

    invoke-static {v2, v1}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(II)V

    .line 84
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getDClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(II)V

    .line 85
    iget-wide v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(JJ)V

    .line 86
    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    :try_start_39
    new-instance v3, Lorg/xbill/DNS/AAAARecord;

    iget-object v4, p0, Lorg/xbill/DNS/AAAARecordTest;->m_rn:Lorg/xbill/DNS/Name;

    const/4 v5, 0x1

    iget-wide v6, p0, Lorg/xbill/DNS/AAAARecordTest;->m_ttl:J

    iget-object v8, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-direct/range {v3 .. v8}, Lorg/xbill/DNS/AAAARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    .line 91
    const-string v1, "RelativeNameException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/AAAARecordTest;->fail(Ljava/lang/String;)V
    :try_end_4a
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_39 .. :try_end_4a} :catch_4b

    .line 93
    goto :goto_4c

    :catch_4b
    move-exception v1

    .line 97
    :goto_4c
    :try_start_4c
    new-instance v2, Lorg/xbill/DNS/AAAARecord;

    iget-object v3, p0, Lorg/xbill/DNS/AAAARecordTest;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, p0, Lorg/xbill/DNS/AAAARecordTest;->m_ttl:J

    const-string v1, "192.168.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/AAAARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    .line 99
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/AAAARecordTest;->fail(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_61} :catch_6b
    .catch Ljava/net/UnknownHostException; {:try_start_4c .. :try_end_61} :catch_62

    goto :goto_6c

    .line 102
    :catch_62
    move-exception v1

    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/AAAARecordTest;->fail(Ljava/lang/String;)V

    goto :goto_6d

    .line 101
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_6b
    move-exception v1

    .line 102
    :goto_6c
    nop

    .line 103
    :goto_6d
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 74
    new-instance v0, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    .line 75
    .local v0, "ar":Lorg/xbill/DNS/AAAARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 76
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/AAAARecord;

    invoke-static {v2}, Lorg/xbill/DNS/AAAARecordTest;->assertTrue(Z)V

    .line 77
    return-void
.end method

.method public test_rdataFromString()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_string:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v1}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    .line 120
    .local v1, "ar":Lorg/xbill/DNS/AAAARecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/AAAARecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 122
    iget-object v3, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "193.160.232.1"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 126
    new-instance v3, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    move-object v1, v3

    .line 128
    :try_start_27
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/AAAARecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 129
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/AAAARecordTest;->fail(Ljava/lang/String;)V
    :try_end_2f
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_27 .. :try_end_2f} :catch_30

    .line 131
    goto :goto_31

    :catch_30
    move-exception v2

    .line 132
    :goto_31
    return-void
.end method

.method public test_rrFromWire()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_bytes:[B

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 108
    .local v0, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v1}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    .line 110
    .local v1, "ar":Lorg/xbill/DNS/AAAARecord;
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/AAAARecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 112
    iget-object v2, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public test_rrToString()V
    .registers 8

    .line 136
    new-instance v6, Lorg/xbill/DNS/AAAARecord;

    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/AAAARecordTest;->m_ttl:J

    iget-object v5, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/AAAARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    .line 137
    .local v0, "ar":Lorg/xbill/DNS/AAAARecord;
    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_string:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/xbill/DNS/AAAARecord;->rrToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/AAAARecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public test_rrToWire()V
    .registers 8

    .line 142
    new-instance v6, Lorg/xbill/DNS/AAAARecord;

    iget-object v1, p0, Lorg/xbill/DNS/AAAARecordTest;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/AAAARecordTest;->m_ttl:J

    iget-object v5, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr:Ljava/net/InetAddress;

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/AAAARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    .line 145
    .local v0, "ar":Lorg/xbill/DNS/AAAARecord;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 146
    .local v1, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/AAAARecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 147
    iget-object v3, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_bytes:[B

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/AAAARecordTest;->assertTrue(Z)V

    .line 150
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v1, v3

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/AAAARecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 152
    iget-object v2, p0, Lorg/xbill/DNS/AAAARecordTest;->m_addr_bytes:[B

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/AAAARecordTest;->assertTrue(Z)V

    .line 153
    return-void
.end method
