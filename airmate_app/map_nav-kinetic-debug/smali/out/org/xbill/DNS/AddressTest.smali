.class public Lorg/xbill/DNS/AddressTest;
.super Ljunit/framework/TestCase;
.source "AddressTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private assertEquals([B[B)V
    .registers 4
    .param p1, "exp"    # [B
    .param p2, "act"    # [B

    .line 46
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertTrue(Z)V

    .line 47
    return-void
.end method

.method private assertEquals([I[I)V
    .registers 7
    .param p1, "exp"    # [I
    .param p2, "act"    # [I

    .line 51
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Lorg/xbill/DNS/AddressTest;->assertEquals(II)V

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_24

    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;II)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 55
    .end local v0    # "i":I
    :cond_24
    return-void
.end method


# virtual methods
.method public test_addressLength()V
    .registers 3

    .line 262
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/xbill/DNS/AddressTest;->assertEquals(II)V

    .line 263
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lorg/xbill/DNS/AddressTest;->assertEquals(II)V

    .line 266
    const/4 v0, 0x3

    :try_start_14
    invoke-static {v0}, Lorg/xbill/DNS/Address;->addressLength(I)I

    .line 267
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 270
    goto :goto_1e

    .line 269
    :catch_1d
    move-exception v0

    .line 271
    :goto_1e
    return-void
.end method

.method public test_familyOf()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 335
    const-string v0, "192.168.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/AddressTest;->assertEquals(II)V

    .line 336
    const-string v0, "1:2:3:4:5:6:7:8"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lorg/xbill/DNS/AddressTest;->assertEquals(II)V

    .line 338
    const/4 v0, 0x0

    :try_start_1d
    invoke-static {v0}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    .line 339
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_25} :catch_26

    .line 342
    goto :goto_27

    .line 341
    :catch_26
    move-exception v0

    .line 343
    :goto_27
    return-void
.end method

.method public test_getAllByName()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 301
    const-string v0, "128.145.198.231"

    invoke-static {v0}, Lorg/xbill/DNS/Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 302
    .local v0, "out":[Ljava/net/InetAddress;
    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/AddressTest;->assertEquals(II)V

    .line 303
    const-string v1, "128.145.198.231"

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "serl.cs.colorado.edu"

    invoke-static {v1}, Lorg/xbill/DNS/Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 306
    array-length v1, v0

    invoke-static {v2, v1}, Lorg/xbill/DNS/AddressTest;->assertEquals(II)V

    .line 307
    const-string v1, "serl.cs.colorado.edu"

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "128.138.207.163"

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "cnn.com"

    invoke-static {v1}, Lorg/xbill/DNS/Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 311
    array-length v1, v0

    if-le v1, v2, :cond_41

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    invoke-static {v2}, Lorg/xbill/DNS/AddressTest;->assertTrue(Z)V

    .line 312
    nop

    .local v3, "i":I
    :goto_46
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_5c

    .line 313
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cnn.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/AddressTest;->assertTrue(Z)V

    .line 312
    add-int/lit8 v3, v1, 0x1

    goto :goto_46

    .line 315
    .end local v1    # "i":I
    :cond_5c
    return-void
.end method

.method public test_getAllByName_invalid()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 320
    :try_start_0
    const-string v0, "bogushost.com"

    invoke-static {v0}, Lorg/xbill/DNS/Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 321
    const-string v0, "UnknownHostException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_a} :catch_b

    .line 324
    goto :goto_c

    .line 323
    :catch_b
    move-exception v0

    .line 326
    :goto_c
    :try_start_c
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 327
    const-string v0, "UnknownHostException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_16} :catch_17

    .line 330
    goto :goto_18

    .line 329
    :catch_17
    move-exception v0

    .line 331
    :goto_18
    return-void
.end method

.method public test_getByName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 275
    const-string v0, "128.145.198.231"

    invoke-static {v0}, Lorg/xbill/DNS/Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 276
    .local v0, "out":Ljava/net/InetAddress;
    const-string v1, "128.145.198.231"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "serl.cs.colorado.edu"

    invoke-static {v1}, Lorg/xbill/DNS/Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 279
    const-string v1, "serl.cs.colorado.edu"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "128.138.207.163"

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public test_getByName_invalid()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 286
    :try_start_0
    const-string v0, "bogushost.com"

    invoke-static {v0}, Lorg/xbill/DNS/Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 287
    const-string v0, "UnknownHostException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_a} :catch_b

    .line 290
    goto :goto_c

    .line 289
    :catch_b
    move-exception v0

    .line 292
    :goto_c
    :try_start_c
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 293
    const-string v0, "UnknownHostException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_16} :catch_17

    .line 296
    goto :goto_18

    .line 295
    :catch_17
    move-exception v0

    .line 297
    :goto_18
    return-void
.end method

.method public test_getHostName()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 347
    const-string v0, "128.138.207.163"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Address;->getHostName(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "out":Ljava/lang/String;
    const-string v1, "serl.cs.colorado.edu."

    invoke-static {v1, v0}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_f
    const-string v1, "192.168.1.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/Address;->getHostName(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 352
    const-string v1, "UnknownHostException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_1d} :catch_1e

    .line 355
    goto :goto_1f

    .line 354
    :catch_1e
    move-exception v1

    .line 356
    :goto_1f
    return-void
.end method

.method public test_isDottedQuad()V
    .registers 2

    .line 247
    const-string v0, "1.2.3.4"

    invoke-static {v0}, Lorg/xbill/DNS/Address;->isDottedQuad(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertTrue(Z)V

    .line 248
    const-string v0, "256.2.3.4"

    invoke-static {v0}, Lorg/xbill/DNS/Address;->isDottedQuad(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertFalse(Z)V

    .line 249
    return-void
.end method

.method public test_toArray()V
    .registers 6

    .line 225
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_2e

    .line 226
    .local v1, "exp":[I
    const-string v2, "1.2.3.4"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v2

    .line 227
    .local v2, "ret":[I
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([I[I)V

    .line 229
    new-array v4, v0, [I

    fill-array-data v4, :array_3a

    move-object v1, v4

    .line 230
    const-string v4, "0.0.0.0"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v2

    .line 231
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([I[I)V

    .line 233
    new-array v0, v0, [I

    fill-array-data v0, :array_46

    .line 234
    .end local v1    # "exp":[I
    .local v0, "exp":[I
    const-string v1, "255.255.255.255"

    invoke-static {v1, v3}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v1

    .line 235
    .end local v2    # "ret":[I
    .local v1, "ret":[I
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/AddressTest;->assertEquals([I[I)V

    .line 236
    return-void

    :array_2e
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_3a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_46
    .array-data 4
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public test_toArray_invalid()V
    .registers 3

    .line 240
    const-string v0, "128.121.1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 242
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public test_toByteArray_IPv4()V
    .registers 6

    .line 69
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    .line 70
    .local v1, "exp":[B
    const-string v2, "198.121.10.234"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 71
    .local v2, "ret":[B
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 73
    new-array v4, v0, [B

    fill-array-data v4, :array_32

    move-object v1, v4

    .line 74
    const-string v4, "0.0.0.0"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 75
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 77
    new-array v0, v0, [B

    fill-array-data v0, :array_38

    .line 78
    .end local v1    # "exp":[B
    .local v0, "exp":[B
    const-string v1, "255.255.255.255"

    invoke-static {v1, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 79
    .end local v2    # "ret":[B
    .local v1, "ret":[B
    return-void

    nop

    :array_2c
    .array-data 1
        -0x3at
        0x79t
        0xat
        -0x16t
    .end array-data

    :array_32
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_38
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public test_toByteArray_IPv4_invalid()V
    .registers 3

    .line 83
    const-string v0, "A.B.C.D"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 85
    const-string v0, "128..."

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 86
    const-string v0, "128.121"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 87
    const-string v0, "128.111.8"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 88
    const-string v0, "128.198.10."

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 90
    const-string v0, "128.121.90..10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 91
    const-string v0, "128.121..90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 92
    const-string v0, "128..121.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 93
    const-string v0, ".128.121.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 95
    const-string v0, "128.121.90.256"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 96
    const-string v0, "128.121.256.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 97
    const-string v0, "128.256.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 98
    const-string v0, "256.121.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 100
    const-string v0, "128.121.90.-1"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 101
    const-string v0, "128.121.-1.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 102
    const-string v0, "128.-1.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 103
    const-string v0, "-1.121.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 105
    const-string v0, "120.121.90.10.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 107
    const-string v0, "120.121.90.010"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 108
    const-string v0, "120.121.090.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 109
    const-string v0, "120.021.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 110
    const-string v0, "020.121.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 112
    const-string v0, "1120.121.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 113
    const-string v0, "120.2121.90.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 114
    const-string v0, "120.121.4190.10"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 115
    const-string v0, "120.121.190.1000"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 117
    const-string v0, ""

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public test_toByteArray_IPv6()V
    .registers 6

    .line 122
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_d2

    .line 126
    .local v1, "exp":[B
    const-string v2, "2001:0db8:85a3:08d3:1319:8a2e:0370:7334"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 127
    .local v2, "ret":[B
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 128
    const-string v4, "2001:db8:85a3:8d3:1319:8a2e:370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 129
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 130
    const-string v4, "2001:DB8:85A3:8D3:1319:8A2E:370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 131
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 133
    new-array v4, v0, [B

    fill-array-data v4, :array_de

    move-object v1, v4

    .line 135
    const-string v4, "0:0:0:0:0:0:0:0"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 136
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 138
    new-array v4, v0, [B

    fill-array-data v4, :array_ea

    move-object v1, v4

    .line 142
    const-string v4, "FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 143
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 145
    new-array v4, v0, [B

    fill-array-data v4, :array_f6

    move-object v1, v4

    .line 149
    const-string v4, "2001:0db8:0000:08d3:1319:8a2e:0370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 150
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 152
    const-string v4, "2001:0db8::08d3:1319:8a2e:0370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 153
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 155
    new-array v4, v0, [B

    fill-array-data v4, :array_102

    move-object v1, v4

    .line 159
    const-string v4, "0000:0000:85a3:08d3:1319:8a2e:0370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 160
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 161
    const-string v4, "::85a3:08d3:1319:8a2e:0370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 162
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 164
    new-array v4, v0, [B

    fill-array-data v4, :array_10e

    move-object v1, v4

    .line 168
    const-string v4, "2001:0db8:85a3:08d3:1319:8a2e:0:0"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 169
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 171
    const-string v4, "2001:0db8:85a3:08d3:1319:8a2e::"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 172
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 174
    new-array v4, v0, [B

    fill-array-data v4, :array_11a

    move-object v1, v4

    .line 178
    const-string v4, "2001:0db8:0000:0000:0000:0000:0370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 179
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 180
    const-string v4, "2001:0db8:0:0:0:0:0370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 181
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 182
    const-string v4, "2001:0db8::0:0370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 183
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 184
    const-string v4, "2001:db8::370:7334"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 185
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 187
    new-array v4, v0, [B

    fill-array-data v4, :array_126

    move-object v1, v4

    .line 191
    const-string v4, "2001:0db8:85a3:08d3:1319:8a2e:192.168.89.9"

    invoke-static {v4, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 192
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 194
    new-array v0, v0, [B

    fill-array-data v0, :array_132

    .line 198
    .end local v1    # "exp":[B
    .local v0, "exp":[B
    const-string v1, "::192.168.89.9"

    invoke-static {v1, v3}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 199
    .end local v2    # "ret":[B
    .local v1, "ret":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/AddressTest;->assertEquals([B[B)V

    .line 200
    return-void

    nop

    :array_d2
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

    :array_de
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_ea
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_f6
    .array-data 1
        0x20t
        0x1t
        0xdt
        -0x48t
        0x0t
        0x0t
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

    :array_102
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
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

    :array_10e
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
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_11a
    .array-data 1
        0x20t
        0x1t
        0xdt
        -0x48t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x70t
        0x73t
        0x34t
    .end array-data

    :array_126
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
        -0x40t
        -0x58t
        0x59t
        0x9t
    .end array-data

    :array_132
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x40t
        -0x58t
        0x59t
        0x9t
    .end array-data
.end method

.method public test_toByteArray_IPv6_invalid()V
    .registers 3

    .line 205
    const-string v0, "2001:0db8:85a3:08d3:1319:8a2e:0370"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 207
    const-string v0, "2001:0db8:85a3:08d3:1319:8a2e:0370:193A:BCdE"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 209
    const-string v0, "2001:0gb8:85a3:08d3:1319:8a2e:0370:9819"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 210
    const-string v0, "lmno:0bb8:85a3:08d3:1319:8a2e:0370:9819"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 211
    const-string v0, "11ab:0ab8:85a3:08d3:1319:8a2e:0370:qrst"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 213
    const-string v0, "11ab:0ab8:85a3:08d3:::"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 215
    const-string v0, "2001:0ab8:192.168.0.1:1319:8a2e:0370:9819"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 217
    const-string v0, "2001:0ab8:1212:AbAb:8a2e:345.12.22.1"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 219
    const-string v0, "2001:0ab8:85a3:128d3:1319:8a2e:0370:9819"

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->assertNull(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public test_toByteArray_invalid()V
    .registers 3

    .line 60
    :try_start_0
    const-string v0, "doesn\'t matter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    .line 61
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/AddressTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 64
    goto :goto_d

    .line 63
    :catch_c
    move-exception v0

    .line 65
    :goto_d
    return-void
.end method

.method public test_toDottedQuad()V
    .registers 4

    .line 253
    const-string v0, "128.176.201.1"

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_1e

    invoke-static {v2}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "200.1.255.128"

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    invoke-static {v1}, Lorg/xbill/DNS/Address;->toDottedQuad([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/AddressTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    :array_1e
    .array-data 1
        -0x80t
        -0x50t
        -0x37t
        0x1t
    .end array-data

    :array_24
    .array-data 4
        0xc8
        0x1
        0xff
        0x80
    .end array-data
.end method
