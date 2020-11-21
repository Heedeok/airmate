.class public Lorg/xbill/DNS/MXRecordTest;
.super Ljunit/framework/TestCase;
.source "MXRecordTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_ctor_5arg()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 51
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 52
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "My.OtherName."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 54
    .local v8, "m":Lorg/xbill/DNS/Name;
    new-instance v9, Lorg/xbill/DNS/MXRecord;

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde

    const/16 v6, 0xf1

    move-object v1, v9

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/MXRecord;-><init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;)V

    .line 55
    .local v1, "d":Lorg/xbill/DNS/MXRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/MXRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/MXRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1}, Lorg/xbill/DNS/MXRecord;->getType()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3, v2}, Lorg/xbill/DNS/MXRecordTest;->assertEquals(II)V

    .line 57
    invoke-virtual {v1}, Lorg/xbill/DNS/MXRecord;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/MXRecordTest;->assertEquals(II)V

    .line 58
    invoke-virtual {v1}, Lorg/xbill/DNS/MXRecord;->getTTL()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/MXRecordTest;->assertEquals(JJ)V

    .line 59
    invoke-virtual {v1}, Lorg/xbill/DNS/MXRecord;->getPriority()I

    move-result v2

    const/16 v3, 0xf1

    invoke-static {v3, v2}, Lorg/xbill/DNS/MXRecordTest;->assertEquals(II)V

    .line 60
    invoke-virtual {v1}, Lorg/xbill/DNS/MXRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v8, v2}, Lorg/xbill/DNS/MXRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v1}, Lorg/xbill/DNS/MXRecord;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v8, v2}, Lorg/xbill/DNS/MXRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 44
    new-instance v0, Lorg/xbill/DNS/MXRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MXRecord;-><init>()V

    .line 45
    .local v0, "d":Lorg/xbill/DNS/MXRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/MXRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 46
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/MXRecord;

    invoke-static {v2}, Lorg/xbill/DNS/MXRecordTest;->assertTrue(Z)V

    .line 47
    return-void
.end method

.method public test_rrToWire()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 66
    const-string v0, "My.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 67
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "M.O.n."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v8

    .line 69
    .local v8, "m":Lorg/xbill/DNS/Name;
    new-instance v9, Lorg/xbill/DNS/MXRecord;

    const/4 v3, 0x1

    const-wide/32 v4, 0xb12f

    const/16 v6, 0x1f2b

    move-object v1, v9

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/MXRecord;-><init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;)V

    .line 72
    .local v1, "mr":Lorg/xbill/DNS/MXRecord;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 73
    .local v2, "dout":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/xbill/DNS/MXRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 74
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    .line 75
    .local v4, "out":[B
    const/16 v5, 0x9

    new-array v6, v5, [B

    fill-array-data v6, :array_52

    .line 76
    .local v6, "exp":[B
    invoke-static {v6, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/MXRecordTest;->assertTrue(Z)V

    .line 79
    new-instance v7, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v2, v7

    .line 80
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v7}, Lorg/xbill/DNS/MXRecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 81
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    .line 82
    .end local v4    # "out":[B
    .local v3, "out":[B
    new-array v4, v5, [B

    fill-array-data v4, :array_5c

    .line 83
    .end local v6    # "exp":[B
    .local v4, "exp":[B
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/MXRecordTest;->assertTrue(Z)V

    .line 84
    return-void

    nop

    :array_52
    .array-data 1
        0x1ft
        0x2bt
        0x1t
        0x6dt
        0x1t
        0x6ft
        0x1t
        0x6et
        0x0t
    .end array-data

    nop

    :array_5c
    .array-data 1
        0x1ft
        0x2bt
        0x1t
        0x4dt
        0x1t
        0x4ft
        0x1t
        0x6et
        0x0t
    .end array-data
.end method
