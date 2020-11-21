.class public Lorg/apache/commons/lang/time/FastDateFormat;
.super Ljava/text/Format;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/FastDateFormat$Pair;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;,
        Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;,
        Lorg/apache/commons/lang/time/FastDateFormat$TextField;,
        Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;,
        Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;,
        Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;,
        Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cDateInstanceCache:Ljava/util/Map;

.field private static final cDateTimeInstanceCache:Ljava/util/Map;

.field private static cDefaultPattern:Ljava/lang/String; = null

.field private static final cInstanceCache:Ljava/util/Map;

.field private static final cTimeInstanceCache:Ljava/util/Map;

.field private static final cTimeZoneDisplayCache:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mLocaleForced:Z

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;

.field private final mTimeZoneForced:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 110
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 534
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 535
    if-eqz p1, :cond_27

    .line 538
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    .line 540
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    .line 541
    if-nez p2, :cond_16

    .line 542
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 544
    :cond_16
    iput-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    .line 546
    if-eqz p3, :cond_1c

    const/4 v0, 0x1

    nop

    :cond_1c
    iput-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    .line 547
    if-nez p3, :cond_24

    .line 548
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 550
    :cond_24
    iput-object p3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    .line 551
    return-void

    .line 536
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pattern must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDateInstance(I)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 2
    .param p0, "style"    # I

    .line 234
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 3
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .line 249
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 3
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 265
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 10
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 280
    :try_start_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 281
    .local v1, "key":Ljava/lang/Object;
    if-eqz p1, :cond_10

    .line 282
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 285
    :cond_10
    if-nez p2, :cond_17

    .line 286
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object p2, v2

    .line 289
    :cond_17
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 291
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/time/FastDateFormat;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_56

    .line 292
    .local v2, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v2, :cond_54

    .line 294
    :try_start_27
    invoke-static {p0, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 295
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "pattern":Ljava/lang/String;
    invoke-static {v4, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v5

    move-object v2, v5

    .line 297
    sget-object v5, Lorg/apache/commons/lang/time/FastDateFormat;->cDateInstanceCache:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_3b} :catch_3c
    .catchall {:try_start_27 .. :try_end_3b} :catchall_56

    .line 301
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "pattern":Ljava/lang/String;
    goto :goto_54

    .line 299
    :catch_3c
    move-exception v3

    .line 300
    .local v3, "ex":Ljava/lang/ClassCastException;
    :try_start_3d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No date pattern for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_56

    .line 303
    .end local v3    # "ex":Ljava/lang/ClassCastException;
    :cond_54
    :goto_54
    monitor-exit v0

    return-object v2

    .line 279
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "style":I
    .end local p1    # "timeZone":Ljava/util/TimeZone;
    .end local p2    # "locale":Ljava/util/Locale;
    :catchall_56
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDateTimeInstance(II)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 3
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .line 406
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 423
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .line 441
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 11
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 459
    :try_start_3
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    .local v1, "key":Ljava/lang/Object;
    if-eqz p2, :cond_1a

    .line 461
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 463
    :cond_1a
    if-nez p3, :cond_21

    .line 464
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object p3, v2

    .line 466
    :cond_21
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p3}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 468
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/time/FastDateFormat;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_60

    .line 469
    .local v2, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v2, :cond_5e

    .line 471
    :try_start_31
    invoke-static {p0, p1, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 473
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "pattern":Ljava/lang/String;
    invoke-static {v4, p2, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v5

    move-object v2, v5

    .line 475
    sget-object v5, Lorg/apache/commons/lang/time/FastDateFormat;->cDateTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_45} :catch_46
    .catchall {:try_start_31 .. :try_end_45} :catchall_60

    .line 479
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "pattern":Ljava/lang/String;
    goto :goto_5e

    .line 477
    :catch_46
    move-exception v3

    .line 478
    .local v3, "ex":Ljava/lang/ClassCastException;
    :try_start_47
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No date time pattern for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_60

    .line 481
    .end local v3    # "ex":Ljava/lang/ClassCastException;
    :cond_5e
    :goto_5e
    monitor-exit v0

    return-object v2

    .line 458
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "dateStyle":I
    .end local p1    # "timeStyle":I
    .end local p2    # "timeZone":Ljava/util/TimeZone;
    .end local p3    # "locale":Ljava/util/Locale;
    :catchall_60
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .registers 2

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 512
    :try_start_3
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 513
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;

    .line 515
    :cond_12
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat;->cDefaultPattern:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 511
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 2

    .line 153
    invoke-static {}, Lorg/apache/commons/lang/time/FastDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 7
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 212
    :try_start_3
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 213
    .local v1, "emptyFormat":Lorg/apache/commons/lang/time/FastDateFormat;
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 214
    .local v2, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v2, :cond_1b

    .line 215
    move-object v2, v1

    .line 216
    invoke-virtual {v2}, Lorg/apache/commons/lang/time/FastDateFormat;->init()V

    .line 217
    sget-object v3, Lorg/apache/commons/lang/time/FastDateFormat;->cInstanceCache:Ljava/util/Map;

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    .line 219
    :cond_1b
    monitor-exit v0

    return-object v2

    .line 211
    .end local v1    # "emptyFormat":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local v2    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "pattern":Ljava/lang/String;
    .end local p1    # "timeZone":Ljava/util/TimeZone;
    .end local p2    # "locale":Ljava/util/Locale;
    :catchall_1d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTimeInstance(I)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 2
    .param p0, "style"    # I

    .line 318
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 3
    .param p0, "style"    # I
    .param p1, "locale"    # Ljava/util/Locale;

    .line 333
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 3
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 349
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;
    .registers 10
    .param p0, "style"    # I
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 365
    :try_start_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 366
    .local v1, "key":Ljava/lang/Object;
    if-eqz p1, :cond_10

    .line 367
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 369
    :cond_10
    if-eqz p2, :cond_18

    .line 370
    new-instance v2, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    invoke-direct {v2, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 373
    :cond_18
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 374
    .local v2, "format":Lorg/apache/commons/lang/time/FastDateFormat;
    if-nez v2, :cond_56

    .line 375
    if-nez p2, :cond_29

    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_58

    move-object p2, v3

    .line 380
    :cond_29
    :try_start_29
    invoke-static {p0, p2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 381
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "pattern":Ljava/lang/String;
    invoke-static {v4, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v5

    move-object v2, v5

    .line 383
    sget-object v5, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeInstanceCache:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_3d} :catch_3e
    .catchall {:try_start_29 .. :try_end_3d} :catchall_58

    .line 387
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "pattern":Ljava/lang/String;
    goto :goto_56

    .line 385
    :catch_3e
    move-exception v3

    .line 386
    .local v3, "ex":Ljava/lang/ClassCastException;
    :try_start_3f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No date pattern for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_58

    .line 389
    .end local v3    # "ex":Ljava/lang/ClassCastException;
    :cond_56
    :goto_56
    monitor-exit v0

    return-object v2

    .line 364
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "format":Lorg/apache/commons/lang/time/FastDateFormat;
    .end local p0    # "style":I
    .end local p1    # "timeZone":Ljava/util/TimeZone;
    .end local p2    # "locale":Ljava/util/Locale;
    :catchall_58
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    const-class v0, Lorg/apache/commons/lang/time/FastDateFormat;

    monitor-enter v0

    .line 496
    :try_start_3
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 497
    .local v1, "key":Ljava/lang/Object;
    sget-object v2, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 500
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 501
    sget-object v3, Lorg/apache/commons/lang/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 503
    :cond_1c
    monitor-exit v0

    return-object v2

    .line 495
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/String;
    .end local p0    # "tz":Ljava/util/TimeZone;
    .end local p1    # "daylight":Z
    .end local p2    # "style":I
    .end local p3    # "locale":Ljava/util/Locale;
    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1026
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1027
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/FastDateFormat;->init()V

    .line 1028
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 885
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    .line 886
    .local v0, "rules":[Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    array-length v1, v1

    .line 887
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_10

    .line 888
    aget-object v3, v0, v2

    invoke-interface {v3, p2, p1}, Lorg/apache/commons/lang/time/FastDateFormat$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 887
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 890
    .end local v2    # "i":I
    :cond_10
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 975
    instance-of v0, p1, Lorg/apache/commons/lang/time/FastDateFormat;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 976
    return v1

    .line 978
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/time/FastDateFormat;

    .line 979
    .local v0, "other":Lorg/apache/commons/lang/time/FastDateFormat;
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    if-eq v2, v3, :cond_19

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_19
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    if-eq v2, v3, :cond_29

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_29
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    if-eq v2, v3, :cond_39

    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_39
    iget-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    iget-boolean v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    if-ne v2, v3, :cond_47

    iget-boolean v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    iget-boolean v3, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    if-ne v2, v3, :cond_47

    .line 986
    const/4 v1, 0x1

    return v1

    .line 988
    :cond_47
    return v1
.end method

.method public format(J)Ljava/lang/String;
    .registers 4
    .param p1, "millis"    # J

    .line 808
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 830
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;

    .line 818
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 819
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 820
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .line 843
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 788
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 789
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 790
    :cond_c
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_18

    .line 791
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 792
    :cond_18
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_28

    .line 793
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 795
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_39

    const-string v2, "<null>"

    goto :goto_41

    :cond_39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 869
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    if-eqz v0, :cond_10

    .line 870
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/Calendar;

    .line 871
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 873
    :cond_10
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 855
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 856
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 857
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 950
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .registers 2

    .line 963
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    .line 916
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 930
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getTimeZoneOverridesCalendar()Z
    .registers 2

    .line 941
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "total":I
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 999
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    iget-boolean v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    add-int/2addr v0, v1

    .line 1001
    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    iget-boolean v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocaleForced:Z

    add-int/2addr v0, v1

    .line 1003
    return v0
.end method

.method protected init()V
    .registers 5

    .line 557
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/FastDateFormat;->parsePattern()Ljava/util/List;

    move-result-object v0

    .line 558
    .local v0, "rulesList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    iput-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, "len":I
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    array-length v2, v2

    .local v2, "i":I
    :goto_16
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_24

    .line 562
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mRules:[Lorg/apache/commons/lang/time/FastDateFormat$Rule;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/apache/commons/lang/time/FastDateFormat$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_16

    .line 565
    .end local v2    # "i":I
    :cond_24
    iput v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mMaxLengthEstimate:I

    .line 566
    return-void
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 903
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 904
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 905
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parsePattern()Ljava/util/List;
    .registers 21

    .line 577
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 578
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v2, "rules":Ljava/util/List;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "ERAs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, "months":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "shortMonths":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, "weekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v7

    .line 585
    .local v7, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 587
    .local v8, "AmPmStrings":[Ljava/lang/String;
    iget-object v9, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 588
    .local v9, "length":I
    const/4 v10, 0x1

    new-array v11, v10, [I

    .line 590
    .local v11, "indexRef":[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    .local v13, "i":I
    :goto_31
    if-ge v13, v9, :cond_1f4

    .line 591
    aput v13, v11, v12

    .line 592
    iget-object v14, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v14, v11}, Lorg/apache/commons/lang/time/FastDateFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v14

    .line 593
    .local v14, "token":Ljava/lang/String;
    aget v13, v11, v12

    .line 595
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 596
    .local v15, "tokenLen":I
    if-nez v15, :cond_4c

    .line 597
    nop

    .line 696
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_1fa

    .line 601
    :cond_4c
    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 603
    .local v16, "c":C
    const/4 v12, 0x4

    sparse-switch v16, :sswitch_data_1fc

    .line 690
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .local v17, "symbols":Ljava/text/DateFormatSymbols;
    .local v18, "weekdays":[Ljava/lang/String;
    .local v19, "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Illegal pattern component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_71
    if-lt v15, v12, :cond_88

    .line 669
    new-instance v12, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;

    iget-object v10, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v17, v1

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    iget-boolean v1, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    iget-object v6, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v7

    const/4 v7, 0x1

    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    invoke-direct {v12, v10, v1, v6, v7}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V

    move-object v1, v12

    goto/16 :goto_1be

    .line 671
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :cond_88
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;

    iget-object v6, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-boolean v7, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mTimeZoneForced:Z

    iget-object v10, v0, Lorg/apache/commons/lang/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    const/4 v12, 0x0

    invoke-direct {v1, v6, v7, v10, v12}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V

    .line 673
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 608
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_9c
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    if-lt v15, v12, :cond_ac

    .line 609
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v6

    .line 693
    move-object v7, v6

    goto/16 :goto_1c0

    .line 611
    :cond_ac
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;

    .line 613
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 653
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_b0
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 654
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 638
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_bd
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 639
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 635
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_cb
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 636
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 662
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_d9
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;-><init>(Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;)V

    .line 663
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 629
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_ec
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/commons/lang/time/FastDateFormat$TwelveHourField;-><init>(Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;)V

    .line 630
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 626
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_ff
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 627
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 659
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_10c
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/16 v6, 0x9

    invoke-direct {v1, v6, v8}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .line 660
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 675
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_11b
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v15, v1, :cond_128

    .line 676
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    goto/16 :goto_1be

    .line 678
    :cond_128
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    .line 680
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 656
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_12c
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    invoke-virtual {v0, v12, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 657
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 641
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_138
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 642
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto/16 :goto_1be

    .line 615
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_146
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x2

    if-lt v15, v12, :cond_157

    .line 616
    new-instance v6, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    invoke-direct {v6, v1, v4}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v1, v6

    goto/16 :goto_1be

    .line 617
    :cond_157
    const/4 v6, 0x3

    if-ne v15, v6, :cond_162

    .line 618
    new-instance v6, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    invoke-direct {v6, v1, v5}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v1, v6

    goto/16 :goto_1be

    .line 619
    :cond_162
    if-ne v15, v1, :cond_167

    .line 620
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitMonthField;

    goto :goto_1be

    .line 622
    :cond_167
    sget-object v1, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedMonthField;

    .line 624
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1be

    .line 665
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_16a
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 666
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1be

    .line 632
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_177
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 633
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1be

    .line 605
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_184
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .line 606
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1be

    .line 650
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_191
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 651
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1be

    .line 644
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_19e
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/lang/time/FastDateFormat$TextField;

    const/4 v6, 0x7

    if-ge v15, v12, :cond_1ac

    move-object/from16 v7, v19

    goto :goto_1ae

    :cond_1ac
    move-object/from16 v7, v18

    :goto_1ae
    invoke-direct {v1, v6, v7}, Lorg/apache/commons/lang/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    .line 645
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    goto :goto_1be

    .line 647
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_1b2
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v15}, Lorg/apache/commons/lang/time/FastDateFormat;->selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    move-result-object v1

    .line 648
    .local v1, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    nop

    .line 693
    .end local v1    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :goto_1be
    move-object v7, v1

    const/4 v1, 0x1

    :goto_1c0
    const/4 v10, 0x0

    goto :goto_1e5

    .line 682
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    .restart local v7    # "shortWeekdays":[Ljava/lang/String;
    :sswitch_1c2
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, "sub":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v1, :cond_1de

    .line 684
    new-instance v7, Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-direct {v7, v12}, Lorg/apache/commons/lang/time/FastDateFormat$CharacterLiteral;-><init>(C)V

    goto :goto_1e5

    .line 686
    :cond_1de
    const/4 v10, 0x0

    new-instance v7, Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;

    invoke-direct {v7, v6}, Lorg/apache/commons/lang/time/FastDateFormat$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 688
    .local v7, "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    nop

    .line 693
    .end local v6    # "sub":Ljava/lang/String;
    .end local v7    # "rule":Lorg/apache/commons/lang/time/FastDateFormat$Rule;
    :goto_1e5
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "tokenLen":I
    .end local v16    # "c":C
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_31

    .line 696
    .end local v13    # "i":I
    .end local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .end local v19    # "shortWeekdays":[Ljava/lang/String;
    .restart local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .local v6, "weekdays":[Ljava/lang/String;
    .local v7, "shortWeekdays":[Ljava/lang/String;
    :cond_1f4
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v7    # "shortWeekdays":[Ljava/lang/String;
    .restart local v17    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    .restart local v19    # "shortWeekdays":[Ljava/lang/String;
    :goto_1fa
    return-object v2

    nop

    :sswitch_data_1fc
    .sparse-switch
        0x27 -> :sswitch_1c2
        0x44 -> :sswitch_1b2
        0x45 -> :sswitch_19e
        0x46 -> :sswitch_191
        0x47 -> :sswitch_184
        0x48 -> :sswitch_177
        0x4b -> :sswitch_16a
        0x4d -> :sswitch_146
        0x53 -> :sswitch_138
        0x57 -> :sswitch_12c
        0x5a -> :sswitch_11b
        0x61 -> :sswitch_10c
        0x64 -> :sswitch_ff
        0x68 -> :sswitch_ec
        0x6b -> :sswitch_d9
        0x6d -> :sswitch_cb
        0x73 -> :sswitch_bd
        0x77 -> :sswitch_b0
        0x79 -> :sswitch_9c
        0x7a -> :sswitch_71
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 16
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I

    .line 707
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 709
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    aget v2, p2, v1

    .line 710
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 712
    .local v3, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 713
    .local v4, "c":C
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v4, v6, :cond_18

    if-le v4, v5, :cond_20

    :cond_18
    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v4, v8, :cond_38

    if-gt v4, v7, :cond_38

    .line 716
    :cond_20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 718
    :goto_23
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_35

    .line 719
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 720
    .local v5, "peek":C
    if-ne v5, v4, :cond_35

    .line 721
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 722
    add-int/lit8 v2, v2, 0x1

    .line 724
    .end local v5    # "peek":C
    goto :goto_23

    .line 754
    :cond_35
    move v10, v4

    move v4, v2

    goto :goto_74

    .line 729
    :cond_38
    const/16 v9, 0x27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 731
    move v10, v4

    move v4, v2

    const/4 v2, 0x0

    .line 733
    .local v2, "inLiteral":Z
    .local v4, "i":I
    .local v10, "c":C
    :goto_40
    if-ge v4, v3, :cond_74

    .line 734
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 736
    const/4 v11, 0x1

    if-ne v10, v9, :cond_62

    .line 737
    add-int/lit8 v12, v4, 0x1

    if-ge v12, v3, :cond_5b

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_5b

    .line 739
    add-int/lit8 v4, v4, 0x1

    .line 740
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_72

    .line 742
    :cond_5b
    if-nez v2, :cond_5f

    const/4 v12, 0x1

    goto :goto_60

    :cond_5f
    const/4 v12, 0x0

    :goto_60
    move v2, v12

    goto :goto_72

    .line 744
    :cond_62
    if-nez v2, :cond_6f

    if-lt v10, v6, :cond_68

    if-le v10, v5, :cond_6c

    :cond_68
    if-lt v10, v8, :cond_6f

    if-gt v10, v7, :cond_6f

    .line 746
    :cond_6c
    add-int/lit8 v4, v4, -0x1

    .line 747
    goto :goto_74

    .line 749
    :cond_6f
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 733
    :goto_72
    add-int/2addr v4, v11

    goto :goto_40

    .line 754
    .end local v2    # "inLiteral":Z
    :cond_74
    :goto_74
    aput v4, p2, v1

    .line 755
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;
    .registers 4
    .param p1, "field"    # I
    .param p2, "padding"    # I

    .line 766
    packed-switch p2, :pswitch_data_16

    .line 772
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;-><init>(II)V

    return-object v0

    .line 770
    :pswitch_9
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;-><init>(I)V

    return-object v0

    .line 768
    :pswitch_f
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/time/FastDateFormat$UnpaddedNumberField;-><init>(I)V

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1012
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
