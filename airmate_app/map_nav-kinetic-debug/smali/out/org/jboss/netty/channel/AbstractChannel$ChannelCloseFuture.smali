.class final Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;
.super Lorg/jboss/netty/channel/DefaultChannelFuture;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChannelCloseFuture"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/AbstractChannel;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/AbstractChannel;)V
    .registers 3

    .line 336
    iput-object p1, p0, Lorg/jboss/netty/channel/AbstractChannel$ChannelCloseFuture;->this$0:Lorg/jboss/netty/channel/AbstractChannel;

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    .line 338
    return-void
.end method


# virtual methods
.method setClosed()Z
    .registers 2

    .line 353
    invoke-super {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->setSuccess()Z

    move-result v0

    return v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public setSuccess()Z
    .registers 2

    .line 343
    const/4 v0, 0x0

    return v0
.end method
