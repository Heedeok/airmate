.class final Lorg/jboss/netty/util/internal/DeadLockProofWorker$1;
.super Ljava/lang/Object;
.source "DeadLockProofWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parent:Ljava/util/concurrent/Executor;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lorg/jboss/netty/util/internal/DeadLockProofWorker$1;->val$parent:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/jboss/netty/util/internal/DeadLockProofWorker$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 40
    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/DeadLockProofWorker$1;->val$parent:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 42
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/util/internal/DeadLockProofWorker$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    .line 43
    nop

    .line 46
    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 45
    nop

    .line 46
    return-void

    .line 44
    :catchall_14
    move-exception v0

    .line 46
    sget-object v1, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 44
    throw v0
.end method
