.class public Lorg/xbill/DNS/SerialTest;
.super Ljunit/framework/TestCase;
.source "SerialTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_compare_Arg1Greater()V
    .registers 7

    .line 95
    const-wide/16 v0, 0xa

    .line 96
    .local v0, "arg1":J
    const-wide/16 v2, 0x9

    .line 97
    .local v2, "arg2":J
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    move-result v4

    .line 98
    .local v4, "ret":I
    if-lez v4, :cond_c

    const/4 v5, 0x1

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    :goto_d
    invoke-static {v5}, Lorg/xbill/DNS/SerialTest;->assertTrue(Z)V

    .line 99
    return-void
.end method

.method public test_compare_Arg2Greater()V
    .registers 7

    .line 103
    const-wide/16 v0, 0x9

    .line 104
    .local v0, "arg1":J
    const-wide/16 v2, 0xa

    .line 105
    .local v2, "arg2":J
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    move-result v4

    .line 106
    .local v4, "ret":I
    if-gez v4, :cond_c

    const/4 v5, 0x1

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    :goto_d
    invoke-static {v5}, Lorg/xbill/DNS/SerialTest;->assertTrue(Z)V

    .line 107
    return-void
.end method

.method public test_compare_ArgsEqual()V
    .registers 7

    .line 111
    const-wide/16 v0, 0xa

    .line 112
    .local v0, "arg1":J
    const-wide/16 v2, 0xa

    .line 113
    .local v2, "arg2":J
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    move-result v4

    .line 114
    .local v4, "ret":I
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/xbill/DNS/SerialTest;->assertEquals(II)V

    .line 115
    return-void
.end method

.method public test_compare_NegativeArg1()V
    .registers 6

    .line 43
    const-wide/16 v0, -0x1

    .line 44
    .local v0, "arg1":J
    const-wide/16 v2, 0x1

    .line 46
    .local v2, "arg2":J
    :try_start_4
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    .line 47
    const-string v4, "compare accepted negative argument 1"

    invoke-static {v4}, Lorg/xbill/DNS/SerialTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_c} :catch_d

    .line 51
    goto :goto_e

    .line 49
    :catch_d
    move-exception v4

    .line 52
    :goto_e
    return-void
.end method

.method public test_compare_NegativeArg2()V
    .registers 6

    .line 69
    const-wide/16 v0, 0x1

    .line 70
    .local v0, "arg1":J
    const-wide/16 v2, -0x1

    .line 72
    .local v2, "arg2":J
    :try_start_4
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    .line 73
    const-string v4, "compare accepted negative argument 2"

    invoke-static {v4}, Lorg/xbill/DNS/SerialTest;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_c} :catch_d

    .line 77
    goto :goto_e

    .line 75
    :catch_d
    move-exception v4

    .line 78
    :goto_e
    return-void
.end method

.method public test_compare_OOBArg1()V
    .registers 6

    .line 56
    const-wide v0, 0x100000000L

    .line 57
    .local v0, "arg1":J
    const-wide/16 v2, 0x1

    .line 59
    .local v2, "arg2":J
    :try_start_7
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    .line 60
    const-string v4, "compare accepted out-of-bounds argument 1"

    invoke-static {v4}, Lorg/xbill/DNS/SerialTest;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    .line 64
    goto :goto_11

    .line 62
    :catch_10
    move-exception v4

    .line 65
    :goto_11
    return-void
.end method

.method public test_compare_OOBArg2()V
    .registers 6

    .line 82
    const-wide/16 v0, 0x1

    .line 83
    .local v0, "arg1":J
    const-wide v2, 0x100000000L

    .line 85
    .local v2, "arg2":J
    :try_start_7
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    .line 86
    const-string v4, "compare accepted out-of-bounds argument 1"

    invoke-static {v4}, Lorg/xbill/DNS/SerialTest;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    .line 90
    goto :goto_11

    .line 88
    :catch_10
    move-exception v4

    .line 91
    :goto_11
    return-void
.end method

.method public test_compare_boundary()V
    .registers 7

    .line 119
    const-wide v0, 0xffffffffL

    .line 120
    .local v0, "arg1":J
    const-wide/16 v2, 0x0

    .line 121
    .local v2, "arg2":J
    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    move-result v4

    .line 122
    .local v4, "ret":I
    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/xbill/DNS/SerialTest;->assertEquals(II)V

    .line 123
    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    move-result v4

    .line 124
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lorg/xbill/DNS/SerialTest;->assertEquals(II)V

    .line 125
    return-void
.end method

.method public test_increment_NegativeArg()V
    .registers 4

    .line 129
    const-wide/16 v0, -0x1

    .line 131
    .local v0, "arg":J
    :try_start_2
    invoke-static {v0, v1}, Lorg/xbill/DNS/Serial;->increment(J)J

    .line 132
    const-string v2, "increment accepted negative argument"

    invoke-static {v2}, Lorg/xbill/DNS/SerialTest;->fail(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_b

    .line 136
    goto :goto_c

    .line 134
    :catch_b
    move-exception v2

    .line 137
    :goto_c
    return-void
.end method

.method public test_increment_OOBArg()V
    .registers 4

    .line 141
    const-wide v0, 0x100000000L

    .line 143
    .local v0, "arg":J
    :try_start_5
    invoke-static {v0, v1}, Lorg/xbill/DNS/Serial;->increment(J)J

    .line 144
    const-string v2, "increment accepted out-of-bounds argument"

    invoke-static {v2}, Lorg/xbill/DNS/SerialTest;->fail(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_d} :catch_e

    .line 148
    goto :goto_f

    .line 146
    :catch_e
    move-exception v2

    .line 149
    :goto_f
    return-void
.end method

.method public test_increment_normal()V
    .registers 7

    .line 160
    const-wide/16 v0, 0xa

    .line 161
    .local v0, "arg":J
    invoke-static {v0, v1}, Lorg/xbill/DNS/Serial;->increment(J)J

    move-result-wide v2

    .line 162
    .local v2, "ret":J
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/SerialTest;->assertEquals(JJ)V

    .line 163
    return-void
.end method

.method public test_increment_reset()V
    .registers 7

    .line 153
    const-wide v0, 0xffffffffL

    .line 154
    .local v0, "arg":J
    invoke-static {v0, v1}, Lorg/xbill/DNS/Serial;->increment(J)J

    move-result-wide v2

    .line 155
    .local v2, "ret":J
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Lorg/xbill/DNS/SerialTest;->assertEquals(JJ)V

    .line 156
    return-void
.end method
