.class Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwentyFourHourField"
.end annotation


# instance fields
.field private final mRule:Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;)V
    .registers 2
    .param p1, "rule"    # Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;->mRule:Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    .line 1487
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I

    .line 1511
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;->mRule:Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1512
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .line 1500
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1501
    .local v1, "value":I
    if-nez v1, :cond_e

    .line 1502
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 1504
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;->mRule:Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    invoke-interface {v0, p1, v1}, Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1505
    return-void
.end method

.method public estimateLength()I
    .registers 2

    .line 1493
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TwentyFourHourField;->mRule:Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;

    invoke-interface {v0}, Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
