.class public Lorg/xbill/DNS/EmptyRecordTest;
.super Ljunit/framework/TestCase;
.source "EmptyRecordTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_ctor()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .line 48
    .local v0, "ar":Lorg/xbill/DNS/EmptyRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/EmptyRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/EmptyRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Lorg/xbill/DNS/EmptyRecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 50
    invoke-virtual {v0}, Lorg/xbill/DNS/EmptyRecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 51
    invoke-virtual {v0}, Lorg/xbill/DNS/EmptyRecord;->getTTL()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(JJ)V

    .line 52
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 56
    new-instance v0, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .line 57
    .local v0, "ar":Lorg/xbill/DNS/EmptyRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/EmptyRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 58
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/EmptyRecord;

    invoke-static {v2}, Lorg/xbill/DNS/EmptyRecordTest;->assertTrue(Z)V

    .line 59
    return-void
.end method

.method public test_rdataFromString()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "these are the tokens"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .line 79
    .local v1, "er":Lorg/xbill/DNS/EmptyRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/EmptyRecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 80
    invoke-virtual {v1}, Lorg/xbill/DNS/EmptyRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/EmptyRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v1}, Lorg/xbill/DNS/EmptyRecord;->getType()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 82
    invoke-virtual {v1}, Lorg/xbill/DNS/EmptyRecord;->getDClass()I

    move-result v2

    invoke-static {v3, v2}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 83
    invoke-virtual {v1}, Lorg/xbill/DNS/EmptyRecord;->getTTL()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(JJ)V

    .line 85
    const-string v2, "these"

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public test_rrFromWire()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_3e

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 64
    .local v0, "i":Lorg/xbill/DNS/DNSInput;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 66
    new-instance v2, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .line 67
    .local v2, "er":Lorg/xbill/DNS/EmptyRecord;
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/EmptyRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 68
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 69
    invoke-virtual {v2}, Lorg/xbill/DNS/EmptyRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/EmptyRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v2}, Lorg/xbill/DNS/EmptyRecord;->getType()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 71
    invoke-virtual {v2}, Lorg/xbill/DNS/EmptyRecord;->getDClass()I

    move-result v1

    invoke-static {v3, v1}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 72
    invoke-virtual {v2}, Lorg/xbill/DNS/EmptyRecord;->getTTL()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(JJ)V

    .line 73
    return-void

    :array_3e
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method

.method public test_rrToString()V
    .registers 4

    .line 90
    new-instance v0, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .line 91
    .local v0, "er":Lorg/xbill/DNS/EmptyRecord;
    const-string v1, ""

    invoke-virtual {v0}, Lorg/xbill/DNS/EmptyRecord;->rrToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public test_rrToWire()V
    .registers 5

    .line 96
    new-instance v0, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .line 97
    .local v0, "er":Lorg/xbill/DNS/EmptyRecord;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 98
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/EmptyRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 99
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/EmptyRecordTest;->assertEquals(II)V

    .line 100
    return-void
.end method
