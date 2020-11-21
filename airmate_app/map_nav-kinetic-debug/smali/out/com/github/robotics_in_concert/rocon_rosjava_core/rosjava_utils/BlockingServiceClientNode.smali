.class public Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;
.super Ljava/lang/Object;
.source "BlockingServiceClientNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestType:",
        "Ljava/lang/Object;",
        "ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseType;"
        }
    .end annotation
.end field

.field private srvClient:Lorg/ros/node/service/ServiceClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceClient<",
            "TRequestType;TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/node/ConnectedNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/ConnectedNode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TRequestType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/ServiceNotFoundException;
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode<TRequestType;TResponseType;>;"
    .local p4, "request":Ljava/lang/Object;, "TRequestType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lorg/ros/namespace/NodeNameResolver;->newRoot()Lorg/ros/namespace/NameResolver;

    move-result-object v0

    .line 32
    .local v0, "resolver":Lorg/ros/namespace/NameResolver;
    invoke-virtual {v0, p2}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "resolvedServiceName":Ljava/lang/String;
    :try_start_f
    invoke-interface {p1, v1, p3}, Lorg/ros/node/ConnectedNode;->newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;

    move-result-object v2

    iput-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->srvClient:Lorg/ros/node/service/ServiceClient;
    :try_end_15
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_f .. :try_end_15} :catch_20

    .line 37
    nop

    .line 38
    iget-object v2, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->srvClient:Lorg/ros/node/service/ServiceClient;

    invoke-direct {p0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->setupListener()Lorg/ros/node/service/ServiceResponseListener;

    move-result-object v3

    invoke-interface {v2, p4, v3}, Lorg/ros/node/service/ServiceClient;->call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V

    .line 39
    return-void

    .line 35
    :catch_20
    move-exception v2

    .line 36
    .local v2, "e":Lorg/ros/exception/ServiceNotFoundException;
    throw v2
.end method

.method static synthetic access$000(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;)Lorg/ros/node/service/ServiceClient;
    .registers 2
    .param p0, "x0"    # Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;

    .line 25
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->srvClient:Lorg/ros/node/service/ServiceClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->response:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$202(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->errorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private setupListener()Lorg/ros/node/service/ServiceResponseListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "TResponseType;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode<TRequestType;TResponseType;>;"
    new-instance v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;

    invoke-direct {v0, p0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode$1;-><init>(Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;)V

    .line 72
    .local v0, "listener":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<TResponseType;>;"
    return-object v0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 84
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode<TRequestType;TResponseType;>;"
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode<TRequestType;TResponseType;>;"
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public waitForResponse()V
    .registers 5

    .line 43
    .local p0, "this":Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;, "Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode<TRequestType;TResponseType;>;"
    iget-object v0, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->srvClient:Lorg/ros/node/service/ServiceClient;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->response:Ljava/lang/Object;

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->errorMessage:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_14

    .line 46
    iget-object v1, p0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/BlockingServiceClientNode;->srvClient:Lorg/ros/node/service/ServiceClient;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_14} :catch_17
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    .line 50
    :cond_14
    goto :goto_1b

    .line 51
    :catchall_15
    move-exception v1

    goto :goto_1d

    .line 48
    :catch_17
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 51
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1b
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    throw v1
.end method
