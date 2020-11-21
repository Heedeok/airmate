.class public Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;
.super Ljunit/framework/TestCase;
.source "DSRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DSRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_Ctor_7arg"
.end annotation


# instance fields
.field private m_algorithm:I

.field private m_digest:[B

.field private m_digestid:I

.field private m_footprint:I

.field private m_n:Lorg/xbill/DNS/Name;

.field private m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
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

    .line 76
    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    .line 77
    const-wide/32 v0, 0xabcd

    iput-wide v0, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    .line 78
    const v0, 0xef01

    iput v0, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    .line 79
    const/16 v0, 0x23

    iput v0, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    .line 80
    const/16 v0, 0x45

    iput v0, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    iput-object v0, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    .line 82
    return-void

    nop

    :array_24
    .array-data 1
        0x67t
        -0x77t
        -0x55t
        -0x33t
        -0x11t
    .end array-data
.end method

.method public test_basic()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 86
    new-instance v9, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    iget v6, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    iget v7, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    iget-object v8, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    const/4 v2, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 88
    .local v0, "dr":Lorg/xbill/DNS/DSRecord;
    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 90
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getType()I

    move-result v1

    const/16 v2, 0x2b

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 91
    iget-wide v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(JJ)V

    .line 92
    iget v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 93
    iget v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 94
    iget v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 95
    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigest()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertTrue(Z)V

    .line 96
    return-void
.end method

.method public test_null_digest()V
    .registers 11

    .line 160
    new-instance v9, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    iget v6, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    iget v7, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    const/4 v2, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 162
    .local v0, "dr":Lorg/xbill/DNS/DSRecord;
    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 164
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getType()I

    move-result v1

    const/16 v2, 0x2b

    invoke-static {v2, v1}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 165
    iget-wide v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(JJ)V

    .line 166
    iget v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 167
    iget v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 168
    iget v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertEquals(II)V

    .line 169
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigest()[B

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->assertNull(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public test_toobig_algorithm()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 131
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    const/high16 v6, 0x10000

    iget v7, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    iget-object v8, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 133
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->fail(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_18

    .line 135
    goto :goto_19

    :catch_18
    move-exception v0

    .line 136
    :goto_19
    return-void
.end method

.method public test_toobig_digestid()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 151
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    iget v6, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    const/high16 v7, 0x10000

    iget-object v8, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 153
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->fail(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_18

    .line 155
    goto :goto_19

    :catch_18
    move-exception v0

    .line 156
    :goto_19
    return-void
.end method

.method public test_toobig_footprint()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 111
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    const/high16 v5, 0x10000

    iget v6, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    iget v7, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    iget-object v8, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 113
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->fail(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_18

    .line 115
    goto :goto_19

    :catch_18
    move-exception v0

    .line 116
    :goto_19
    return-void
.end method

.method public test_toosmall_algorithm()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 121
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    const/4 v6, -0x1

    iget v7, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    iget-object v8, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 123
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_17

    .line 125
    goto :goto_18

    :catch_17
    move-exception v0

    .line 126
    :goto_18
    return-void
.end method

.method public test_toosmall_digestid()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 141
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    iget v5, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_footprint:I

    iget v6, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    const/4 v7, -0x1

    iget-object v8, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 143
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_17

    .line 145
    goto :goto_18

    :catch_17
    move-exception v0

    .line 146
    :goto_18
    return-void
.end method

.method public test_toosmall_footprint()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_ttl:J

    const/4 v5, -0x1

    iget v6, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_algorithm:I

    iget v7, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digestid:I

    iget-object v8, p0, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->m_digest:[B

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 103
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DSRecordTest$Test_Ctor_7arg;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_17

    .line 105
    goto :goto_18

    :catch_17
    move-exception v0

    .line 106
    :goto_18
    return-void
.end method
