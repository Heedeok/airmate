.class public Lorg/xbill/DNS/SectionTest;
.super Ljunit/framework/TestCase;
.source "SectionTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_longString()V
    .registers 3

    .line 76
    const-string v0, "ADDITIONAL RECORDS"

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SectionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, -0x1

    :try_start_b
    invoke-static {v0}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    .line 79
    :goto_10
    const/4 v0, 0x4

    :try_start_11
    invoke-static {v0}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    .line 80
    :goto_16
    return-void
.end method

.method public test_string()V
    .registers 3

    .line 44
    const-string v0, "au"

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/xbill/DNS/Section;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SectionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, -0x1

    :try_start_b
    invoke-static {v0}, Lorg/xbill/DNS/Section;->string(I)Ljava/lang/String;

    .line 48
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SectionTest;->fail(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_13} :catch_14

    .line 51
    goto :goto_15

    .line 50
    :catch_14
    move-exception v0

    .line 55
    :goto_15
    const/4 v0, 0x4

    :try_start_16
    invoke-static {v0}, Lorg/xbill/DNS/Section;->string(I)Ljava/lang/String;

    .line 56
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SectionTest;->fail(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 59
    goto :goto_20

    .line 58
    :catch_1f
    move-exception v0

    .line 60
    :goto_20
    return-void
.end method

.method public test_updString()V
    .registers 3

    .line 84
    const-string v0, "ZONE"

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/xbill/DNS/Section;->updString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SectionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, -0x1

    :try_start_b
    invoke-static {v0}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    .line 87
    :goto_10
    const/4 v0, 0x4

    :try_start_11
    invoke-static {v0}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    .line 88
    :goto_16
    return-void
.end method

.method public test_value()V
    .registers 3

    .line 65
    const-string v0, "ad"

    invoke-static {v0}, Lorg/xbill/DNS/Section;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/xbill/DNS/SectionTest;->assertEquals(II)V

    .line 68
    const-string v0, "THIS IS DEFINITELY UNKNOWN"

    invoke-static {v0}, Lorg/xbill/DNS/Section;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/SectionTest;->assertEquals(II)V

    .line 71
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Section;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/SectionTest;->assertEquals(II)V

    .line 72
    return-void
.end method
