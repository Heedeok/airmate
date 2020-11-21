.class public Lorg/ros/internal/node/parameter/ParameterManager;
.super Ljava/lang/Object;
.source "ParameterManager.java"


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/node/parameter/ParameterListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/ros/internal/node/parameter/ParameterManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 39
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public addListener(Lorg/ros/namespace/GraphName;Lorg/ros/node/parameter/ParameterListener;)V
    .registers 7
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .param p2, "listener"    # Lorg/ros/node/parameter/ParameterListener;

    .line 43
    iget-object v0, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 45
    iget-object v1, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    new-instance v2, Lorg/ros/concurrent/ListenerGroup;

    iget-object v3, p0, Lorg/ros/internal/node/parameter/ParameterManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_17
    iget-object v1, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v1, p2}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public updateParameter(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)I
    .registers 7
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "numberOfListeners":I
    iget-object v1, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    monitor-enter v1

    .line 59
    :try_start_4
    iget-object v2, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 60
    iget-object v2, p0, Lorg/ros/internal/node/parameter/ParameterManager;->listeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/concurrent/ListenerGroup;

    .line 61
    .local v2, "listenerCollection":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<Lorg/ros/node/parameter/ParameterListener;>;"
    invoke-virtual {v2}, Lorg/ros/concurrent/ListenerGroup;->size()I

    move-result v3

    move v0, v3

    .line 62
    new-instance v3, Lorg/ros/internal/node/parameter/ParameterManager$1;

    invoke-direct {v3, p0, p2}, Lorg/ros/internal/node/parameter/ParameterManager$1;-><init>(Lorg/ros/internal/node/parameter/ParameterManager;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 69
    .end local v2    # "listenerCollection":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<Lorg/ros/node/parameter/ParameterListener;>;"
    :cond_21
    monitor-exit v1

    .line 70
    return v0

    .line 69
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v2
.end method
