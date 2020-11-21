.class final Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;
.super Lorg/jboss/netty/channel/DefaultChannelFuture;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLEngineInboundCloseFuture"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/ssl/SslHandler;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V
    .registers 3

    .line 1405
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    .line 1406
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    .line 1407
    return-void
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 1415
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$000(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1417
    const/4 v0, 0x0

    return-object v0

    .line 1419
    :cond_a
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$000(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method setClosed()V
    .registers 1

    .line 1410
    invoke-super {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->setSuccess()Z

    .line 1411
    return-void
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1430
    const/4 v0, 0x0

    return v0
.end method

.method public setSuccess()Z
    .registers 2

    .line 1425
    const/4 v0, 0x0

    return v0
.end method
