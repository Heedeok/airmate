.class public Lorg/xbill/DNS/NameTest$Test_toWire;
.super Ljunit/framework/TestCase;
.source "NameTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NameTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_toWire"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 900
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

    .line 978
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    .line 979
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 981
    .local v1, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v2

    .line 983
    .local v2, "out":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertTrue(Z)V

    .line 984
    return-void

    :array_1a
    .array-data 1
        0x1t
        0x41t
        0x5t
        0x42t
        0x61t
        0x73t
        0x69t
        0x63t
        0x4t
        0x4et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method

.method public test_0arg_rel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 968
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Relative.Name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, "n":Lorg/xbill/DNS/Name;
    :try_start_7
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toWire()[B

    .line 971
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_toWire;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    .line 973
    goto :goto_11

    :catch_10
    move-exception v1

    .line 974
    :goto_11
    return-void
.end method

.method public test_3arg()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 994
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "Basic.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 995
    .local v0, "d":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 997
    .local v1, "n":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Compression;

    invoke-direct {v2}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 998
    .local v2, "c":Lorg/xbill/DNS/Compression;
    const/16 v3, 0x101

    invoke-virtual {v2, v3, v0}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 999
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_42

    .line 1001
    .local v4, "exp":[B
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 1002
    .local v5, "o":Lorg/xbill/DNS/DNSOutput;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v2, v6}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 1003
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertTrue(Z)V

    .line 1004
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v7

    invoke-static {v3, v7}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertEquals(II)V

    .line 1005
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    invoke-static {v6, v3}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertEquals(II)V

    .line 1006
    return-void

    nop

    :array_42
    .array-data 1
        0x1t
        0x41t
        -0x3ft
        0x1t
    .end array-data
.end method

.method public test_empty_Compression()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 925
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    .line 926
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 928
    .local v1, "n":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Compression;

    invoke-direct {v2}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 929
    .local v2, "c":Lorg/xbill/DNS/Compression;
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 930
    .local v3, "o":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v1, v3, v2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 932
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertTrue(Z)V

    .line 933
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertEquals(II)V

    .line 934
    return-void

    nop

    :array_30
    .array-data 1
        0x1t
        0x41t
        0x5t
        0x42t
        0x61t
        0x73t
        0x69t
        0x63t
        0x4t
        0x4et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method

.method public test_null_Compression()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 914
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    .line 915
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 917
    .local v1, "n":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 918
    .local v2, "o":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 920
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertTrue(Z)V

    .line 921
    return-void

    nop

    :array_24
    .array-data 1
        0x1t
        0x41t
        0x5t
        0x42t
        0x61t
        0x73t
        0x69t
        0x63t
        0x4t
        0x4et
        0x61t
        0x6dt
        0x65t
        0x0t
    .end array-data
.end method

.method public test_rel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 904
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Relative.Name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 906
    .local v0, "n":Lorg/xbill/DNS/Name;
    :try_start_7
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 907
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_toWire;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_15} :catch_16

    .line 909
    goto :goto_17

    :catch_16
    move-exception v1

    .line 910
    :goto_17
    return-void
.end method

.method public test_root()V
    .registers 4

    .line 988
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v0

    .line 989
    .local v0, "out":[B
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertTrue(Z)V

    .line 990
    return-void
.end method

.method public test_with_exact_Compression()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 938
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Basic.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 940
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Compression;

    invoke-direct {v1}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 941
    .local v1, "c":Lorg/xbill/DNS/Compression;
    const/16 v2, 0x100

    invoke-virtual {v1, v2, v0}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 942
    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_32

    .line 944
    .local v3, "exp":[B
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 945
    .local v4, "o":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 946
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertTrue(Z)V

    .line 947
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertEquals(II)V

    .line 948
    return-void

    :array_32
    .array-data 1
        -0x3ft
        0x0t
    .end array-data
.end method

.method public test_with_partial_Compression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 952
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "Basic.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 953
    .local v0, "d":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "A.Basic.Name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 955
    .local v1, "n":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Compression;

    invoke-direct {v2}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 956
    .local v2, "c":Lorg/xbill/DNS/Compression;
    const/16 v3, 0x101

    invoke-virtual {v2, v3, v0}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 957
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_42

    .line 959
    .local v4, "exp":[B
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 960
    .local v5, "o":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v1, v5, v2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 961
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    invoke-static {v6}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertTrue(Z)V

    .line 962
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v6

    invoke-static {v3, v6}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertEquals(II)V

    .line 963
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Lorg/xbill/DNS/NameTest$Test_toWire;->assertEquals(II)V

    .line 964
    return-void

    nop

    :array_42
    .array-data 1
        0x1t
        0x41t
        -0x3ft
        0x1t
    .end array-data
.end method
