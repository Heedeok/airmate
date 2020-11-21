.class public Lorg/jboss/netty/channel/SucceededChannelFuture;
.super Lorg/jboss/netty/channel/CompleteChannelFuture;
.source "SucceededChannelFuture.java"


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;)V
    .registers 2
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 31
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/CompleteChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public rethrowIfFailed()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    return-object p0
.end method

.method public sync()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 47
    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 1

    .line 51
    return-object p0
.end method
