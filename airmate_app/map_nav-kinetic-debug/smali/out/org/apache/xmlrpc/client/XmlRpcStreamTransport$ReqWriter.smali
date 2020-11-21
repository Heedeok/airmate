.class public interface abstract Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
.super Ljava/lang/Object;
.source "XmlRpcStreamTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ReqWriter"
.end annotation


# virtual methods
.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
