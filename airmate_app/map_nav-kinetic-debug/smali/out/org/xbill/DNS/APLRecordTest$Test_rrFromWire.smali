.class public Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;
.super Ljunit/framework/TestCase;
.source "APLRecordTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecordTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_rrFromWire"
.end annotation


# instance fields
.field m_addr4:Ljava/net/InetAddress;

.field m_addr4_bytes:[B

.field m_addr6:Ljava/net/InetAddress;

.field m_addr6_bytes:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 187
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

    .line 197
    const-string v0, "193.160.232.5"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4:Ljava/net/InetAddress;

    .line 198
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    .line 200
    const-string v0, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6:Ljava/net/InetAddress;

    .line 201
    iget-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    .line 202
    return-void
.end method

.method public test_invalid_IPv4_length()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    aput-byte v2, v0, v2

    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/4 v5, 0x3

    const/16 v6, -0x7b

    aput-byte v6, v0, v5

    iget-object v6, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v6, v1

    const/4 v6, 0x4

    aput-byte v1, v0, v6

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v4

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v5

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0xa

    aput-byte v1, v0, v3

    .line 257
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 258
    .local v1, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 260
    .local v2, "ar":Lorg/xbill/DNS/APLRecord;
    :try_start_3e
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 261
    const-string v3, "WireParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->fail(Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_3e .. :try_end_46} :catch_47

    .line 263
    goto :goto_48

    :catch_47
    move-exception v3

    .line 264
    :goto_48
    return-void
.end method

.method public test_invalid_IPv4_prefix()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    aput-byte v2, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x21

    aput-byte v4, v0, v3

    const/4 v4, 0x3

    const/16 v5, -0x7c

    aput-byte v5, v0, v4

    iget-object v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v5, v1

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v3

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v4

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 242
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 243
    .local v1, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 245
    .local v2, "ar":Lorg/xbill/DNS/APLRecord;
    :try_start_3a
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 246
    const-string v3, "WireParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->fail(Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_3a .. :try_end_42} :catch_43

    .line 248
    goto :goto_44

    :catch_43
    move-exception v3

    .line 249
    :goto_44
    return-void
.end method

.method public test_multiple_validIPv4()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    aput-byte v2, v0, v2

    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/4 v5, 0x3

    const/16 v6, -0x7c

    aput-byte v6, v0, v5

    iget-object v6, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v6, v6, v1

    const/4 v7, 0x4

    aput-byte v6, v0, v7

    iget-object v6, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v6, v6, v2

    const/4 v8, 0x5

    aput-byte v6, v0, v8

    iget-object v6, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v6, v6, v4

    const/4 v8, 0x6

    aput-byte v6, v0, v8

    iget-object v6, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v6, v6, v5

    const/4 v8, 0x7

    aput-byte v6, v0, v8

    aput-byte v1, v0, v3

    const/16 v6, 0x9

    aput-byte v2, v0, v6

    const/16 v6, 0x1e

    const/16 v8, 0xa

    aput-byte v6, v0, v8

    const/16 v8, 0xb

    aput-byte v7, v0, v8

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v7, v7, v1

    const/16 v8, 0xc

    aput-byte v7, v0, v8

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v7, v7, v2

    const/16 v8, 0xd

    aput-byte v7, v0, v8

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v4, v7, v4

    const/16 v7, 0xe

    aput-byte v4, v0, v7

    iget-object v4, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v4, v4, v5

    const/16 v5, 0xf

    aput-byte v4, v0, v5

    .line 276
    .local v0, "raw":[B
    new-instance v4, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v4, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 277
    .local v4, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v5, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v5}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 278
    .local v5, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v5, v4}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 280
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v7, "exp":Ljava/util/ArrayList;
    new-instance v8, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v9, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4:Ljava/net/InetAddress;

    invoke-direct {v8, v2, v9, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v2, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v3, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4:Ljava/net/InetAddress;

    invoke-direct {v2, v1, v3, v6}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v5}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v1}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public test_validIPv4()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const/4 v3, 0x1

    aput-byte v3, v1, v3

    const/4 v4, 0x2

    aput-byte v0, v1, v4

    const/4 v5, 0x3

    const/16 v6, -0x7c

    aput-byte v6, v1, v5

    iget-object v6, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v2, v6, v2

    const/4 v6, 0x4

    aput-byte v2, v1, v6

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v2, v2, v3

    const/4 v6, 0x5

    aput-byte v2, v1, v6

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v2, v2, v4

    const/4 v4, 0x6

    aput-byte v2, v1, v4

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v2, v2, v5

    const/4 v4, 0x7

    aput-byte v2, v1, v4

    .line 210
    .local v1, "raw":[B
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 211
    .local v2, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v4, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v4}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 212
    .local v4, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v4, v2}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 214
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v5, "exp":Ljava/util/ArrayList;
    new-instance v6, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4:Ljava/net/InetAddress;

    invoke-direct {v6, v3, v7, v0}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v4}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public test_validIPv4_short_address()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    aput-byte v2, v0, v2

    const/16 v3, 0x14

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/4 v5, 0x3

    const/16 v6, -0x7d

    aput-byte v6, v0, v5

    iget-object v5, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v5, v1

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v2

    const/4 v5, 0x5

    aput-byte v1, v0, v5

    iget-object v1, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr4_bytes:[B

    aget-byte v1, v1, v4

    const/4 v4, 0x6

    aput-byte v1, v0, v4

    .line 225
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 226
    .local v1, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v4, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v4}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 227
    .local v4, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v4, v1}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 229
    const-string v5, "193.160.232.0"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 231
    .local v5, "a":Ljava/net/InetAddress;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v6, "exp":Ljava/util/ArrayList;
    new-instance v7, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v7, v2, v5, v3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v4}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v6, v2}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public test_validIPv6()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    const/16 v4, 0x73

    aput-byte v4, v0, v3

    const/16 v5, 0x10

    const/4 v6, 0x3

    aput-byte v5, v0, v6

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v7, v7, v1

    const/4 v8, 0x4

    aput-byte v7, v0, v8

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v7, v2

    const/4 v7, 0x5

    aput-byte v2, v0, v7

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v3

    const/4 v3, 0x6

    aput-byte v2, v0, v3

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v6

    const/4 v6, 0x7

    aput-byte v2, v0, v6

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v8

    const/16 v8, 0x8

    aput-byte v2, v0, v8

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v7

    const/16 v7, 0x9

    aput-byte v2, v0, v7

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    aput-byte v2, v0, v3

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v6

    const/16 v6, 0xb

    aput-byte v2, v0, v6

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v8

    const/16 v8, 0xc

    aput-byte v2, v0, v8

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v7

    const/16 v7, 0xd

    aput-byte v2, v0, v7

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v3

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v6

    const/16 v3, 0xf

    aput-byte v2, v0, v3

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    aget-byte v2, v2, v8

    aput-byte v2, v0, v5

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    const/16 v3, 0x11

    aput-byte v2, v0, v3

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    const/16 v3, 0x12

    aput-byte v2, v0, v3

    iget-object v2, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6_bytes:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    const/16 v3, 0x13

    aput-byte v2, v0, v3

    .line 298
    .local v0, "raw":[B
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 299
    .local v2, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v3, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 300
    .local v3, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v3, v2}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 302
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v5, "exp":Ljava/util/ArrayList;
    new-instance v6, Lorg/xbill/DNS/APLRecord$Element;

    iget-object v7, p0, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->m_addr6:Ljava/net/InetAddress;

    invoke-direct {v6, v1, v7, v4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v3}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v5, v1}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public test_valid_nonIP()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    .line 312
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 313
    .local v1, "di":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v2}, Lorg/xbill/DNS/APLRecord;-><init>()V

    .line 314
    .local v2, "ar":Lorg/xbill/DNS/APLRecord;
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/APLRecord;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 316
    invoke-virtual {v2}, Lorg/xbill/DNS/APLRecord;->getElements()Ljava/util/List;

    move-result-object v3

    .line 317
    .local v3, "l":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(II)V

    .line 319
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/APLRecord$Element;

    .line 320
    .local v4, "el":Lorg/xbill/DNS/APLRecord$Element;
    iget v6, v4, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(II)V

    .line 321
    iget-boolean v6, v4, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    invoke-static {v5, v6}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(ZZ)V

    .line 322
    iget v5, v4, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    const/16 v6, 0x82

    invoke-static {v6, v5}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertEquals(II)V

    .line 323
    const/4 v5, 0x5

    new-array v5, v5, [B

    fill-array-data v5, :array_56

    iget-object v6, v4, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v6, [B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/APLRecordTest$Test_rrFromWire;->assertTrue(Z)V

    .line 325
    return-void

    nop

    :array_4c
    .array-data 1
        0x0t
        0x3t
        -0x7et
        -0x7bt
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data

    nop

    :array_56
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data
.end method
