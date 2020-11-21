.class public interface abstract Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;
.super Ljava/lang/Object;
.source "XmlRpcMetaDataHandler.java"

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcHandler;


# virtual methods
.method public abstract getMethodHelp()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method

.method public abstract getSignatures()[[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method
