.class Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;
.super Ljava/lang/Object;
.source "NodeRequestProcessorFactoryFactory.java"

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeRequestProcessorFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;


# direct methods
.method private constructor <init>(Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;)V
    .registers 2

    .line 43
    .local p0, "this":Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;, "Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory<TT;>.NodeRequestProcessorFactory;"
    iput-object p1, p0, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;->this$0:Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;
    .param p2, "x1"    # Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$1;

    .line 43
    .local p0, "this":Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;, "Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory<TT;>.NodeRequestProcessorFactory;"
    invoke-direct {p0, p1}, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;-><init>(Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;)V

    return-void
.end method


# virtual methods
.method public getRequestProcessor(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 3
    .param p1, "xmlRpcRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;

    .line 46
    .local p0, "this":Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;, "Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory<TT;>.NodeRequestProcessorFactory;"
    iget-object v0, p0, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory$NodeRequestProcessorFactory;->this$0:Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;

    invoke-static {v0}, Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;->access$100(Lorg/ros/internal/node/server/NodeRequestProcessorFactoryFactory;)Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    move-result-object v0

    return-object v0
.end method
