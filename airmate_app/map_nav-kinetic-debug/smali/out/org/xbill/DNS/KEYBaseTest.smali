.class public Lorg/xbill/DNS/KEYBaseTest;
.super Ljunit/framework/TestCase;
.source "KEYBaseTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/KEYBaseTest$TestClass;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public test_ctor()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    invoke-direct {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>()V

    .line 67
    .local v0, "tc":Lorg/xbill/DNS/KEYBaseTest$TestClass;
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFlags()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 68
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getProtocol()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 69
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getAlgorithm()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 70
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/KEYBaseTest;->assertNull(Ljava/lang/Object;)V

    .line 72
    const-string v1, "my.name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 73
    .local v1, "n":Lorg/xbill/DNS/Name;
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_8c

    move-object v12, v2

    .line 76
    .local v12, "key":[B
    new-instance v13, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    const/16 v4, 0x19

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    const/16 v8, 0xff

    const/16 v9, 0xf

    const/16 v10, 0xe

    move-object v2, v13

    move-object v3, v1

    move-object v11, v12

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    move-object v0, v13

    .line 78
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getType()I

    move-result v2

    const/16 v3, 0x19

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 80
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 81
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getTTL()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(JJ)V

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFlags()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 83
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getProtocol()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 84
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getAlgorithm()I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 85
    invoke-virtual {v0}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getKey()[B

    move-result-object v2

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/KEYBaseTest;->assertTrue(Z)V

    .line 86
    return-void

    :array_8c
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public test_getFootprint()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 140
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 141
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/16 v1, 0x10

    new-array v10, v1, [B

    fill-array-data v10, :array_6a

    .line 144
    .local v10, "key":[B
    new-instance v11, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    const/16 v3, 0x19

    const/4 v4, 0x1

    const-wide/16 v5, 0x64

    const/16 v7, 0xff

    const/16 v8, 0xf

    const/4 v9, 0x1

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 146
    .local v1, "tc":Lorg/xbill/DNS/KEYBaseTest$TestClass;
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFootprint()I

    move-result v2

    .line 148
    .local v2, "foot":I
    const/16 v3, 0xd0e

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 149
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFootprint()I

    move-result v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 152
    new-instance v3, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    const/4 v4, 0x3

    new-array v4, v4, [B

    fill-array-data v4, :array_76

    const/16 v13, 0x19

    const/4 v14, 0x1

    const-wide/16 v15, 0x64

    const v17, 0x89ab

    const/16 v18, 0xcd

    const/16 v19, 0xef

    move-object v11, v3

    move-object v12, v0

    move-object/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    move-object v1, v3

    .line 157
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFootprint()I

    move-result v2

    .line 158
    const v3, 0xbfcf

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 159
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFootprint()I

    move-result v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 162
    new-instance v3, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>()V

    move-object v1, v3

    .line 163
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFootprint()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 164
    return-void

    :array_6a
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_76
    .array-data 1
        0x12t
        0x34t
        0x56t
    .end array-data
.end method

.method public test_rrFromWire()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_7c

    .line 91
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 93
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    invoke-direct {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>()V

    .line 94
    .local v2, "tc":Lorg/xbill/DNS/KEYBaseTest$TestClass;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 96
    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFlags()I

    move-result v3

    const v4, 0xabcd

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 97
    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getProtocol()I

    move-result v3

    const/16 v4, 0xef

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 98
    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getAlgorithm()I

    move-result v3

    const/16 v4, 0x19

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 99
    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_86

    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getKey()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/KEYBaseTest;->assertTrue(Z)V

    .line 102
    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_8e

    move-object v0, v3

    .line 103
    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v3, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    move-object v1, v3

    .line 105
    new-instance v3, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>()V

    move-object v2, v3

    .line 106
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 108
    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getFlags()I

    move-result v3

    const v4, 0xbada

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 109
    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getProtocol()I

    move-result v3

    const/16 v4, 0xff

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 110
    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getAlgorithm()I

    move-result v3

    const/16 v4, 0x28

    invoke-static {v4, v3}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(II)V

    .line 111
    invoke-virtual {v2}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->getKey()[B

    move-result-object v3

    invoke-static {v3}, Lorg/xbill/DNS/KEYBaseTest;->assertNull(Ljava/lang/Object;)V

    .line 112
    return-void

    nop

    :array_7c
    .array-data 1
        -0x55t
        -0x33t
        -0x11t
        0x19t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data

    nop

    :array_86
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data

    nop

    :array_8e
    .array-data 1
        -0x46t
        -0x26t
        -0x1t
        0x28t
    .end array-data
.end method

.method public test_rrToString()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 116
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 117
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_86

    move-object/from16 v20, v1

    .line 120
    .local v20, "key":[B
    new-instance v11, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    const/16 v3, 0x19

    const/4 v4, 0x1

    const-wide/16 v5, 0x64

    const/16 v7, 0xff

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 122
    .local v1, "tc":Lorg/xbill/DNS/KEYBaseTest$TestClass;
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->rrToString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "out":Ljava/lang/String;
    const-string v3, "255 15 14"

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    const/16 v13, 0x19

    const/4 v14, 0x1

    const-wide/16 v15, 0x64

    const/16 v17, 0xff

    const/16 v18, 0xf

    const/16 v19, 0xe

    move-object v11, v3

    move-object v12, v0

    invoke-direct/range {v11 .. v20}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    move-object v1, v3

    .line 127
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->rrToString()Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "255 15 14 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static/range {v20 .. v20}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v3, "multiline"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->rrToString()Ljava/lang/String;

    move-result-object v2

    .line 133
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "255 15 14 (\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static/range {v20 .. v20}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " ) ; key_tag = 18509"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/xbill/DNS/KEYBaseTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "multiline"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->unset(Ljava/lang/String;)V

    .line 136
    return-void

    :array_86
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public test_rrToWire()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 168
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 169
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/16 v1, 0x10

    new-array v10, v1, [B

    fill-array-data v10, :array_52

    .line 172
    .local v10, "key":[B
    new-instance v11, Lorg/xbill/DNS/KEYBaseTest$TestClass;

    const/16 v3, 0x19

    const/4 v4, 0x1

    const-wide/16 v5, 0x64

    const/16 v7, 0x7689

    const/16 v8, 0xab

    const/16 v9, 0xcd

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/KEYBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 174
    .local v1, "tc":Lorg/xbill/DNS/KEYBaseTest$TestClass;
    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_5e

    .line 176
    .local v2, "exp":[B
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 179
    .local v3, "o":Lorg/xbill/DNS/DNSOutput;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 180
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/KEYBaseTest;->assertTrue(Z)V

    .line 183
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v3, v5

    .line 184
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/xbill/DNS/KEYBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 185
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/KEYBaseTest;->assertTrue(Z)V

    .line 186
    return-void

    nop

    :array_52
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_5e
    .array-data 1
        0x76t
        -0x77t
        -0x55t
        -0x33t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method
