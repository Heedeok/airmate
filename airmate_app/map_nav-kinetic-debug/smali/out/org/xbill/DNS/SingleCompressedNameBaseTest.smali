.class public Lorg/xbill/DNS/SingleCompressedNameBaseTest;
.super Ljunit/framework/TestCase;
.source "SingleCompressedNameBaseTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;
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

    invoke-static {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertTrue(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public test_ctor()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;

    invoke-direct {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;-><init>()V

    .line 70
    .local v0, "tc":Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertNull(Ljava/lang/Object;)V

    .line 72
    const-string v1, "my.name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 73
    .local v1, "n":Lorg/xbill/DNS/Name;
    const-string v2, "my.single.name."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 75
    .local v10, "sn":Lorg/xbill/DNS/Name;
    new-instance v11, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;

    const-string v9, "The Description"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    move-object v2, v11

    move-object v3, v1

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    move-object v0, v11

    .line 77
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->getType()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertEquals(II)V

    .line 79
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->getDClass()I

    move-result v2

    invoke-static {v3, v2}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertEquals(II)V

    .line 80
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->getTTL()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertEquals(JJ)V

    .line 81
    invoke-virtual {v0}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v10, v2}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
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

    .line 86
    move-object/from16 v0, p0

    const-string v1, "my.name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 87
    .local v1, "n":Lorg/xbill/DNS/Name;
    const-string v2, "My.Single.Name."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 90
    .local v10, "sn":Lorg/xbill/DNS/Name;
    new-instance v11, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;

    const-string v9, "The Description"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    move-object v2, v11

    move-object v3, v1

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 91
    .local v11, "tc":Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;
    const/16 v12, 0x10

    new-array v2, v12, [B

    fill-array-data v2, :array_58

    move-object v13, v2

    .line 93
    .local v13, "exp":[B
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v14, v2

    .line 94
    .local v14, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v15, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v14, v15, v2}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 96
    invoke-virtual {v14}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v9

    .line 97
    .local v9, "out":[B
    invoke-direct {v0, v13, v9}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertEquals([B[B)V

    .line 100
    new-instance v16, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;

    const-string v17, "The Description"

    move-object/from16 v2, v16

    move-object/from16 v18, v9

    .end local v9    # "out":[B
    .local v18, "out":[B
    move-object/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 101
    .end local v11    # "tc":Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;
    .local v2, "tc":Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;
    new-array v3, v12, [B

    fill-array-data v3, :array_64

    .line 103
    .end local v13    # "exp":[B
    .local v3, "exp":[B
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 104
    .end local v14    # "dout":Lorg/xbill/DNS/DNSOutput;
    .local v4, "dout":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v2, v4, v15, v5}, Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 106
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    .line 107
    .end local v18    # "out":[B
    .local v5, "out":[B
    invoke-direct {v0, v3, v5}, Lorg/xbill/DNS/SingleCompressedNameBaseTest;->assertEquals([B[B)V

    .line 108
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
