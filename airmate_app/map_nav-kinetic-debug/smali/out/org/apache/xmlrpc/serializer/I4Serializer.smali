.class public Lorg/apache/xmlrpc/serializer/I4Serializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "I4Serializer.java"


# static fields
.field public static final I4_TAG:Ljava/lang/String; = "i4"

.field public static final INT_TAG:Ljava/lang/String; = "int"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
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

    .line 36
    const-string v0, "i4"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlrpc/serializer/I4Serializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
