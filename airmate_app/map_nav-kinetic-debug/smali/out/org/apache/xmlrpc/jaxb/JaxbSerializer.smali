.class public Lorg/apache/xmlrpc/jaxb/JaxbSerializer;
.super Lorg/apache/xmlrpc/serializer/ExtSerializer;
.source "JaxbSerializer.java"


# static fields
.field public static final JAXB_TAG:Ljava/lang/String; = "jaxb"


# instance fields
.field private final context:Ljavax/xml/bind/JAXBContext;


# direct methods
.method public constructor <init>(Ljavax/xml/bind/JAXBContext;)V
    .registers 2
    .param p1, "pContext"    # Ljavax/xml/bind/JAXBContext;

    .line 43
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/ExtSerializer;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;->context:Ljavax/xml/bind/JAXBContext;

    .line 45
    return-void
.end method


# virtual methods
.method protected getTagName()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "jaxb"

    return-object v0
.end method

.method protected serialize(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 7
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;-><init>(Lorg/apache/xmlrpc/jaxb/JaxbSerializer;Lorg/xml/sax/ContentHandler;)V

    .line 85
    .local v0, "h":Lorg/xml/sax/ContentHandler;
    :try_start_5
    iget-object v1, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;->context:Ljavax/xml/bind/JAXBContext;

    invoke-virtual {v1}, Ljavax/xml/bind/JAXBContext;->createMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljavax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    :try_end_e
    .catch Ljavax/xml/bind/JAXBException; {:try_start_5 .. :try_end_e} :catch_10

    .line 93
    nop

    .line 94
    return-void

    .line 86
    :catch_10
    move-exception v1

    .line 87
    .local v1, "e":Ljavax/xml/bind/JAXBException;
    invoke-virtual {v1}, Ljavax/xml/bind/JAXBException;->getLinkedException()Ljava/lang/Throwable;

    move-result-object v2

    .line 88
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_1f

    instance-of v3, v2, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_1f

    .line 89
    move-object v3, v2

    check-cast v3, Lorg/xml/sax/SAXException;

    throw v3

    .line 91
    :cond_1f
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method
