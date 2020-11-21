.class public Lorg/xbill/DNS/TTLTest;
.super Ljunit/framework/TestCase;
.source "TTLTest.java"


# instance fields
.field private final D:J

.field private final H:J

.field private final M:J

.field private final S:J

.field private final W:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 41
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/xbill/DNS/TTLTest;->S:J

    .line 42
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lorg/xbill/DNS/TTLTest;->M:J

    .line 43
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lorg/xbill/DNS/TTLTest;->H:J

    .line 44
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lorg/xbill/DNS/TTLTest;->D:J

    .line 45
    const-wide/32 v0, 0x93a80

    iput-wide v0, p0, Lorg/xbill/DNS/TTLTest;->W:J

    return-void
.end method


# virtual methods
.method public test_format()V
    .registers 4

    .line 95
    const-string v0, "0S"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "1S"

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "59S"

    const-wide/16 v1, 0x3b

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "1M"

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "59M"

    const-wide/16 v1, 0xdd4

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "1M33S"

    const-wide/16 v1, 0x5d

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "59M59S"

    const-wide/16 v1, 0xe0f

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "1H"

    const-wide/16 v1, 0xe10

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "10H1M21S"

    const-wide/32 v1, 0x8cf1

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "23H59M59S"

    const-wide/32 v1, 0x1517f

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "1D"

    const-wide/32 v1, 0x15180

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "4D18H45M30S"

    const-wide/32 v1, 0x64dca

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "6D23H59M59S"

    const-wide/32 v1, 0x93a7f

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "1W"

    const-wide/32 v1, 0x93a80

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "10W4D1H21M29S"

    const-wide/32 v1, 0x61a219

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "3550W5D3H14M7S"

    const-wide/32 v1, 0x7fffffff

    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public test_format_invalid()V
    .registers 3

    .line 115
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-static {v0, v1}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    const-string v0, "InvalidTTLException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xbill/DNS/InvalidTTLException; {:try_start_2 .. :try_end_a} :catch_b

    .line 116
    goto :goto_c

    :catch_b
    move-exception v0

    .line 118
    :goto_c
    const-wide v0, 0x100000000L

    :try_start_11
    invoke-static {v0, v1}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    const-string v0, "InvalidTTLException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/xbill/DNS/InvalidTTLException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 119
    goto :goto_1b

    :catch_1a
    move-exception v0

    .line 120
    :goto_1b
    return-void
.end method

.method public test_parseTTL()V
    .registers 5

    .line 49
    const-string v0, "9876"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x2694

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 51
    const-string v0, "0S"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 52
    const-string v0, "0M"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 53
    const-string v0, "0H"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 54
    const-string v0, "0D"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 55
    const-string v0, "0W"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 57
    const-string v0, "1s"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 58
    const-string v0, "1m"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 59
    const-string v0, "1h"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 60
    const-string v0, "1d"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 61
    const-string v0, "1w"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x93a80

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 63
    const-string v0, "98S"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x62

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 64
    const-string v0, "76M"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x11d0

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 65
    const-string v0, "54H"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x2f760

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 66
    const-string v0, "32D"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x2a3000

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 67
    const-string v0, "10W"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x5c4900

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 69
    const-string v0, "98S11M1234H2D01W"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x4fa996

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TTLTest;->assertEquals(JJ)V

    .line 70
    return-void
.end method

.method public test_parseTTL_invalid()V
    .registers 2

    .line 74
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    const-string v0, "NumberFormatException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_a

    .line 75
    goto :goto_b

    :catch_a
    move-exception v0

    .line 77
    :goto_b
    :try_start_b
    const-string v0, ""

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    const-string v0, "NumberFormatException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_15} :catch_16

    .line 78
    goto :goto_17

    :catch_16
    move-exception v0

    .line 80
    :goto_17
    :try_start_17
    const-string v0, "S"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    const-string v0, "NumberFormatException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_21} :catch_22

    .line 81
    goto :goto_23

    :catch_22
    move-exception v0

    .line 83
    :goto_23
    :try_start_23
    const-string v0, "10S4B"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    const-string v0, "NumberFormatException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2d} :catch_2e

    .line 84
    goto :goto_2f

    :catch_2e
    move-exception v0

    .line 86
    :goto_2f
    :try_start_2f
    const-string v0, "1S4294967295S"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    const-string v0, "NumberFormatException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_39} :catch_3a

    .line 87
    goto :goto_3b

    :catch_3a
    move-exception v0

    .line 89
    :goto_3b
    :try_start_3b
    const-string v0, "4294967296"

    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    const-string v0, "NumberFormatException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/TTLTest;->fail(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_45} :catch_46

    .line 90
    goto :goto_47

    :catch_46
    move-exception v0

    .line 91
    :goto_47
    return-void
.end method
