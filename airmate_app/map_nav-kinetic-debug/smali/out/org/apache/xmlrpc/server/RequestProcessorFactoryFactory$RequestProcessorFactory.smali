.class public interface abstract Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
.super Ljava/lang/Object;
.source "RequestProcessorFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestProcessorFactory"
.end annotation


# virtual methods
.method public abstract getRequestProcessor(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method
