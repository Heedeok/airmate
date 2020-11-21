.class public Lorg/xbill/DNS/KEYRecordTest;
.super Ljunit/framework/TestCase;
.source "KEYRecordTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_Flags_value()V
    .registers 5

    .line 127
    const-string v0, "-2"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 128
    const-string v0, "0"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 130
    const-string v0, "43829"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    const v3, 0xab35

    invoke-static {v3, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 132
    const-string v0, "65535"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    const v3, 0xffff

    invoke-static {v3, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 133
    const-string v0, "65536"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 138
    const-string v0, "EXTEND"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x1000

    invoke-static {v3, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 140
    const-string v0, "NOT_A_VALID_NAME"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 142
    const-string v0, "NOAUTH|ZONE|FLAG10"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    const v3, 0x8120

    invoke-static {v3, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 145
    const-string v0, "NOAUTH|INVALID_NAME|FLAG10"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 147
    const-string v0, "|"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Flags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 148
    return-void
.end method

.method public test_Protocol_string()V
    .registers 3

    .line 93
    const-string v0, "DNSSEC"

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/xbill/DNS/KEYRecord$Protocol;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "254"

    const/16 v1, 0xfe

    invoke-static {v1}, Lorg/xbill/DNS/KEYRecord$Protocol;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, -0x1

    :try_start_16
    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Protocol;->string(I)Ljava/lang/String;

    .line 99
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecordTest;->fail(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 101
    goto :goto_20

    :catch_1f
    move-exception v0

    .line 104
    :goto_20
    const/16 v0, 0x100

    :try_start_22
    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Protocol;->string(I)Ljava/lang/String;

    .line 105
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecordTest;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2a} :catch_2b

    .line 107
    goto :goto_2c

    :catch_2b
    move-exception v0

    .line 108
    :goto_2c
    return-void
.end method

.method public test_Protocol_value()V
    .registers 3

    .line 113
    const-string v0, "IPSEC"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 115
    const-string v0, "254"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfe

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 117
    const-string v0, "-2"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 119
    const-string v0, "256"

    invoke-static {v0}, Lorg/xbill/DNS/KEYRecord$Protocol;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 120
    return-void
.end method

.method public test_ctor_0arg()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    .line 48
    .local v0, "ar":Lorg/xbill/DNS/KEYRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/KEYRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 50
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 51
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getTTL()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(JJ)V

    .line 52
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 53
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getFlags()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 54
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 55
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getProtocol()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 56
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/KEYRecordTest;->assertNull(Ljava/lang/Object;)V

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
    new-instance v10, Lorg/xbill/DNS/KEYRecord;

    const/4 v3, 0x1

    const-wide/16 v4, 0x24ac

    const v6, 0x9832

    const/16 v7, 0x12

    const/16 v8, 0x67

    move-object v1, v10

    move-object v2, v0

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lorg/xbill/DNS/KEYRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 73
    .local v1, "kr":Lorg/xbill/DNS/KEYRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getType()I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 75
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 76
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getTTL()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(JJ)V

    .line 77
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getFlags()I

    move-result v2

    const v3, 0x9832

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 78
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getProtocol()I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 79
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v2

    const/16 v3, 0x67

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 80
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYRecord;->getKey()[B

    move-result-object v2

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/KEYRecordTest;->assertTrue(Z)V

    .line 84
    :try_start_6b
    new-instance v2, Lorg/xbill/DNS/KEYRecord;

    const/4 v4, 0x1

    const-wide/16 v5, 0x24ac

    const v7, 0x9832

    const/16 v8, 0x12

    const/16 v9, 0x67

    move-object v3, v11

    move-object v10, v12

    invoke-direct/range {v2 .. v10}, Lorg/xbill/DNS/KEYRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 85
    const-string v2, "RelativeNameException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/KEYRecordTest;->fail(Ljava/lang/String;)V
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
    new-instance v0, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    .line 62
    .local v0, "ar":Lorg/xbill/DNS/KEYRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 63
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/KEYRecord;

    invoke-static {v2}, Lorg/xbill/DNS/KEYRecordTest;->assertTrue(Z)V

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

    .line 153
    new-instance v0, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    .line 154
    .local v0, "kr":Lorg/xbill/DNS/KEYRecord;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "NOAUTH|ZONE|FLAG10 EMAIL RSASHA1 AQIDBAUGBwgJ"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "st":Lorg/xbill/DNS/Tokenizer;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/KEYRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 156
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getFlags()I

    move-result v3

    const v4, 0x8120

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 158
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getProtocol()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 159
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 160
    const/16 v3, 0x9

    new-array v3, v3, [B

    fill-array-data v3, :array_b8

    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getKey()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/KEYRecordTest;->assertTrue(Z)V

    .line 163
    new-instance v3, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    move-object v0, v3

    .line 164
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "NOAUTH|NOKEY|FLAG10 TLS ECC"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/KEYRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 166
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getFlags()I

    move-result v3

    const v4, 0xc020

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 168
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getProtocol()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 169
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYRecordTest;->assertEquals(II)V

    .line 170
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYRecord;->getKey()[B

    move-result-object v3

    invoke-static {v3}, Lorg/xbill/DNS/KEYRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 173
    new-instance v3, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    move-object v0, v3

    .line 174
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "NOAUTH|ZONE|JUNK EMAIL RSASHA1 AQIDBAUGBwgJ"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 176
    :try_start_7c
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/KEYRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 177
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/KEYRecordTest;->fail(Ljava/lang/String;)V
    :try_end_84
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_7c .. :try_end_84} :catch_85

    .line 179
    goto :goto_86

    :catch_85
    move-exception v3

    .line 182
    :goto_86
    new-instance v3, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    move-object v0, v3

    .line 183
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "NOAUTH|ZONE RSASHA1 ECC AQIDBAUGBwgJ"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 185
    :try_start_94
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/KEYRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 186
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/KEYRecordTest;->fail(Ljava/lang/String;)V
    :try_end_9c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_94 .. :try_end_9c} :catch_9d

    .line 188
    goto :goto_9e

    :catch_9d
    move-exception v3

    .line 191
    :goto_9e
    new-instance v3, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    move-object v0, v3

    .line 192
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "NOAUTH|ZONE EMAIL ZONE AQIDBAUGBwgJ"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 194
    :try_start_ac
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/KEYRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 195
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/KEYRecordTest;->fail(Ljava/lang/String;)V
    :try_end_b4
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_ac .. :try_end_b4} :catch_b5

    .line 197
    goto :goto_b6

    :catch_b5
    move-exception v2

    .line 198
    :goto_b6
    return-void

    nop

    :array_b8
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
