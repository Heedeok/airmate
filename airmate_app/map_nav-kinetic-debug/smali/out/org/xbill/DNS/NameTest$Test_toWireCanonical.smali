.class public Lorg/xbill/DNS/NameTest$Test_toWireCanonical;
.super Ljunit/framework/TestCase;
.source "NameTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NameTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_toWireCanonical"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1009
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_0arg()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1024
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    .line 1025
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v1, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v2

    .line 1029
    .local v2, "out":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_toWireCanonical;->assertTrue(Z)V

    .line 1030
    return-void

    :array_1a
    .array-data 1
        0x1t
        0x61t
        0x5t
        0x62t
        0x61t
        0x73t
        0x69t
        0x63t
        0x4t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method

.method public test_3arg()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1047
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "Basic.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v0, "d":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v1, "n":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Compression;

    invoke-direct {v2}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 1051
    .local v2, "c":Lorg/xbill/DNS/Compression;
    const/16 v3, 0x101

    invoke-virtual {v2, v3, v0}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 1052
    const/16 v4, 0xe

    new-array v4, v4, [B

    fill-array-data v4, :array_44

    .line 1054
    .local v4, "exp":[B
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 1055
    .local v5, "o":Lorg/xbill/DNS/DNSOutput;
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v2, v6}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 1056
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lorg/xbill/DNS/NameTest$Test_toWireCanonical;->assertTrue(Z)V

    .line 1057
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v6

    invoke-static {v3, v6}, Lorg/xbill/DNS/NameTest$Test_toWireCanonical;->assertEquals(II)V

    .line 1058
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    const/4 v6, -0x1

    invoke-static {v6, v3}, Lorg/xbill/DNS/NameTest$Test_toWireCanonical;->assertEquals(II)V

    .line 1059
    return-void

    nop

    :array_44
    .array-data 1
        0x1t
        0x61t
        0x5t
        0x62t
        0x61t
        0x73t
        0x69t
        0x63t
        0x4t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method

.method public test_basic()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1013
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    .line 1014
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v1, "n":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 1017
    .local v2, "o":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 1019
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_toWireCanonical;->assertTrue(Z)V

    .line 1020
    return-void

    :array_22
    .array-data 1
        0x1t
        0x61t
        0x5t
        0x62t
        0x61t
        0x73t
        0x69t
        0x63t
        0x4t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method

.method public test_empty()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1040
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "@"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 1041
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v1

    .line 1042
    .local v1, "out":[B
    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_toWireCanonical;->assertTrue(Z)V

    .line 1043
    return-void
.end method

.method public test_root()V
    .registers 4

    .line 1034
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    .line 1035
    .local v0, "out":[B
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_toWireCanonical;->assertTrue(Z)V

    .line 1036
    return-void
.end method
