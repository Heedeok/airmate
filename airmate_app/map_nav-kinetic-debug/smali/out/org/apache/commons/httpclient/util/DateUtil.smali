.class public Lorg/apache/commons/httpclient/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final DEFAULT_PATTERNS:Ljava/util/Collection;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field private static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_PATTERNS:Ljava/util/Collection;

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 80
    .end local v0    # "calendar":Ljava/util/Calendar;
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/DateUtil;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "date"    # Ljava/util/Date;

    .line 182
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/DateUtil;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 199
    if-eqz p0, :cond_1d

    .line 200
    if-eqz p1, :cond_15

    .line 202
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 203
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 204
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 200
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "date is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .param p0, "dateValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;
    .registers 3
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Date;)Ljava/util/Date;
    .registers 8
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # Ljava/util/Collection;
    .param p2, "startDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .line 132
    if-eqz p0, :cond_73

    .line 135
    if-nez p1, :cond_6

    .line 136
    sget-object p1, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_PATTERNS:Ljava/util/Collection;

    .line 138
    :cond_6
    if-nez p2, :cond_a

    .line 139
    sget-object p2, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 143
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 150
    :cond_2a
    const/4 v0, 0x0

    .line 151
    .local v0, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    .local v1, "formatIter":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "format":Ljava/lang/String;
    if-nez v0, :cond_52

    .line 156
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v3

    .line 157
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    goto :goto_55

    .line 160
    :cond_52
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 163
    :goto_55
    :try_start_55
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_59
    .catch Ljava/text/ParseException; {:try_start_55 .. :try_end_59} :catch_5a

    return-object v3

    .line 164
    :catch_5a
    move-exception v3

    .line 167
    .end local v2    # "format":Ljava/lang/String;
    goto :goto_2f

    .line 170
    :cond_5c
    new-instance v2, Lorg/apache/commons/httpclient/util/DateParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to parse the date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/util/DateParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    .end local v0    # "dateParser":Ljava/text/SimpleDateFormat;
    .end local v1    # "formatIter":Ljava/util/Iterator;
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dateValue is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
