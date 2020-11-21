.class public Lorg/apache/commons/net/ntp/TimeStamp;
.super Ljava/lang/Object;
.source "TimeStamp.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final NTP_DATE_FORMAT:Ljava/lang/String; = "EEE, MMM dd yyyy HH:mm:ss.SSS"

.field protected static final msb0baseTime:J = 0x1e5ae01dc00L

.field protected static final msb1baseTime:J = -0x20251fe2400L

.field private static final serialVersionUID:J = 0x70f667418312e431L

.field private static simpleFormatter:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static utcFormatter:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ntpTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/lang/ref/SoftReference;

    .line 69
    sput-object v0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1, "ntpTime"    # J

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p1, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Lorg/apache/commons/net/ntp/TimeStamp;->decodeNtpHexString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "d"    # Ljava/util/Date;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-nez p1, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toNtpTime(J)J

    move-result-wide v0

    :goto_10
    iput-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 124
    return-void
.end method

.method private static appendHexString(Ljava/lang/StringBuffer;J)V
    .registers 6
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "l"    # J

    .line 368
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x8

    if-ge v1, v2, :cond_14

    .line 370
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 371
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    return-void
.end method

.method protected static decodeNtpHexString(Ljava/lang/String;)J
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 254
    if-eqz p0, :cond_36

    .line 257
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 258
    .local v0, "ind":I
    const/4 v1, -0x1

    const/16 v2, 0x20

    const/16 v3, 0x10

    if-ne v0, v1, :cond_1f

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    const-wide/16 v1, 0x0

    return-wide v1

    .line 260
    :cond_18
    invoke-static {p0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    shl-long v1, v3, v2

    return-wide v1

    .line 263
    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    shl-long v1, v4, v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    or-long/2addr v1, v3

    return-wide v1

    .line 255
    .end local v0    # "ind":I
    :cond_36
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurrentTime()Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 2

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getNtpTime(J)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public static getNtpTime(J)Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 5
    .param p0, "date"    # J

    .line 229
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-static {p0, p1}, Lorg/apache/commons/net/ntp/TimeStamp;->toNtpTime(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method public static getTime(J)J
    .registers 13
    .param p0, "ntpTimeValue"    # J

    .line 192
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 193
    .local v0, "seconds":J
    and-long/2addr v2, p0

    .line 196
    .local v2, "fraction":J
    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 207
    const-wide v4, 0x80000000L

    and-long/2addr v4, v0

    .line 208
    .local v4, "msb":J
    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-nez v10, :cond_35

    .line 210
    const-wide v8, 0x1e5ae01dc00L

    mul-long v6, v6, v0

    add-long/2addr v6, v8

    add-long/2addr v6, v2

    return-wide v6

    .line 213
    :cond_35
    const-wide v8, -0x20251fe2400L

    mul-long v6, v6, v0

    add-long/2addr v6, v8

    add-long/2addr v6, v2

    return-wide v6
.end method

.method public static parseNtpString(Ljava/lang/String;)Lorg/apache/commons/net/ntp/TimeStamp;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 278
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-static {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->decodeNtpHexString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method protected static toNtpTime(J)J
    .registers 13
    .param p0, "t"    # J

    .line 289
    const-wide v0, 0x1e5ae01dc00L

    cmp-long v2, p0, v0

    if-gez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 291
    .local v2, "useBase1":Z
    :goto_c
    if-eqz v2, :cond_16

    .line 292
    const-wide v0, -0x20251fe2400L

    sub-long v0, p0, v0

    goto :goto_19

    .line 295
    :cond_16
    const/4 v3, 0x0

    sub-long v0, p0, v0

    .line 298
    .local v0, "baseTime":J
    :goto_19
    const-wide/16 v3, 0x3e8

    div-long v5, v0, v3

    .line 299
    .local v5, "seconds":J
    rem-long v7, v0, v3

    const-wide v9, 0x100000000L

    mul-long v7, v7, v9

    div-long/2addr v7, v3

    .line 301
    .local v7, "fraction":J
    if-eqz v2, :cond_2f

    .line 302
    const-wide v3, 0x80000000L

    or-long/2addr v5, v3

    .line 305
    :cond_2f
    const/16 v3, 0x20

    shl-long v3, v5, v3

    or-long/2addr v3, v7

    .line 306
    .local v3, "time":J
    return-wide v3
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 7
    .param p0, "ntpTime"    # J

    .line 385
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 387
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;->appendHexString(Ljava/lang/StringBuffer;J)V

    .line 390
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 391
    and-long v1, p0, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;->appendHexString(Ljava/lang/StringBuffer;J)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 487
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ntp/TimeStamp;->compareTo(Lorg/apache/commons/net/ntp/TimeStamp;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/net/ntp/TimeStamp;)I
    .registers 7
    .param p1, "anotherTimeStamp"    # Lorg/apache/commons/net/ntp/TimeStamp;

    .line 463
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 464
    .local v0, "thisVal":J
    iget-wide v2, p1, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 465
    .local v2, "anotherVal":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 v4, -0x1

    goto :goto_11

    :cond_a
    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_11

    :cond_10
    const/4 v4, 0x1

    :goto_11
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 339
    instance-of v0, p1, Lorg/apache/commons/net/ntp/TimeStamp;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 340
    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1

    .line 342
    :cond_15
    return v1
.end method

.method public getDate()Ljava/util/Date;
    .registers 4

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime(J)J

    move-result-wide v0

    .line 174
    .local v0, "time":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public getFraction()J
    .registers 5

    .line 153
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getSeconds()J
    .registers 5

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime()J
    .registers 3

    .line 163
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    .line 323
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public ntpValue()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    return-wide v0
.end method

.method public toDateString()Ljava/lang/String;
    .registers 5

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "formatter":Ljava/text/DateFormat;
    sget-object v1, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_e

    .line 409
    sget-object v1, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/text/DateFormat;

    .line 411
    :cond_e
    if-nez v0, :cond_28

    .line 413
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, MMM dd yyyy HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v1

    .line 414
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 415
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/lang/ref/SoftReference;

    .line 417
    :cond_28
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 418
    .local v1, "ntpDate":Ljava/util/Date;
    monitor-enter v0

    .line 419
    :try_start_2d
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 420
    :catchall_33
    move-exception v2

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_33

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 357
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUTCString()Ljava/lang/String;
    .registers 5

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "formatter":Ljava/text/DateFormat;
    sget-object v1, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_e

    .line 436
    sget-object v1, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/text/DateFormat;

    .line 437
    :cond_e
    if-nez v0, :cond_2a

    .line 439
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, MMM dd yyyy HH:mm:ss.SSS \'UTC\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v1

    .line 441
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 442
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/lang/ref/SoftReference;

    .line 444
    :cond_2a
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 445
    .local v1, "ntpDate":Ljava/util/Date;
    monitor-enter v0

    .line 446
    :try_start_2f
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 447
    :catchall_35
    move-exception v2

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw v2
.end method
