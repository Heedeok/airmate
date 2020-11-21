.class Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .registers 6
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    .line 1656
    if-eqz p2, :cond_a

    .line 1657
    const/high16 v0, -0x80000000

    or-int/2addr p3, v0

    .line 1659
    :cond_a
    iput p3, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    .line 1660
    iput-object p4, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    .line 1661
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1674
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1675
    return v0

    .line 1677
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 1678
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;

    .line 1679
    .local v1, "other":Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v4, v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    iget v4, v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object v4, v1, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    .line 1684
    .end local v1    # "other":Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;
    :cond_29
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 1667
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
