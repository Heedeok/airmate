.class Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;
.super Ljava/lang/Object;
.source "NodeRequestProcessorFactoryFactory.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;"
    }
.end annotation


# instance fields
.field private final factory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

.field private final node:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;, "Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory<TT;>;"
    .local p1, "instance":Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;-><init>(Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$1;)V

    iput-object v0, p0, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;->factory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    .line 34
    iput-object p1, p0, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;->node:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;)Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;

    .line 27
    iget-object v0, p0, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;->node:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    return-object v0
.end method


# virtual methods
.method public getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    .registers 3
    .param p1, "unused"    # Ljava/lang/Class;

    .line 40
    .local p0, "this":Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;, "Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;->factory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    return-object v0
.end method
