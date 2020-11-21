.class public Lorg/xbill/DNS/DNSInputTest;
.super Ljunit/framework/TestCase;
.source "DNSInputTest.java"


# instance fields
.field private m_di:Lorg/xbill/DNS/DNSInput;

.field private m_raw:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private assertEquals([B[B)V
    .registers 4
    .param p1, "exp"    # [B
    .param p2, "act"    # [B

    .line 47
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/DNSInputTest;->assertTrue(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 3

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    iput-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_raw:[B

    .line 53
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_raw:[B

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    .line 54
    return-void

    nop

    :array_14
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public test_clearActive()V
    .registers 5

    .line 122
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->clearActive()V

    .line 123
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 124
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 126
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->clearActive()V

    .line 128
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 129
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 130
    return-void
.end method

.method public test_initial_state()V
    .registers 3

    .line 58
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 59
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 60
    return-void
.end method

.method public test_jump1()V
    .registers 3

    .line 64
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 65
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 66
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 67
    return-void
.end method

.method public test_jump2()V
    .registers 3

    .line 71
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 72
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 73
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 74
    return-void
.end method

.method public test_jump_invalid()V
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 80
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSInputTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 84
    goto :goto_e

    .line 82
    :catch_d
    move-exception v0

    .line 85
    :goto_e
    return-void
.end method

.method public test_readByteArray_0arg()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 243
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 244
    .local v0, "out":[B
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 245
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 246
    array-length v1, v0

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 247
    nop

    .local v2, "i":I
    :goto_28
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v3, :cond_39

    .line 248
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_raw:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v2, v2, v4

    aget-byte v4, v0, v1

    invoke-static {v2, v4}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(BB)V

    .line 247
    add-int/lit8 v2, v1, 0x1

    goto :goto_28

    .line 250
    .end local v1    # "i":I
    :cond_39
    return-void
.end method

.method public test_readByteArray_0arg_boundary()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 255
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    .line 256
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 257
    .local v0, "out":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 258
    return-void
.end method

.method public test_readByteArray_1arg()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 263
    .local v0, "out":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 264
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 265
    array-length v2, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 266
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 267
    const/4 v1, 0x1

    aget-byte v2, v0, v1

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 268
    return-void
.end method

.method public test_readByteArray_1arg_boundary()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 273
    .local v0, "out":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 274
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 275
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_raw:[B

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals([B[B)V

    .line 276
    return-void
.end method

.method public test_readByteArray_1arg_invalid()V
    .registers 3

    .line 281
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    .line 282
    const-string v0, "WireParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSInputTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 286
    goto :goto_e

    .line 284
    :catch_d
    move-exception v0

    .line 287
    :goto_e
    return-void
.end method

.method public test_readByteArray_3arg()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 292
    .local v0, "data":[B
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 294
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 295
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    const/16 v3, 0x8

    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 296
    const/4 v1, 0x0

    aget-byte v3, v0, v1

    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 297
    nop

    .local v1, "i":I
    :goto_21
    if-ge v1, v2, :cond_33

    .line 298
    iget-object v3, p0, Lorg/xbill/DNS/DNSInputTest;->m_raw:[B

    add-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(BB)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 300
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method public test_readCountedSting()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 305
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    .line 306
    .local v0, "out":[B
    array-length v2, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 307
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 308
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 309
    return-void
.end method

.method public test_readU16_basic()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 187
    .local v0, "v1":I
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 188
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 189
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 191
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 192
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 193
    const/16 v1, 0x102

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 194
    return-void
.end method

.method public test_readU16_maxval()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 199
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 200
    .local v0, "v":I
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 201
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 202
    const v1, 0xffff

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 205
    :try_start_28
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 206
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    .line 207
    const-string v1, "WireParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/DNSInputTest;->fail(Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 211
    goto :goto_3b

    .line 209
    :catch_3a
    move-exception v1

    .line 212
    :goto_3b
    return-void
.end method

.method public test_readU32_basic()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    .line 217
    .local v0, "v1":J
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 218
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 219
    const-wide/32 v2, 0x10203

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(JJ)V

    .line 220
    return-void
.end method

.method public test_readU32_maxval()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 225
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    .line 226
    .local v0, "v":J
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 227
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 228
    const-wide v2, 0xffffffffL

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(JJ)V

    .line 231
    :try_start_29
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 232
    iget-object v2, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->readU32()J

    .line 233
    const-string v2, "WireParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/DNSInputTest;->fail(Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_29 .. :try_end_39} :catch_3a

    .line 237
    goto :goto_3b

    .line 235
    :catch_3a
    move-exception v2

    .line 238
    :goto_3b
    return-void
.end method

.method public test_readU8_basic()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 162
    .local v0, "v1":I
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 163
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 164
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 165
    return-void
.end method

.method public test_readU8_maxval()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 170
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 171
    .local v0, "v1":I
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 172
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 173
    const/16 v1, 0xff

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 176
    :try_start_27
    iget-object v1, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    move v0, v1

    .line 177
    const-string v1, "WireParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/DNSInputTest;->fail(Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_27 .. :try_end_33} :catch_34

    .line 181
    goto :goto_35

    .line 179
    :catch_34
    move-exception v1

    .line 182
    :goto_35
    return-void
.end method

.method public test_restore_invalid()V
    .registers 2

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->restore()V

    .line 136
    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSInputTest;->fail(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_b

    .line 140
    goto :goto_c

    .line 138
    :catch_b
    move-exception v0

    .line 141
    :goto_c
    return-void
.end method

.method public test_save_restore()V
    .registers 5

    .line 145
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 146
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 147
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 149
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->save()V

    .line 150
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 151
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/16 v3, 0xa

    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 154
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->restore()V

    .line 155
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 156
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 157
    return-void
.end method

.method public test_setActive()V
    .registers 4

    .line 89
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 90
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 91
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 92
    return-void
.end method

.method public test_setActive_boundary1()V
    .registers 4

    .line 96
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 97
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 98
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 99
    return-void
.end method

.method public test_setActive_boundary2()V
    .registers 3

    .line 103
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 104
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSInputTest;->assertEquals(II)V

    .line 106
    return-void
.end method

.method public test_setActive_invalid()V
    .registers 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSInputTest;->m_di:Lorg/xbill/DNS/DNSInput;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 112
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSInputTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 116
    goto :goto_e

    .line 114
    :catch_d
    move-exception v0

    .line 117
    :goto_e
    return-void
.end method
