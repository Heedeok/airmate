.class public Lorg/apache/xmlrpc/serializer/ListSerializer;
.super Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;
.source "ListSerializer.java"


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V
    .registers 3
    .param p1, "pTypeFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;
    .param p2, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected writeData(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 40
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 41
    .local v0, "data":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/xmlrpc/serializer/ListSerializer;->writeObject(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 44
    .end local v1    # "i":I
    :cond_14
    return-void
.end method
