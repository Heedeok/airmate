.class public Lorg/apache/commons/httpclient/util/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# static fields
.field private static final DEFAULT_PATTERNS:Ljava/util/Collection;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 70
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

    sput-object v0, Lorg/apache/commons/httpclient/util/DateParser;->DEFAULT_PATTERNS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .param p0, "dateValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;
    .registers 7
    .param p0, "dateValue"    # Ljava/lang/String;
    .param p1, "dateFormats"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/util/DateParseException;
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_6c

    .line 105
    if-nez p1, :cond_6

    .line 106
    sget-object p1, Lorg/apache/commons/httpclient/util/DateParser;->DEFAULT_PATTERNS:Ljava/util/Collection;

    .line 110
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_26
    const/4 v0, 0x0

    .line 118
    .local v0, "dateParser":Ljava/text/SimpleDateFormat;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "formatIter":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "format":Ljava/lang/String;
    if-nez v0, :cond_4b

    .line 123
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v3

    .line 124
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_4e

    .line 126
    :cond_4b
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 129
    :goto_4e
    :try_start_4e
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_52
    .catch Ljava/text/ParseException; {:try_start_4e .. :try_end_52} :catch_53

    return-object v3

    .line 130
    :catch_53
    move-exception v3

    .line 133
    .end local v2    # "format":Ljava/lang/String;
    goto :goto_2b

    .line 136
    :cond_55
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

    .line 103
    .end local v0    # "dateParser":Ljava/text/SimpleDateFormat;
    .end local v1    # "formatIter":Ljava/util/Iterator;
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dateValue is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
