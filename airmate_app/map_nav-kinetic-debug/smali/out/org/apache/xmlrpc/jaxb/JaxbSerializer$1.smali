.class Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;
.super Ljava/lang/Object;
.source "JaxbSerializer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/jaxb/JaxbSerializer;->serialize(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

.field final synthetic val$pHandler:Lorg/xml/sax/ContentHandler;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/jaxb/JaxbSerializer;Lorg/xml/sax/ContentHandler;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    .line 53
    iput-object p1, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->this$0:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    iput-object p2, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 58
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3
    .param p1, "pPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 61
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pTarget"    # Ljava/lang/String;
    .param p2, "pData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .param p1, "pLocator"    # Lorg/xml/sax/Locator;

    .line 69
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 70
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 3
    .param p1, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pAttrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 82
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pPrefix"    # Ljava/lang/String;
    .param p2, "pURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;->val$pHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
