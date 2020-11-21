.class public Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;
.super Ljunit/framework/TestCase;
.source "SOARecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SOARecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rrToWire"
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

    .line 415
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

    .line 422
    const-string v0, "My.Abs.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    .line 423
    const-wide/16 v0, 0x13a8

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_ttl:J

    .line 424
    const-string v0, "M.h.N."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_host:Lorg/xbill/DNS/Name;

    .line 425
    const-string v0, "M.a.n."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_admin:Lorg/xbill/DNS/Name;

    .line 426
    const-wide v0, 0xabcdef12L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_serial:J

    .line 427
    const-wide v0, 0xcdef1234L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_refresh:J

    .line 428
    const-wide v0, 0xef123456L

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_retry:J

    .line 429
    const-wide/32 v0, 0x12345678

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_expire:J

    .line 430
    const-wide/32 v0, 0x3456789a

    iput-wide v0, p0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_minimum:J

    .line 431
    return-void
.end method

.method public test_canonical()V
    .registers 23

    .line 435
    move-object/from16 v0, p0

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_46

    .line 444
    .local v1, "exp":[B
    new-instance v19, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v2, v19

    iget-object v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_ttl:J

    iget-object v7, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_serial:J

    iget-wide v11, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_refresh:J

    iget-wide v13, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_retry:J

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .end local v1    # "exp":[B
    .local v20, "exp":[B
    iget-wide v1, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_expire:J

    move-wide v15, v1

    iget-wide v1, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_minimum:J

    move-wide/from16 v17, v1

    const/4 v4, 0x1

    move-object/from16 v2, v21

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    move-object/from16 v1, v19

    .line 447
    .local v1, "ar":Lorg/xbill/DNS/SOARecord;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 448
    .local v2, "o":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/xbill/DNS/SOARecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 450
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    move-object/from16 v4, v20

    .end local v20    # "exp":[B
    .local v4, "exp":[B
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 451
    return-void

    nop

    :array_46
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

.method public test_case_sensitive()V
    .registers 23

    .line 455
    move-object/from16 v0, p0

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_46

    .line 464
    .local v1, "exp":[B
    new-instance v19, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v2, v19

    iget-object v3, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v5, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_ttl:J

    iget-object v7, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_host:Lorg/xbill/DNS/Name;

    iget-object v8, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_admin:Lorg/xbill/DNS/Name;

    iget-wide v9, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_serial:J

    iget-wide v11, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_refresh:J

    iget-wide v13, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_retry:J

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    .end local v1    # "exp":[B
    .local v20, "exp":[B
    iget-wide v1, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_expire:J

    move-wide v15, v1

    iget-wide v1, v0, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->m_minimum:J

    move-wide/from16 v17, v1

    const/4 v4, 0x1

    move-object/from16 v2, v21

    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    move-object/from16 v1, v19

    .line 467
    .local v1, "ar":Lorg/xbill/DNS/SOARecord;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 468
    .local v2, "o":Lorg/xbill/DNS/DNSOutput;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/xbill/DNS/SOARecord;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 470
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    move-object/from16 v4, v20

    .end local v20    # "exp":[B
    .local v4, "exp":[B
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/SOARecordTest$Test_rrToWire;->assertTrue(Z)V

    .line 471
    return-void

    :array_46
    .array-data 1
        0x1t
        0x4dt
        0x1t
        0x68t
        0x1t
        0x4et
        0x0t
        0x1t
        0x4dt
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
