.class public abstract Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
.super Ljava/lang/Object;
.source "XmlRpcWorkerFactory.java"


# instance fields
.field private final controller:Lorg/apache/xmlrpc/common/XmlRpcController;

.field private numThreads:I

.field private final pool:Ljava/util/List;

.field private final singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V
    .registers 3
    .param p1, "pController"    # Lorg/apache/xmlrpc/common/XmlRpcController;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    .line 38
    return-void
.end method


# virtual methods
.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .registers 2

    .line 51
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-object v0
.end method

.method public declared-synchronized getCurrentRequests()I
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/common/XmlRpcLoadException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcController;->getMaxThreads()I

    move-result v0

    .line 62
    .local v0, "max":I
    if-lez v0, :cond_25

    iget v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    if-eq v1, v0, :cond_e

    goto :goto_25

    .line 63
    :cond_e
    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum number of concurrent requests exceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_25
    :goto_25
    if-nez v0, :cond_2b

    .line 66
    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_51

    monitor-exit p0

    return-object v1

    .line 68
    :cond_2b
    :try_start_2b
    iget v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    .line 69
    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3f

    .line 70
    invoke-virtual {p0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_51

    monitor-exit p0

    return-object v1

    .line 72
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlrpc/common/XmlRpcWorker;
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-object v1

    .line 60
    .end local v0    # "max":I
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;
.end method

.method public declared-synchronized releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V
    .registers 4
    .param p1, "pWorker"    # Lorg/apache/xmlrpc/common/XmlRpcWorker;

    monitor-enter p0

    .line 81
    :try_start_1
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    .line 82
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcController;->getMaxThreads()I

    move-result v0

    .line 83
    .local v0, "max":I
    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;

    if-ne p1, v1, :cond_12

    goto :goto_1f

    .line 86
    :cond_12
    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1f

    .line 87
    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 90
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "max":I
    .end local p1    # "pWorker":Lorg/apache/xmlrpc/common/XmlRpcWorker;
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
