.class public interface abstract Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;
.super Ljava/lang/Object;
.source "XmlRpcHandlerMapping.java"


# virtual methods
.method public abstract getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;,
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method
