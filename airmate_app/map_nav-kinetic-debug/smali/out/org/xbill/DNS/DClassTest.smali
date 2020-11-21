.class public Lorg/xbill/DNS/DClassTest;
.super Ljunit/framework/TestCase;
.source "DClassTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_string()V
    .registers 3

    .line 44
    const-string v0, "IN"

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/DClassTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "CH"

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/DClassTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v0, 0x14

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLASS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/DClassTest;->assertTrue(Z)V

    .line 53
    const/4 v0, -0x1

    :try_start_24
    invoke-static {v0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    .line 54
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DClassTest;->fail(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2c} :catch_2d

    .line 57
    goto :goto_2e

    .line 56
    :catch_2d
    move-exception v0

    .line 61
    :goto_2e
    const/high16 v0, 0x10000

    :try_start_30
    invoke-static {v0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    .line 62
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DClassTest;->fail(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_38} :catch_39

    .line 65
    goto :goto_3a

    .line 64
    :catch_39
    move-exception v0

    .line 66
    :goto_3a
    return-void
.end method

.method public test_value()V
    .registers 3

    .line 71
    const-string v0, "NONE"

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfe

    invoke-static {v1, v0}, Lorg/xbill/DNS/DClassTest;->assertEquals(II)V

    .line 74
    const-string v0, "HS"

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/xbill/DNS/DClassTest;->assertEquals(II)V

    .line 75
    const-string v0, "HESIOD"

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DClassTest;->assertEquals(II)V

    .line 78
    const-string v0, "CLASS21"

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x15

    invoke-static {v1, v0}, Lorg/xbill/DNS/DClassTest;->assertEquals(II)V

    .line 81
    const-string v0, "THIS IS DEFINITELY UNKNOWN"

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/DClassTest;->assertEquals(II)V

    .line 84
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DClassTest;->assertEquals(II)V

    .line 85
    return-void
.end method
