.class public interface abstract Lorg/apache/xmlrpc/common/XmlRpcWorker;
.super Ljava/lang/Object;
.source "XmlRpcWorker.java"


# virtual methods
.method public abstract execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method

.method public abstract getController()Lorg/apache/xmlrpc/common/XmlRpcController;
.end method
