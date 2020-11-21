.class public Lorg/xbill/DNS/SingleNameBaseTest;
.super Ljunit/framework/TestCase;
.source "SingleNameBaseTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 47
    return-void
.end method

.method private assertEquals([B[B)V
    .registers 4
    .param p1, "exp"    # [B
    .param p2, "act"    # [B

    .line 44
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/SingleNameBaseTest;->assertTrue(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public test_ctor()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    invoke-direct {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>()V

    .line 75
    .local v0, "tc":Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SingleNameBaseTest;->assertNull(Ljava/lang/Object;)V

    .line 77
    const-string v1, "my.name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 78
    .local v1, "n":Lorg/xbill/DNS/Name;
    const-string v2, "my.single.name."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 80
    .local v10, "sn":Lorg/xbill/DNS/Name;
    new-instance v8, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    move-object v2, v8

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    move-object v0, v8

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/SingleNameBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getType()I

    move-result v2

    const/4 v11, 0x1

    invoke-static {v11, v2}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(II)V

    .line 84
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getDClass()I

    move-result v2

    invoke-static {v11, v2}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(II)V

    .line 85
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getTTL()J

    move-result-wide v2

    const-wide/16 v12, 0x64

    invoke-static {v12, v13, v2, v3}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(JJ)V

    .line 87
    new-instance v14, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    const-string v9, "The Description"

    move-object v2, v14

    move-object v3, v1

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    move-object v0, v14

    .line 89
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/SingleNameBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getType()I

    move-result v2

    invoke-static {v11, v2}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(II)V

    .line 91
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getDClass()I

    move-result v2

    invoke-static {v11, v2}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(II)V

    .line 92
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getTTL()J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(JJ)V

    .line 93
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v10, v2}, Lorg/xbill/DNS/SingleNameBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public test_rdataFromString()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const-string v0, "my.single.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 112
    .local v0, "exp":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "my.single.name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v2, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    invoke-direct {v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>()V

    .line 114
    .local v2, "tc":Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 115
    invoke-virtual {v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    new-instance v4, Lorg/xbill/DNS/Tokenizer;

    const-string v5, "my.relative.name"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 118
    new-instance v4, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    invoke-direct {v4}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>()V

    move-object v2, v4

    .line 120
    :try_start_2b
    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 121
    const-string v3, "RelativeNameException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/SingleNameBaseTest;->fail(Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_2b .. :try_end_33} :catch_34

    .line 123
    goto :goto_35

    :catch_34
    move-exception v3

    .line 124
    :goto_35
    return-void
.end method

.method public test_rrFromWire()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    .line 99
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 101
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    invoke-direct {v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>()V

    .line 102
    .local v2, "tc":Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 104
    const-string v3, "my.single.name."

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 105
    .local v3, "exp":Lorg/xbill/DNS/Name;
    invoke-virtual {v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-void

    :array_22
    .array-data 1
        0x2t
        0x6dt
        0x79t
        0x6t
        0x73t
        0x69t
        0x6et
        0x67t
        0x6ct
        0x65t
        0x4t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method

.method public test_rrToString()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 128
    const-string v0, "my.single.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 130
    .local v0, "exp":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "my.single.name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v2, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    invoke-direct {v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>()V

    .line 132
    .local v2, "tc":Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 133
    invoke-virtual {v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->rrToString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "out":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public test_rrToWire()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 141
    move-object/from16 v0, p0

    const-string v1, "my.name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 142
    .local v1, "n":Lorg/xbill/DNS/Name;
    const-string v2, "My.Single.Name."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 145
    .local v10, "sn":Lorg/xbill/DNS/Name;
    new-instance v11, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    const-string v9, "The Description"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    move-object v2, v11

    move-object v3, v1

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 146
    .local v11, "tc":Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    const/16 v12, 0x10

    new-array v2, v12, [B

    fill-array-data v2, :array_58

    move-object v13, v2

    .line 148
    .local v13, "exp":[B
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v14, v2

    .line 149
    .local v14, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v15, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v14, v15, v2}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 151
    invoke-virtual {v14}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v9

    .line 152
    .local v9, "out":[B
    invoke-direct {v0, v13, v9}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals([B[B)V

    .line 155
    new-instance v16, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;

    const-string v17, "The Description"

    move-object/from16 v2, v16

    move-object/from16 v18, v9

    .end local v9    # "out":[B
    .local v18, "out":[B
    move-object/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 156
    .end local v11    # "tc":Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    .local v2, "tc":Lorg/xbill/DNS/SingleNameBaseTest$TestClass;
    new-array v3, v12, [B

    fill-array-data v3, :array_64

    .line 158
    .end local v13    # "exp":[B
    .local v3, "exp":[B
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 159
    .end local v14    # "dout":Lorg/xbill/DNS/DNSOutput;
    .local v4, "dout":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v2, v4, v15, v5}, Lorg/xbill/DNS/SingleNameBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 161
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    .line 162
    .end local v18    # "out":[B
    .local v5, "out":[B
    invoke-direct {v0, v3, v5}, Lorg/xbill/DNS/SingleNameBaseTest;->assertEquals([B[B)V

    .line 163
    return-void

    :array_58
    .array-data 1
        0x2t
        0x4dt
        0x79t
        0x6t
        0x53t
        0x69t
        0x6et
        0x67t
        0x6ct
        0x65t
        0x4t
        0x4et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data

    :array_64
    .array-data 1
        0x2t
        0x6dt
        0x79t
        0x6t
        0x73t
        0x69t
        0x6et
        0x67t
        0x6ct
        0x65t
        0x4t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method
