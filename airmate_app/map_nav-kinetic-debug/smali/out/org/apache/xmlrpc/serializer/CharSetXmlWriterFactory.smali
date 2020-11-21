.class public Lorg/apache/xmlrpc/serializer/CharSetXmlWriterFactory;
.super Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;
.source "CharSetXmlWriterFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected newXmlWriter()Lorg/apache/ws/commons/serialize/XMLWriter;
    .registers 2

    .line 31
    new-instance v0, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;

    invoke-direct {v0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;-><init>()V

    return-object v0
.end method
