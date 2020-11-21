.class public Lorg/xbill/DNS/utils/base16Test;
.super Ljunit/framework/TestCase;
.source "base16Test.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public test_fromString_emptyString()V
    .registers 5

    .line 82
    const-string v0, ""

    .line 83
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 84
    .local v1, "out":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(II)V

    .line 85
    return-void
.end method

.method public test_fromString_invalidStringLength()V
    .registers 3

    .line 89
    const-string v0, "1"

    .line 90
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 91
    .local v1, "out":[B
    invoke-static {v1}, Lorg/xbill/DNS/utils/base16Test;->assertNull(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public test_fromString_nonHexChars()V
    .registers 3

    .line 96
    const-string v0, "GG"

    .line 97
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 102
    .local v1, "out":[B
    return-void
.end method

.method public test_fromString_normal()V
    .registers 7

    .line 106
    const-string v0, "0102030405060708090A0B0C0D0E0F"

    .line 107
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 108
    .local v1, "out":[B
    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_22

    .line 109
    .local v2, "exp":[B
    array-length v3, v2

    array-length v4, v1

    invoke-static {v3, v4}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(II)V

    .line 110
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    array-length v4, v2

    if-ge v3, v4, :cond_20

    .line 111
    aget-byte v4, v2, v3

    aget-byte v5, v1, v3

    invoke-static {v4, v5}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(BB)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 113
    .end local v3    # "i":I
    :cond_20
    return-void

    nop

    :array_22
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
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public test_toString_array1()V
    .registers 4

    .line 75
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 76
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "out":Ljava/lang/String;
    const-string v2, "0102030405060708090A0B0C0D0E0F"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    nop

    :array_12
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
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public test_toString_emptyArray()V
    .registers 3

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "out":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v1, v0}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public test_toString_singleByte1()V
    .registers 4

    .line 54
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    move-object v0, v1

    .line 55
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "out":Ljava/lang/String;
    const-string v2, "01"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public test_toString_singleByte2()V
    .registers 4

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    .line 62
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "out":Ljava/lang/String;
    const-string v2, "10"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public test_toString_singleByte3()V
    .registers 4

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 69
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "out":Ljava/lang/String;
    const-string v2, "FF"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base16Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
