.class public Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;
.source "NioWorkerPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool<",
        "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;IZ)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "workerCount"    # I
    .param p3, "allowShutdownOnIdle"    # Z

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorkerPool;-><init>(Ljava/util/concurrent/Executor;IZ)V

    .line 30
    return-void
.end method


# virtual methods
.method protected bridge synthetic createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
    .registers 4
    .param p1, "x0"    # Ljava/util/concurrent/Executor;
    .param p2, "x1"    # Z

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;->createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/NioWorker;

    move-result-object v0

    return-object v0
.end method

.method protected createWorker(Ljava/util/concurrent/Executor;Z)Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "allowShutdownOnIdle"    # Z

    .line 34
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method
