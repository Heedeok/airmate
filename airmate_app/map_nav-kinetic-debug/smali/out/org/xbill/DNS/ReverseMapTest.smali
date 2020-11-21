.class public Lorg/xbill/DNS/ReverseMapTest;
.super Ljunit/framework/TestCase;
.source "ReverseMapTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_fromAddress_invalid()V
    .registers 3

    .line 78
    :try_start_0
    const-string v0, "A.B.C.D"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/lang/String;I)Lorg/xbill/DNS/Name;

    .line 79
    const-string v0, "UnknownHostException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMapTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_b} :catch_c

    .line 82
    goto :goto_d

    .line 81
    :catch_c
    move-exception v0

    .line 83
    :goto_d
    const/4 v0, 0x0

    :try_start_e
    new-array v0, v0, [B

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMapTest;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_18} :catch_19

    .line 84
    goto :goto_1a

    :catch_19
    move-exception v0

    .line 85
    :goto_1a
    const/4 v0, 0x3

    :try_start_1b
    new-array v0, v0, [B

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMapTest;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_25} :catch_26

    .line 86
    goto :goto_27

    :catch_26
    move-exception v0

    .line 87
    :goto_27
    const/4 v0, 0x5

    :try_start_28
    new-array v0, v0, [B

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMapTest;->fail(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_32} :catch_33

    .line 88
    goto :goto_34

    :catch_33
    move-exception v0

    .line 89
    :goto_34
    const/16 v0, 0xf

    :try_start_36
    new-array v0, v0, [B

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMapTest;->fail(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_40} :catch_41

    .line 90
    goto :goto_42

    :catch_41
    move-exception v0

    .line 91
    :goto_42
    const/16 v0, 0x11

    :try_start_44
    new-array v0, v0, [B

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMapTest;->fail(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_4e} :catch_4f

    .line 92
    goto :goto_50

    :catch_4f
    move-exception v0

    .line 95
    :goto_50
    const/4 v0, 0x4

    :try_start_51
    new-array v0, v0, [I

    fill-array-data v0, :array_62

    .line 96
    .local v0, "dat":[I
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([I)Lorg/xbill/DNS/Name;

    .line 97
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/ReverseMapTest;->fail(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5e} :catch_5f

    .line 100
    .end local v0    # "dat":[I
    goto :goto_60

    .line 99
    :catch_5f
    move-exception v0

    .line 101
    :goto_60
    return-void

    nop

    :array_62
    .array-data 4
        0x0
        0x1
        0x2
        0x100
    .end array-data
.end method

.method public test_fromAddress_ipv4()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 46
    const-string v0, "1.0.168.192.in-addr.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 47
    .local v0, "exp":Lorg/xbill/DNS/Name;
    const-string v1, "192.168.0.1"

    .line 48
    .local v1, "addr":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/lang/String;I)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    invoke-static {v3}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    new-array v2, v2, [I

    fill-array-data v2, :array_42

    invoke-static {v2}, Lorg/xbill/DNS/ReverseMap;->fromAddress([I)Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void

    :array_3c
    .array-data 1
        -0x40t
        -0x58t
        0x0t
        0x1t
    .end array-data

    :array_42
    .array-data 4
        0xc0
        0xa8
        0x0
        0x1
    .end array-data
.end method

.method public test_fromAddress_ipv6()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 59
    const-string v0, "4.3.3.7.0.7.3.0.E.2.A.8.9.1.3.1.3.D.8.0.3.A.5.8.8.B.D.0.1.0.0.2.ip6.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 60
    .local v0, "exp":Lorg/xbill/DNS/Name;
    const-string v1, "2001:0db8:85a3:08d3:1319:8a2e:0370:7334"

    .line 61
    .local v1, "addr":Ljava/lang/String;
    const/16 v2, 0x10

    new-array v3, v2, [B

    fill-array-data v3, :array_36

    .line 65
    .local v3, "dat":[B
    new-array v2, v2, [I

    fill-array-data v2, :array_42

    .line 69
    .local v2, "idat":[I
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/lang/String;I)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v4}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-static {v3}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-static {v2}, Lorg/xbill/DNS/ReverseMap;->fromAddress([I)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/xbill/DNS/ReverseMapTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void

    :array_36
    .array-data 1
        0x20t
        0x1t
        0xdt
        -0x48t
        -0x7bt
        -0x5dt
        0x8t
        -0x2dt
        0x13t
        0x19t
        -0x76t
        0x2et
        0x3t
        0x70t
        0x73t
        0x34t
    .end array-data

    :array_42
    .array-data 4
        0x20
        0x1
        0xd
        0xb8
        0x85
        0xa3
        0x8
        0xd3
        0x13
        0x19
        0x8a
        0x2e
        0x3
        0x70
        0x73
        0x34
    .end array-data
.end method
