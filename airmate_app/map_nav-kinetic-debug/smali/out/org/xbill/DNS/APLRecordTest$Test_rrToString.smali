.class public Lorg/xbill/DNS/APLRecordTest$Test_rrToString;
.super Ljunit/framework/TestCase;
.source "APLRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rrToString"
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

    .line 514
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

    .line 529
    const-string v0, "My.Absolute.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_an:Lorg/xbill/DNS/Name;

    .line 530
    const-string v0, "My.Relative.Name"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_rn:Lorg/xbill/DNS/Name;

    .line 531
    const-wide/32 v0, 0x13579

    iput-wide v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_ttl:J

    .line 532
    const-string v0, "193.160.232.5"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr4_string:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr4_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr4:Ljava/net/InetAddress;

    .line 534
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr4:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr4_bytes:[B

    .line 536
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr6_string:Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr6_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr6:Ljava/net/InetAddress;

    .line 538
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr6:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr6_bytes:[B

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_elements:Ljava/util/ArrayList;

    .line 541
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr4:Ljava/net/InetAddress;

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v2, v1, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 542
    .local v0, "e":Lorg/xbill/DNS/APLRecord$Element;
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v1, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr6:Ljava/net/InetAddress;

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-direct {v1, v3, v2, v4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    move-object v0, v1

    .line 545
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method

.method public test()V
    .registers 8

    .line 550
    new-instance v6, Lorg/xbill/DNS/APLRecord;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_an:Lorg/xbill/DNS/Name;

    iget-wide v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_ttl:J

    iget-object v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_elements:Ljava/util/ArrayList;

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    .line 551
    .local v0, "ar":Lorg/xbill/DNS/APLRecord;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "!1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr4_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/12 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->m_addr6_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/64"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/APLRecord;->rrToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/APLRecordTest$Test_rrToString;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method
