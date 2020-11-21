.class public Lorg/xbill/DNS/FormattedTimeTest;
.super Ljunit/framework/TestCase;
.source "FormattedTimeTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_format()V
    .registers 8

    .line 48
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 49
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0x7d5

    const/4 v2, 0x2

    const/16 v3, 0x13

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 50
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "out":Ljava/lang/String;
    const-string v2, "20050319040405"

    invoke-static {v2, v1}, Lorg/xbill/DNS/FormattedTimeTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public test_parse()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 60
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v3, 0x7d5

    const/4 v4, 0x2

    const/16 v5, 0x13

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x5

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 61
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 63
    const-string v3, "20050319040405"

    invoke-static {v3}, Lorg/xbill/DNS/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 64
    .local v3, "out":Ljava/util/Date;
    new-instance v4, Ljava/util/GregorianCalendar;

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 65
    .local v4, "cal2":Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 66
    invoke-virtual {v4, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 67
    invoke-static {v0, v4}, Lorg/xbill/DNS/FormattedTimeTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public test_parse_invalid()V
    .registers 2

    .line 73
    :try_start_0
    const-string v0, "2004010101010"

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 74
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTimeTest;->fail(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_a} :catch_b

    .line 77
    goto :goto_c

    .line 76
    :catch_b
    move-exception v0

    .line 79
    :goto_c
    :try_start_c
    const-string v0, "200401010101010"

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 80
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTimeTest;->fail(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_c .. :try_end_16} :catch_17

    .line 83
    goto :goto_18

    .line 82
    :catch_17
    move-exception v0

    .line 85
    :goto_18
    :try_start_18
    const-string v0, "2004010101010A"

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 86
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/FormattedTimeTest;->fail(Ljava/lang/String;)V
    :try_end_22
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_18 .. :try_end_22} :catch_23

    .line 89
    goto :goto_24

    .line 88
    :catch_23
    move-exception v0

    .line 90
    :goto_24
    return-void
.end method
