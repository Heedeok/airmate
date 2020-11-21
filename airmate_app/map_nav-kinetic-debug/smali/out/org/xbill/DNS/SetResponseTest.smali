.class public Lorg/xbill/DNS/SetResponseTest;
.super Ljunit/framework/TestCase;
.source "SetResponseTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_addRRset()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 192
    new-instance v0, Lorg/xbill/DNS/RRset;

    invoke-direct {v0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 193
    .local v0, "rrs":Lorg/xbill/DNS/RRset;
    new-instance v7, Lorg/xbill/DNS/ARecord;

    const-string v1, "The.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    const-string v1, "192.168.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcd

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 197
    new-instance v1, Lorg/xbill/DNS/ARecord;

    const-string v2, "The.Name."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v9

    const-string v2, "192.168.0.2"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/4 v10, 0x1

    const-wide/32 v11, 0xabcd

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 201
    new-instance v1, Lorg/xbill/DNS/SetResponse;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 202
    .local v1, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 204
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/xbill/DNS/RRset;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 205
    .local v2, "exp":[Lorg/xbill/DNS/RRset;
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/SetResponseTest;->assertTrue(Z)V

    .line 206
    return-void
.end method

.method public test_addRRset_multiple()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/xbill/DNS/RRset;

    invoke-direct {v0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 211
    .local v0, "rrs":Lorg/xbill/DNS/RRset;
    new-instance v7, Lorg/xbill/DNS/ARecord;

    const-string v1, "The.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    const-string v1, "192.168.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcd

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 215
    new-instance v1, Lorg/xbill/DNS/ARecord;

    const-string v2, "The.Name."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v9

    const-string v2, "192.168.0.2"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/4 v10, 0x1

    const-wide/32 v11, 0xabcd

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 220
    new-instance v1, Lorg/xbill/DNS/RRset;

    invoke-direct {v1}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 221
    .local v1, "rrs2":Lorg/xbill/DNS/RRset;
    new-instance v8, Lorg/xbill/DNS/ARecord;

    const-string v2, "The.Other.Name."

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    const-string v2, "192.168.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    const/4 v4, 0x1

    const-wide/32 v5, 0xabce

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    invoke-virtual {v1, v8}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 225
    new-instance v2, Lorg/xbill/DNS/ARecord;

    const-string v3, "The.Other.Name."

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v10

    const-string v3, "192.168.1.2"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    const/4 v11, 0x1

    const-wide/32 v12, 0xabce

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 230
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 231
    .local v2, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 232
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 234
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/xbill/DNS/RRset;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 235
    .local v3, "exp":[Lorg/xbill/DNS/RRset;
    invoke-virtual {v2}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/SetResponseTest;->assertTrue(Z)V

    .line 236
    return-void
.end method

.method public test_answers_nonSUCCESSFUL()V
    .registers 4

    .line 240
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    new-instance v1, Lorg/xbill/DNS/RRset;

    invoke-direct {v1}, Lorg/xbill/DNS/RRset;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 241
    .local v0, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponse;->answers()[Lorg/xbill/DNS/RRset;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SetResponseTest;->assertNull(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public test_ctor_1arg()V
    .registers 8

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_84

    .line 54
    .local v0, "types":[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_83

    .line 55
    new-instance v3, Lorg/xbill/DNS/SetResponse;

    aget v4, v0, v2

    invoke-direct {v3, v4}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 56
    .local v3, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v4

    invoke-static {v4}, Lorg/xbill/DNS/SetResponseTest;->assertNull(Ljava/lang/Object;)V

    .line 57
    aget v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->isUnknown()Z

    move-result v6

    invoke-static {v4, v6}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 58
    aget v4, v0, v2

    if-ne v4, v5, :cond_2e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v6

    invoke-static {v4, v6}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 59
    aget v4, v0, v2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3d

    const/4 v4, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v6

    invoke-static {v4, v6}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 60
    aget v4, v0, v2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4c

    const/4 v4, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v6

    invoke-static {v4, v6}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 61
    aget v4, v0, v2

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5b

    const/4 v4, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v4, 0x0

    :goto_5c
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v6

    invoke-static {v4, v6}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 62
    aget v4, v0, v2

    const/4 v6, 0x5

    if-ne v4, v6, :cond_6a

    const/4 v4, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v4, 0x0

    :goto_6b
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v6

    invoke-static {v4, v6}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 63
    aget v4, v0, v2

    const/4 v6, 0x6

    if-ne v4, v6, :cond_78

    goto :goto_79

    :cond_78
    const/4 v5, 0x0

    :goto_79
    invoke-virtual {v3}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v4

    invoke-static {v5, v4}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 54
    .end local v3    # "sr":Lorg/xbill/DNS/SetResponse;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 65
    .end local v2    # "i":I
    :cond_83
    return-void

    :array_84
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public test_ctor_1arg_toobig()V
    .registers 3

    .line 79
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 80
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SetResponseTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 82
    goto :goto_d

    :catch_c
    move-exception v0

    .line 83
    :goto_d
    return-void
.end method

.method public test_ctor_1arg_toosmall()V
    .registers 3

    .line 70
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 71
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SetResponseTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 73
    goto :goto_d

    :catch_c
    move-exception v0

    .line 74
    :goto_d
    return-void
.end method

.method public test_ctor_2arg()V
    .registers 9

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    .line 95
    .local v0, "types":[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_88

    .line 96
    new-instance v3, Lorg/xbill/DNS/RRset;

    invoke-direct {v3}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 97
    .local v3, "rs":Lorg/xbill/DNS/RRset;
    new-instance v4, Lorg/xbill/DNS/SetResponse;

    aget v5, v0, v2

    invoke-direct {v4, v5, v3}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 98
    .local v4, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/xbill/DNS/SetResponseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    aget v5, v0, v2

    const/4 v6, 0x1

    if-nez v5, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isUnknown()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 100
    aget v5, v0, v2

    if-ne v5, v6, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 101
    aget v5, v0, v2

    const/4 v7, 0x2

    if-ne v5, v7, :cond_42

    const/4 v5, 0x1

    goto :goto_43

    :cond_42
    const/4 v5, 0x0

    :goto_43
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 102
    aget v5, v0, v2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    :goto_52
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 103
    aget v5, v0, v2

    const/4 v7, 0x4

    if-ne v5, v7, :cond_60

    const/4 v5, 0x1

    goto :goto_61

    :cond_60
    const/4 v5, 0x0

    :goto_61
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 104
    aget v5, v0, v2

    const/4 v7, 0x5

    if-ne v5, v7, :cond_6f

    const/4 v5, 0x1

    goto :goto_70

    :cond_6f
    const/4 v5, 0x0

    :goto_70
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 105
    aget v5, v0, v2

    const/4 v7, 0x6

    if-ne v5, v7, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v6, 0x0

    :goto_7e
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v5

    invoke-static {v6, v5}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 95
    .end local v3    # "rs":Lorg/xbill/DNS/RRset;
    .end local v4    # "sr":Lorg/xbill/DNS/SetResponse;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 107
    .end local v2    # "i":I
    :cond_88
    return-void

    nop

    :array_8a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public test_ctor_2arg_toobig()V
    .registers 4

    .line 121
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, 0x7

    new-instance v2, Lorg/xbill/DNS/RRset;

    invoke-direct {v2}, Lorg/xbill/DNS/RRset;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 122
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SetResponseTest;->fail(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_11

    .line 124
    goto :goto_12

    :catch_11
    move-exception v0

    .line 125
    :goto_12
    return-void
.end method

.method public test_ctor_2arg_toosmall()V
    .registers 4

    .line 112
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    const/4 v1, -0x1

    new-instance v2, Lorg/xbill/DNS/RRset;

    invoke-direct {v2}, Lorg/xbill/DNS/RRset;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 113
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SetResponseTest;->fail(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_11

    .line 115
    goto :goto_12

    :catch_11
    move-exception v0

    .line 116
    :goto_12
    return-void
.end method

.method public test_getCNAME()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 246
    new-instance v0, Lorg/xbill/DNS/RRset;

    invoke-direct {v0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 247
    .local v0, "rrs":Lorg/xbill/DNS/RRset;
    new-instance v7, Lorg/xbill/DNS/CNAMERecord;

    const-string v1, "The.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    const-string v1, "The.Alias."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v6

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcd

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/CNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 251
    .local v1, "cr":Lorg/xbill/DNS/CNAMERecord;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 252
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 253
    .local v2, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v2}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public test_getDNAME()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 258
    new-instance v0, Lorg/xbill/DNS/RRset;

    invoke-direct {v0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 259
    .local v0, "rrs":Lorg/xbill/DNS/RRset;
    new-instance v7, Lorg/xbill/DNS/DNAMERecord;

    const-string v1, "The.Name."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    const-string v1, "The.Alias."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v6

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcd

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/DNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 263
    .local v1, "dr":Lorg/xbill/DNS/DNAMERecord;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 264
    new-instance v2, Lorg/xbill/DNS/SetResponse;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 265
    .local v2, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v2}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public test_ofType_basic()V
    .registers 9

    .line 129
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_8c

    .line 134
    .local v1, "types":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    array-length v4, v1

    if-ge v3, v4, :cond_8b

    .line 135
    aget v4, v1, v3

    invoke-static {v4}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v4

    .line 136
    .local v4, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v5

    invoke-static {v5}, Lorg/xbill/DNS/SetResponseTest;->assertNull(Ljava/lang/Object;)V

    .line 137
    aget v5, v1, v3

    const/4 v6, 0x1

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isUnknown()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 138
    aget v5, v1, v3

    if-ne v5, v6, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    :goto_2e
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 139
    aget v5, v1, v3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3c

    const/4 v5, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v5, 0x0

    :goto_3d
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 140
    aget v5, v1, v3

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4b

    const/4 v5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    :goto_4c
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 141
    aget v5, v1, v3

    if-ne v5, v0, :cond_59

    const/4 v5, 0x1

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    :goto_5a
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 142
    aget v5, v1, v3

    const/4 v7, 0x5

    if-ne v5, v7, :cond_68

    const/4 v5, 0x1

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    :goto_69
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 143
    aget v5, v1, v3

    const/4 v7, 0x6

    if-ne v5, v7, :cond_76

    goto :goto_77

    :cond_76
    const/4 v6, 0x0

    :goto_77
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v5

    invoke-static {v6, v5}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 145
    aget v5, v1, v3

    invoke-static {v5}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 146
    .local v5, "sr2":Lorg/xbill/DNS/SetResponse;
    invoke-static {v4, v5}, Lorg/xbill/DNS/SetResponseTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .end local v4    # "sr":Lorg/xbill/DNS/SetResponse;
    .end local v5    # "sr2":Lorg/xbill/DNS/SetResponse;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 148
    .end local v3    # "i":I
    :cond_8b
    return-void

    :array_8c
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public test_ofType_singleton()V
    .registers 9

    .line 152
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_8c

    .line 156
    .local v1, "types":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    array-length v4, v1

    if-ge v3, v4, :cond_8b

    .line 157
    aget v4, v1, v3

    invoke-static {v4}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v4

    .line 158
    .local v4, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v5

    invoke-static {v5}, Lorg/xbill/DNS/SetResponseTest;->assertNull(Ljava/lang/Object;)V

    .line 159
    aget v5, v1, v3

    const/4 v6, 0x1

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isUnknown()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 160
    aget v5, v1, v3

    if-ne v5, v6, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    :goto_2e
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 161
    aget v5, v1, v3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3c

    const/4 v5, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v5, 0x0

    :goto_3d
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 162
    aget v5, v1, v3

    if-ne v5, v0, :cond_4a

    const/4 v5, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x0

    :goto_4b
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 163
    aget v5, v1, v3

    const/4 v7, 0x4

    if-ne v5, v7, :cond_59

    const/4 v5, 0x1

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    :goto_5a
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 164
    aget v5, v1, v3

    const/4 v7, 0x5

    if-ne v5, v7, :cond_68

    const/4 v5, 0x1

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    :goto_69
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v7

    invoke-static {v5, v7}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 165
    aget v5, v1, v3

    const/4 v7, 0x6

    if-ne v5, v7, :cond_76

    goto :goto_77

    :cond_76
    const/4 v6, 0x0

    :goto_77
    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v5

    invoke-static {v6, v5}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(ZZ)V

    .line 167
    aget v5, v1, v3

    invoke-static {v5}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v5

    .line 168
    .local v5, "sr2":Lorg/xbill/DNS/SetResponse;
    invoke-static {v4, v5}, Lorg/xbill/DNS/SetResponseTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .end local v4    # "sr":Lorg/xbill/DNS/SetResponse;
    .end local v5    # "sr2":Lorg/xbill/DNS/SetResponse;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 170
    .end local v3    # "i":I
    :cond_8b
    return-void

    :array_8c
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public test_ofType_toobig()V
    .registers 2

    .line 184
    const/4 v0, 0x7

    :try_start_1
    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    .line 185
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SetResponseTest;->fail(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_a

    .line 187
    goto :goto_b

    :catch_a
    move-exception v0

    .line 188
    :goto_b
    return-void
.end method

.method public test_ofType_toosmall()V
    .registers 2

    .line 175
    const/4 v0, -0x1

    :try_start_1
    invoke-static {v0}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    .line 176
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SetResponseTest;->fail(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_a

    .line 178
    goto :goto_b

    :catch_a
    move-exception v0

    .line 179
    :goto_b
    return-void
.end method

.method public test_toString()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_8e

    .line 277
    .local v1, "types":[I
    new-instance v2, Lorg/xbill/DNS/RRset;

    invoke-direct {v2}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 278
    .local v2, "rrs":Lorg/xbill/DNS/RRset;
    new-instance v9, Lorg/xbill/DNS/ARecord;

    const-string v3, "The.Name."

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v4

    const-string v3, "192.168.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    const/4 v5, 0x1

    const-wide/32 v6, 0xabcd

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    invoke-virtual {v2, v9}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 283
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "unknown"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "NXDOMAIN"

    aput-object v3, v0, v5

    const-string v3, "NXRRSET"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "delegation: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v0, v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "CNAME: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v0, v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "DNAME: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v0, v5

    const-string v3, "successful"

    const/4 v5, 0x6

    aput-object v3, v0, v5

    .line 291
    .local v0, "labels":[Ljava/lang/String;
    nop

    .local v4, "i":I
    :goto_76
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_8d

    .line 292
    new-instance v4, Lorg/xbill/DNS/SetResponse;

    aget v5, v1, v3

    invoke-direct {v4, v5, v2}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    .line 293
    .local v4, "sr":Lorg/xbill/DNS/SetResponse;
    aget-object v5, v0, v3

    invoke-virtual {v4}, Lorg/xbill/DNS/SetResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/xbill/DNS/SetResponseTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v4    # "sr":Lorg/xbill/DNS/SetResponse;
    add-int/lit8 v4, v3, 0x1

    goto :goto_76

    .line 295
    .end local v3    # "i":I
    :cond_8d
    return-void

    :array_8e
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method
