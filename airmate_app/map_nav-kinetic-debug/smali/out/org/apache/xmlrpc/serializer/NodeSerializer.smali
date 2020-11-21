.class public Lorg/apache/xmlrpc/serializer/NodeSerializer;
.super Lorg/apache/xmlrpc/serializer/ExtSerializer;
.source "NodeSerializer.java"


# static fields
.field public static final DOM_TAG:Ljava/lang/String; = "dom"

.field private static final ser:Lorg/apache/ws/commons/serialize/DOMSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lorg/apache/ws/commons/serialize/DOMSerializer;

    invoke-direct {v0}, Lorg/apache/ws/commons/serialize/DOMSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;->ser:Lorg/apache/ws/commons/serialize/DOMSerializer;

    .line 32
    sget-object v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;->ser:Lorg/apache/ws/commons/serialize/DOMSerializer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ws/commons/serialize/DOMSerializer;->setStartingDocument(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/ExtSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTagName()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "dom"

    return-object v0
.end method

.method protected serialize(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 5
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;->ser:Lorg/apache/ws/commons/serialize/DOMSerializer;

    move-object v1, p2

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ws/commons/serialize/DOMSerializer;->serialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 43
    return-void
.end method
