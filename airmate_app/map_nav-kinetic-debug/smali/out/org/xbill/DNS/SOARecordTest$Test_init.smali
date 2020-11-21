.class public Lorg/xbill/DNS/SOARecordTest$Test_init;
.super Ljunit/framework/TestCase;
.source "SOARecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SOARecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_init"
.end annotation


# instance fields
.field private m_admin:Lorg/xbill/DNS/Name;

.field private m_an:Lorg/xbill/DNS/Name;

.field private m_expire:J

.field private m_host:Lorg/xbill/DNS/Name;

.field private m_minimum:J

.field private m_refresh:J

.field private m_retry:J

.field private m_rn:Lorg/xbill/DNS/Name;

.field private m_serial:J

.field private m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 67
    const-string v0, "My.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    .line 68
    const-string v0, "My.Relative.Name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_rn:Lorg/xbill/DNS/Name;

    .line 69
    const-string v0, "My.Host.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    .line 70
    const-string v0, "My.Administrative.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    .line 71
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    .line 72
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    .line 73
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    .line 74
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    .line 75
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    .line 76
    invoke-static {}, Lorg/xbill/DNS/SOARecordTest;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    .line 77
    return-void
.end method

.method public test_0arg()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SOARecord;-><init>()V

    .line 82
    .local v0, "ar":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertNull(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(II)V

    .line 84
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(II)V

    .line 85
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 86
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getHost()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertNull(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getAdmin()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertNull(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 89
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getRefresh()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 90
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getRetry()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 91
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getExpire()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 92
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 93
    return-void
.end method

.method public test_10arg()V
    .registers 22

    .line 104
    move-object/from16 v0, p0

    new-instance v18, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v1, v18

    iget-object v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v4, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v6, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v7, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v8, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v10, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v12, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    iget-wide v14, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v16, v1

    const/4 v3, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct/range {v1 .. v17}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    move-object/from16 v1, v18

    .line 107
    .local v1, "ar":Lorg/xbill/DNS/SOARecord;
    iget-object v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getType()I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(II)V

    .line 109
    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getDClass()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(II)V

    .line 110
    iget-wide v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 111
    iget-object v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getHost()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-object v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getAdmin()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-wide v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 114
    iget-wide v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getRefresh()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 115
    iget-wide v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getRetry()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 116
    iget-wide v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getExpire()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 117
    iget-wide v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertEquals(JJ)V

    .line 118
    return-void
.end method

.method public test_10arg_negative_expire()V
    .registers 22

    .line 222
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    const-wide/16 v15, -0x1

    move-wide/from16 v19, v5

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v4

    const/4 v0, 0x1

    move v4, v0

    move-wide/from16 v5, v19

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 225
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_26} :catch_27

    .line 227
    goto :goto_28

    :catch_27
    move-exception v0

    .line 228
    :goto_28
    return-void
.end method

.method public test_10arg_negative_minimun()V
    .registers 22

    .line 244
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    move-wide/from16 v19, v5

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    const-wide/16 v17, -0x1

    move-wide v15, v4

    const/4 v0, 0x1

    move v4, v0

    move-wide/from16 v5, v19

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 247
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_25} :catch_26

    .line 249
    goto :goto_27

    :catch_26
    move-exception v0

    .line 250
    :goto_27
    return-void
.end method

.method public test_10arg_negative_refresh()V
    .registers 22

    .line 178
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v19, v11

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v11

    move-wide/from16 v15, v19

    const-wide/16 v11, -0x1

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 181
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_25} :catch_26

    .line 183
    goto :goto_27

    :catch_26
    move-exception v0

    .line 184
    :goto_27
    return-void
.end method

.method public test_10arg_negative_retry()V
    .registers 22

    .line 200
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v19, v13

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v13

    move-wide/from16 v15, v19

    const-wide/16 v13, -0x1

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 203
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_25} :catch_26

    .line 205
    goto :goto_27

    :catch_26
    move-exception v0

    .line 206
    :goto_27
    return-void
.end method

.method public test_10arg_negative_serial()V
    .registers 22

    .line 156
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v19, v9

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v9

    move-wide/from16 v15, v19

    const-wide/16 v9, -0x1

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 159
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_25} :catch_26

    .line 161
    goto :goto_27

    :catch_26
    move-exception v0

    .line 162
    :goto_27
    return-void
.end method

.method public test_10arg_relative_admin()V
    .registers 24

    .line 145
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_rn:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    move-wide/from16 v19, v5

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v21, v4

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v4

    move-wide/from16 v15, v21

    const/4 v0, 0x1

    move v4, v0

    move-wide/from16 v5, v19

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 148
    const-string v0, "RelativeNameException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 150
    goto :goto_2c

    :catch_2b
    move-exception v0

    .line 151
    :goto_2c
    return-void
.end method

.method public test_10arg_relative_host()V
    .registers 24

    .line 134
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_rn:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    move-wide/from16 v19, v5

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v21, v4

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v4

    move-wide/from16 v15, v21

    const/4 v0, 0x1

    move v4, v0

    move-wide/from16 v5, v19

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 137
    const-string v0, "RelativeNameException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 139
    goto :goto_2c

    :catch_2b
    move-exception v0

    .line 140
    :goto_2c
    return-void
.end method

.method public test_10arg_relative_name()V
    .registers 24

    .line 123
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_rn:Lorg/xbill/DNS/Name;

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    move-wide/from16 v19, v5

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v21, v4

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v4

    move-wide/from16 v15, v21

    const/4 v0, 0x1

    move v4, v0

    move-wide/from16 v5, v19

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 126
    const-string v0, "RelativeNameException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 128
    goto :goto_2c

    :catch_2b
    move-exception v0

    .line 129
    :goto_2c
    return-void
.end method

.method public test_10arg_toobig_expire()V
    .registers 22

    .line 233
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    const-wide v15, 0x100000000L

    move-wide/from16 v19, v5

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v4

    const/4 v0, 0x1

    move v4, v0

    move-wide/from16 v5, v19

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 236
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_29} :catch_2a

    .line 238
    goto :goto_2b

    :catch_2a
    move-exception v0

    .line 239
    :goto_2b
    return-void
.end method

.method public test_10arg_toobig_minimum()V
    .registers 22

    .line 255
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    move-wide/from16 v19, v5

    iget-wide v4, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    const-wide v17, 0x100000000L

    move-wide v15, v4

    const/4 v0, 0x1

    move v4, v0

    move-wide/from16 v5, v19

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 258
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_28} :catch_29

    .line 260
    goto :goto_2a

    :catch_29
    move-exception v0

    .line 261
    :goto_2a
    return-void
.end method

.method public test_10arg_toobig_refresh()V
    .registers 22

    .line 189
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v19, v11

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v11

    move-wide/from16 v15, v19

    const-wide v11, 0x100000000L

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 192
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_28} :catch_29

    .line 194
    goto :goto_2a

    :catch_29
    move-exception v0

    .line 195
    :goto_2a
    return-void
.end method

.method public test_10arg_toobig_retry()V
    .registers 22

    .line 211
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_serial:J

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v19, v13

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v13

    move-wide/from16 v15, v19

    const-wide v13, 0x100000000L

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 214
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_28} :catch_29

    .line 216
    goto :goto_2a

    :catch_29
    move-exception v0

    .line 217
    :goto_2a
    return-void
.end method

.method public test_10arg_toobig_serial()V
    .registers 22

    .line 167
    move-object/from16 v1, p0

    :try_start_2
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    iget-object v3, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_ttl:J

    iget-object v7, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v11, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_refresh:J

    iget-wide v13, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_retry:J

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_expire:J

    move-wide/from16 v19, v9

    iget-wide v9, v1, Lorg/xbill/DNS/SOARecordTest$Test_init;->m_minimum:J

    move-wide/from16 v17, v9

    move-wide/from16 v15, v19

    const-wide v9, 0x100000000L

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 170
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/SOARecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_28} :catch_29

    .line 172
    goto :goto_2a

    :catch_29
    move-exception v0

    .line 173
    :goto_2a
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 97
    new-instance v0, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SOARecord;-><init>()V

    .line 98
    .local v0, "ar":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 99
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/SOARecord;

    invoke-static {v2}, Lorg/xbill/DNS/SOARecordTest$Test_init;->assertTrue(Z)V

    .line 100
    return-void
.end method
