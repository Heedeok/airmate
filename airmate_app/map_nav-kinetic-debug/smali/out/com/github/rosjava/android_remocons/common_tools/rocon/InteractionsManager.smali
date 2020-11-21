.class public Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;
.super Lorg/ros/node/AbstractNodeMain;
.source "InteractionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;,
        Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;,
        Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;
    }
.end annotation


# instance fields
.field private action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

.field private app:Lrocon_interaction_msgs/Interaction;

.field private appInfoServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lrocon_interaction_msgs/GetInteractionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private app_hash:I

.field private connectThread:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;

.field private connectedNode:Lorg/ros/node/ConnectedNode;

.field private failureCallback:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

.field private getAppsServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lrocon_interaction_msgs/GetInteractionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private interactionsNamespace:Ljava/lang/String;

.field private nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

.field private remocon_name:Ljava/lang/String;

.field private requestServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lrocon_interaction_msgs/RequestInteractionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;)V
    .registers 3
    .param p1, "failureCallback"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

    .line 101
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 88
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->NONE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    .line 103
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    .line 74
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->getAppsForRole()V

    return-void
.end method

.method static synthetic access$100(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    .line 74
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->requestAppUse()V

    return-void
.end method

.method static synthetic access$200(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    .line 74
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->getAppInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    .line 74
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)Lorg/ros/android/NodeMainExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    .line 74
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;Lorg/ros/android/NodeMainExecutorService;)Lorg/ros/android/NodeMainExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;
    .param p1, "x1"    # Lorg/ros/android/NodeMainExecutorService;

    .line 74
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    return-object p1
.end method

.method private getAppInfo()V
    .registers 7

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->interactionsNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/get_interaction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "serviceName":Ljava/lang/String;
    :try_start_13
    const-string v1, "InteractionsMng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get app info service client created ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    const-string v2, "rocon_interaction_msgs/GetInteraction"

    invoke-interface {v1, v0, v2}, Lorg/ros/node/ConnectedNode;->newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;

    move-result-object v1
    :try_end_36
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_13 .. :try_end_36} :catch_64

    .line 277
    .local v1, "srvClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lrocon_interaction_msgs/GetInteractionRequest;Lrocon_interaction_msgs/GetInteractionResponse;>;"
    nop

    .line 276
    nop

    .line 278
    invoke-interface {v1}, Lorg/ros/node/service/ServiceClient;->newMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrocon_interaction_msgs/GetInteractionRequest;

    .line 279
    .local v2, "request":Lrocon_interaction_msgs/GetInteractionRequest;
    iget v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->app_hash:I

    invoke-interface {v2, v3}, Lrocon_interaction_msgs/GetInteractionRequest;->setHash(I)V

    .line 281
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->appInfoServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    invoke-interface {v1, v2, v3}, Lorg/ros/node/service/ServiceClient;->call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V

    .line 282
    const-string v3, "InteractionsMng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get app info service call done ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 274
    .end local v1    # "srvClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lrocon_interaction_msgs/GetInteractionRequest;Lrocon_interaction_msgs/GetInteractionResponse;>;"
    .end local v2    # "request":Lrocon_interaction_msgs/GetInteractionRequest;
    :catch_64
    move-exception v1

    .line 275
    .local v1, "e":Lorg/ros/exception/ServiceNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get app info not found ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InteractionsMng"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAppsForRole()V
    .registers 7

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->interactionsNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/get_interactions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "serviceName":Ljava/lang/String;
    :try_start_13
    const-string v1, "InteractionsMng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List interactions service client created ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    const-string v2, "rocon_interaction_msgs/GetInteractions"

    invoke-interface {v1, v0, v2}, Lorg/ros/node/ConnectedNode;->newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;

    move-result-object v1
    :try_end_36
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_13 .. :try_end_36} :catch_71

    .line 237
    .local v1, "srvClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lrocon_interaction_msgs/GetInteractionsRequest;Lrocon_interaction_msgs/GetInteractionsResponse;>;"
    nop

    .line 236
    nop

    .line 238
    invoke-interface {v1}, Lorg/ros/node/service/ServiceClient;->newMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrocon_interaction_msgs/GetInteractionsRequest;

    .line 240
    .local v2, "request":Lrocon_interaction_msgs/GetInteractionsRequest;
    invoke-interface {v2}, Lrocon_interaction_msgs/GetInteractionsRequest;->getRoles()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->role:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v3, Lcom/github/rosjava/android_remocons/common_tools/rocon/Constants;->ANDROID_PLATFORM_INFO:Lrocon_std_msgs/PlatformInfo;

    invoke-interface {v3}, Lrocon_std_msgs/PlatformInfo;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lrocon_interaction_msgs/GetInteractionsRequest;->setUri(Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->getAppsServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    invoke-interface {v1, v2, v3}, Lorg/ros/node/service/ServiceClient;->call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V

    .line 244
    const-string v3, "InteractionsMng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List interactions service call done ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void

    .line 234
    .end local v1    # "srvClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lrocon_interaction_msgs/GetInteractionsRequest;Lrocon_interaction_msgs/GetInteractionsResponse;>;"
    .end local v2    # "request":Lrocon_interaction_msgs/GetInteractionsRequest;
    :catch_71
    move-exception v1

    .line 235
    .local v1, "e":Lorg/ros/exception/ServiceNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List interactions service not found ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InteractionsMng"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private requestAppUse()V
    .registers 7

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->interactionsNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/request_interaction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "serviceName":Ljava/lang/String;
    :try_start_13
    const-string v1, "InteractionsMng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request app service client created ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    const-string v2, "rocon_interaction_msgs/RequestInteraction"

    invoke-interface {v1, v0, v2}, Lorg/ros/node/ConnectedNode;->newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;

    move-result-object v1
    :try_end_36
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_13 .. :try_end_36} :catch_6d

    .line 257
    .local v1, "srvClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lrocon_interaction_msgs/RequestInteractionRequest;Lrocon_interaction_msgs/RequestInteractionResponse;>;"
    nop

    .line 256
    nop

    .line 258
    invoke-interface {v1}, Lorg/ros/node/service/ServiceClient;->newMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrocon_interaction_msgs/RequestInteractionRequest;

    .line 260
    .local v2, "request":Lrocon_interaction_msgs/RequestInteractionRequest;
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->remocon_name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lrocon_interaction_msgs/RequestInteractionRequest;->setRemocon(Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->app:Lrocon_interaction_msgs/Interaction;

    invoke-interface {v3}, Lrocon_interaction_msgs/Interaction;->getHash()I

    move-result v3

    invoke-interface {v2, v3}, Lrocon_interaction_msgs/RequestInteractionRequest;->setHash(I)V

    .line 263
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->requestServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    invoke-interface {v1, v2, v3}, Lorg/ros/node/service/ServiceClient;->call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V

    .line 264
    const-string v3, "InteractionsMng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request app service call done ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 254
    .end local v1    # "srvClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lrocon_interaction_msgs/RequestInteractionRequest;Lrocon_interaction_msgs/RequestInteractionResponse;>;"
    .end local v2    # "request":Lrocon_interaction_msgs/RequestInteractionRequest;
    :catch_6d
    move-exception v1

    .line 255
    .local v1, "e":Lorg/ros/exception/ServiceNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request app service not found ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InteractionsMng"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 137
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->shutdown()V

    .line 138
    return-void
.end method

.method public getAppInfo(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;I)V
    .registers 6
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p2, "hash"    # I

    .line 204
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->GET_INTERACTION_INFO:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    .line 205
    iput p2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->app_hash:I

    .line 209
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    if-nez v0, :cond_30

    .line 210
    const-string v0, "InteractionsMng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First action requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "). Starting node..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->start()V

    goto :goto_3b

    .line 216
    :cond_30
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$3;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$3;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 222
    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    :goto_3b
    return-void
.end method

.method public getAppsForRole(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;)V
    .registers 6
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p2, "role"    # Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->GET_INTERACTIONS_FOR_ROLE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    .line 149
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->role:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    if-nez v0, :cond_30

    .line 154
    const-string v0, "InteractionsMng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First action requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "). Starting node..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->start()V

    goto :goto_3b

    .line 160
    :cond_30
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$1;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 166
    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :goto_3b
    return-void
.end method

.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 2
    .param p1, "interactionsNamespace"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->interactionsNamespace:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 395
    invoke-super {p0, p1, p2}, Lorg/ros/node/AbstractNodeMain;->onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V

    .line 397
    const-string v0, "InteractionsMng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " node error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " node error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 380
    const-string v0, "InteractionsMng"

    const-string v1, "Shutdown connected node..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-super {p0, p1}, Lorg/ros/node/AbstractNodeMain;->onShutdown(Lorg/ros/node/Node;)V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 385
    const-string v0, "InteractionsMng"

    const-string v1, "Done; shutdown apps manager node main"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 390
    invoke-super {p0, p1}, Lorg/ros/node/AbstractNodeMain;->onShutdownComplete(Lorg/ros/node/Node;)V

    .line 391
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 349
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    if-eqz v0, :cond_c

    .line 350
    const-string v0, "InteractionsMng"

    const-string v1, "App manager re-started before previous shutdown; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 354
    :cond_c
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 356
    const-string v0, "InteractionsMng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$4;->$SwitchMap$com$github$rosjava$android_remocons$common_tools$rocon$InteractionsManager$Action:[I

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 372
    const-string v0, "InteractionsMng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognised action requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 369
    :pswitch_4c
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->getAppInfo()V

    .line 370
    goto :goto_60

    .line 366
    :pswitch_50
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->getAppsForRole()V

    .line 367
    goto :goto_60

    .line 363
    :pswitch_54
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->requestAppUse()V

    .line 364
    goto :goto_60

    .line 360
    :pswitch_58
    const-string v0, "InteractionsMng"

    const-string v1, "Node started without specifying an action"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    nop

    .line 375
    :goto_60
    const-string v0, "InteractionsMng"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
    .end packed-switch
.end method

.method public requestAppUse(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/lang/String;Lrocon_interaction_msgs/Interaction;)V
    .registers 7
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p2, "role"    # Ljava/lang/String;
    .param p3, "app"    # Lrocon_interaction_msgs/Interaction;

    .line 171
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->REQUEST_INTERACTION_USE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    .line 172
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->role:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->app:Lrocon_interaction_msgs/Interaction;

    .line 174
    invoke-interface {p3}, Lrocon_interaction_msgs/Interaction;->getHash()I

    move-result v0

    iput v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->app_hash:I

    .line 178
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    if-nez v0, :cond_38

    .line 179
    const-string v0, "InteractionsMng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First action requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->action:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "). Starting node..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->start()V

    goto :goto_43

    .line 185
    :cond_38
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$2;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$2;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 191
    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    :goto_43
    return-void
.end method

.method public setRemoconName(Ljava/lang/String;)V
    .registers 2
    .param p1, "remocon_name"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->remocon_name:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setupAppInfoService(Lorg/ros/node/service/ServiceResponseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lrocon_interaction_msgs/GetInteractionResponse;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "serviceResponseListener":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<Lrocon_interaction_msgs/GetInteractionResponse;>;"
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->appInfoServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    .line 132
    return-void
.end method

.method public setupGetInteractionsService(Lorg/ros/node/service/ServiceResponseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lrocon_interaction_msgs/GetInteractionsResponse;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "serviceResponseListener":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<Lrocon_interaction_msgs/GetInteractionsResponse;>;"
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->getAppsServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    .line 128
    return-void
.end method

.method public setupRequestService(Lorg/ros/node/service/ServiceResponseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lrocon_interaction_msgs/RequestInteractionResponse;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "serviceResponseListener":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<Lrocon_interaction_msgs/RequestInteractionResponse;>;"
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->requestServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    .line 124
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    if-eqz v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v0, p0}, Lorg/ros/android/NodeMainExecutorService;->shutdownNodeMain(Lorg/ros/node/NodeMain;)V

    goto :goto_11

    .line 144
    :cond_a
    const-string v0, "InteractionsMng"

    const-string v1, "Shutting down an uninitialized apps manager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_11
    return-void
.end method
