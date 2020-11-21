.class public abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;
.super Ljava/lang/Object;
.source "AbstractNioWorkerPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/WorkerPool;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
        "TE;>;",
        "Lorg/jboss/netty/util/ExternalResourceReleasable;"
    }
.end annotation


# instance fields
.field private final workerExecutor:Ljava/util/concurrent/Executor;

.field private final workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final workers:[Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;IZ)V
    .registers 7
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerCount"    # I
    .param p3, "allowShutDownOnIdle"    # Z

    .line 46
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    if-eqz p1, :cond_47

    .line 50
    if-lez p2, :cond_26

    .line 55
    new-array v0, p2, [Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 58
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    move-result-object v2

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 60
    .end local v0    # "i":I
    :cond_23
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 62
    return-void

    .line 51
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "workerCount ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "must be a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "workerExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Z)TE;"
        }
    .end annotation
.end method

.method public bridge synthetic nextWorker()Lorg/jboss/netty/channel/socket/Worker;
    .registers 2

    .line 31
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool<TE;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    move-result-object v0

    return-object v0
.end method

.method public nextWorker()Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool<TE;>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workers:[Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public releaseExternalResources()V
    .registers 4

    .line 82
    .local p0, "this":Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool<TE;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;->workerExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 83
    return-void
.end method
