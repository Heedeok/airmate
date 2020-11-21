.class public Lorg/xbill/DNS/AFSDBRecordTest;
.super Ljunit/framework/TestCase;
.source "AFSDBRecordTest.java"


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
    new-instance v9, Lorg/xbill/DNS/AFSDBRecord;

    const/4 v3, 0x1

    const-wide/32 v4, 0xabcde

    const/16 v6, 0xf1

    move-object v1, v9

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/AFSDBRecord;-><init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;)V

    .line 55
    .local v1, "d":Lorg/xbill/DNS/AFSDBRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/AFSDBRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/AFSDBRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v1}, Lorg/xbill/DNS/AFSDBRecord;->getType()I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3, v2}, Lorg/xbill/DNS/AFSDBRecordTest;->assertEquals(II)V

    .line 57
    invoke-virtual {v1}, Lorg/xbill/DNS/AFSDBRecord;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/AFSDBRecordTest;->assertEquals(II)V

    .line 58
    invoke-virtual {v1}, Lorg/xbill/DNS/AFSDBRecord;->getTTL()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/AFSDBRecordTest;->assertEquals(JJ)V

    .line 59
    invoke-virtual {v1}, Lorg/xbill/DNS/AFSDBRecord;->getSubtype()I

    move-result v2

    const/16 v3, 0xf1

    invoke-static {v3, v2}, Lorg/xbill/DNS/AFSDBRecordTest;->assertEquals(II)V

    .line 60
    invoke-virtual {v1}, Lorg/xbill/DNS/AFSDBRecord;->getHost()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v8, v2}, Lorg/xbill/DNS/AFSDBRecordTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 44
    new-instance v0, Lorg/xbill/DNS/AFSDBRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/AFSDBRecord;-><init>()V

    .line 45
    .local v0, "d":Lorg/xbill/DNS/AFSDBRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/AFSDBRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 46
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/AFSDBRecord;

    invoke-static {v2}, Lorg/xbill/DNS/AFSDBRecordTest;->assertTrue(Z)V

    .line 47
    return-void
.end method
