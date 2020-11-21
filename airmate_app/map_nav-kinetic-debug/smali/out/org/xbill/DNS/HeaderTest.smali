.class public Lorg/xbill/DNS/HeaderTest;
.super Ljunit/framework/TestCase;
.source "HeaderTest.java"


# instance fields
.field private m_h:Lorg/xbill/DNS/Header;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 3

    .line 52
    new-instance v0, Lorg/xbill/DNS/Header;

    const v1, 0xabcd

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Header;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    .line 53
    return-void
.end method

.method public test_Count()V
    .registers 6

    .line 309
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v1, 0x1e

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 310
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    invoke-static {v3, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 311
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    invoke-static {v3, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 312
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 313
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    invoke-static {v3, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 315
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 316
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    invoke-static {v4, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 318
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 319
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    const/16 v1, 0x1d

    invoke-static {v1, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 320
    return-void
.end method

.method public test_ID()V
    .registers 4

    .line 219
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    const v1, 0xabcd

    invoke-static {v1, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 221
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    .line 223
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    .line 224
    .local v0, "id":I
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 225
    if-ltz v0, :cond_2b

    const v1, 0xffff

    if-ge v0, v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    invoke-static {v1}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 227
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const v2, 0xdcba

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setID(I)V

    .line 228
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 229
    return-void
.end method

.method public test_Opcode()V
    .registers 4

    .line 279
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 281
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 282
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    invoke-static {v2, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 284
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 285
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_24
    const/16 v2, 0xc

    if-ge v0, v2, :cond_34

    .line 286
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 288
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 289
    return-void
.end method

.method public test_Rcode()V
    .registers 4

    .line 249
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 251
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 252
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    invoke-static {v2, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 253
    nop

    .local v1, "i":I
    :goto_1b
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    const/16 v1, 0xc

    if-ge v0, v1, :cond_36

    .line 254
    if-lez v0, :cond_25

    const/4 v1, 0x5

    if-lt v0, v1, :cond_33

    :cond_25
    const/16 v1, 0xb

    if-le v0, v1, :cond_2a

    .line 255
    goto :goto_33

    .line 257
    :cond_2a
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 253
    :cond_33
    :goto_33
    add-int/lit8 v1, v0, 0x1

    goto :goto_1b

    .line 259
    .end local v0    # "i":I
    :cond_36
    return-void
.end method

.method public test_clone()V
    .registers 7

    .line 386
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const-string v1, "IQUERY"

    invoke-static {v1}, Lorg/xbill/DNS/Opcode;->value(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 387
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const-string v1, "SERVFAIL"

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 388
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 389
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 390
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 391
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 392
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x1

    const/16 v4, 0xff

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 393
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 395
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Header;

    .line 397
    .local v0, "h2":Lorg/xbill/DNS/Header;
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-static {v3, v0}, Lorg/xbill/DNS/HeaderTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getID()I

    move-result v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 399
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5b
    const/16 v4, 0x10

    if-ge v3, v4, :cond_77

    .line 400
    if-lez v3, :cond_64

    const/4 v4, 0x5

    if-lt v3, v4, :cond_74

    :cond_64
    if-le v3, v2, :cond_67

    .line 401
    goto :goto_74

    .line 403
    :cond_67
    iget-object v4, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v4

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v5

    invoke-static {v4, v5}, Lorg/xbill/DNS/HeaderTest;->assertEquals(ZZ)V

    .line 399
    :cond_74
    :goto_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 405
    .end local v3    # "i":I
    :cond_77
    nop

    .local v1, "i":I
    :goto_78
    const/4 v2, 0x4

    if-ge v1, v2, :cond_8b

    .line 406
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 408
    .end local v1    # "i":I
    :cond_8b
    return-void
.end method

.method public test_ctor_0arg()V
    .registers 6

    .line 73
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    .line 74
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1e

    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    const v3, 0xffff

    if-ge v0, v3, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 76
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    .line 77
    .local v0, "flags":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    array-length v4, v0

    if-ge v3, v4, :cond_34

    .line 78
    aget-boolean v4, v0, v3

    invoke-static {v4}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 80
    .end local v3    # "i":I
    :cond_34
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 81
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 82
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 83
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 84
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 85
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 86
    return-void
.end method

.method public test_ctor_DNSInput()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_9e

    .line 97
    .local v0, "raw":[B
    new-instance v1, Lorg/xbill/DNS/Header;

    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    .line 99
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    const/16 v2, 0x12ab

    invoke-static {v2, v1}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 101
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v1

    .line 103
    .local v1, "flags":[Z
    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 105
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 107
    const/4 v3, 0x5

    aget-boolean v3, v1, v3

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 109
    const/4 v3, 0x6

    aget-boolean v3, v1, v3

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 111
    const/4 v3, 0x7

    aget-boolean v3, v1, v3

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 113
    const/16 v3, 0x8

    aget-boolean v3, v1, v3

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 115
    const/16 v3, 0x9

    aget-boolean v3, v1, v3

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 116
    const/16 v3, 0xa

    aget-boolean v3, v1, v3

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 117
    const/16 v3, 0xb

    aget-boolean v3, v1, v3

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 119
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v3

    const/16 v5, 0xd

    invoke-static {v5, v3}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 121
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    const/16 v3, 0x651c

    invoke-static {v3, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 122
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    const/16 v3, 0x10f0

    invoke-static {v3, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 123
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    const v3, 0x98ba

    invoke-static {v3, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 124
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    const/16 v3, 0x7190

    invoke-static {v3, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 125
    return-void

    nop

    :array_9e
    .array-data 1
        0x12t
        -0x55t
        -0x71t
        -0x43t
        0x65t
        0x1ct
        0x10t
        -0x10t
        -0x68t
        -0x46t
        0x71t
        -0x70t
    .end array-data
.end method

.method public test_decCount_invalid()V
    .registers 4

    .line 352
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 353
    :try_start_7
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->decCount(I)V

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_11} :catch_12

    .line 354
    goto :goto_13

    :catch_12
    move-exception v0

    .line 355
    :goto_13
    return-void
.end method

.method public test_fixture_state()V
    .registers 5

    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    const v1, 0xabcd

    invoke-static {v1, v0}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 59
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    .line 60
    .local v0, "flags":[Z
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_1f

    .line 61
    aget-boolean v3, v0, v2

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 63
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 64
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 65
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 66
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 67
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 68
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 69
    return-void
.end method

.method public test_flags()V
    .registers 5

    .line 167
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 168
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 169
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 170
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 171
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 172
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->unsetFlag(I)V

    .line 175
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 176
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 177
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 178
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertTrue(Z)V

    .line 180
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->unsetFlag(I)V

    .line 181
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 182
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 183
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 184
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 186
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getFlags()[Z

    move-result-object v0

    .line 187
    .local v0, "flags":[Z
    nop

    .local v1, "i":I
    :goto_95
    array-length v3, v0

    if-ge v1, v3, :cond_a9

    .line 188
    if-lez v1, :cond_9c

    if-lt v1, v2, :cond_a6

    :cond_9c
    const/16 v3, 0xb

    if-le v1, v3, :cond_a1

    .line 189
    goto :goto_a6

    .line 191
    :cond_a1
    aget-boolean v3, v0, v1

    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 187
    :cond_a6
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 193
    .end local v1    # "i":I
    :cond_a9
    return-void
.end method

.method public test_flags_invalid()V
    .registers 5

    .line 197
    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Header;->setFlag(I)V

    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_b} :catch_c

    .line 198
    goto :goto_d

    :catch_c
    move-exception v1

    .line 199
    :goto_d
    :try_start_d
    iget-object v1, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_18} :catch_19

    .line 200
    goto :goto_1a

    :catch_19
    move-exception v1

    .line 201
    :goto_1a
    const/16 v1, 0x10

    :try_start_1c
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    const-string v2, "IllegalArgumentException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_26} :catch_27

    .line 202
    goto :goto_28

    :catch_27
    move-exception v2

    .line 203
    :goto_28
    :try_start_28
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Header;->unsetFlag(I)V

    const-string v2, "IllegalArgumentException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_32} :catch_33

    .line 204
    goto :goto_34

    :catch_33
    move-exception v2

    .line 205
    :goto_34
    :try_start_34
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->unsetFlag(I)V

    const-string v2, "IllegalArgumentException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_40} :catch_41

    .line 206
    goto :goto_42

    :catch_41
    move-exception v2

    .line 207
    :goto_42
    :try_start_42
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Header;->unsetFlag(I)V

    const-string v2, "IllegalArgumentException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_4c} :catch_4d

    .line 208
    goto :goto_4e

    :catch_4d
    move-exception v2

    .line 209
    :goto_4e
    :try_start_4e
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_58} :catch_59

    .line 210
    goto :goto_5a

    :catch_59
    move-exception v0

    .line 211
    :goto_5a
    :try_start_5a
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_65} :catch_66

    .line 212
    goto :goto_67

    :catch_66
    move-exception v0

    .line 213
    :goto_67
    :try_start_67
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_71} :catch_72

    .line 214
    goto :goto_73

    :catch_72
    move-exception v0

    .line 215
    :goto_73
    return-void
.end method

.method public test_getCount_invalid()V
    .registers 3

    .line 337
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    const-string v0, "ArrayIndexOutOfBoundsException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_b} :catch_c

    .line 338
    goto :goto_d

    :catch_c
    move-exception v0

    .line 339
    :goto_d
    :try_start_d
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    const-string v0, "ArrayIndexOutOfBoundsException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_18} :catch_19

    .line 340
    goto :goto_1a

    :catch_19
    move-exception v0

    .line 341
    :goto_1a
    return-void
.end method

.method public test_incCount_invalid()V
    .registers 4

    .line 345
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x1

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 346
    :try_start_9
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->incCount(I)V

    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_13} :catch_14

    .line 347
    goto :goto_15

    :catch_14
    move-exception v0

    .line 348
    :goto_15
    return-void
.end method

.method public test_setCount_invalid()V
    .registers 5

    .line 324
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v0, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    const-string v2, "ArrayIndexOutOfBoundsException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_c} :catch_d

    .line 325
    goto :goto_e

    :catch_d
    move-exception v2

    .line 326
    :goto_e
    :try_start_e
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    const-string v2, "ArrayIndexOutOfBoundsException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_19} :catch_1a

    .line 327
    goto :goto_1b

    :catch_1a
    move-exception v2

    .line 329
    :goto_1b
    :try_start_1b
    iget-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v2, v1, v0}, Lorg/xbill/DNS/Header;->setCount(II)V

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_25} :catch_26

    .line 330
    goto :goto_27

    :catch_26
    move-exception v0

    .line 331
    :goto_27
    :try_start_27
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x3

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Header;->setCount(II)V

    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_34} :catch_35

    .line 332
    goto :goto_36

    :catch_35
    move-exception v0

    .line 333
    :goto_36
    return-void
.end method

.method public test_setID_invalid()V
    .registers 3

    .line 234
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setID(I)V

    .line 235
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 238
    goto :goto_e

    .line 237
    :catch_d
    move-exception v0

    .line 240
    :goto_e
    :try_start_e
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setID(I)V

    .line 241
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_19} :catch_1a

    .line 244
    goto :goto_1b

    .line 243
    :catch_1a
    move-exception v0

    .line 245
    :goto_1b
    return-void
.end method

.method public test_setOpcode_invalid()V
    .registers 3

    .line 294
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 295
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 298
    goto :goto_d

    .line 297
    :catch_c
    move-exception v0

    .line 300
    :goto_d
    :try_start_d
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 301
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_19} :catch_1a

    .line 304
    goto :goto_1b

    .line 303
    :catch_1a
    move-exception v0

    .line 305
    :goto_1b
    return-void
.end method

.method public test_setRcode_invalid()V
    .registers 3

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 265
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 268
    goto :goto_d

    .line 267
    :catch_c
    move-exception v0

    .line 270
    :goto_d
    :try_start_d
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 271
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/HeaderTest;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_19} :catch_1a

    .line 274
    goto :goto_1b

    .line 273
    :catch_1a
    move-exception v0

    .line 275
    :goto_1b
    return-void
.end method

.method public test_toString()V
    .registers 6

    .line 359
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const-string v1, "STATUS"

    invoke-static {v1}, Lorg/xbill/DNS/Opcode;->value(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 360
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const-string v1, "NXDOMAIN"

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->value(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 361
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 362
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 363
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 364
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 365
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v2, 0x1

    const/16 v3, 0xff

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 366
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 369
    iget-object v0, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "text":Ljava/lang/String;
    const-string v3, "id: 43981"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_51

    const/4 v3, 0x1

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 372
    const-string v3, "opcode: STATUS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_5f

    const/4 v3, 0x1

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 373
    const-string v3, "status: NXDOMAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_6d

    const/4 v3, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x0

    :goto_6e
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 374
    const-string v3, " qr "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7b

    const/4 v3, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v3, 0x0

    :goto_7c
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 375
    const-string v3, " rd "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_89

    const/4 v3, 0x1

    goto :goto_8a

    :cond_89
    const/4 v3, 0x0

    :goto_8a
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 376
    const-string v3, " ra "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_97

    const/4 v3, 0x1

    goto :goto_98

    :cond_97
    const/4 v3, 0x0

    :goto_98
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 377
    const-string v3, " cd "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_a5

    const/4 v3, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v3, 0x0

    :goto_a6
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 378
    const-string v3, "qd: 0 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_b3

    const/4 v3, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v3, 0x0

    :goto_b4
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 379
    const-string v3, "an: 255 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_c1

    const/4 v3, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v3, 0x0

    :goto_c2
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 380
    const-string v3, "au: 10 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_cf

    const/4 v3, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v3, 0x0

    :goto_d0
    invoke-static {v3}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 381
    const-string v3, "ad: 0 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_dd

    const/4 v1, 0x1

    nop

    :cond_dd
    invoke-static {v1}, Lorg/xbill/DNS/HeaderTest;->assertFalse(Z)V

    .line 382
    return-void
.end method

.method public test_toWire()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/16 v0, 0xc

    new-array v1, v0, [B

    fill-array-data v1, :array_7a

    .line 136
    .local v1, "raw":[B
    new-instance v2, Lorg/xbill/DNS/Header;

    invoke-direct {v2, v1}, Lorg/xbill/DNS/Header;-><init>([B)V

    iput-object v2, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    .line 138
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 139
    .local v2, "dout":Lorg/xbill/DNS/DNSOutput;
    iget-object v3, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 141
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    .line 143
    .local v3, "out":[B
    array-length v4, v3

    invoke-static {v0, v4}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 144
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    array-length v6, v3

    if-ge v5, v6, :cond_2f

    .line 145
    aget-byte v6, v1, v5

    aget-byte v7, v3, v5

    invoke-static {v6, v7}, Lorg/xbill/DNS/HeaderTest;->assertEquals(BB)V

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 148
    .end local v5    # "i":I
    :cond_2f
    iget-object v5, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 149
    iget-object v5, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v5}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v5

    invoke-static {v6, v5}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 150
    iget-object v5, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 154
    const/4 v5, 0x2

    const/16 v6, -0x29

    aput-byte v6, v1, v5

    .line 155
    const/4 v5, 0x3

    const/16 v6, -0x49

    aput-byte v6, v1, v5

    .line 157
    iget-object v5, p0, Lorg/xbill/DNS/HeaderTest;->m_h:Lorg/xbill/DNS/Header;

    invoke-virtual {v5}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v3

    .line 159
    array-length v5, v3

    invoke-static {v0, v5}, Lorg/xbill/DNS/HeaderTest;->assertEquals(II)V

    .line 160
    nop

    .local v4, "i":I
    :goto_5a
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    array-length v4, v3

    if-ge v0, v4, :cond_79

    .line 161
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aget-byte v5, v1, v0

    aget-byte v6, v3, v0

    invoke-static {v4, v5, v6}, Lorg/xbill/DNS/HeaderTest;->assertEquals(Ljava/lang/String;BB)V

    .line 160
    add-int/lit8 v4, v0, 0x1

    goto :goto_5a

    .line 163
    .end local v0    # "i":I
    :cond_79
    return-void

    :array_7a
    .array-data 1
        0x12t
        -0x55t
        -0x71t
        -0x43t
        0x65t
        0x1ct
        0x10t
        -0x10t
        -0x68t
        -0x46t
        0x71t
        -0x70t
    .end array-data
.end method
