.class public Lorg/xbill/DNS/ExtendedFlagsTest;
.super Ljunit/framework/TestCase;
.source "ExtendedFlagsTest.java"


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
    const-string v0, "do"

    const v1, 0x8000

    invoke-static {v1}, Lorg/xbill/DNS/ExtendedFlags;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/ExtendedFlagsTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->string(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->assertTrue(Z)V

    .line 50
    const/4 v0, -0x1

    :try_start_1b
    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->string(I)Ljava/lang/String;

    .line 51
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->fail(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_24

    .line 54
    goto :goto_25

    .line 53
    :catch_24
    move-exception v0

    .line 58
    :goto_25
    const/high16 v0, 0x10000

    :try_start_27
    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->string(I)Ljava/lang/String;

    .line 59
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->fail(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2f} :catch_30

    .line 62
    goto :goto_31

    .line 61
    :catch_30
    move-exception v0

    .line 63
    :goto_31
    return-void
.end method

.method public test_value()V
    .registers 3

    .line 68
    const-string v0, "do"

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->value(Ljava/lang/String;)I

    move-result v0

    const v1, 0x8000

    invoke-static {v1, v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->assertEquals(II)V

    .line 71
    const-string v0, "FLAG16"

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->assertEquals(II)V

    .line 74
    const-string v0, "FLAG65536"

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->assertEquals(II)V

    .line 77
    const-string v0, "THIS IS DEFINITELY UNKNOWN"

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->assertEquals(II)V

    .line 80
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedFlags;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/ExtendedFlagsTest;->assertEquals(II)V

    .line 81
    return-void
.end method
