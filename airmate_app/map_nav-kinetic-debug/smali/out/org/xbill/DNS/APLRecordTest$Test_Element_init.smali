.class public Lorg/xbill/DNS/APLRecordTest$Test_Element_init;
.super Ljunit/framework/TestCase;
.source "APLRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_Element_init"
.end annotation


# instance fields
.field m_addr4:Ljava/net/InetAddress;

.field m_addr6:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 58
    const-string v0, "193.160.232.5"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr4:Ljava/net/InetAddress;

    .line 59
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr6:Ljava/net/InetAddress;

    .line 60
    return-void
.end method

.method public test_invalid_IPv4()V
    .registers 5

    .line 74
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr4:Ljava/net/InetAddress;

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 75
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_10

    .line 77
    goto :goto_11

    :catch_10
    move-exception v0

    .line 78
    :goto_11
    return-void
.end method

.method public test_invalid_IPv6()V
    .registers 5

    .line 92
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr6:Ljava/net/InetAddress;

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 93
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_10

    .line 95
    goto :goto_11

    :catch_10
    move-exception v0

    .line 96
    :goto_11
    return-void
.end method

.method public test_valid_IPv4()V
    .registers 5

    .line 64
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr4:Ljava/net/InetAddress;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 65
    .local v0, "el":Lorg/xbill/DNS/APLRecord$Element;
    iget v1, v0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-static {v3, v1}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(II)V

    .line 66
    iget-boolean v1, v0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    invoke-static {v3, v1}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(ZZ)V

    .line 67
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr4:Ljava/net/InetAddress;

    iget-object v3, v0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    iget v1, v0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-static {v2, v1}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(II)V

    .line 69
    return-void
.end method

.method public test_valid_IPv6()V
    .registers 6

    .line 82
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr6:Ljava/net/InetAddress;

    const/16 v2, 0x4a

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 83
    .local v0, "el":Lorg/xbill/DNS/APLRecord$Element;
    iget v1, v0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v4, 0x2

    invoke-static {v4, v1}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(II)V

    .line 84
    iget-boolean v1, v0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    invoke-static {v3, v1}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(ZZ)V

    .line 85
    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->m_addr6:Ljava/net/InetAddress;

    iget-object v3, v0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    iget v1, v0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-static {v2, v1}, Lorg/xbill/DNS/APLRecordTest$Test_Element_init;->assertEquals(II)V

    .line 87
    return-void
.end method
