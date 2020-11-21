.class public abstract Lorg/apache/xmlrpc/util/XmlRpcDateTimeDateFormat;
.super Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;
.source "XmlRpcDateTimeDateFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x46e115faa13f7480L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "pCalendar"    # Ljava/lang/Object;
    .param p2, "pBuffer"    # Ljava/lang/StringBuffer;
    .param p3, "pPos"    # Ljava/text/FieldPosition;

    .line 36
    if-eqz p1, :cond_16

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_16

    .line 37
    invoke-virtual {p0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 38
    .local v0, "calendar":Ljava/util/Calendar;
    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 39
    nop

    .line 40
    .local v0, "cal":Ljava/lang/Object;
    goto :goto_17

    .line 41
    .end local v0    # "cal":Ljava/lang/Object;
    :cond_16
    move-object v0, p1

    .line 43
    .restart local v0    # "cal":Ljava/lang/Object;
    :goto_17
    invoke-super {p0, v0, p2, p3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 5
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "pParsePosition"    # Ljava/text/ParsePosition;

    .line 47
    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 48
    .local v0, "cal":Ljava/util/Calendar;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :goto_e
    return-object v1
.end method
