.class public Lorg/xbill/DNS/U16NameBaseTest;
.super Ljunit/framework/TestCase;
.source "U16NameBaseTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 48
    return-void
.end method

.method private assertEquals([B[B)V
    .registers 4
    .param p1, "exp"    # [B
    .param p2, "act"    # [B

    .line 45
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/U16NameBaseTest;->assertTrue(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public test_ctor_0arg()V
    .registers 8

    .line 81
    new-instance v0, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    invoke-direct {v0}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>()V

    .line 82
    .local v0, "tc":Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    invoke-virtual {v0}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertNull(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 84
    invoke-virtual {v0}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 85
    invoke-virtual {v0}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getTTL()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(JJ)V

    .line 86
    invoke-virtual {v0}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getU16Field()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 87
    invoke-virtual {v0}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertNull(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public test_ctor_4arg()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 92
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 94
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v7, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    const/16 v3, 0xf

    const/4 v4, 0x1

    const-wide/32 v5, 0xbcda

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 96
    .local v1, "tc":Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    invoke-virtual {v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/U16NameBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getType()I

    move-result v2

    invoke-static {v3, v2}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 98
    invoke-virtual {v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 99
    invoke-virtual {v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getTTL()J

    move-result-wide v2

    const-wide/32 v4, 0xbcda

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(JJ)V

    .line 100
    invoke-virtual {v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getU16Field()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 101
    invoke-virtual {v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/U16NameBaseTest;->assertNull(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public test_ctor_8arg()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 106
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 107
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.Other.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v11

    .line 109
    .local v11, "m":Lorg/xbill/DNS/Name;
    new-instance v12, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    const-string v8, "u16 description"

    const-string v10, "name description"

    const/16 v3, 0xf

    const/4 v4, 0x1

    const-wide/32 v5, 0xb12f

    const/16 v7, 0x1f2b

    move-object v1, v12

    move-object v2, v0

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 113
    .local v12, "tc":Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    invoke-virtual {v12}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v12}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getType()I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 115
    invoke-virtual {v12}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getDClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 116
    invoke-virtual {v12}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getTTL()J

    move-result-wide v1

    const-wide/32 v3, 0xb12f

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(JJ)V

    .line 117
    invoke-virtual {v12}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getU16Field()I

    move-result v1

    const/16 v2, 0x1f2b

    invoke-static {v2, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 118
    invoke-virtual {v12}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v11, v1}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :try_start_52
    new-instance v1, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    const/16 v3, 0xf

    const/4 v4, 0x1

    const-wide/32 v5, 0xb12f

    const/high16 v7, 0x10000

    const-string v8, "u16 description"

    const-string v10, "name description"

    move-object v2, v0

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 125
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/U16NameBaseTest;->fail(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_6a} :catch_6b

    .line 127
    goto :goto_6c

    :catch_6b
    move-exception v1

    .line 130
    :goto_6c
    const-string v1, "My.relative.Name"

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v9

    .line 132
    .local v9, "rel":Lorg/xbill/DNS/Name;
    :try_start_72
    new-instance v1, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    const/16 v3, 0xf

    const/4 v4, 0x1

    const-wide/32 v5, 0xb12f

    const/16 v7, 0x1f2b

    const-string v8, "u16 description"

    const-string v10, "name description"

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 135
    const-string v1, "RelativeNameException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/U16NameBaseTest;->fail(Ljava/lang/String;)V
    :try_end_89
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_72 .. :try_end_89} :catch_8a

    .line 137
    goto :goto_8b

    :catch_8a
    move-exception v1

    .line 139
    :goto_8b
    return-void
.end method

.method public test_rdataFromString()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const-string v0, "My.Single.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 158
    .local v0, "exp":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "6562 My.Single.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v2, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    invoke-direct {v2}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>()V

    .line 160
    .local v2, "tc":Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 162
    invoke-virtual {v2}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getU16Field()I

    move-result v4

    const/16 v5, 0x19a2

    invoke-static {v5, v4}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(II)V

    .line 163
    invoke-virtual {v2}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    new-instance v4, Lorg/xbill/DNS/Tokenizer;

    const-string v5, "10 My.Relative.Name"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 166
    new-instance v4, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    invoke-direct {v4}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>()V

    move-object v2, v4

    .line 168
    :try_start_34
    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 169
    const-string v3, "RelativeNameException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/U16NameBaseTest;->fail(Ljava/lang/String;)V
    :try_end_3c
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_34 .. :try_end_3c} :catch_3d

    .line 171
    goto :goto_3e

    :catch_3d
    move-exception v3

    .line 172
    :goto_3e
    return-void
.end method

.method public test_rrFromWire()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    .line 144
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 146
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    invoke-direct {v2}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>()V

    .line 147
    .local v2, "tc":Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 149
    const-string v3, "My.single.name."

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 150
    .local v3, "exp":Lorg/xbill/DNS/Name;
    invoke-virtual {v2}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getU16Field()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xbc1f

    invoke-static {v6, v7, v4, v5}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(JJ)V

    .line 151
    invoke-virtual {v2}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    return-void

    nop

    :array_2e
    .array-data 1
        -0x44t
        0x1ft
        0x2t
        0x4dt
        0x79t
        0x6t
        0x73t
        0x69t
        0x4et
        0x67t
        0x6ct
        0x45t
        0x4t
        0x6et
        0x41t
        0x6dt
        0x45t
        0x0t
    .end array-data
.end method

.method public test_rrToString()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 176
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 177
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.Other.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v11

    .line 179
    .local v11, "m":Lorg/xbill/DNS/Name;
    new-instance v12, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    const-string v8, "u16 description"

    const-string v10, "name description"

    const/16 v3, 0xf

    const/4 v4, 0x1

    const-wide/32 v5, 0xb12f

    const/16 v7, 0x1f2b

    move-object v1, v12

    move-object v2, v0

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 183
    .local v1, "tc":Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    invoke-virtual {v1}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->rrToString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "out":Ljava/lang/String;
    const-string v3, "7979 My.Other.Name."

    .line 186
    .local v3, "exp":Ljava/lang/String;
    invoke-static {v3, v2}, Lorg/xbill/DNS/U16NameBaseTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public test_rrToWire()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 191
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 192
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "M.O.n."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v11

    .line 194
    .local v11, "m":Lorg/xbill/DNS/Name;
    new-instance v12, Lorg/xbill/DNS/U16NameBaseTest$TestClass;

    const-string v8, "u16 description"

    const-string v10, "name description"

    const/16 v3, 0xf

    const/4 v4, 0x1

    const-wide/32 v5, 0xb12f

    const/16 v7, 0x1f2b

    move-object v1, v12

    move-object v2, v0

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 199
    .local v1, "tc":Lorg/xbill/DNS/U16NameBaseTest$TestClass;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 200
    .local v2, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 201
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    .line 202
    .local v4, "out":[B
    const/16 v5, 0x9

    new-array v6, v5, [B

    fill-array-data v6, :array_56

    .line 203
    .local v6, "exp":[B
    invoke-static {v6, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/U16NameBaseTest;->assertTrue(Z)V

    .line 206
    new-instance v7, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v2, v7

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v7}, Lorg/xbill/DNS/U16NameBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 208
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    .line 209
    .end local v4    # "out":[B
    .local v3, "out":[B
    new-array v4, v5, [B

    fill-array-data v4, :array_60

    .line 210
    .end local v6    # "exp":[B
    .local v4, "exp":[B
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/U16NameBaseTest;->assertTrue(Z)V

    .line 211
    return-void

    :array_56
    .array-data 1
        0x1ft
        0x2bt
        0x1t
        0x6dt
        0x1t
        0x6ft
        0x1t
        0x6et
        0x0t
    .end array-data

    nop

    :array_60
    .array-data 1
        0x1ft
        0x2bt
        0x1t
        0x4dt
        0x1t
        0x4ft
        0x1t
        0x6et
        0x0t
    .end array-data
.end method
