.class public Lorg/jboss/netty/channel/FailedChannelFuture;
.super Lorg/jboss/netty/channel/CompleteChannelFuture;
.source "FailedChannelFuture.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 34
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/CompleteChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    .line 35
    if-eqz p2, :cond_8

    .line 38
    iput-object p2, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    .line 39
    return-void

    .line 36
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cause"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rethrow()V
    .registers 3

    .line 72
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_19

    .line 76
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_11

    .line 77
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 80
    :cond_11
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    iget-object v1, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 73
    :cond_19
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 42
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public rethrowIfFailed()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Exception;

    if-nez v0, :cond_19

    .line 54
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 58
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 51
    :cond_19
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Exception;

    throw v0
.end method

.method public sync()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/jboss/netty/channel/FailedChannelFuture;->rethrow()V

    .line 63
    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 1

    .line 67
    invoke-direct {p0}, Lorg/jboss/netty/channel/FailedChannelFuture;->rethrow()V

    .line 68
    return-object p0
.end method
