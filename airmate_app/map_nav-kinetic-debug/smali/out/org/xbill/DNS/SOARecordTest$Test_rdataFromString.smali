.class public Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;
.super Ljunit/framework/TestCase;
.source "SOARecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SOARecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rdataFromString"
.end annotation


# instance fields
.field private m_admin:Lorg/xbill/DNS/Name;

.field private m_expire:J

.field private m_host:Lorg/xbill/DNS/Name;

.field private m_minimum:J

.field private m_origin:Lorg/xbill/DNS/Name;

.field private m_refresh:J

.field private m_retry:J

.field private m_serial:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 307
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

    .line 315
    const-string v0, "O."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_origin:Lorg/xbill/DNS/Name;

    .line 316
    const-string v0, "M.h"

    iget-object v1, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_origin:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_host:Lorg/xbill/DNS/Name;

    .line 317
    const-string v0, "M.a.n."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_admin:Lorg/xbill/DNS/Name;

    .line 318
    const-wide v0, 0xabcdef12L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_serial:J

    .line 319
    const-wide v0, 0xcdef1234L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_refresh:J

    .line 320
    const-wide v0, 0xef123456L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_retry:J

    .line 321
    const-wide/32 v0, 0x12345678

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_expire:J

    .line 322
    const-wide/32 v0, 0x3456789a

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_minimum:J

    .line 323
    return-void
.end method

.method public test_relative_name()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "M.h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_serial:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_refresh:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_retry:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_expire:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_minimum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v1}, Lorg/xbill/DNS/SOARecord;-><init>()V

    .line 357
    .local v1, "ar":Lorg/xbill/DNS/SOARecord;
    const/4 v2, 0x0

    :try_start_50
    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/SOARecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 358
    const-string v2, "RelativeNameException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->fail(Ljava/lang/String;)V
    :try_end_58
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_50 .. :try_end_58} :catch_59

    .line 360
    goto :goto_5a

    :catch_59
    move-exception v2

    .line 361
    :goto_5a
    return-void
.end method

.method public test_valid()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "M.h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_serial:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_refresh:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_retry:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_expire:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_minimum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "t":Lorg/xbill/DNS/Tokenizer;
    new-instance v1, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v1}, Lorg/xbill/DNS/SOARecord;-><init>()V

    .line 335
    .local v1, "ar":Lorg/xbill/DNS/SOARecord;
    iget-object v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/SOARecord;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 337
    iget-object v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_host:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getHost()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    iget-object v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getAdmin()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_serial:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->assertEquals(JJ)V

    .line 340
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_refresh:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getRefresh()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->assertEquals(JJ)V

    .line 341
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_retry:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getRetry()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->assertEquals(JJ)V

    .line 342
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_expire:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getExpire()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->assertEquals(JJ)V

    .line 343
    iget-wide v2, p0, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->m_minimum:J

    invoke-virtual {v1}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/SOARecordTest$Test_rdataFromString;->assertEquals(JJ)V

    .line 344
    return-void
.end method
