.class Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;
.super Ljava/lang/Object;
.source "VirtualExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/VirtualExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildExecutorRunnable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/jboss/netty/util/VirtualExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 162
    const-class v0, Lorg/jboss/netty/util/VirtualExecutorService;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/util/VirtualExecutorService;Ljava/lang/Runnable;)V
    .registers 3
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 166
    iput-object p1, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->runnable:Ljava/lang/Runnable;

    .line 168
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 172
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v1, v1, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_9
    iget-object v2, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v2, v2, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_5d

    .line 176
    :try_start_11
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_3a

    .line 177
    nop

    .line 186
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v1, v1, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_1c
    iget-object v2, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v2, v2, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 180
    .local v2, "removed":Z
    nop

    .line 181
    iget-object v3, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    invoke-virtual {v3}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 182
    iget-object v3, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v3, v3, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 184
    .end local v2    # "removed":Z
    :cond_34
    monitor-exit v1

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_37

    throw v2

    .line 178
    :catchall_3a
    move-exception v1

    .line 184
    iget-object v2, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v2, v2, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_40
    iget-object v3, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v3, v3, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 180
    .local v3, "removed":Z
    nop

    .line 181
    iget-object v4, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    invoke-virtual {v4}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 182
    iget-object v4, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v4, v4, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 184
    .end local v3    # "removed":Z
    :cond_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_40 .. :try_end_59} :catchall_5a

    .line 178
    throw v1

    .line 184
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1

    .line 174
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2
.end method
