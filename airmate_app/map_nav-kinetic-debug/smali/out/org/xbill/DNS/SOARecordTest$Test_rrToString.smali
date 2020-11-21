.class public Lorg/xbill/DNS/SOARecordTest$Test_rrToString;
.super Ljunit/framework/TestCase;
.source "SOARecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SOARecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rrToString"
.end annotation


# instance fields
.field private m_admin:Lorg/xbill/DNS/Name;

.field private m_an:Lorg/xbill/DNS/Name;

.field private m_expire:J

.field private m_host:Lorg/xbill/DNS/Name;

.field private m_minimum:J

.field private m_refresh:J

.field private m_retry:J

.field private m_serial:J

.field private m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 364
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 371
    const-string v0, "My.absolute.name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_an:Lorg/xbill/DNS/Name;

    .line 372
    const-wide/16 v0, 0x13a8

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_ttl:J

    .line 373
    const-string v0, "M.h.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_host:Lorg/xbill/DNS/Name;

    .line 374
    const-string v0, "M.a.n."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_admin:Lorg/xbill/DNS/Name;

    .line 375
    const-wide v0, 0xabcdef12L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_serial:J

    .line 376
    const-wide v0, 0xcdef1234L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_refresh:J

    .line 377
    const-wide v0, 0xef123456L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_retry:J

    .line 378
    const-wide/32 v0, 0x12345678

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_expire:J

    .line 379
    const-wide/32 v0, 0x3456789a

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_minimum:J

    .line 380
    return-void
.end method

.method public test_multiLine()V
    .registers 22

    .line 397
    move-object/from16 v0, p0

    new-instance v18, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v1, v18

    iget-object v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v4, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_ttl:J

    iget-object v6, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_host:Lorg/xbill/DNS/Name;

    iget-object v7, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v8, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_serial:J

    iget-wide v10, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_refresh:J

    iget-wide v12, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_retry:J

    iget-wide v14, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_expire:J

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_minimum:J

    move-wide/from16 v16, v1

    const/4 v3, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct/range {v1 .. v17}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    move-object/from16 v1, v18

    .line 400
    .local v1, "ar":Lorg/xbill/DNS/SOARecord;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "^.*\\(\\n\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_serial:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "\\s*;\\s*serial\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_refresh:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "\\s*;\\s*refresh\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_retry:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "\\s*;\\s*retry\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_expire:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "\\s*;\\s*expire\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_minimum:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "\\s*\\)\\s*;\\s*minimum$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "re":Ljava/lang/String;
    const-string v3, "multiline"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->rrToString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "out":Ljava/lang/String;
    const-string v4, "multiline"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->unset(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->assertTrue(Z)V

    .line 412
    return-void
.end method

.method public test_singleLine()V
    .registers 22

    .line 384
    move-object/from16 v0, p0

    new-instance v18, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v1, v18

    iget-object v2, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v4, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_ttl:J

    iget-object v6, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_host:Lorg/xbill/DNS/Name;

    iget-object v7, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v8, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_serial:J

    iget-wide v10, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_refresh:J

    iget-wide v12, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_retry:J

    iget-wide v14, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_expire:J

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_minimum:J

    move-wide/from16 v16, v1

    const/4 v3, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct/range {v1 .. v17}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    move-object/from16 v1, v18

    .line 387
    .local v1, "ar":Lorg/xbill/DNS/SOARecord;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_host:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_serial:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_refresh:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_retry:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_expire:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->m_minimum:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "exp":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->rrToString()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "out":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/xbill/DNS/SOARecordTest$Test_rrToString;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method
