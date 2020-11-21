.class public Lorg/jboss/netty/handler/execution/ChainedExecutor;
.super Ljava/lang/Object;
.source "ChainedExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cur:Ljava/util/concurrent/Executor;

.field private final filter:Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;

.field private final next:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "filter"    # Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;
    .param p2, "cur"    # Ljava/util/concurrent/Executor;
    .param p3, "next"    # Ljava/util/concurrent/Executor;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_20

    .line 48
    if-eqz p2, :cond_18

    .line 51
    if-eqz p3, :cond_10

    .line 55
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->filter:Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;

    .line 56
    iput-object p2, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p3, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    .line 58
    return-void

    .line 52
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "next"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cur"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static releaseExternal(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 82
    instance-of v0, p0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_a

    .line 83
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    .line 85
    :cond_a
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 66
    nop

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->filter:Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;

    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;->filter(Lorg/jboss/netty/handler/execution/ChannelEventRunnable;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 68
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 70
    :cond_12
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    :goto_17
    return-void
.end method

.method public releaseExternalResources()V
    .registers 4

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate([Ljava/util/concurrent/Executor;)V

    .line 76
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lorg/jboss/netty/handler/execution/ChainedExecutor;->releaseExternal(Ljava/util/concurrent/Executor;)V

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lorg/jboss/netty/handler/execution/ChainedExecutor;->releaseExternal(Ljava/util/concurrent/Executor;)V

    .line 78
    return-void
.end method
