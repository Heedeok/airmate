.class public Lorg/apache/xmlrpc/serializer/DateSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "DateSerializer.java"


# static fields
.field public static final DATE_TAG:Ljava/lang/String; = "dateTime.iso8601"


# instance fields
.field private final format:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljava/text/Format;)V
    .registers 2
    .param p1, "pFormat"    # Ljava/text/Format;

    .line 38
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/xmlrpc/serializer/DateSerializer;->format:Ljava/text/Format;

    .line 40
    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 5
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 43
    const-string v0, "dateTime.iso8601"

    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/DateSerializer;->format:Ljava/text/Format;

    invoke-virtual {v1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlrpc/serializer/DateSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
