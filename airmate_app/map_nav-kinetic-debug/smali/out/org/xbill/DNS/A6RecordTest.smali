.class public Lorg/xbill/DNS/A6RecordTest;
.super Ljunit/framework/TestCase;
.source "A6RecordTest.java"


# instance fields
.field m_addr:Ljava/net/InetAddress;

.field m_addr_bytes:[B

.field m_addr_string:Ljava/lang/String;

.field m_addr_string_canonical:Ljava/lang/String;

.field m_an:Lorg/xbill/DNS/Name;

.field m_an2:Lorg/xbill/DNS/Name;

.field m_prefix_bits:I

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

    .line 55
    const-string v0, "My.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    .line 56
    const-string v0, "My.Second.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    .line 57
    const-string v0, "My.Relative.Name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_rn:Lorg/xbill/DNS/Name;

    .line 58
    const-string v0, "2001:0db8:85a3:08d3:1319:8a2e:0370:7334"

    iput-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_string:Ljava/lang/String;

    .line 59
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    iput-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_string_canonical:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    .line 61
    iget-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_bytes:[B

    .line 62
    const-wide/32 v0, 0x13579

    iput-wide v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    .line 63
    const/16 v0, 0x9

    iput v0, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    .line 64
    return-void
.end method

.method public test_ctor_0arg()V
    .registers 6

    .line 68
    new-instance v0, Lorg/xbill/DNS/A6Record;

    invoke-direct {v0}, Lorg/xbill/DNS/A6Record;-><init>()V

    .line 69
    .local v0, "ar":Lorg/xbill/DNS/A6Record;
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/A6RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 71
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 72
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getTTL()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(JJ)V

    .line 73
    return-void
.end method

.method public test_ctor_6arg()V
    .registers 13

    .line 84
    new-instance v8, Lorg/xbill/DNS/A6Record;

    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    iget-object v6, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    .line 85
    .local v0, "ar":Lorg/xbill/DNS/A6Record;
    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getType()I

    move-result v1

    const/16 v2, 0x26

    invoke-static {v2, v1}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 87
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getDClass()I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 88
    iget-wide v4, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getTTL()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(JJ)V

    .line 89
    iget v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getPrefixBits()I

    move-result v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 90
    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getSuffix()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getPrefix()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/A6RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 94
    new-instance v1, Lorg/xbill/DNS/A6Record;

    iget-object v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v7, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    iget v9, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    iget-object v10, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    iget-object v11, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    const/4 v6, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    move-object v0, v1

    .line 95
    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getType()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 97
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getDClass()I

    move-result v1

    invoke-static {v3, v1}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 98
    iget-wide v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(JJ)V

    .line 99
    iget v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getPrefixBits()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 100
    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getSuffix()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getPrefix()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    :try_start_99
    new-instance v3, Lorg/xbill/DNS/A6Record;

    iget-object v4, p0, Lorg/xbill/DNS/A6RecordTest;->m_rn:Lorg/xbill/DNS/Name;

    const/4 v5, 0x1

    iget-wide v6, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    iget v8, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    iget-object v9, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    .line 106
    const-string v1, "RelativeNameException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/A6RecordTest;->fail(Ljava/lang/String;)V
    :try_end_ad
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_99 .. :try_end_ad} :catch_ae

    .line 108
    goto :goto_af

    :catch_ae
    move-exception v1

    .line 112
    :goto_af
    :try_start_af
    new-instance v2, Lorg/xbill/DNS/A6Record;

    iget-object v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    iget v7, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    iget-object v8, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    iget-object v9, p0, Lorg/xbill/DNS/A6RecordTest;->m_rn:Lorg/xbill/DNS/Name;

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    .line 113
    const-string v1, "RelativeNameException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/A6RecordTest;->fail(Ljava/lang/String;)V
    :try_end_c4
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_af .. :try_end_c4} :catch_c5

    .line 115
    goto :goto_c6

    :catch_c5
    move-exception v1

    .line 119
    :goto_c6
    :try_start_c6
    new-instance v2, Lorg/xbill/DNS/A6Record;

    iget-object v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_rn:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    const/16 v7, 0x100

    iget-object v8, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    .line 120
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/A6RecordTest;->fail(Ljava/lang/String;)V
    :try_end_da
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_c6 .. :try_end_da} :catch_db

    .line 122
    goto :goto_dc

    :catch_db
    move-exception v1

    .line 126
    :goto_dc
    :try_start_dc
    new-instance v2, Lorg/xbill/DNS/A6Record;

    iget-object v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    iget v7, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    const-string v1, "192.168.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    .line 128
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/A6RecordTest;->fail(Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_f4} :catch_fe
    .catch Ljava/net/UnknownHostException; {:try_start_dc .. :try_end_f4} :catch_f5

    goto :goto_ff

    .line 131
    :catch_f5
    move-exception v1

    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/A6RecordTest;->fail(Ljava/lang/String;)V

    goto :goto_100

    .line 130
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_fe
    move-exception v1

    .line 131
    :goto_ff
    nop

    .line 132
    :goto_100
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 77
    new-instance v0, Lorg/xbill/DNS/A6Record;

    invoke-direct {v0}, Lorg/xbill/DNS/A6Record;-><init>()V

    .line 78
    .local v0, "ar":Lorg/xbill/DNS/A6Record;
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 79
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/A6Record;

    invoke-static {v2}, Lorg/xbill/DNS/A6RecordTest;->assertTrue(Z)V

    .line 80
    return-void
.end method

.method public test_rdataFromString()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;,
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/A6Record;

    invoke-direct {v1}, Lorg/xbill/DNS/A6Record;-><init>()V

    .line 175
    .local v1, "ar":Lorg/xbill/DNS/A6Record;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/A6Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 176
    invoke-virtual {v1}, Lorg/xbill/DNS/A6Record;->getPrefixBits()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 177
    iget-object v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Lorg/xbill/DNS/A6Record;->getSuffix()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v1}, Lorg/xbill/DNS/A6Record;->getPrefix()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v3}, Lorg/xbill/DNS/A6RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 183
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 184
    new-instance v3, Lorg/xbill/DNS/A6Record;

    invoke-direct {v3}, Lorg/xbill/DNS/A6Record;-><init>()V

    move-object v1, v3

    .line 185
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/A6Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 186
    invoke-virtual {v1}, Lorg/xbill/DNS/A6Record;->getPrefixBits()I

    move-result v3

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 187
    iget-object v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Lorg/xbill/DNS/A6Record;->getSuffix()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget-object v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/A6Record;->getPrefix()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "129"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 192
    new-instance v3, Lorg/xbill/DNS/A6Record;

    invoke-direct {v3}, Lorg/xbill/DNS/A6Record;-><init>()V

    move-object v1, v3

    .line 194
    :try_start_8e
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/A6Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 195
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/A6RecordTest;->fail(Ljava/lang/String;)V
    :try_end_96
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_8e .. :try_end_96} :catch_97

    .line 197
    goto :goto_98

    :catch_97
    move-exception v3

    .line 200
    :goto_98
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_string:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 201
    new-instance v3, Lorg/xbill/DNS/A6Record;

    invoke-direct {v3}, Lorg/xbill/DNS/A6Record;-><init>()V

    move-object v1, v3

    .line 203
    :try_start_bc
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/A6Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 204
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/A6RecordTest;->fail(Ljava/lang/String;)V
    :try_end_c4
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_bc .. :try_end_c4} :catch_c5

    .line 206
    goto :goto_c6

    :catch_c5
    move-exception v2

    .line 207
    :goto_c6
    return-void
.end method

.method public test_rrFromWire()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;,
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 140
    .local v0, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 141
    iget-object v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_bytes:[B

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 143
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 144
    .local v2, "din":Lorg/xbill/DNS/DNSInput;
    new-instance v3, Lorg/xbill/DNS/A6Record;

    invoke-direct {v3}, Lorg/xbill/DNS/A6Record;-><init>()V

    .line 145
    .local v3, "ar":Lorg/xbill/DNS/A6Record;
    invoke-virtual {v3, v2}, Lorg/xbill/DNS/A6Record;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 146
    invoke-virtual {v3}, Lorg/xbill/DNS/A6Record;->getPrefixBits()I

    move-result v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 147
    iget-object v4, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Lorg/xbill/DNS/A6Record;->getSuffix()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v3}, Lorg/xbill/DNS/A6Record;->getPrefix()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v4}, Lorg/xbill/DNS/A6RecordTest;->assertNull(Ljava/lang/Object;)V

    .line 151
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v0, v4

    .line 152
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 153
    iget-object v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_bytes:[B

    const/4 v6, 0x1

    const/16 v7, 0xf

    invoke-virtual {v0, v5, v6, v7}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 154
    iget-object v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v5}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 156
    new-instance v5, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    move-object v2, v5

    .line 157
    new-instance v5, Lorg/xbill/DNS/A6Record;

    invoke-direct {v5}, Lorg/xbill/DNS/A6Record;-><init>()V

    move-object v3, v5

    .line 158
    invoke-virtual {v3, v2}, Lorg/xbill/DNS/A6Record;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 159
    invoke-virtual {v3}, Lorg/xbill/DNS/A6Record;->getPrefixBits()I

    move-result v5

    invoke-static {v4, v5}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(II)V

    .line 161
    iget-object v4, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_bytes:[B

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 162
    .local v4, "addr_bytes":[B
    aput-byte v1, v4, v1

    .line 163
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 164
    .local v1, "exp":Ljava/net/InetAddress;
    invoke-virtual {v3}, Lorg/xbill/DNS/A6Record;->getSuffix()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    iget-object v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v3}, Lorg/xbill/DNS/A6Record;->getPrefix()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public test_rrToString()V
    .registers 10

    .line 211
    new-instance v8, Lorg/xbill/DNS/A6Record;

    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    iget-object v6, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    iget-object v7, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    .line 212
    .local v0, "ar":Lorg/xbill/DNS/A6Record;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_string_canonical:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "exp":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/xbill/DNS/A6Record;->rrToString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "out":Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/xbill/DNS/A6RecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public test_rrToWire()V
    .registers 10

    .line 220
    new-instance v8, Lorg/xbill/DNS/A6Record;

    iget-object v1, p0, Lorg/xbill/DNS/A6RecordTest;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    iget-object v6, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr:Ljava/net/InetAddress;

    iget-object v7, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/A6Record;-><init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V

    .line 221
    .local v0, "ar":Lorg/xbill/DNS/A6Record;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 222
    .local v1, "dout":Lorg/xbill/DNS/DNSOutput;
    iget v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 223
    iget-object v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_bytes:[B

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 224
    iget-object v2, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 226
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 228
    .local v2, "exp":[B
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v1, v5

    .line 229
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Lorg/xbill/DNS/A6Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 231
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lorg/xbill/DNS/A6RecordTest;->assertTrue(Z)V

    .line 234
    new-instance v6, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v1, v6

    .line 235
    iget v6, p0, Lorg/xbill/DNS/A6RecordTest;->m_prefix_bits:I

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 236
    iget-object v6, p0, Lorg/xbill/DNS/A6RecordTest;->m_addr_bytes:[B

    invoke-virtual {v1, v6, v4, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 237
    iget-object v3, p0, Lorg/xbill/DNS/A6RecordTest;->m_an2:Lorg/xbill/DNS/Name;

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 239
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 241
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v1, v3

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v5, v3}, Lorg/xbill/DNS/A6Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 243
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/A6RecordTest;->assertTrue(Z)V

    .line 244
    return-void
.end method
