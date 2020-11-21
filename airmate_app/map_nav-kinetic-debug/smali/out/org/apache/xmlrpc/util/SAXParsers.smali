.class public Lorg/apache/xmlrpc/util/SAXParsers;
.super Ljava/lang/Object;
.source "SAXParsers.java"


# static fields
.field private static spf:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/util/SAXParsers;->spf:Ljavax/xml/parsers/SAXParserFactory;

    .line 35
    sget-object v0, Lorg/apache/xmlrpc/util/SAXParsers;->spf:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 36
    sget-object v0, Lorg/apache/xmlrpc/util/SAXParsers;->spf:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSAXParserFactory()Ljavax/xml/parsers/SAXParserFactory;
    .registers 1

    .line 56
    sget-object v0, Lorg/apache/xmlrpc/util/SAXParsers;->spf:Ljavax/xml/parsers/SAXParserFactory;

    return-object v0
.end method

.method public static newXMLReader()Lorg/xml/sax/XMLReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 43
    :try_start_0
    sget-object v0, Lorg/apache/xmlrpc/util/SAXParsers;->spf:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_a} :catch_27
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 46
    :catch_b
    move-exception v0

    .line 47
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create XML parser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 44
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_27
    move-exception v0

    .line 45
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create XML parser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setSAXParserFactory(Ljavax/xml/parsers/SAXParserFactory;)V
    .registers 1
    .param p0, "pFactory"    # Ljavax/xml/parsers/SAXParserFactory;

    .line 64
    sput-object p0, Lorg/apache/xmlrpc/util/SAXParsers;->spf:Ljavax/xml/parsers/SAXParserFactory;

    .line 65
    return-void
.end method
