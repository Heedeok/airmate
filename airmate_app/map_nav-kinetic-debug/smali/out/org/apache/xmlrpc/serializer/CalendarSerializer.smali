.class public Lorg/apache/xmlrpc/serializer/CalendarSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "CalendarSerializer.java"


# static fields
.field public static final CALENDAR_TAG:Ljava/lang/String; = "dateTime"

.field public static final DATE_TAG:Ljava/lang/String; = "dateTime.iso8601"

.field private static final EX_CALENDAR_TAG:Ljava/lang/String; = "ex:dateTime"

.field private static final format:Lorg/apache/ws/commons/util/XsDateTimeFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;

    invoke-direct {v0}, Lorg/apache/ws/commons/util/XsDateTimeFormat;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/serializer/CalendarSerializer;->format:Lorg/apache/ws/commons/util/XsDateTimeFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 42
    const-string v0, "dateTime"

    const-string v1, "ex:dateTime"

    sget-object v2, Lorg/apache/xmlrpc/serializer/CalendarSerializer;->format:Lorg/apache/ws/commons/util/XsDateTimeFormat;

    invoke-virtual {v2, p2}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlrpc/serializer/CalendarSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
