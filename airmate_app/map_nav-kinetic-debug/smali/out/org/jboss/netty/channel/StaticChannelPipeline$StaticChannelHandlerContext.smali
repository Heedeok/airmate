.class final Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
.super Ljava/lang/Object;
.source "StaticChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelHandlerContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/StaticChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StaticChannelHandlerContext"
.end annotation


# instance fields
.field private volatile attachment:Ljava/lang/Object;

.field private final canHandleDownstream:Z

.field private final canHandleUpstream:Z

.field private final handler:Lorg/jboss/netty/channel/ChannelHandler;

.field private final index:I

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/StaticChannelPipeline;ILjava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 7
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 462
    iput-object p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    if-eqz p3, :cond_59

    .line 467
    if-eqz p4, :cond_51

    .line 470
    instance-of p1, p4, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    iput-boolean p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream:Z

    .line 471
    instance-of p1, p4, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    iput-boolean p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream:Z

    .line 474
    iget-boolean p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream:Z

    if-nez p1, :cond_4a

    iget-boolean p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream:Z

    if-eqz p1, :cond_1a

    goto :goto_4a

    .line 475
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handler must be either "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_4a
    :goto_4a
    iput p2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->index:I

    .line 482
    iput-object p3, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->name:Ljava/lang/String;

    .line 483
    iput-object p4, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    .line 484
    return-void

    .line 468
    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_59
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canHandleDownstream()Z
    .registers 2

    .line 495
    iget-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream:Z

    return v0
.end method

.method public canHandleUpstream()Z
    .registers 2

    .line 499
    iget-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream:Z

    return v0
.end method

.method public getAttachment()Ljava/lang/Object;
    .registers 2

    .line 511
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 487
    invoke-virtual {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 2

    .line 503
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 507
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 2

    .line 491
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    return-object v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 5
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 519
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    iget v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->index:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    .line 520
    .local v0, "prev":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-nez v0, :cond_1f

    .line 522
    :try_start_c
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_1e

    .line 523
    :catch_18
    move-exception v1

    .line 524
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v2, p1, v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 525
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1e
    goto :goto_24

    .line 527
    :cond_1f
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 529
    :goto_24
    return-void
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 532
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    iget v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    .line 533
    .local v0, "next":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-eqz v0, :cond_11

    .line 534
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 536
    :cond_11
    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .registers 2
    .param p1, "attachment"    # Ljava/lang/Object;

    .line 515
    iput-object p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->attachment:Ljava/lang/Object;

    .line 516
    return-void
.end method
