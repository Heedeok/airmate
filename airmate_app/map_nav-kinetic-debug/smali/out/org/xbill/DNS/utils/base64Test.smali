.class public Lorg/xbill/DNS/utils/base64Test;
.super Ljunit/framework/TestCase;
.source "base64Test.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private assertEquals([B[B)V
    .registers 6
    .param p1, "exp"    # [B
    .param p2, "act"    # [B

    .line 208
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(II)V

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 210
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-static {v1, v2}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(BB)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 212
    .end local v0    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public test_formatString_empty1()V
    .registers 5

    .line 97
    const/4 v0, 0x0

    new-array v1, v0, [B

    const-string v2, ""

    const/4 v3, 0x5

    invoke-static {v1, v3, v2, v0}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "out":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v1, v0}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public test_formatString_oneBreak()V
    .registers 5

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 118
    .local v0, "in":[B
    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AQIDBAUGBw\ngJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_oneBreakWithPrefix()V
    .registers 5

    .line 152
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 153
    .local v0, "in":[B
    const-string v1, "!_"

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDBAUGBw\n!_gJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_oneBreakWithPrefixAndClose()V
    .registers 5

    .line 187
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 188
    .local v0, "in":[B
    const-string v1, "!_"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDBAUGBw\n!_gJ )"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_sameLength()V
    .registers 5

    .line 110
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 111
    .local v0, "in":[B
    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AQIDBAUGBwgJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_sameLengthWithPrefix()V
    .registers 5

    .line 145
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 146
    .local v0, "in":[B
    const-string v1, "!_"

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDBAUGBwgJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_sameLengthWithPrefixAndClose()V
    .registers 5

    .line 180
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 181
    .local v0, "in":[B
    const-string v1, "!_"

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDBAUGBwgJ )"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_shorter()V
    .registers 5

    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 104
    .local v0, "in":[B
    const-string v1, ""

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AQIDBAUGBwgJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_shorterWithPrefix()V
    .registers 5

    .line 138
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 139
    .local v0, "in":[B
    const-string v1, "!_"

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDBAUGBwgJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_shorterWithPrefixAndClose()V
    .registers 5

    .line 173
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 174
    .local v0, "in":[B
    const-string v1, "!_"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDBAUGBwgJ )"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_twoBreaks1()V
    .registers 5

    .line 124
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 125
    .local v0, "in":[B
    const-string v1, ""

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AQIDB\nAUGBw\ngJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    nop

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_twoBreaks1WithPrefix()V
    .registers 5

    .line 159
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 160
    .local v0, "in":[B
    const-string v1, "!_"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDB\n!_AUGBw\n!_gJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void

    nop

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_twoBreaks1WithPrefixAndClose()V
    .registers 5

    .line 194
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 195
    .local v0, "in":[B
    const-string v1, "!_"

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQIDB\n!_AUGBw\n!_gJ )"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void

    nop

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_twoBreaks2()V
    .registers 5

    .line 131
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 132
    .local v0, "in":[B
    const-string v1, ""

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AQID\nBAUG\nBwgJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    nop

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_twoBreaks2WithPrefix()V
    .registers 5

    .line 166
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 167
    .local v0, "in":[B
    const-string v1, "!_"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQID\n!_BAUG\n!_BwgJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    nop

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_formatString_twoBreaks2WithPrefixAndClose()V
    .registers 5

    .line 201
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    .line 202
    .local v0, "in":[B
    const-string v1, "!_"

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "out":Ljava/lang/String;
    const-string v2, "!_AQID\n!_BAUG\n!_BwgJ )"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    nop

    :array_16
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_fromString_basic1()V
    .registers 3

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 224
    .local v0, "exp":[B
    const-string v1, "AA=="

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 225
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals([B[B)V

    .line 226
    return-void
.end method

.method public test_fromString_basic2()V
    .registers 3

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 231
    .local v0, "exp":[B
    const-string v1, "AAA="

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 232
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals([B[B)V

    .line 233
    return-void

    :array_10
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public test_fromString_basic3()V
    .registers 3

    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 238
    .local v0, "exp":[B
    const-string v1, "AAAB"

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 239
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals([B[B)V

    .line 240
    return-void

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public test_fromString_basic4()V
    .registers 3

    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 245
    .local v0, "exp":[B
    const-string v1, "/AAA"

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 246
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals([B[B)V

    .line 247
    return-void

    :array_10
    .array-data 1
        -0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method public test_fromString_basic5()V
    .registers 3

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 252
    .local v0, "exp":[B
    const-string v1, "////"

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 253
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals([B[B)V

    .line 254
    return-void

    :array_10
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public test_fromString_basic6()V
    .registers 3

    .line 258
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 259
    .local v0, "exp":[B
    const-string v1, "AQIDBAUGBwgJ"

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 260
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals([B[B)V

    .line 261
    return-void

    nop

    :array_12
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_fromString_empty1()V
    .registers 4

    .line 216
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 217
    .local v1, "data":[B
    const-string v2, ""

    invoke-static {v2}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    .line 218
    .local v2, "out":[B
    new-array v0, v0, [B

    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/utils/base64Test;->assertEquals([B[B)V

    .line 219
    return-void
.end method

.method public test_fromString_invalid1()V
    .registers 2

    .line 265
    const-string v0, "AAA"

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 266
    .local v0, "out":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64Test;->assertNull(Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public test_fromString_invalid2()V
    .registers 2

    .line 271
    const-string v0, "AA"

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    .local v0, "out":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64Test;->assertNull(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public test_fromString_invalid3()V
    .registers 2

    .line 277
    const-string v0, "A"

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 278
    .local v0, "out":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64Test;->assertNull(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public test_fromString_invalid4()V
    .registers 2

    .line 283
    const-string v0, "BB=="

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 284
    .local v0, "out":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64Test;->assertNull(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public test_fromString_invalid5()V
    .registers 2

    .line 289
    const-string v0, "BBB="

    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 290
    .local v0, "out":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64Test;->assertNull(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public test_toString_basic1()V
    .registers 4

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 56
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AA=="

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public test_toString_basic2()V
    .registers 4

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 63
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AAA="

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    :array_10
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public test_toString_basic3()V
    .registers 4

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 70
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AAAB"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public test_toString_basic4()V
    .registers 4

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 77
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "out":Ljava/lang/String;
    const-string v2, "/AAA"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    :array_10
    .array-data 1
        -0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method public test_toString_basic5()V
    .registers 4

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    .line 84
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "out":Ljava/lang/String;
    const-string v2, "////"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    :array_10
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public test_toString_basic6()V
    .registers 4

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 91
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "out":Ljava/lang/String;
    const-string v2, "AQIDBAUGBwgJ"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    nop

    :array_12
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_toString_empty()V
    .registers 4

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 49
    .local v0, "data":[B
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "out":Ljava/lang/String;
    const-string v2, ""

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/base64Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
