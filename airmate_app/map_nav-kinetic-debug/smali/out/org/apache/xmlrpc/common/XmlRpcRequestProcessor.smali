.class public interface abstract Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;
.super Ljava/lang/Object;
.source "XmlRpcRequestProcessor.java"


# virtual methods
.method public abstract execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method

.method public abstract getTypeConverterFactory()Lorg/apache/xmlrpc/common/TypeConverterFactory;
.end method
