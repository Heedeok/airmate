.class public Lorg/xbill/DNS/FlagsTest;
.super Ljunit/framework/TestCase;
.source "FlagsTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_isFlag()V
    .registers 3

    .line 86
    const/4 v0, -0x1

    :try_start_1
    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    .line 87
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->fail(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_a

    .line 90
    goto :goto_b

    .line 89
    :catch_a
    move-exception v0

    .line 91
    :goto_b
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 93
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 94
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 95
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 96
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 97
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 98
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 99
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 100
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 101
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 102
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 103
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 104
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 105
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 106
    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertFalse(Z)V

    .line 108
    const/16 v0, 0x10

    :try_start_93
    invoke-static {v0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    .line 109
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->fail(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_9b} :catch_9c

    .line 112
    goto :goto_9d

    .line 111
    :catch_9c
    move-exception v0

    .line 113
    :goto_9d
    return-void
.end method

.method public test_string()V
    .registers 3

    .line 44
    const-string v0, "aa"

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/xbill/DNS/Flags;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/FlagsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->string(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->assertTrue(Z)V

    .line 50
    const/4 v0, -0x1

    :try_start_1a
    invoke-static {v0}, Lorg/xbill/DNS/Flags;->string(I)Ljava/lang/String;

    .line 51
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->fail(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_22} :catch_23

    .line 54
    goto :goto_24

    .line 53
    :catch_23
    move-exception v0

    .line 58
    :goto_24
    const/16 v0, 0x10

    :try_start_26
    invoke-static {v0}, Lorg/xbill/DNS/Flags;->string(I)Ljava/lang/String;

    .line 59
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/FlagsTest;->fail(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_2e} :catch_2f

    .line 62
    goto :goto_30

    .line 61
    :catch_2f
    move-exception v0

    .line 63
    :goto_30
    return-void
.end method

.method public test_value()V
    .registers 3

    .line 68
    const-string v0, "cd"

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lorg/xbill/DNS/FlagsTest;->assertEquals(II)V

    .line 71
    const-string v0, "FLAG13"

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lorg/xbill/DNS/FlagsTest;->assertEquals(II)V

    .line 74
    const-string v0, "FLAG16"

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/FlagsTest;->assertEquals(II)V

    .line 77
    const-string v0, "THIS IS DEFINITELY UNKNOWN"

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/FlagsTest;->assertEquals(II)V

    .line 80
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Flags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/FlagsTest;->assertEquals(II)V

    .line 81
    return-void
.end method
