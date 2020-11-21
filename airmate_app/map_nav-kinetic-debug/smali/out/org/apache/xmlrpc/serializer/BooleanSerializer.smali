.class public Lorg/apache/xmlrpc/serializer/BooleanSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "BooleanSerializer.java"


# static fields
.field public static final BOOLEAN_TAG:Ljava/lang/String; = "boolean"

.field private static final FALSE:[C

.field private static final TRUE:[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 31
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x31

    aput-char v3, v1, v2

    sput-object v1, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->TRUE:[C

    .line 32
    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->FALSE:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

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

    .line 34
    const-string v0, "boolean"

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->TRUE:[C

    goto :goto_10

    :cond_e
    sget-object v1, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->FALSE:[C

    :goto_10
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;[C)V

    .line 35
    return-void
.end method
