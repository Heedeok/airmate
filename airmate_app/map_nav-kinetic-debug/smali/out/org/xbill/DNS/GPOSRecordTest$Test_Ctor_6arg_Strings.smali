.class public Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;
.super Ljunit/framework/TestCase;
.source "GPOSRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/GPOSRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_Ctor_6arg_Strings"
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

    .line 144
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

    .line 152
    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_n:Lorg/xbill/DNS/Name;

    .line 153
    const-wide/32 v0, 0xabcd

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_ttl:J

    .line 154
    const-wide v0, -0x3fdb23d70a3d70a4L    # -10.43

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_lat:D

    .line 155
    const-wide v0, 0x405307ae147ae148L    # 76.12

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_long:D

    .line 156
    const-wide v0, 0x40590676c8b43958L    # 100.101

    iput-wide v0, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    .line 157
    return-void
.end method

.method public test_basic()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 161
    new-instance v8, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_n:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_ttl:J

    new-instance v0, Ljava/lang/Double;

    iget-wide v5, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_long:D

    invoke-direct {v0, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/Double;

    iget-wide v6, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_lat:D

    invoke-direct {v0, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/Double;

    iget-wide v9, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    invoke-direct {v0, v9, v10}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "gr":Lorg/xbill/DNS/GPOSRecord;
    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_n:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getDClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(II)V

    .line 167
    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getType()I

    move-result v1

    const/16 v2, 0x1b

    invoke-static {v2, v1}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(II)V

    .line 168
    iget-wide v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(JJ)V

    .line 169
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_long:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_lat:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getAltitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_long:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLongitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_lat:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getLatitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/GPOSRecord;->getAltitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public test_toobig_latitude()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 213
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_ttl:J

    new-instance v5, Ljava/lang/Double;

    iget-wide v6, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_long:D

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "180.001"

    new-instance v7, Ljava/lang/Double;

    iget-wide v8, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->fail(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_28

    .line 217
    goto :goto_29

    :catch_28
    move-exception v0

    .line 218
    :goto_29
    return-void
.end method

.method public test_toobig_longitude()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 191
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_ttl:J

    const-string v5, "90.001"

    new-instance v6, Ljava/lang/Double;

    iget-wide v7, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_lat:D

    invoke-direct {v6, v7, v8}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Double;

    iget-wide v8, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->fail(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_28

    .line 196
    goto :goto_29

    :catch_28
    move-exception v0

    .line 197
    :goto_29
    return-void
.end method

.method public test_toosmall_latitude()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 202
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_ttl:J

    new-instance v5, Ljava/lang/Double;

    iget-wide v6, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_long:D

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-180.001"

    new-instance v7, Ljava/lang/Double;

    iget-wide v8, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->fail(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_28

    .line 207
    goto :goto_29

    :catch_28
    move-exception v0

    .line 208
    :goto_29
    return-void
.end method

.method public test_toosmall_longitude()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 180
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_n:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_ttl:J

    const-string v5, "-90.001"

    new-instance v6, Ljava/lang/Double;

    iget-wide v7, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_lat:D

    invoke-direct {v6, v7, v8}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Double;

    iget-wide v8, p0, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->m_alt:D

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/GPOSRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/GPOSRecordTest$Test_Ctor_6arg_Strings;->fail(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_28

    .line 185
    goto :goto_29

    :catch_28
    move-exception v0

    .line 186
    :goto_29
    return-void
.end method
