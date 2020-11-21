.class public interface abstract Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractReflectiveHandlerMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthenticationHandler"
.end annotation


# virtual methods
.method public abstract isAuthorized(Lorg/apache/xmlrpc/XmlRpcRequest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method
