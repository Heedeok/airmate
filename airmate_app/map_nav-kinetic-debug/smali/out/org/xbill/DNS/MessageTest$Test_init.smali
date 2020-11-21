.class public Lorg/xbill/DNS/MessageTest$Test_init;
.super Ljunit/framework/TestCase;
.source "MessageTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/MessageTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_init"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_0arg()V
    .registers 8

    .line 50
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 51
    .local v0, "m":Lorg/xbill/DNS/Message;
    const/4 v1, 0x0

    new-array v2, v1, [Lorg/xbill/DNS/Record;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 52
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 53
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 54
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 56
    const/4 v2, 0x4

    :try_start_3e
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    .line 57
    const-string v2, "IndexOutOfBoundsException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_46} :catch_47

    .line 59
    goto :goto_48

    :catch_47
    move-exception v2

    .line 60
    :goto_48
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    .line 61
    .local v2, "h":Lorg/xbill/DNS/Header;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v6

    invoke-static {v1, v6}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 62
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 63
    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 64
    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 65
    return-void
.end method

.method public test_1arg()V
    .registers 8

    .line 69
    new-instance v0, Lorg/xbill/DNS/Message;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 70
    .local v0, "m":Lorg/xbill/DNS/Message;
    new-instance v2, Lorg/xbill/DNS/Header;

    invoke-direct {v2, v1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    new-array v2, v1, [Lorg/xbill/DNS/Record;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 72
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 73
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 74
    new-array v2, v1, [Lorg/xbill/DNS/Record;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 76
    const/4 v2, 0x4

    :try_start_54
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    .line 77
    const-string v2, "IndexOutOfBoundsException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/MessageTest$Test_init;->fail(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_54 .. :try_end_5c} :catch_5d

    .line 79
    goto :goto_5e

    :catch_5d
    move-exception v2

    .line 80
    :goto_5e
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    .line 81
    .local v2, "h":Lorg/xbill/DNS/Header;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v6

    invoke-static {v1, v6}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 82
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 83
    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 84
    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 85
    return-void
.end method

.method public test_newQuery()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 90
    const-string v0, "The.Name."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 91
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v7, Lorg/xbill/DNS/ARecord;

    const-string v1, "192.168.101.110"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    .line 94
    .local v1, "ar":Lorg/xbill/DNS/ARecord;
    invoke-static {v1}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v2

    .line 95
    .local v2, "m":Lorg/xbill/DNS/Message;
    new-array v4, v3, [Lorg/xbill/DNS/Record;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 96
    new-array v4, v5, [Lorg/xbill/DNS/Record;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 97
    new-array v4, v5, [Lorg/xbill/DNS/Record;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 98
    new-array v4, v5, [Lorg/xbill/DNS/Record;

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/MessageTest$Test_init;->assertTrue(Z)V

    .line 100
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    .line 101
    .local v4, "h":Lorg/xbill/DNS/Header;
    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v8

    invoke-static {v3, v8}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 102
    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v8

    invoke-static {v5, v8}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 103
    invoke-virtual {v4, v6}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 104
    invoke-virtual {v4, v7}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 105
    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v6

    invoke-static {v5, v6}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(II)V

    .line 106
    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v5

    invoke-static {v3, v5}, Lorg/xbill/DNS/MessageTest$Test_init;->assertEquals(ZZ)V

    .line 107
    return-void
.end method
