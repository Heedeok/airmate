.class public Lorg/xbill/DNS/utils/hexdumpTest;
.super Ljunit/framework/TestCase;
.source "hexdumpTest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public test_0()V
    .registers 4

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 75
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t00 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    :array_12
    .array-data 1
        0x1t
        0x0t
        0x2t
    .end array-data
.end method

.method public test_1()V
    .registers 4

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 82
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t01 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    :array_12
    .array-data 1
        0x2t
        0x1t
        0x3t
    .end array-data
.end method

.method public test_10()V
    .registers 4

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 145
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t0A \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    :array_12
    .array-data 1
        0x1t
        0xat
        0x2t
    .end array-data
.end method

.method public test_11()V
    .registers 4

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 152
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t0B \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    :array_12
    .array-data 1
        0x1t
        0xbt
        0x2t
    .end array-data
.end method

.method public test_12()V
    .registers 4

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 159
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t0C \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    :array_12
    .array-data 1
        0x1t
        0xct
        0x2t
    .end array-data
.end method

.method public test_13()V
    .registers 4

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 166
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t0D \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    :array_12
    .array-data 1
        0x1t
        0xdt
        0x2t
    .end array-data
.end method

.method public test_14()V
    .registers 4

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 173
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t0E \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    :array_12
    .array-data 1
        0x1t
        0xet
        0x2t
    .end array-data
.end method

.method public test_15()V
    .registers 4

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 180
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t0F \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    :array_12
    .array-data 1
        0x1t
        0xft
        0x2t
    .end array-data
.end method

.method public test_2()V
    .registers 4

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 89
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t02 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    :array_12
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method public test_3()V
    .registers 4

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 96
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t03 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    :array_12
    .array-data 1
        0x1t
        0x3t
        0x2t
    .end array-data
.end method

.method public test_4()V
    .registers 4

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 103
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t04 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    :array_12
    .array-data 1
        0x1t
        0x4t
        0x2t
    .end array-data
.end method

.method public test_5()V
    .registers 4

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 110
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t05 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    :array_12
    .array-data 1
        0x1t
        0x5t
        0x2t
    .end array-data
.end method

.method public test_6()V
    .registers 4

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 117
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t06 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    :array_12
    .array-data 1
        0x1t
        0x6t
        0x2t
    .end array-data
.end method

.method public test_7()V
    .registers 4

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 124
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t07 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    :array_12
    .array-data 1
        0x1t
        0x7t
        0x2t
    .end array-data
.end method

.method public test_8()V
    .registers 4

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 131
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t08 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    :array_12
    .array-data 1
        0x1t
        0x8t
        0x2t
    .end array-data
.end method

.method public test_9()V
    .registers 4

    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    .line 138
    .local v0, "data":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "out":Ljava/lang/String;
    const-string v2, "1b:\t09 \n"

    invoke-static {v2, v1}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    :array_12
    .array-data 1
        0x1t
        0x9t
        0x2t
    .end array-data
.end method

.method public test_default_constructor()V
    .registers 2

    .line 187
    new-instance v0, Lorg/xbill/DNS/utils/hexdump;

    invoke-direct {v0}, Lorg/xbill/DNS/utils/hexdump;-><init>()V

    .line 188
    return-void
.end method

.method public test_shortform()V
    .registers 5

    .line 54
    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    .line 63
    .local v0, "data":[B
    const-string v1, "This Is My Description"

    .line 66
    .local v1, "desc":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "long_out":Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "short_out":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/xbill/DNS/utils/hexdumpTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    nop

    :array_18
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
    .end array-data
.end method
