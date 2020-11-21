.class public Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;
.super Ljunit/framework/TestCase;
.source "SOARecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SOARecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rrFromWire"
.end annotation


# instance fields
.field private m_admin:Lorg/xbill/DNS/Name;

.field private m_expire:J

.field private m_host:Lorg/xbill/DNS/Name;

.field private m_minimum:J

.field private m_refresh:J

.field private m_retry:J

.field private m_serial:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 264
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

    .line 272
    const-string v0, "M.h.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_host:Lorg/xbill/DNS/Name;

    .line 273
    const-string v0, "M.a.n."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_admin:Lorg/xbill/DNS/Name;

    .line 274
    const-wide v0, 0xabcdef12L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_serial:J

    .line 275
    const-wide v0, 0xcdef1234L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_refresh:J

    .line 276
    const-wide v0, 0xef123456L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_retry:J

    .line 277
    const-wide/32 v0, 0x12345678

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_expire:J

    .line 278
    const-wide/32 v0, 0x3456789a

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_minimum:J

    .line 279
    return-void
.end method

.method public test()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_54

    .line 292
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 293
    .local v1, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v2}, Lorg/xbill/DNS/SOARecord;-><init>()V

    .line 295
    .local v2, "ar":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/SOARecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 297
    iget-object v3, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_host:Lorg/xbill/DNS/Name;

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getHost()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    iget-object v3, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_admin:Lorg/xbill/DNS/Name;

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getAdmin()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    iget-wide v3, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_serial:J

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->assertEquals(JJ)V

    .line 300
    iget-wide v3, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_refresh:J

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getRefresh()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->assertEquals(JJ)V

    .line 301
    iget-wide v3, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_retry:J

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getRetry()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->assertEquals(JJ)V

    .line 302
    iget-wide v3, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_expire:J

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getExpire()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->assertEquals(JJ)V

    .line 303
    iget-wide v3, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->m_minimum:J

    invoke-virtual {v2}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/SOARecordTest$Test_rrFromWire;->assertEquals(JJ)V

    .line 304
    return-void

    :array_54
    .array-data 1
        0x1t
        0x6dt
        0x1t
        0x68t
        0x1t
        0x6et
        0x0t
        0x1t
        0x6dt
        0x1t
        0x61t
        0x1t
        0x6et
        0x0t
        -0x55t
        -0x33t
        -0x11t
        0x12t
        -0x33t
        -0x11t
        0x12t
        0x34t
        -0x11t
        0x12t
        0x34t
        0x56t
        0x12t
        0x34t
        0x56t
        0x78t
        0x34t
        0x56t
        0x78t
        -0x66t
    .end array-data
.end method
