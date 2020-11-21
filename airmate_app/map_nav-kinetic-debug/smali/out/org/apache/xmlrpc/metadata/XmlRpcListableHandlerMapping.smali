.class public interface abstract Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;
.super Ljava/lang/Object;
.source "XmlRpcListableHandlerMapping.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;


# virtual methods
.method public abstract getListMethods()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method

.method public abstract getMethodHelp(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method

.method public abstract getMethodSignature(Ljava/lang/String;)[[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method
