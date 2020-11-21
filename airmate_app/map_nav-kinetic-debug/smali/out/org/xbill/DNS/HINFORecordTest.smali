.class public Lorg/xbill/DNS/HINFORecordTest;
.super Ljunit/framework/TestCase;
.source "HINFORecordTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_ctor_0arg()V
    .registers 6

    .line 45
    new-instance v0, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v0}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    .line 46
    .local v0, "dr":Lorg/xbill/DNS/HINFORecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/HINFORecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/HINFORecordTest;->assertNull(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v0}, Lorg/xbill/DNS/HINFORecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(II)V

    .line 48
    invoke-virtual {v0}, Lorg/xbill/DNS/HINFORecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(II)V

    .line 49
    invoke-virtual {v0}, Lorg/xbill/DNS/HINFORecord;->getTTL()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(JJ)V

    .line 50
    return-void
.end method

.method public test_ctor_5arg()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 61
    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 62
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-wide/32 v8, 0xabcd

    .line 63
    .local v8, "ttl":J
    const-string v10, "i686 Intel(R) Pentium(R) M processor 1.70GHz GenuineIntel GNU/Linux"

    .line 64
    .local v10, "cpu":Ljava/lang/String;
    const-string v11, "Linux troy 2.6.10-gentoo-r6 #8 Wed Apr 6 21:25:04 MDT 2005"

    .line 66
    .local v11, "os":Ljava/lang/String;
    new-instance v12, Lorg/xbill/DNS/HINFORecord;

    const/4 v3, 0x1

    move-object v1, v12

    move-object v2, v0

    move-wide v4, v8

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/HINFORecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v1, "dr":Lorg/xbill/DNS/HINFORecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/HINFORecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v1}, Lorg/xbill/DNS/HINFORecord;->getDClass()I

    move-result v2

    invoke-static {v3, v2}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(II)V

    .line 69
    invoke-virtual {v1}, Lorg/xbill/DNS/HINFORecord;->getType()I

    move-result v2

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(II)V

    .line 70
    invoke-virtual {v1}, Lorg/xbill/DNS/HINFORecord;->getTTL()J

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(JJ)V

    .line 71
    invoke-virtual {v1}, Lorg/xbill/DNS/HINFORecord;->getCPU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lorg/xbill/DNS/HINFORecord;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public test_ctor_5arg_invalid_CPU()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 77
    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 78
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-wide/32 v8, 0xabcd

    .line 79
    .local v8, "ttl":J
    const-string v10, "i686 Intel(R) Pentium(R) M \\256 processor 1.70GHz GenuineIntel GNU/Linux"

    .line 80
    .local v10, "cpu":Ljava/lang/String;
    const-string v7, "Linux troy 2.6.10-gentoo-r6 #8 Wed Apr 6 21:25:04 MDT 2005"

    .line 83
    .local v7, "os":Ljava/lang/String;
    :try_start_d
    new-instance v1, Lorg/xbill/DNS/HINFORecord;

    const/4 v3, 0x1

    move-object v2, v0

    move-wide v4, v8

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/HINFORecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/HINFORecordTest;->fail(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1b} :catch_1c

    .line 86
    goto :goto_1d

    :catch_1c
    move-exception v1

    .line 87
    :goto_1d
    return-void
.end method

.method public test_ctor_5arg_invalid_OS()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 91
    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 92
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-wide/32 v8, 0xabcd

    .line 93
    .local v8, "ttl":J
    const-string v10, "i686 Intel(R) Pentium(R) M processor 1.70GHz GenuineIntel GNU/Linux"

    .line 94
    .local v10, "cpu":Ljava/lang/String;
    const-string v7, "Linux troy 2.6.10-gentoo-r6 \\1 #8 Wed Apr 6 21:25:04 MDT 2005"

    .line 97
    .local v7, "os":Ljava/lang/String;
    :try_start_d
    new-instance v1, Lorg/xbill/DNS/HINFORecord;

    const/4 v3, 0x1

    move-object v2, v0

    move-wide v4, v8

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/HINFORecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/HINFORecordTest;->fail(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1b} :catch_1c

    .line 100
    goto :goto_1d

    :catch_1c
    move-exception v1

    .line 101
    :goto_1d
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 54
    new-instance v0, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v0}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    .line 55
    .local v0, "dr":Lorg/xbill/DNS/HINFORecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/HINFORecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 56
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/HINFORecord;

    invoke-static {v2}, Lorg/xbill/DNS/HINFORecordTest;->assertTrue(Z)V

    .line 57
    return-void
.end method

.method public test_rdataFromString()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const-string v0, "Intel(R) Pentium(R) M processor 1.70GHz"

    .line 122
    .local v0, "cpu":Ljava/lang/String;
    const-string v1, "Linux troy 2.6.10-gentoo-r6"

    .line 124
    .local v1, "os":Ljava/lang/String;
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\" \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v3, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v3}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    .line 127
    .local v3, "dr":Lorg/xbill/DNS/HINFORecord;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/xbill/DNS/HINFORecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 128
    invoke-virtual {v3}, Lorg/xbill/DNS/HINFORecord;->getCPU()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Lorg/xbill/DNS/HINFORecord;->getOS()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public test_rdataFromString_invalid_CPU()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const-string v0, "Intel(R) Pentium(R) \\388 M processor 1.70GHz"

    .line 135
    .local v0, "cpu":Ljava/lang/String;
    const-string v1, "Linux troy 2.6.10-gentoo-r6"

    .line 137
    .local v1, "os":Ljava/lang/String;
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\" \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v3, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v3}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    .line 141
    .local v3, "dr":Lorg/xbill/DNS/HINFORecord;
    const/4 v4, 0x0

    :try_start_2d
    invoke-virtual {v3, v2, v4}, Lorg/xbill/DNS/HINFORecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 142
    const-string v4, "TextParseException not thrown"

    invoke-static {v4}, Lorg/xbill/DNS/HINFORecordTest;->fail(Ljava/lang/String;)V
    :try_end_35
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2d .. :try_end_35} :catch_36

    .line 144
    goto :goto_37

    :catch_36
    move-exception v4

    .line 145
    :goto_37
    return-void
.end method

.method public test_rdataFromString_invalid_OS()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const-string v0, "Intel(R) Pentium(R) M processor 1.70GHz"

    .line 151
    .local v0, "cpu":Ljava/lang/String;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v2, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v2}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    .line 155
    .local v2, "dr":Lorg/xbill/DNS/HINFORecord;
    const/4 v3, 0x0

    :try_start_23
    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/HINFORecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 156
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/HINFORecordTest;->fail(Ljava/lang/String;)V
    :try_end_2b
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_23 .. :try_end_2b} :catch_2c

    .line 158
    goto :goto_2d

    :catch_2c
    move-exception v3

    .line 159
    :goto_2d
    return-void
.end method

.method public test_rrFromWire()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const-string v0, "Intel(R) Pentium(R) M processor 1.70GHz"

    .line 106
    .local v0, "cpu":Ljava/lang/String;
    const-string v1, "Linux troy 2.6.10-gentoo-r6"

    .line 108
    .local v1, "os":Ljava/lang/String;
    const/16 v2, 0x44

    new-array v2, v2, [B

    fill-array-data v2, :array_28

    .line 111
    .local v2, "raw":[B
    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v2}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 113
    .local v3, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v4, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v4}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    .line 114
    .local v4, "dr":Lorg/xbill/DNS/HINFORecord;
    invoke-virtual {v4, v3}, Lorg/xbill/DNS/HINFORecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 115
    invoke-virtual {v4}, Lorg/xbill/DNS/HINFORecord;->getCPU()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4}, Lorg/xbill/DNS/HINFORecord;->getOS()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    nop

    :array_28
    .array-data 1
        0x27t
        0x49t
        0x6et
        0x74t
        0x65t
        0x6ct
        0x28t
        0x52t
        0x29t
        0x20t
        0x50t
        0x65t
        0x6et
        0x74t
        0x69t
        0x75t
        0x6dt
        0x28t
        0x52t
        0x29t
        0x20t
        0x4dt
        0x20t
        0x70t
        0x72t
        0x6ft
        0x63t
        0x65t
        0x73t
        0x73t
        0x6ft
        0x72t
        0x20t
        0x31t
        0x2et
        0x37t
        0x30t
        0x47t
        0x48t
        0x7at
        0x1bt
        0x4ct
        0x69t
        0x6et
        0x75t
        0x78t
        0x20t
        0x74t
        0x72t
        0x6ft
        0x79t
        0x20t
        0x32t
        0x2et
        0x36t
        0x2et
        0x31t
        0x30t
        0x2dt
        0x67t
        0x65t
        0x6et
        0x74t
        0x6ft
        0x6ft
        0x2dt
        0x72t
        0x36t
    .end array-data
.end method

.method public test_rrToString()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 163
    const-string v7, "Intel(R) Pentium(R) M processor 1.70GHz"

    .line 164
    .local v7, "cpu":Ljava/lang/String;
    const-string v8, "Linux troy 2.6.10-gentoo-r6"

    .line 166
    .local v8, "os":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "exp":Ljava/lang/String;
    new-instance v10, Lorg/xbill/DNS/HINFORecord;

    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x123

    move-object v0, v10

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/HINFORecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, "dr":Lorg/xbill/DNS/HINFORecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/HINFORecord;->rrToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lorg/xbill/DNS/HINFORecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public test_rrToWire()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 175
    const-string v7, "Intel(R) Pentium(R) M processor 1.70GHz"

    .line 176
    .local v7, "cpu":Ljava/lang/String;
    const-string v8, "Linux troy 2.6.10-gentoo-r6"

    .line 177
    .local v8, "os":Ljava/lang/String;
    const/16 v0, 0x44

    new-array v0, v0, [B

    fill-array-data v0, :array_34

    move-object v9, v0

    .line 180
    .local v9, "raw":[B
    new-instance v10, Lorg/xbill/DNS/HINFORecord;

    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x123

    move-object v0, v10

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/HINFORecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, "dr":Lorg/xbill/DNS/HINFORecord;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 184
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/HINFORecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 186
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-static {v9, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/HINFORecordTest;->assertTrue(Z)V

    .line 187
    return-void

    nop

    :array_34
    .array-data 1
        0x27t
        0x49t
        0x6et
        0x74t
        0x65t
        0x6ct
        0x28t
        0x52t
        0x29t
        0x20t
        0x50t
        0x65t
        0x6et
        0x74t
        0x69t
        0x75t
        0x6dt
        0x28t
        0x52t
        0x29t
        0x20t
        0x4dt
        0x20t
        0x70t
        0x72t
        0x6ft
        0x63t
        0x65t
        0x73t
        0x73t
        0x6ft
        0x72t
        0x20t
        0x31t
        0x2et
        0x37t
        0x30t
        0x47t
        0x48t
        0x7at
        0x1bt
        0x4ct
        0x69t
        0x6et
        0x75t
        0x78t
        0x20t
        0x74t
        0x72t
        0x6ft
        0x79t
        0x20t
        0x32t
        0x2et
        0x36t
        0x2et
        0x31t
        0x30t
        0x2dt
        0x67t
        0x65t
        0x6et
        0x74t
        0x6ft
        0x6ft
        0x2dt
        0x72t
        0x36t
    .end array-data
.end method
