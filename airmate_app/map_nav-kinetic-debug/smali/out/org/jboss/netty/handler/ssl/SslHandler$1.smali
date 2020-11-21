.class Lorg/jboss/netty/handler/ssl/SslHandler$1;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V
    .registers 2

    .line 945
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$1;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 5
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 948
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_1a

    .line 949
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$1;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_d
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$1;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget v2, v1, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    .line 951
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v1

    .line 953
    :cond_1a
    :goto_1a
    return-void
.end method
