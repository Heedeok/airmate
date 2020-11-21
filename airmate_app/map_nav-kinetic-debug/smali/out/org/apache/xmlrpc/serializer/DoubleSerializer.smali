.class public Lorg/apache/xmlrpc/serializer/DoubleSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "DoubleSerializer.java"


# static fields
.field public static final DOUBLE_TAG:Ljava/lang/String; = "double"


# direct methods
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

    .line 33
    const-string v0, "double"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlrpc/serializer/DoubleSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
