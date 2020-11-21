.class public Lorg/jboss/netty/handler/execution/ExecutionHandler;
.super Ljava/lang/Object;
.source "ExecutionHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final handleDownstream:Z

.field private final handleUpstream:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/execution/ExecutionHandler;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "handleDownstream"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/execution/ExecutionHandler;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ZZ)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "handleDownstream"    # Z
    .param p3, "handleUpstream"    # Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    if-eqz p1, :cond_19

    .line 142
    if-nez p2, :cond_12

    if-eqz p3, :cond_a

    goto :goto_12

    .line 143
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must handle at least handle one event type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_12
    :goto_12
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    .line 146
    iput-boolean p2, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleDownstream:Z

    .line 147
    iput-boolean p3, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleUpstream:Z

    .line 148
    return-void

    .line 140
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 154
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleReadSuspend(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 182
    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleDownstream:Z

    if-eqz v0, :cond_17

    .line 183
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnable;

    iget-object v2, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, p2, v2}, Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnable;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 185
    :cond_17
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 188
    :cond_1a
    :goto_1a
    return-void
.end method

.method protected handleReadSuspend(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 194
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 195
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 196
    .local v0, "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v2, v3, :cond_31

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_31

    .line 200
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 201
    .local v2, "readSuspended":Z
    :goto_27
    if-eqz v2, :cond_31

    .line 204
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 205
    return v3

    .line 210
    .end local v0    # "cse":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v2    # "readSuspended":Z
    :cond_31
    return v1
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "context"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleUpstream:Z

    if-eqz v0, :cond_11

    .line 172
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    iget-object v2, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, p2, v2}, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 174
    :cond_11
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 176
    :goto_14
    return-void
.end method

.method public releaseExternalResources()V
    .registers 5

    .line 162
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/ExecutionHandler;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 163
    .local v0, "executor":Ljava/util/concurrent/Executor;
    sget-object v1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/ExecutorUtil;->terminate(Ljava/lang/ThreadLocal;[Ljava/util/concurrent/Executor;)V

    .line 164
    instance-of v1, v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v1, :cond_19

    .line 165
    move-object v1, v0

    check-cast v1, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v1}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    .line 167
    :cond_19
    return-void
.end method
