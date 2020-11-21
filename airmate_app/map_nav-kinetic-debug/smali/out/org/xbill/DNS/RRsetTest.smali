.class public Lorg/xbill/DNS/RRsetTest;
.super Ljunit/framework/TestCase;
.source "RRsetTest.java"


# instance fields
.field m_a1:Lorg/xbill/DNS/ARecord;

.field m_a2:Lorg/xbill/DNS/ARecord;

.field m_name:Lorg/xbill/DNS/Name;

.field m_name2:Lorg/xbill/DNS/Name;

.field private m_rs:Lorg/xbill/DNS/RRset;

.field m_s1:Lorg/xbill/DNS/RRSIGRecord;

.field m_s2:Lorg/xbill/DNS/RRSIGRecord;

.field m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    new-instance v1, Lorg/xbill/DNS/RRset;

    invoke-direct {v1}, Lorg/xbill/DNS/RRset;-><init>()V

    iput-object v1, v0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    .line 63
    const-string v1, "this.is.a.test."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, v0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    .line 64
    const-string v1, "this.is.another.test."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, v0, Lorg/xbill/DNS/RRsetTest;->m_name2:Lorg/xbill/DNS/Name;

    .line 65
    const-wide/32 v1, 0xabcd

    iput-wide v1, v0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    .line 66
    new-instance v1, Lorg/xbill/DNS/ARecord;

    iget-object v4, v0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-wide v6, v0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    const-string v2, "192.169.232.11"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    const/4 v5, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    iput-object v1, v0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    .line 68
    new-instance v1, Lorg/xbill/DNS/ARecord;

    iget-object v10, v0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-wide v2, v0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    const-wide/16 v4, 0x1

    add-long v12, v2, v4

    const-string v2, "192.169.232.12"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    const/4 v11, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    iput-object v1, v0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    .line 71
    new-instance v1, Lorg/xbill/DNS/RRSIGRecord;

    iget-object v2, v0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-wide v3, v0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    new-instance v24, Ljava/util/Date;

    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    new-instance v25, Ljava/util/Date;

    invoke-direct/range {v25 .. v25}, Ljava/util/Date;-><init>()V

    iget-object v5, v0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    const/4 v6, 0x0

    new-array v7, v6, [B

    const/16 v17, 0x1

    const/16 v20, 0x1

    const/16 v21, 0xf

    const-wide/32 v22, 0xabcde

    const/16 v26, 0xa

    move-object v15, v1

    move-object/from16 v16, v2

    move-wide/from16 v18, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v7

    invoke-direct/range {v15 .. v28}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    iput-object v1, v0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    .line 74
    new-instance v1, Lorg/xbill/DNS/RRSIGRecord;

    iget-object v2, v0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-wide v3, v0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    new-instance v36, Ljava/util/Date;

    invoke-direct/range {v36 .. v36}, Ljava/util/Date;-><init>()V

    new-instance v37, Ljava/util/Date;

    invoke-direct/range {v37 .. v37}, Ljava/util/Date;-><init>()V

    iget-object v5, v0, Lorg/xbill/DNS/RRsetTest;->m_name2:Lorg/xbill/DNS/Name;

    new-array v6, v6, [B

    const/16 v29, 0x1

    const/16 v32, 0x1

    const/16 v33, 0xf

    const-wide/32 v34, 0xabcde

    const/16 v38, 0xa

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-wide/from16 v30, v3

    move-object/from16 v39, v5

    move-object/from16 v40, v6

    invoke-direct/range {v27 .. v40}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    iput-object v1, v0, Lorg/xbill/DNS/RRsetTest;->m_s2:Lorg/xbill/DNS/RRSIGRecord;

    .line 77
    return-void
.end method

.method public test_Record_placement()V
    .registers 4

    .line 288
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 289
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 290
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 292
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    .local v0, "itr":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 294
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 296
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 299
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 301
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 303
    return-void
.end method

.method public test_TTLcalculation()V
    .registers 7

    .line 274
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 275
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/ARecord;->getTTL()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(JJ)V

    .line 276
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 277
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/ARecord;->getTTL()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(JJ)V

    .line 279
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 280
    .local v0, "itr":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 282
    .local v1, "r":Lorg/xbill/DNS/Record;
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/ARecord;->getTTL()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RRsetTest;->assertEquals(JJ)V

    .line 283
    .end local v1    # "r":Lorg/xbill/DNS/Record;
    goto :goto_32

    .line 284
    :cond_4c
    return-void
.end method

.method public test_addRR_invalidDClass()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 261
    new-instance v0, Lorg/xbill/DNS/ARecord;

    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-wide v5, p0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    const-string v1, "192.169.232.11"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    const/4 v4, 0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    .line 265
    :try_start_1a
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 266
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_26} :catch_27

    .line 269
    goto :goto_28

    .line 268
    :catch_27
    move-exception v0

    .line 270
    :goto_28
    return-void
.end method

.method public test_addRR_invalidName()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 246
    new-instance v0, Lorg/xbill/DNS/ARecord;

    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_name2:Lorg/xbill/DNS/Name;

    iget-wide v5, p0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    const-string v1, "192.169.232.11"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    const/4 v4, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    .line 250
    :try_start_1a
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 251
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_26} :catch_27

    .line 254
    goto :goto_28

    .line 253
    :catch_27
    move-exception v0

    .line 255
    :goto_28
    return-void
.end method

.method public test_addRR_invalidType()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 232
    new-instance v0, Lorg/xbill/DNS/CNAMERecord;

    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-wide v5, p0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    const-string v1, "an.alias."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v7

    const/4 v4, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/CNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 235
    .local v0, "c":Lorg/xbill/DNS/CNAMERecord;
    :try_start_18
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 236
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_22} :catch_23

    .line 239
    goto :goto_24

    .line 238
    :catch_23
    move-exception v1

    .line 240
    :goto_24
    return-void
.end method

.method public test_basics()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 110
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 111
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    iget-wide v2, p0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RRsetTest;->assertEquals(JJ)V

    .line 115
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 118
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 120
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 121
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 122
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-wide v2, p0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RRsetTest;->assertEquals(JJ)V

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 129
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 130
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 131
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 132
    .local v0, "r":Lorg/xbill/DNS/Record;
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-static {v2, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    iget-wide v2, p0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    iget-object v4, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/xbill/DNS/RRsetTest;->assertEquals(JJ)V

    .line 135
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 137
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    .line 138
    .local v2, "itr":Ljava/util/Iterator;
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v4, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V

    .line 150
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->size()I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 151
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 152
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    iget-object v4, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    iget-object v4, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iget-wide v3, p0, Lorg/xbill/DNS/RRsetTest;->m_ttl:J

    iget-object v5, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/RRsetTest;->assertEquals(JJ)V

    .line 155
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 158
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v4, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 159
    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->size()I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 160
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .end local v2    # "itr":Ljava/util/Iterator;
    .local v1, "itr":Ljava/util/Iterator;
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 164
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 165
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 169
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_s2:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 170
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_s2:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 175
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v3, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V

    .line 176
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_s2:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 182
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->clear()V

    .line 183
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 184
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 185
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 187
    return-void
.end method

.method public test_ctor_0arg()V
    .registers 3

    .line 81
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 82
    :try_start_a
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getDClass()I

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_14} :catch_15

    .line 83
    goto :goto_16

    :catch_15
    move-exception v0

    .line 84
    :goto_16
    :try_start_16
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getType()I

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_20} :catch_21

    .line 85
    goto :goto_22

    :catch_21
    move-exception v0

    .line 86
    :goto_22
    :try_start_22
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getTTL()J

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_2c} :catch_2d

    .line 87
    goto :goto_2e

    :catch_2d
    move-exception v0

    .line 88
    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_38} :catch_39

    .line 89
    goto :goto_3a

    :catch_39
    move-exception v0

    .line 90
    :goto_3a
    :try_start_3a
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_44} :catch_45

    .line 91
    goto :goto_46

    :catch_45
    move-exception v0

    .line 93
    :goto_46
    :try_start_46
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->toString()Ljava/lang/String;

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->fail(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_50} :catch_51

    .line 94
    goto :goto_52

    :catch_51
    move-exception v0

    .line 96
    :goto_52
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "itr":Ljava/util/Iterator;
    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->assertNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 100
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lorg/xbill/DNS/RRsetTest;->assertNotNull(Ljava/lang/Object;)V

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 103
    return-void
.end method

.method public test_ctor_1arg()V
    .registers 5

    .line 191
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 192
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 193
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 194
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_s2:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 196
    new-instance v0, Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-direct {v0, v1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    .line 198
    .local v0, "rs2":Lorg/xbill/DNS/RRset;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lorg/xbill/DNS/RRsetTest;->assertEquals(II)V

    .line 199
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "itr":Ljava/util/Iterator;
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 205
    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 207
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 209
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_s2:Lorg/xbill/DNS/RRSIGRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertFalse(Z)V

    .line 211
    return-void
.end method

.method public test_noncycling_iterator()V
    .registers 5

    .line 307
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 308
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 310
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/Iterator;

    move-result-object v0

    .line 311
    .local v0, "itr":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 312
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 314
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    iget-object v2, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/Iterator;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 318
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 320
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/RRsetTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public test_toString()V
    .registers 6

    .line 215
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a1:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 216
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_a2:Lorg/xbill/DNS/ARecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 217
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_s1:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 218
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_s2:Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 220
    iget-object v0, p0, Lorg/xbill/DNS/RRsetTest;->m_rs:Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lorg/xbill/DNS/RRsetTest;->m_name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 223
    const-string v1, " IN A "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 224
    const-string v1, "[192.169.232.11]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    invoke-static {v1}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 225
    const-string v1, "[192.169.232.12]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_5d

    const/4 v2, 0x1

    nop

    :cond_5d
    invoke-static {v2}, Lorg/xbill/DNS/RRsetTest;->assertTrue(Z)V

    .line 226
    return-void
.end method
