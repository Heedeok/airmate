.class public interface abstract Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;
.super Ljava/lang/Object;
.source "RequestProcessorFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;,
        Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;,
        Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    }
.end annotation


# virtual methods
.method public abstract getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method
