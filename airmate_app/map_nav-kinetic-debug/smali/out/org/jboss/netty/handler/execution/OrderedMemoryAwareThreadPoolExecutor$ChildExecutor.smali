.class public final Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
.super Ljava/lang/Object;
.source "OrderedMemoryAwareThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ChildExecutor"
.end annotation


# instance fields
.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final tasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const-class p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/Queue;

    .line 284
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 288
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    .line 292
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    .line 294
    :cond_12
    return-void
.end method

.method public run()V
    .registers 8

    .line 297
    const/4 v0, 0x0

    .line 301
    .local v0, "acquired":Z
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 302
    const/4 v0, 0x1

    .line 304
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 306
    .local v1, "thread":Ljava/lang/Thread;
    :goto_10
    iget-object v3, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_56

    .line 308
    .local v3, "task":Ljava/lang/Runnable;
    if-nez v3, :cond_3b

    .line 309
    nop

    .line 325
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v3    # "task":Ljava/lang/Runnable;
    nop

    .line 335
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
    iget-object v3, v1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    nop

    .line 330
    if-eqz v0, :cond_5f

    iget-object v2, v1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->tasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 331
    iget-object v2, v1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    goto :goto_5f

    .line 312
    .local v1, "thread":Ljava/lang/Thread;
    .restart local v3    # "task":Ljava/lang/Runnable;
    :cond_3b
    const/4 v4, 0x0

    .line 313
    .local v4, "ran":Z
    :try_start_3c
    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-virtual {v5, v1, v3}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_56

    .line 315
    :try_start_41
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 316
    const/4 v4, 0x1

    .line 317
    iget-object v5, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->onAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_4b} :catch_4d
    .catchall {:try_start_41 .. :try_end_4b} :catchall_56

    .line 323
    nop

    .line 324
    .end local v3    # "task":Ljava/lang/Runnable;
    .end local v4    # "ran":Z
    goto :goto_10

    .line 318
    .restart local v3    # "task":Ljava/lang/Runnable;
    .restart local v4    # "ran":Z
    :catch_4d
    move-exception v5

    .line 319
    .local v5, "e":Ljava/lang/RuntimeException;
    if-nez v4, :cond_55

    .line 320
    :try_start_50
    iget-object v6, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->this$0:Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;

    invoke-virtual {v6, v3, v5}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->onAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 322
    :cond_55
    throw v5
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_56

    .line 327
    .end local v1    # "thread":Ljava/lang/Thread;
    .end local v3    # "task":Ljava/lang/Runnable;
    .end local v4    # "ran":Z
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_56
    move-exception v1

    .line 335
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
    iget-object v4, v3, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    throw v1

    .line 335
    .end local v3    # "this":Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
    :cond_5e
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
    :cond_5f
    :goto_5f
    return-void
.end method
