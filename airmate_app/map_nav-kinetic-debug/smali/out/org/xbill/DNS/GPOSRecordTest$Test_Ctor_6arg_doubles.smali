.class public Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;
.super Ljunit/framework/TestCase;
.source "GPOSRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/GPOSRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_Ctor_6arg_doubles"
.end annotation


# instance fields
.field private m_alt:D

.field private m_lat:D

.field private m_long:D

.field private m_n:Lorg/xbill/DNS/Name;

.field private m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
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

    .line 69
    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    .line 70
    const-wide/32 v0, 0xabcd

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    .line 71
    const-wide v0, -0x3fdb23d70a3d70a4L    # -10.43

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_lat:D

    .line 72
    const-wide v0, 0x405307ae147ae148L    # 76.12

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_long:D

    .line 73
    const-wide v0, 0x40590676c8b43958L    # 100.101

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    .line 74
    return-void
.end method

.method public test_basic()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 78
    new-instance v11, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    iget-wide v5, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_long:D

    iget-wide v7, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_lat:D

    iget-wide v9, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    const/4 v2, 0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJDDD)V

    .line 80
    .local v0, "gr":Lorg/xbill/DNS/GPOSRecord;
    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getDClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(II)V

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getType()I

    move-result v1

    const/16 v2, 0x1b

    invoke-static {v2, v1}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(II)V

    .line 83
    iget-wide v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(JJ)V

    .line 84
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_long:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_lat:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getAltitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_long:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLongitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_lat:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLatitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getAltitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public test_invalid_string()V
    .registers 11

    .line 135
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    new-instance v5, Ljava/lang/Double;

    iget-wide v6, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_long:D

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "120.\\00ABC"

    new-instance v7, Ljava/lang/Double;

    iget-wide v8, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->fail(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_28

    .line 140
    goto :goto_29

    :catch_28
    move-exception v0

    .line 141
    :goto_29
    return-void
.end method

.method public test_toobig_latitude()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 125
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    iget-wide v5, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_long:D

    const-wide v7, 0x406680083126e979L    # 180.001

    iget-wide v9, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    invoke-direct/range {v0 .. v10}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJDDD)V

    .line 127
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_19

    .line 129
    goto :goto_1a

    :catch_19
    move-exception v0

    .line 130
    :goto_1a
    return-void
.end method

.method public test_toobig_longitude()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 105
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    const-wide v5, 0x40568010624dd2f2L    # 90.001

    iget-wide v7, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_lat:D

    iget-wide v9, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    invoke-direct/range {v0 .. v10}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJDDD)V

    .line 107
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_19

    .line 109
    goto :goto_1a

    :catch_19
    move-exception v0

    .line 110
    :goto_1a
    return-void
.end method

.method public test_toosmall_latitude()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 115
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    iget-wide v5, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_long:D

    const-wide v7, -0x3f997ff7ced91687L    # -180.001

    iget-wide v9, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    invoke-direct/range {v0 .. v10}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJDDD)V

    .line 117
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_19

    .line 119
    goto :goto_1a

    :catch_19
    move-exception v0

    .line 120
    :goto_1a
    return-void
.end method

.method public test_toosmall_longitude()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 95
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_ttl:J

    const-wide v5, -0x3fa97fef9db22d0eL    # -90.001

    iget-wide v7, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_lat:D

    iget-wide v9, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->m_alt:D

    invoke-direct/range {v0 .. v10}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJDDD)V

    .line 97
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_doubles;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_19

    .line 99
    goto :goto_1a

    :catch_19
    move-exception v0

    .line 100
    :goto_1a
    return-void
.end method
