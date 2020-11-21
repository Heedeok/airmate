.class Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;
.super Ljava/lang/Thread;
.source "InteractionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectNodeThread"
.end annotation


# instance fields
.field private masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V
    .registers 4
    .param p2, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 292
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->setDaemon(Z)V

    .line 295
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread$1;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)V

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 301
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 306
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "concertUri":Ljava/net/URI;
    new-instance v1, Lorg/ros/internal/node/client/ParameterClient;

    const-string v2, "/concert_checker"

    .line 314
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/ros/internal/node/server/NodeIdentifier;->forNameAndUri(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/ros/internal/node/client/ParameterClient;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Ljava/net/URI;)V

    .line 315
    .local v1, "paramClient":Lorg/ros/internal/node/client/ParameterClient;
    const-string v2, "/rosversion"

    invoke-static {v2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/internal/node/client/ParameterClient;->getParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "name":Ljava/lang/String;
    const-string v3, "Remocon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Concert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found; retrieve additional information"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    new-instance v4, Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {v4}, Lorg/ros/android/NodeMainExecutorService;-><init>()V

    invoke-static {v3, v4}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->access$402(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;Lorg/ros/android/NodeMainExecutorService;)Lorg/ros/android/NodeMainExecutorService;

    .line 320
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newNonLoopback()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {v3, v0}, Lorg/ros/node/NodeConfiguration;->newPublic(Ljava/lang/String;Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    move-result-object v3

    .line 321
    .local v3, "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    invoke-static {v4}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->access$400(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)Lorg/ros/android/NodeMainExecutorService;

    move-result-object v4

    iget-object v5, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    const-string v6, "apps_manager_node"

    invoke-virtual {v3, v6}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/ros/android/NodeMainExecutorService;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V
    :try_end_6c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_6c} :catch_d5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6c} :catch_99
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6e

    goto/16 :goto_10e

    .line 330
    .end local v0    # "concertUri":Ljava/net/URI;
    .end local v1    # "paramClient":Lorg/ros/internal/node/client/ParameterClient;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nodeConfiguration":Lorg/ros/node/NodeConfiguration;
    :catch_6e
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "InteractionsMng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception while creating node in concert checker for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v3}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->access$300(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;->handleFailure(Ljava/lang/String;)V

    goto :goto_10f

    .line 326
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_99
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "InteractionsMng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find concert ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v3}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->access$300(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_10e

    .line 323
    :catch_d5
    move-exception v0

    .line 324
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v1, "InteractionsMng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid concert URI ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v3}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$ConnectNodeThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;->access$300(Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;)Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;

    move-result-object v1

    const-string v2, "invalid concert URI"

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 333
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_10e
    nop

    .line 334
    :goto_10f
    return-void
.end method
