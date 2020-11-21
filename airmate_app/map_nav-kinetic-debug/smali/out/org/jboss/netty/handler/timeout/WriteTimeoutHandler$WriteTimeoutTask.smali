.class final Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
.super Ljava/lang/Object;
.source "WriteTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 4
    .param p2, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p3, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 171
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 173
    iput-object p3, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    .line 174
    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .registers 4
    .param p1, "timeout"    # Lorg/jboss/netty/util/Timeout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    return-void

    .line 181
    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 182
    return-void

    .line 186
    :cond_14
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v1, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/WriteTimeoutException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 189
    :try_start_1e
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->writeTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_25} :catch_26

    .line 192
    goto :goto_2c

    .line 190
    :catch_26
    move-exception v0

    .line 191
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 194
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2c
    :goto_2c
    return-void
.end method
