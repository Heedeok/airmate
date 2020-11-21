.class public Lorg/xbill/DNS/RcodeTest;
.super Ljunit/framework/TestCase;
.source "RcodeTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_TSIGstring()V
    .registers 3

    .line 71
    const-string v0, "BADSIG"

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/RcodeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v0, 0x14

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/RcodeTest;->assertTrue(Z)V

    .line 77
    const/4 v0, -0x1

    :try_start_1b
    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    .line 78
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RcodeTest;->fail(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_24

    .line 81
    goto :goto_25

    .line 80
    :catch_24
    move-exception v0

    .line 85
    :goto_25
    const/high16 v0, 0x10000

    :try_start_27
    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    .line 86
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RcodeTest;->fail(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2f} :catch_30

    .line 89
    goto :goto_31

    .line 88
    :catch_30
    move-exception v0

    .line 90
    :goto_31
    return-void
.end method

.method public test_string()V
    .registers 3

    .line 44
    const-string v0, "NXDOMAIN"

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/RcodeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "NOTIMP"

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/RcodeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v0, 0x14

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/RcodeTest;->assertTrue(Z)V

    .line 53
    const/4 v0, -0x1

    :try_start_24
    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    .line 54
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RcodeTest;->fail(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2c} :catch_2d

    .line 57
    goto :goto_2e

    .line 56
    :catch_2d
    move-exception v0

    .line 61
    :goto_2e
    const/16 v0, 0x1000

    :try_start_30
    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    .line 62
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RcodeTest;->fail(Ljava/lang/String;)V
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

    .line 95
    const-string v0, "FORMERR"

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/RcodeTest;->assertEquals(II)V

    .line 98
    const-string v0, "NOTIMP"

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/xbill/DNS/RcodeTest;->assertEquals(II)V

    .line 99
    const-string v0, "NOTIMPL"

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RcodeTest;->assertEquals(II)V

    .line 102
    const-string v0, "RESERVED35"

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x23

    invoke-static {v1, v0}, Lorg/xbill/DNS/RcodeTest;->assertEquals(II)V

    .line 105
    const-string v0, "RESERVED4096"

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/RcodeTest;->assertEquals(II)V

    .line 108
    const-string v0, "THIS IS DEFINITELY UNKNOWN"

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RcodeTest;->assertEquals(II)V

    .line 111
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RcodeTest;->assertEquals(II)V

    .line 112
    return-void
.end method
