.class public Lorg/xbill/DNS/NSAP_PTRRecordTest;
.super Ljunit/framework/TestCase;
.source "NSAP_PTRRecordTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_ctor_0arg()V
    .registers 3

    .line 43
    new-instance v0, Lorg/xbill/DNS/NSAP_PTRRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>()V

    .line 44
    .local v0, "d":Lorg/xbill/DNS/NSAP_PTRRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/NSAP_PTRRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0}, Lorg/xbill/DNS/NSAP_PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertNull(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public test_ctor_4arg()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 50
    const-string v0, "my.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 51
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "my.alias."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v7

    .line 53
    .local v7, "a":Lorg/xbill/DNS/Name;
    new-instance v8, Lorg/xbill/DNS/NSAP_PTRRecord;

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde

    move-object v1, v8

    move-object v2, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 54
    .local v1, "d":Lorg/xbill/DNS/NSAP_PTRRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/NSAP_PTRRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v1}, Lorg/xbill/DNS/NSAP_PTRRecord;->getType()I

    move-result v2

    const/16 v3, 0x17

    invoke-static {v3, v2}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertEquals(II)V

    .line 56
    invoke-virtual {v1}, Lorg/xbill/DNS/NSAP_PTRRecord;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertEquals(II)V

    .line 57
    invoke-virtual {v1}, Lorg/xbill/DNS/NSAP_PTRRecord;->getTTL()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertEquals(JJ)V

    .line 58
    invoke-virtual {v1}, Lorg/xbill/DNS/NSAP_PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 63
    new-instance v0, Lorg/xbill/DNS/NSAP_PTRRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>()V

    .line 64
    .local v0, "d":Lorg/xbill/DNS/NSAP_PTRRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/NSAP_PTRRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 65
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/NSAP_PTRRecord;

    invoke-static {v2}, Lorg/xbill/DNS/NSAP_PTRRecordTest;->assertTrue(Z)V

    .line 66
    return-void
.end method
