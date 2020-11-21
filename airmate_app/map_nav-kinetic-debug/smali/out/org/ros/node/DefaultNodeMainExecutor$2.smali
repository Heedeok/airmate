.class Lorg/ros/node/DefaultNodeMainExecutor$2;
.super Ljava/lang/Object;
.source "DefaultNodeMainExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/node/DefaultNodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/node/DefaultNodeMainExecutor;

.field final synthetic val$nodeConfigurationCopy:Lorg/ros/node/NodeConfiguration;

.field final synthetic val$nodeListeners:Ljava/util/Collection;

.field final synthetic val$nodeMain:Lorg/ros/node/NodeMain;


# direct methods
.method constructor <init>(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/NodeMain;Ljava/util/Collection;Lorg/ros/node/NodeConfiguration;)V
    .registers 5
    .param p1, "this$0"    # Lorg/ros/node/DefaultNodeMainExecutor;

    .line 129
    iput-object p1, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    iput-object p2, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeMain:Lorg/ros/node/NodeMain;

    iput-object p3, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeListeners:Ljava/util/Collection;

    iput-object p4, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeConfigurationCopy:Lorg/ros/node/NodeConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 132
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    .local v0, "nodeListenersCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/node/NodeListener;>;"
    new-instance v1, Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;

    iget-object v2, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;-><init>(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/DefaultNodeMainExecutor$1;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeMain:Lorg/ros/node/NodeMain;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeListeners:Ljava/util/Collection;

    if-eqz v1, :cond_1d

    .line 136
    iget-object v1, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeListeners:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_1d
    iget-object v1, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-static {v1}, Lorg/ros/node/DefaultNodeMainExecutor;->access$400(Lorg/ros/node/DefaultNodeMainExecutor;)Lorg/ros/node/NodeFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeConfigurationCopy:Lorg/ros/node/NodeConfiguration;

    invoke-interface {v1, v2, v0}, Lorg/ros/node/NodeFactory;->newNode(Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)Lorg/ros/node/Node;

    move-result-object v1

    .line 140
    .local v1, "node":Lorg/ros/node/Node;
    iget-object v2, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->this$0:Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-static {v2}, Lorg/ros/node/DefaultNodeMainExecutor;->access$500(Lorg/ros/node/DefaultNodeMainExecutor;)Lcom/google/common/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lorg/ros/node/DefaultNodeMainExecutor$2;->val$nodeMain:Lorg/ros/node/NodeMain;

    invoke-interface {v2, v1, v3}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method
