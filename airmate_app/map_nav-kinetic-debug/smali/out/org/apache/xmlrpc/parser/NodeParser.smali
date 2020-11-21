.class public Lorg/apache/xmlrpc/parser/NodeParser;
.super Lorg/apache/xmlrpc/parser/ExtParser;
.source "NodeParser.java"


# static fields
.field private static final dbf:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private final builder:Lorg/apache/ws/commons/serialize/DOMBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/parser/NodeParser;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/ExtParser;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/ws/commons/serialize/DOMBuilder;

    invoke-direct {v0}, Lorg/apache/ws/commons/serialize/DOMBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/NodeParser;->builder:Lorg/apache/ws/commons/serialize/DOMBuilder;

    return-void
.end method


# virtual methods
.method protected getExtHandler()Lorg/xml/sax/ContentHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/NodeParser;->builder:Lorg/apache/ws/commons/serialize/DOMBuilder;

    sget-object v1, Lorg/apache/xmlrpc/parser/NodeParser;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ws/commons/serialize/DOMBuilder;->setTarget(Lorg/w3c/dom/Node;)V
    :try_end_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_f} :catch_13

    .line 45
    nop

    .line 46
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/NodeParser;->builder:Lorg/apache/ws/commons/serialize/DOMBuilder;

    return-object v0

    .line 43
    :catch_13
    move-exception v0

    .line 44
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/NodeParser;->builder:Lorg/apache/ws/commons/serialize/DOMBuilder;

    invoke-virtual {v0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getTarget()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected getTagName()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, "dom"

    return-object v0
.end method
