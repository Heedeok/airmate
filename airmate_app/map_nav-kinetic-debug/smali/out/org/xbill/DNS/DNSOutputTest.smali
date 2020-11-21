.class public Lorg/xbill/DNS/DNSOutputTest;
.super Ljunit/framework/TestCase;
.source "DNSOutputTest.java"


# instance fields
.field private m_do:Lorg/xbill/DNS/DNSOutput;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private assertEquals([B[B)V
    .registers 4
    .param p1, "exp"    # [B
    .param p2, "act"    # [B

    .line 50
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutputTest;->assertTrue(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 3

    .line 45
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/DNSOutput;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    .line 46
    return-void
.end method

.method public test_default_ctor()V
    .registers 3

    .line 55
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    .line 56
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 57
    return-void
.end method

.method public test_initial_state()V
    .registers 3

    .line 61
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 63
    :try_start_a
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 64
    const-string v0, "IllegalStateException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutputTest;->fail(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_14} :catch_15

    .line 68
    goto :goto_16

    .line 66
    :catch_15
    move-exception v0

    .line 70
    :goto_16
    :try_start_16
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 71
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutputTest;->fail(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_21} :catch_22

    .line 75
    goto :goto_23

    .line 73
    :catch_22
    move-exception v0

    .line 76
    :goto_23
    return-void
.end method

.method public test_jump_basic()V
    .registers 5

    .line 186
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const-wide/32 v1, 0x11223344

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 187
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 188
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 189
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 190
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/16 v2, 0x99

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 191
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 192
    .local v0, "curr":[B
    array-length v2, v0

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 193
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0x11

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 194
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x22

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 195
    aget-byte v1, v0, v1

    const/16 v2, -0x67

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 197
    return-void
.end method

.method public test_save_restore()V
    .registers 4

    .line 252
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const-wide/32 v1, 0x12345678

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 253
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 254
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 255
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const v2, 0xabcd

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 256
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 257
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 258
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 260
    :try_start_37
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 261
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutputTest;->fail(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_37 .. :try_end_41} :catch_42

    .line 265
    goto :goto_43

    .line 263
    :catch_42
    move-exception v0

    .line 266
    :goto_43
    return-void
.end method

.method public test_writeByteArray_1arg()V
    .registers 4

    .line 201
    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_1e

    .line 202
    .local v1, "in":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 203
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 204
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 205
    .local v0, "curr":[B
    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals([B[B)V

    .line 206
    return-void

    :array_1e
    .array-data 1
        -0x55t
        -0x33t
        -0x11t
        0x12t
        0x34t
    .end array-data
.end method

.method public test_writeByteArray_3arg()V
    .registers 7

    .line 210
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_32

    .line 211
    .local v0, "in":[B
    iget-object v1, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 212
    iget-object v1, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 213
    new-array v1, v3, [B

    aget-byte v4, v0, v2

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    aget-byte v3, v0, v3

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    .line 214
    .local v1, "exp":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 215
    .local v2, "curr":[B
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals([B[B)V

    .line 216
    return-void

    nop

    :array_32
    .array-data 1
        -0x55t
        -0x33t
        -0x11t
        0x12t
        0x34t
    .end array-data
.end method

.method public test_writeCountedString_basic()V
    .registers 8

    .line 220
    const/4 v0, 0x5

    new-array v1, v0, [B

    fill-array-data v1, :array_42

    .line 221
    .local v1, "in":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 222
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    invoke-static {v2, v4}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 223
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 224
    .local v2, "curr":[B
    const/4 v4, 0x6

    new-array v4, v4, [B

    array-length v5, v1

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    aget-byte v5, v1, v6

    aput-byte v5, v4, v3

    aget-byte v3, v1, v3

    const/4 v5, 0x2

    aput-byte v3, v4, v5

    aget-byte v3, v1, v5

    const/4 v5, 0x3

    aput-byte v3, v4, v5

    aget-byte v3, v1, v5

    const/4 v5, 0x4

    aput-byte v3, v4, v5

    aget-byte v3, v1, v5

    aput-byte v3, v4, v0

    move-object v0, v4

    .line 225
    .local v0, "exp":[B
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals([B[B)V

    .line 226
    return-void

    nop

    :array_42
    .array-data 1
        0x68t
        0x65t
        0x6ct
        0x4ct
        0x30t
    .end array-data
.end method

.method public test_writeCountedString_empty()V
    .registers 6

    .line 230
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 231
    .local v1, "in":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 232
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v4, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v4

    invoke-static {v2, v4}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 233
    iget-object v2, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 234
    .local v2, "curr":[B
    new-array v3, v3, [B

    array-length v4, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    move-object v0, v3

    .line 235
    .local v0, "exp":[B
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals([B[B)V

    .line 236
    return-void
.end method

.method public test_writeCountedString_toobig()V
    .registers 3

    .line 240
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 242
    .local v0, "in":[B
    :try_start_4
    iget-object v1, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 243
    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/DNSOutputTest;->fail(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_e} :catch_f

    .line 247
    goto :goto_10

    .line 245
    :catch_f
    move-exception v1

    .line 248
    :goto_10
    return-void
.end method

.method public test_writeU16_basic()V
    .registers 5

    .line 122
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 123
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 125
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 126
    .local v0, "curr":[B
    array-length v2, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 127
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 128
    aget-byte v2, v0, v3

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 129
    return-void
.end method

.method public test_writeU16_max()V
    .registers 4

    .line 133
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 134
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 135
    .local v0, "curr":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 136
    const/4 v1, 0x1

    aget-byte v1, v0, v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 137
    return-void
.end method

.method public test_writeU16_toobig()V
    .registers 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const v1, 0x1ffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 143
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutputTest;->fail(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e

    .line 147
    goto :goto_f

    .line 145
    :catch_e
    move-exception v0

    .line 148
    :goto_f
    return-void
.end method

.method public test_writeU32_basic()V
    .registers 5

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const-wide/32 v1, 0x11001011

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 153
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 155
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 156
    .local v0, "curr":[B
    array-length v2, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 157
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x11

    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 158
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 159
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 160
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 161
    return-void
.end method

.method public test_writeU32_max()V
    .registers 4

    .line 165
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const-wide v1, 0xffffffffL

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 166
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 167
    .local v0, "curr":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 168
    const/4 v1, 0x1

    aget-byte v1, v0, v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 169
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 170
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 171
    return-void
.end method

.method public test_writeU32_toobig()V
    .registers 4

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const-wide v1, 0x1ffffffffL

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 177
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutputTest;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_10

    .line 181
    goto :goto_11

    .line 179
    :catch_10
    move-exception v0

    .line 182
    :goto_11
    return-void
.end method

.method public test_writeU8_basic()V
    .registers 4

    .line 80
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 81
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 83
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 84
    .local v0, "curr":[B
    array-length v2, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 85
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 86
    return-void
.end method

.method public test_writeU8_expand()V
    .registers 5

    .line 91
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 92
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 94
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 96
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 97
    .local v0, "curr":[B
    array-length v3, v0

    invoke-static {v2, v3}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 98
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 99
    aget-byte v1, v0, v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(II)V

    .line 100
    return-void
.end method

.method public test_writeU8_max()V
    .registers 4

    .line 104
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    .line 106
    .local v0, "curr":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/DNSOutputTest;->assertEquals(BB)V

    .line 107
    return-void
.end method

.method public test_writeU8_toobig()V
    .registers 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutputTest;->m_do:Lorg/xbill/DNS/DNSOutput;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 113
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/DNSOutputTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 117
    goto :goto_e

    .line 115
    :catch_d
    move-exception v0

    .line 118
    :goto_e
    return-void
.end method
