.class public Lorg/xbill/DNS/ExceptionTest;
.super Ljunit/framework/TestCase;
.source "ExceptionTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_InvalidDClassException()V
    .registers 4

    .line 44
    new-instance v0, Lorg/xbill/DNS/InvalidDClassException;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/xbill/DNS/InvalidDClassException;-><init>(I)V

    .line 45
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Invalid DNS class: 10"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public test_InvalidTTLException()V
    .registers 4

    .line 50
    new-instance v0, Lorg/xbill/DNS/InvalidTTLException;

    const-wide/16 v1, 0x7e59

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/InvalidTTLException;-><init>(J)V

    .line 51
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Invalid DNS TTL: 32345"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public test_InvalidTypeException()V
    .registers 4

    .line 56
    new-instance v0, Lorg/xbill/DNS/InvalidTypeException;

    const/16 v1, 0x7e59

    invoke-direct {v0, v1}, Lorg/xbill/DNS/InvalidTypeException;-><init>(I)V

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Invalid DNS type: 32345"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public test_NameTooLongException()V
    .registers 4

    .line 62
    new-instance v0, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v0}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    .line 63
    .local v0, "e":Lorg/xbill/DNS/WireParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/WireParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/ExceptionTest;->assertNull(Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lorg/xbill/DNS/NameTooLongException;

    const-string v2, "This is my too long name"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/NameTooLongException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 66
    const-string v1, "This is my too long name"

    invoke-virtual {v0}, Lorg/xbill/DNS/WireParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public test_RelativeNameException()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    const-string v1, "This is my relative name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "This is my relative name"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lorg/xbill/DNS/RelativeNameException;

    const-string v2, "relative"

    invoke-static {v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    move-object v0, v1

    .line 75
    const-string v1, "\'relative\' is not an absolute name"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public test_TextParseException()V
    .registers 4

    .line 80
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    invoke-direct {v0}, Lorg/xbill/DNS/TextParseException;-><init>()V

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/ExceptionTest;->assertNull(Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lorg/xbill/DNS/TextParseException;

    const-string v2, "This is my message"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 84
    const-string v1, "This is my message"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public test_WireParseException()V
    .registers 4

    .line 89
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    invoke-direct {v0}, Lorg/xbill/DNS/WireParseException;-><init>()V

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/ExceptionTest;->assertNull(Ljava/lang/Object;)V

    .line 92
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "This is my message"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 93
    const-string v1, "This is my message"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public test_ZoneTransferException()V
    .registers 4

    .line 98
    new-instance v0, Lorg/xbill/DNS/ZoneTransferException;

    invoke-direct {v0}, Lorg/xbill/DNS/ZoneTransferException;-><init>()V

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/ExceptionTest;->assertNull(Ljava/lang/Object;)V

    .line 101
    new-instance v1, Lorg/xbill/DNS/ZoneTransferException;

    const-string v2, "This is my message"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/ZoneTransferException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    const-string v1, "This is my message"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/ExceptionTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method
