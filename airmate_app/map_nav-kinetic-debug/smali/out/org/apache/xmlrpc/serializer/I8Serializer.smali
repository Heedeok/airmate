.class public Lorg/apache/xmlrpc/serializer/I8Serializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "I8Serializer.java"


# static fields
.field public static final EX_I8_TAG:Ljava/lang/String; = "ex:i8"

.field public static final I8_TAG:Ljava/lang/String; = "i8"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
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

    .line 36
    const-string v0, "i8"

    const-string v1, "ex:i8"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlrpc/serializer/I8Serializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
