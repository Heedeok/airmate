.class public Lorg/xbill/DNS/APLRecordTest$Test_init;
.super Ljunit/framework/TestCase;
.source "APLRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_init"
.end annotation


# instance fields
.field m_addr4:Ljava/net/InetAddress;

.field m_addr4_bytes:[B

.field m_addr4_string:Ljava/lang/String;

.field m_addr6:Ljava/net/InetAddress;

.field m_addr6_bytes:[B

.field m_addr6_string:Ljava/lang/String;

.field m_an:Lorg/xbill/DNS/Name;

.field m_elements:Ljava/util/ArrayList;

.field m_rn:Lorg/xbill/DNS/Name;

.field m_ttl:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 114
    const-string v0, "My.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    .line 115
    const-string v0, "My.Relative.Name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_rn:Lorg/xbill/DNS/Name;

    .line 116
    const-wide/32 v0, 0x13579

    iput-wide v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_ttl:J

    .line 117
    const-string v0, "193.160.232.5"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr4_string:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr4_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr4:Ljava/net/InetAddress;

    .line 119
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr4:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr4_bytes:[B

    .line 121
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr6_string:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr6_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr6:Ljava/net/InetAddress;

    .line 123
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr6:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr6_bytes:[B

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr4:Ljava/net/InetAddress;

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v2, v1, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 127
    .local v0, "e":Lorg/xbill/DNS/APLRecord$Element;
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_addr6:Ljava/net/InetAddress;

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-direct {v1, v3, v2, v4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    move-object v0, v1

    .line 130
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public test_0arg()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 136
    .local v0, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertNull(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(II)V

    .line 138
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getDClass()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(II)V

    .line 139
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getTTL()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(JJ)V

    .line 140
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertNull(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public test_4arg_basic()V
    .registers 8

    .line 152
    new-instance v6, Lorg/xbill/DNS/APLRecord;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_ttl:J

    iget-object v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 153
    .local v0, "ar":Lorg/xbill/DNS/APLRecord;
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getType()I

    move-result v1

    const/16 v2, 0x2a

    invoke-static {v2, v1}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(II)V

    .line 155
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getDClass()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(II)V

    .line 156
    iget-wide v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_ttl:J

    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getTTL()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(JJ)V

    .line 157
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public test_4arg_empty_elements()V
    .registers 8

    .line 162
    new-instance v6, Lorg/xbill/DNS/APLRecord;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_ttl:J

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 163
    .local v0, "ar":Lorg/xbill/DNS/APLRecord;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public test_4arg_invalid_elements()V
    .registers 9

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    .line 178
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :try_start_11
    new-instance v2, Lorg/xbill/DNS/APLRecord;

    iget-object v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_an:Lorg/xbill/DNS/Name;

    const/4 v4, 0x1

    iget-wide v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_ttl:J

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 181
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/APLRecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_22} :catch_23

    .line 183
    goto :goto_24

    :catch_23
    move-exception v0

    .line 184
    :goto_24
    return-void
.end method

.method public test_4arg_relative_name()V
    .registers 7

    .line 169
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/APLRecord;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_rn:Lorg/xbill/DNS/Name;

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_ttl:J

    iget-object v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_init;->m_elements:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 170
    const-string v0, "RelativeNameException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/APLRecordTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_0 .. :try_end_11} :catch_12

    .line 172
    goto :goto_13

    :catch_12
    move-exception v0

    .line 173
    :goto_13
    return-void
.end method

.method public test_getObject()V
    .registers 4

    .line 145
    new-instance v0, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 146
    .local v0, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 147
    .local v1, "r":Lorg/xbill/DNS/Record;
    instance-of v2, v1, Lorg/xbill/DNS/APLRecord;

    invoke-static {v2}, Lorg/xbill/DNS/APLRecordTest$Test_init;->assertTrue(Z)V

    .line 148
    return-void
.end method
