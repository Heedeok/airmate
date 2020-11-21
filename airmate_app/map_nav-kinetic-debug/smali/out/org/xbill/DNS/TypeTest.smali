.class public Lorg/xbill/DNS/TypeTest;
.super Ljunit/framework/TestCase;
.source "TypeTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_isRR()V
    .registers 2

    .line 79
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/TypeTest;->assertTrue(Z)V

    .line 80
    const/16 v0, 0xfb

    invoke-static {v0}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/TypeTest;->assertFalse(Z)V

    .line 81
    return-void
.end method

.method public test_string()V
    .registers 3

    .line 44
    const-string v0, "CNAME"

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TypeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/TypeTest;->assertTrue(Z)V

    .line 50
    const/4 v0, -0x1

    :try_start_1a
    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    .line 51
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TypeTest;->fail(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_22} :catch_23

    .line 54
    goto :goto_24

    .line 53
    :catch_23
    move-exception v0

    .line 55
    :goto_24
    return-void
.end method

.method public test_value()V
    .registers 3

    .line 60
    const-string v0, "MAILB"

    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfd

    invoke-static {v1, v0}, Lorg/xbill/DNS/TypeTest;->assertEquals(II)V

    .line 63
    const-string v0, "TYPE300"

    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1, v0}, Lorg/xbill/DNS/TypeTest;->assertEquals(II)V

    .line 66
    const-string v0, "THIS IS DEFINITELY UNKNOWN"

    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/TypeTest;->assertEquals(II)V

    .line 69
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/TypeTest;->assertEquals(II)V

    .line 70
    return-void
.end method

.method public test_value_2arg()V
    .registers 3

    .line 74
    const-string v0, "301"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;Z)I

    move-result v0

    const/16 v1, 0x12d

    invoke-static {v1, v0}, Lorg/xbill/DNS/TypeTest;->assertEquals(II)V

    .line 75
    return-void
.end method
