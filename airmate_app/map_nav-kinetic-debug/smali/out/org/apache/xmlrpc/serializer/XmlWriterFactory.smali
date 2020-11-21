.class public interface abstract Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
.super Ljava/lang/Object;
.source "XmlWriterFactory.java"


# virtual methods
.method public abstract getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method
