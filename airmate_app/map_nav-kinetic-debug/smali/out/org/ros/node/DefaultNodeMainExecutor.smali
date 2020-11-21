.class public Lorg/ros/node/DefaultNodeMainExecutor;
.super Ljava/lang/Object;
.source "DefaultNodeMainExecutor.java"

# interfaces
.implements Lorg/ros/node/NodeMainExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/node/DefaultNodeMainExecutor$RegistrationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final connectedNodes:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/node/ConnectedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeFactory:Lorg/ros/node/NodeFactory;

.field private final nodeMains:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lorg/ros/node/Node;",
            "Lorg/ros/node/NodeMain;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lorg/ros/node/DefaultNodeMainExecutor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/node/DefaultNodeMainExecutor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>(Lorg/ros/node/NodeFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6
    .param p1, "nodeFactory"    # Lorg/ros/node/NodeFactory;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/ros/node/DefaultNodeMainExecutor;->nodeFactory:Lorg/ros/node/NodeFactory;

    .line 101
    iput-object p2, p0, Lorg/ros/node/DefaultNodeMainExecutor;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 102
    nop

    .line 103
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->synchronizedMultimap(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->connectedNodes:Lcom/google/common/collect/Multimap;

    .line 104
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->synchronizedBiMap(Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->nodeMains:Lcom/google/common/collect/BiMap;

    .line 105
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/ros/node/DefaultNodeMainExecutor$1;

    invoke-direct {v2, p0}, Lorg/ros/node/DefaultNodeMainExecutor$1;-><init>(Lorg/ros/node/DefaultNodeMainExecutor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/ConnectedNode;)V
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/DefaultNodeMainExecutor;
    .param p1, "x1"    # Lorg/ros/node/ConnectedNode;

    .line 42
    invoke-direct {p0, p1}, Lorg/ros/node/DefaultNodeMainExecutor;->registerNode(Lorg/ros/node/ConnectedNode;)V

    return-void
.end method

.method static synthetic access$100(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/Node;)V
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/DefaultNodeMainExecutor;
    .param p1, "x1"    # Lorg/ros/node/Node;

    .line 42
    invoke-direct {p0, p1}, Lorg/ros/node/DefaultNodeMainExecutor;->unregisterNode(Lorg/ros/node/Node;)V

    return-void
.end method

.method static synthetic access$200()Lorg/apache/commons/logging/Log;
    .registers 1

    .line 42
    sget-object v0, Lorg/ros/node/DefaultNodeMainExecutor;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$400(Lorg/ros/node/DefaultNodeMainExecutor;)Lorg/ros/node/NodeFactory;
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/DefaultNodeMainExecutor;

    .line 42
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->nodeFactory:Lorg/ros/node/NodeFactory;

    return-object v0
.end method

.method static synthetic access$500(Lorg/ros/node/DefaultNodeMainExecutor;)Lcom/google/common/collect/BiMap;
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/DefaultNodeMainExecutor;

    .line 42
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->nodeMains:Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method public static newDefault()Lorg/ros/node/NodeMainExecutor;
    .registers 1

    .line 81
    new-instance v0, Lorg/ros/concurrent/DefaultScheduledExecutorService;

    invoke-direct {v0}, Lorg/ros/concurrent/DefaultScheduledExecutorService;-><init>()V

    invoke-static {v0}, Lorg/ros/node/DefaultNodeMainExecutor;->newDefault(Ljava/util/concurrent/ScheduledExecutorService;)Lorg/ros/node/NodeMainExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newDefault(Ljava/util/concurrent/ScheduledExecutorService;)Lorg/ros/node/NodeMainExecutor;
    .registers 3
    .param p0, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    new-instance v0, Lorg/ros/node/DefaultNodeMainExecutor;

    new-instance v1, Lorg/ros/node/DefaultNodeFactory;

    invoke-direct {v1, p0}, Lorg/ros/node/DefaultNodeFactory;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-direct {v0, v1, p0}, Lorg/ros/node/DefaultNodeMainExecutor;-><init>(Lorg/ros/node/NodeFactory;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method private registerNode(Lorg/ros/node/ConnectedNode;)V
    .registers 11
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 197
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 198
    .local v0, "nodeName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/node/DefaultNodeMainExecutor;->connectedNodes:Lcom/google/common/collect/Multimap;

    monitor-enter v1

    .line 199
    :try_start_7
    iget-object v2, p0, Lorg/ros/node/DefaultNodeMainExecutor;->connectedNodes:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/node/ConnectedNode;

    .line 200
    .local v3, "illegalConnectedNode":Lorg/ros/node/ConnectedNode;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Node name collision. Existing node %s (%s) will be shutdown."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    .line 202
    invoke-interface {v3}, Lorg/ros/node/ConnectedNode;->getUri()Ljava/net/URI;

    move-result-object v8

    aput-object v8, v6, v7

    .line 200
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    invoke-interface {v3}, Lorg/ros/node/ConnectedNode;->shutdown()V

    .line 204
    .end local v3    # "illegalConnectedNode":Lorg/ros/node/ConnectedNode;
    goto :goto_11

    .line 205
    :cond_39
    iget-object v2, p0, Lorg/ros/node/DefaultNodeMainExecutor;->connectedNodes:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, v0, p1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v2
.end method

.method private safelyShutdownNode(Lorg/ros/node/Node;)V
    .registers 6
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 174
    const/4 v0, 0x1

    .line 176
    .local v0, "success":Z
    :try_start_1
    invoke-interface {p1}, Lorg/ros/node/Node;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 184
    goto :goto_11

    .line 177
    :catch_5
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/ros/node/DefaultNodeMainExecutor;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception thrown while shutting down node."

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 182
    invoke-direct {p0, p1}, Lorg/ros/node/DefaultNodeMainExecutor;->unregisterNode(Lorg/ros/node/Node;)V

    .line 183
    const/4 v0, 0x0

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_11
    if-eqz v0, :cond_1a

    .line 186
    sget-object v1, Lorg/ros/node/DefaultNodeMainExecutor;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Shutdown successful."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 188
    :cond_1a
    return-void
.end method

.method private unregisterNode(Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 216
    invoke-interface {p1}, Lorg/ros/node/Node;->removeListeners()V

    .line 217
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->connectedNodes:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->nodeMains:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method


# virtual methods
.method public execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V
    .registers 4
    .param p1, "nodeMain"    # Lorg/ros/node/NodeMain;
    .param p2, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ros/node/DefaultNodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)V

    .line 148
    return-void
.end method

.method public execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)V
    .registers 7
    .param p1, "nodeMain"    # Lorg/ros/node/NodeMain;
    .param p2, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/NodeMain;",
            "Lorg/ros/node/NodeConfiguration;",
            "Ljava/util/Collection<",
            "Lorg/ros/node/NodeListener;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p3, "nodeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/node/NodeListener;>;"
    invoke-static {p2}, Lorg/ros/node/NodeConfiguration;->copyOf(Lorg/ros/node/NodeConfiguration;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    .line 124
    .local v0, "nodeConfigurationCopy":Lorg/ros/node/NodeConfiguration;
    invoke-interface {p1}, Lorg/ros/node/NodeMain;->getDefaultNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/node/NodeConfiguration;->setDefaultNodeName(Lorg/ros/namespace/GraphName;)Lorg/ros/node/NodeConfiguration;

    .line 125
    invoke-virtual {v0}, Lorg/ros/node/NodeConfiguration;->getNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    const-string v2, "Node name not specified."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lorg/ros/node/DefaultNodeMainExecutor;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/ros/node/DefaultNodeMainExecutor$2;

    invoke-direct {v2, p0, p1, p3, v0}, Lorg/ros/node/DefaultNodeMainExecutor$2;-><init>(Lorg/ros/node/DefaultNodeMainExecutor;Lorg/ros/node/NodeMain;Ljava/util/Collection;Lorg/ros/node/NodeConfiguration;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public shutdown()V
    .registers 4

    .line 160
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->connectedNodes:Lcom/google/common/collect/Multimap;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object v1, p0, Lorg/ros/node/DefaultNodeMainExecutor;->connectedNodes:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/node/ConnectedNode;

    .line 162
    .local v2, "connectedNode":Lorg/ros/node/ConnectedNode;
    invoke-direct {p0, v2}, Lorg/ros/node/DefaultNodeMainExecutor;->safelyShutdownNode(Lorg/ros/node/Node;)V

    .line 163
    .end local v2    # "connectedNode":Lorg/ros/node/ConnectedNode;
    goto :goto_d

    .line 164
    :cond_1d
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public shutdownNodeMain(Lorg/ros/node/NodeMain;)V
    .registers 3
    .param p1, "nodeMain"    # Lorg/ros/node/NodeMain;

    .line 152
    iget-object v0, p0, Lorg/ros/node/DefaultNodeMainExecutor;->nodeMains:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/node/Node;

    .line 153
    .local v0, "node":Lorg/ros/node/Node;
    if-eqz v0, :cond_11

    .line 154
    invoke-direct {p0, v0}, Lorg/ros/node/DefaultNodeMainExecutor;->safelyShutdownNode(Lorg/ros/node/Node;)V

    .line 156
    :cond_11
    return-void
.end method
