.class public Lorg/apache/commons/lang/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/DateUtils$DateIterator;
    }
.end annotation


# static fields
.field public static final MILLIS_IN_DAY:I = 0x5265c00

.field public static final MILLIS_IN_HOUR:I = 0x36ee80

.field public static final MILLIS_IN_MINUTE:I = 0xea60

.field public static final MILLIS_IN_SECOND:I = 0x3e8

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field public static final UTC_TIME_ZONE:Ljava/util/TimeZone;

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 59
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const/16 v4, 0xd

    aput v4, v2, v3

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const/16 v4, 0xc

    aput v4, v2, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_50

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_58

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_62

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    aput v1, v2, v3

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v1, v1, [I

    aput v3, v1, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    return-void

    :array_50
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_58
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_62
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static add(Ljava/util/Date;II)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .line 413
    if-eqz p0, :cond_11

    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 417
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 418
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 419
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 414
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 341
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 355
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 397
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 369
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 313
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 383
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 327
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 299
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getFragment(Ljava/util/Calendar;II)J
    .registers 11
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .line 1484
    if-eqz p0, :cond_7b

    .line 1487
    invoke-static {p2}, Lorg/apache/commons/lang/time/DateUtils;->getMillisPerUnit(I)J

    move-result-wide v0

    .line 1488
    .local v0, "millisPerUnit":J
    const-wide/16 v2, 0x0

    .line 1491
    .local v2, "result":J
    const-wide/32 v4, 0x5265c00

    packed-switch p1, :pswitch_data_84

    goto :goto_25

    .line 1496
    :pswitch_f
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    mul-long v6, v6, v4

    div-long/2addr v6, v0

    add-long/2addr v2, v6

    goto :goto_25

    .line 1493
    :pswitch_1a
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    mul-long v6, v6, v4

    div-long/2addr v6, v0

    add-long/2addr v2, v6

    .line 1494
    nop

    .line 1500
    :goto_25
    packed-switch p1, :pswitch_data_8c

    .line 1517
    :pswitch_28
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1516
    :pswitch_44
    goto :goto_7a

    .line 1508
    :pswitch_45
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long v4, v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1510
    :pswitch_53
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long v4, v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1512
    :pswitch_61
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1514
    :pswitch_6e
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1515
    nop

    .line 1519
    :goto_7a
    return-wide v2

    .line 1485
    .end local v0    # "millisPerUnit":J
    .end local v2    # "result":J
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_f
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_28
        :pswitch_28
        :pswitch_45
        :pswitch_45
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_53
        :pswitch_61
        :pswitch_6e
        :pswitch_44
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;II)J
    .registers 6
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I
    .param p2, "unit"    # I

    .line 1464
    if-eqz p0, :cond_e

    .line 1467
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1468
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1469
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v1

    return-wide v1

    .line 1465
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1449
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1248
    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1407
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1208
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1288
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1088
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1367
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1168
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "fragment"    # I

    .line 1327
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "fragment"    # I

    .line 1128
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillisPerUnit(I)J
    .registers 6
    .param p0, "unit"    # I

    .line 1531
    const-wide v0, 0x7fffffffffffffffL

    .line 1532
    .local v0, "result":J
    packed-switch p0, :pswitch_data_3a

    packed-switch p0, :pswitch_data_42

    .line 1549
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The unit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " cannot be represented is milleseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1547
    :pswitch_27
    const-wide/16 v0, 0x1

    .line 1548
    goto :goto_39

    .line 1544
    :pswitch_2a
    const-wide/16 v0, 0x3e8

    .line 1545
    goto :goto_39

    .line 1541
    :pswitch_2d
    const-wide/32 v0, 0xea60

    .line 1542
    goto :goto_39

    .line 1538
    :pswitch_31
    const-wide/32 v0, 0x36ee80

    .line 1539
    goto :goto_39

    .line 1535
    :pswitch_35
    const-wide/32 v0, 0x5265c00

    .line 1536
    nop

    .line 1551
    :goto_39
    return-wide v0

    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0xb
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 180
    if-eqz p0, :cond_28

    if-eqz p1, :cond_28

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_27

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_27

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_27

    const/4 v0, 0x1

    nop

    :cond_27
    return v0

    .line 181
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 5
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .line 156
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, "cal1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 162
    .local v1, "cal2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 163
    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2

    .line 157
    .end local v0    # "cal1":Ljava/util/Calendar;
    .end local v1    # "cal2":Ljava/util/Calendar;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 7
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 219
    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    .line 222
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    .line 220
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 7
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .line 201
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 204
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 202
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6
    .param p0, "cal1"    # Ljava/util/Calendar;
    .param p1, "cal2"    # Ljava/util/Calendar;

    .line 239
    if-eqz p0, :cond_62

    if-eqz p1, :cond_62

    .line 242
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_60

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_60

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_60

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_60

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    :goto_61
    return v2

    .line 240
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .registers 5
    .param p0, "focus"    # Ljava/lang/Object;
    .param p1, "rangeStyle"    # I

    .line 1042
    if-eqz p0, :cond_31

    .line 1045
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_e

    .line 1046
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1047
    :cond_e
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1a

    .line 1048
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1050
    :cond_1a
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not iterate based on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .registers 12
    .param p0, "focus"    # Ljava/util/Calendar;
    .param p1, "rangeStyle"    # I

    .line 951
    if-eqz p0, :cond_92

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "start":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 956
    .local v1, "end":Ljava/util/Calendar;
    const/4 v2, 0x1

    .line 957
    .local v2, "startCutoff":I
    const/4 v3, 0x7

    .line 958
    .local v3, "endCutoff":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x7

    packed-switch p1, :pswitch_data_9a

    .line 999
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The range style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " is not valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 962
    :pswitch_29
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Ljava/util/Calendar;

    .line 965
    invoke-virtual {v1, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 966
    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 968
    const/4 v8, 0x6

    if-ne p1, v8, :cond_68

    .line 969
    const/4 v2, 0x2

    .line 970
    const/4 v3, 0x1

    goto :goto_68

    .line 978
    :pswitch_41
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 979
    invoke-static {p0, v6}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 980
    packed-switch p1, :pswitch_data_aa

    goto :goto_67

    .line 993
    :pswitch_4d
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    .line 994
    .end local v2    # "startCutoff":I
    .local v8, "startCutoff":I
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    .line 997
    move v3, v2

    move v2, v8

    goto :goto_67

    .line 989
    .end local v8    # "startCutoff":I
    .restart local v2    # "startCutoff":I
    :pswitch_5c
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 990
    add-int/lit8 v3, v2, -0x1

    .line 991
    goto :goto_67

    .line 985
    :pswitch_63
    const/4 v2, 0x2

    .line 986
    const/4 v3, 0x1

    .line 987
    goto :goto_67

    .line 983
    :pswitch_66
    nop

    .line 997
    :goto_67
    nop

    .line 1001
    :cond_68
    :goto_68
    if-ge v2, v5, :cond_6c

    .line 1002
    add-int/lit8 v2, v2, 0x7

    .line 1004
    :cond_6c
    if-le v2, v7, :cond_70

    .line 1005
    add-int/lit8 v2, v2, -0x7

    .line 1007
    :cond_70
    if-ge v3, v5, :cond_74

    .line 1008
    add-int/lit8 v3, v3, 0x7

    .line 1010
    :cond_74
    if-le v3, v7, :cond_78

    .line 1011
    add-int/lit8 v3, v3, -0x7

    .line 1013
    :cond_78
    :goto_78
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v8, v2, :cond_82

    .line 1014
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_78

    .line 1016
    :cond_82
    :goto_82
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_8c

    .line 1017
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_82

    .line 1019
    :cond_8c
    new-instance v4, Lorg/apache/commons/lang/time/DateUtils$DateIterator;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/lang/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v4

    .line 952
    .end local v0    # "start":Ljava/util/Calendar;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v2    # "startCutoff":I
    .end local v3    # "endCutoff":I
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_66
        :pswitch_63
        :pswitch_5c
        :pswitch_4d
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .registers 4
    .param p0, "focus"    # Ljava/util/Date;
    .param p1, "rangeStyle"    # I

    .line 918
    if-eqz p0, :cond_e

    .line 921
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 922
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 923
    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 919
    .end local v0    # "gval":Ljava/util/Calendar;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static modify(Ljava/util/Calendar;IZ)V
    .registers 21
    .param p0, "val"    # Ljava/util/Calendar;
    .param p1, "field"    # I
    .param p2, "round"    # Z

    .line 767
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x10b07600

    if-gt v4, v5, :cond_164

    .line 771
    const/16 v4, 0xe

    if-ne v1, v4, :cond_13

    .line 772
    return-void

    .line 781
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 782
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 783
    .local v6, "time":J
    const/4 v8, 0x0

    .line 786
    .local v8, "done":Z
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 787
    .local v4, "millisecs":I
    if-eqz p2, :cond_26

    const/16 v9, 0x1f4

    if-ge v4, v9, :cond_28

    .line 788
    :cond_26
    int-to-long v9, v4

    sub-long/2addr v6, v9

    .line 790
    :cond_28
    const/16 v9, 0xd

    if-ne v1, v9, :cond_2d

    .line 791
    const/4 v8, 0x1

    .line 795
    :cond_2d
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 796
    .local v9, "seconds":I
    const/16 v10, 0x1e

    if-nez v8, :cond_3f

    if-eqz p2, :cond_39

    if-ge v9, v10, :cond_3f

    .line 797
    :cond_39
    int-to-long v11, v9

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    sub-long/2addr v6, v11

    .line 799
    :cond_3f
    const/16 v11, 0xc

    if-ne v1, v11, :cond_44

    .line 800
    const/4 v8, 0x1

    .line 804
    :cond_44
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 805
    .local v12, "minutes":I
    if-nez v8, :cond_55

    if-eqz p2, :cond_4e

    if-ge v12, v10, :cond_55

    .line 806
    :cond_4e
    int-to-long v13, v12

    const-wide/32 v15, 0xea60

    mul-long v13, v13, v15

    sub-long/2addr v6, v13

    .line 810
    :cond_55
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v10, v13, v6

    if-eqz v10, :cond_63

    .line 811
    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 812
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 816
    :cond_63
    const/4 v10, 0x0

    .line 817
    .local v10, "roundUp":Z
    move v14, v10

    const/4 v10, 0x0

    .local v10, "i":I
    .local v14, "roundUp":Z
    :goto_66
    sget-object v15, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    array-length v15, v15

    if-ge v10, v15, :cond_148

    .line 818
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_6c
    sget-object v16, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v11, v16, v10

    array-length v11, v11

    const/16 v13, 0x3e9

    const/4 v3, 0x5

    if-ge v15, v11, :cond_ad

    .line 819
    sget-object v11, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v11, v11, v10

    aget v11, v11, v15

    if-ne v11, v1, :cond_a7

    .line 821
    if-eqz p2, :cond_a6

    if-eqz v14, :cond_a6

    .line 822
    if-ne v1, v13, :cond_9b

    .line 826
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_91

    .line 827
    const/16 v11, 0xf

    invoke-virtual {v0, v3, v11}, Ljava/util/Calendar;->add(II)V

    goto :goto_a6

    .line 829
    :cond_91
    const/16 v11, -0xf

    invoke-virtual {v0, v3, v11}, Ljava/util/Calendar;->add(II)V

    .line 830
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v13}, Ljava/util/Calendar;->add(II)V

    goto :goto_a6

    .line 835
    :cond_9b
    const/4 v13, 0x1

    sget-object v3, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v3, v3, v10

    const/4 v11, 0x0

    aget v3, v3, v11

    invoke-virtual {v0, v3, v13}, Ljava/util/Calendar;->add(II)V

    .line 838
    :cond_a6
    :goto_a6
    return-void

    .line 818
    :cond_a7
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    const/16 v11, 0xc

    goto :goto_6c

    .line 842
    .end local v15    # "j":I
    :cond_ad
    const/4 v11, 0x0

    .line 843
    .local v11, "offset":I
    const/4 v15, 0x0

    .line 845
    .local v15, "offsetSet":Z
    const/16 v3, 0x9

    if-eq v1, v3, :cond_d8

    if-eq v1, v13, :cond_b6

    goto :goto_d5

    .line 847
    :cond_b6
    sget-object v3, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v3, v3, v10

    const/4 v13, 0x0

    aget v3, v3, v13

    const/4 v13, 0x5

    if-ne v3, v13, :cond_d5

    .line 851
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    .line 854
    .end local v11    # "offset":I
    .local v3, "offset":I
    const/16 v11, 0xf

    if-lt v3, v11, :cond_cc

    .line 855
    add-int/lit8 v3, v3, -0xf

    .line 858
    .end local v3    # "offset":I
    .restart local v11    # "offset":I
    :cond_cc
    move v11, v3

    const/4 v3, 0x7

    if-le v11, v3, :cond_d2

    const/4 v3, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v3, 0x0

    :goto_d3
    move v14, v3

    .line 859
    const/4 v15, 0x1

    .line 875
    :cond_d5
    :goto_d5
    const/16 v13, 0xc

    goto :goto_f8

    .line 863
    :cond_d8
    const/4 v13, 0x1

    sget-object v3, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v3, v3, v10

    const/16 v16, 0x0

    aget v3, v3, v16

    const/16 v13, 0xb

    if-ne v3, v13, :cond_d5

    .line 866
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 867
    .end local v11    # "offset":I
    .restart local v3    # "offset":I
    const/16 v13, 0xc

    if-lt v3, v13, :cond_ef

    .line 868
    add-int/lit8 v3, v3, -0xc

    .line 870
    .end local v3    # "offset":I
    .restart local v11    # "offset":I
    :cond_ef
    move v11, v3

    const/4 v3, 0x6

    if-le v11, v3, :cond_f5

    const/4 v3, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v3, 0x0

    :goto_f6
    move v14, v3

    .line 871
    const/4 v15, 0x1

    .line 875
    :goto_f8
    if-nez v15, :cond_128

    .line 876
    sget-object v3, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v3, v3, v10

    const/16 v16, 0x0

    aget v3, v3, v16

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    .line 877
    .local v3, "min":I
    sget-object v17, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v17, v17, v10

    aget v13, v17, v16

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v13

    .line 879
    .local v13, "max":I
    sget-object v17, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v17, v17, v10

    aget v2, v17, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v11, v2, v3

    .line 881
    sub-int v2, v13, v3

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    if-le v11, v2, :cond_126

    const/4 v2, 0x1

    goto :goto_127

    :cond_126
    const/4 v2, 0x0

    .line 884
    :goto_127
    move v14, v2

    .end local v3    # "min":I
    .end local v13    # "max":I
    :cond_128
    if-eqz v11, :cond_140

    .line 885
    sget-object v2, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v2, v2, v10

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v13, Lorg/apache/commons/lang/time/DateUtils;->fields:[[I

    aget-object v13, v13, v10

    aget v13, v13, v3

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    sub-int/2addr v13, v11

    invoke-virtual {v0, v2, v13}, Ljava/util/Calendar;->set(II)V

    goto :goto_141

    .line 817
    .end local v11    # "offset":I
    .end local v15    # "offsetSet":Z
    :cond_140
    const/4 v3, 0x0

    :goto_141
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const/16 v11, 0xc

    goto/16 :goto_66

    .line 888
    .end local v10    # "i":I
    :cond_148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "The field "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, " is not supported"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 768
    .end local v4    # "millisecs":I
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "time":J
    .end local v8    # "done":Z
    .end local v9    # "seconds":I
    .end local v12    # "minutes":I
    .end local v14    # "roundUp":Z
    :cond_164
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Calendar value too large for accurate calculations"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "parsePatterns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 267
    if-eqz p0, :cond_4f

    if-eqz p1, :cond_4f

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "parser":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 273
    .local v1, "pos":Ljava/text/ParsePosition;
    move-object v3, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v3, "parser":Ljava/text/SimpleDateFormat;
    :goto_d
    array-length v4, p1

    if-ge v0, v4, :cond_37

    .line 274
    if-nez v0, :cond_1b

    .line 275
    new-instance v4, Ljava/text/SimpleDateFormat;

    aget-object v5, p1, v2

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_20

    .line 277
    :cond_1b
    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 279
    :goto_20
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 280
    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 281
    .local v4, "date":Ljava/util/Date;
    if-eqz v4, :cond_34

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_34

    .line 282
    return-object v4

    .line 273
    .end local v4    # "date":Ljava/util/Date;
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 285
    .end local v0    # "i":I
    :cond_37
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to parse the date: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-direct {v0, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 268
    .end local v1    # "pos":Ljava/text/ParsePosition;
    .end local v3    # "parser":Ljava/text/SimpleDateFormat;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date and Patterns must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 4
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 621
    if-eqz p0, :cond_d

    .line 624
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 625
    .local v0, "rounded":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 626
    return-object v0

    .line 622
    .end local v0    # "rounded":Ljava/util/Calendar;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 660
    if-eqz p0, :cond_35

    .line 663
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_e

    .line 664
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 665
    :cond_e
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1e

    .line 666
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 668
    :cond_1e
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 583
    if-eqz p0, :cond_12

    .line 586
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 587
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 588
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 589
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 584
    .end local v0    # "gval":Ljava/util/Calendar;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "calendarField"    # I
    .param p2, "amount"    # I

    .line 542
    if-eqz p0, :cond_15

    .line 546
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 547
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 548
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 549
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 550
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 543
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 464
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 480
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 525
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 495
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 449
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 510
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "amount"    # I

    .line 434
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 4
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "field"    # I

    .line 716
    if-eqz p0, :cond_d

    .line 719
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 720
    .local v0, "truncated":Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 721
    return-object v0

    .line 717
    .end local v0    # "truncated":Ljava/util/Calendar;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/lang/Object;
    .param p1, "field"    # I

    .line 745
    if-eqz p0, :cond_35

    .line 748
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_e

    .line 749
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 750
    :cond_e
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1e

    .line 751
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0, p1}, Lorg/apache/commons/lang/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 753
    :cond_1e
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not truncate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 690
    if-eqz p0, :cond_12

    .line 693
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 694
    .local v0, "gval":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 695
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang/time/DateUtils;->modify(Ljava/util/Calendar;IZ)V

    .line 696
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 691
    .end local v0    # "gval":Ljava/util/Calendar;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
