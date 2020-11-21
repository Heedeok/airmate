.class public Lorg/xbill/DNS/OpcodeTest;
.super Ljunit/framework/TestCase;
.source "OpcodeTest.java"


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
    const-string v0, "IQUERY"

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/xbill/DNS/Opcode;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/OpcodeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->string(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/OpcodeTest;->assertTrue(Z)V

    .line 50
    const/4 v0, -0x1

    :try_start_19
    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->string(I)Ljava/lang/String;

    .line 51
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/OpcodeTest;->fail(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_21} :catch_22

    .line 54
    goto :goto_23

    .line 53
    :catch_22
    move-exception v0

    .line 58
    :goto_23
    const/16 v0, 0x10

    :try_start_25
    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->string(I)Ljava/lang/String;

    .line 59
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/OpcodeTest;->fail(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2d} :catch_2e

    .line 62
    goto :goto_2f

    .line 61
    :catch_2e
    move-exception v0

    .line 63
    :goto_2f
    return-void
.end method

.method public test_value()V
    .registers 3

    .line 68
    const-string v0, "STATUS"

    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lorg/xbill/DNS/OpcodeTest;->assertEquals(II)V

    .line 71
    const-string v0, "RESERVED6"

    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lorg/xbill/DNS/OpcodeTest;->assertEquals(II)V

    .line 74
    const-string v0, "RESERVED16"

    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->value(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/OpcodeTest;->assertEquals(II)V

    .line 77
    const-string v0, "THIS IS DEFINITELY UNKNOWN"

    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/OpcodeTest;->assertEquals(II)V

    .line 80
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Opcode;->value(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/OpcodeTest;->assertEquals(II)V

    .line 81
    return-void
.end method
