.class final Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelHandlerContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/DefaultChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultChannelHandlerContext"
.end annotation


# instance fields
.field private volatile attachment:Ljava/lang/Object;

.field private final canHandleDownstream:Z

.field private final canHandleUpstream:Z

.field private final handler:Lorg/jboss/netty/channel/ChannelHandler;

.field private final name:Ljava/lang/String;

.field volatile next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

.field volatile prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

.field final synthetic this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 8
    .param p2, "prev"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p3, "next"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 718
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    if-eqz p4, :cond_5b

    .line 723
    if-eqz p5, :cond_53

    .line 726
    instance-of p1, p5, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    iput-boolean p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream:Z

    .line 727
    instance-of p1, p5, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    iput-boolean p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream:Z

    .line 730
    iget-boolean p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream:Z

    if-nez p1, :cond_4a

    iget-boolean p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream:Z

    if-eqz p1, :cond_1a

    goto :goto_4a

    .line 731
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

    .line 737
    :cond_4a
    :goto_4a
    iput-object p2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 738
    iput-object p3, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 739
    iput-object p4, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->name:Ljava/lang/String;

    .line 740
    iput-object p5, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    .line 741
    return-void

    .line 724
    :cond_53
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 721
    :cond_5b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canHandleDownstream()Z
    .registers 2

    .line 752
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream:Z

    return v0
.end method

.method public canHandleUpstream()Z
    .registers 2

    .line 756
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream:Z

    return v0
.end method

.method public getAttachment()Ljava/lang/Object;
    .registers 2

    .line 768
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 744
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 2

    .line 760
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 764
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .registers 2

    .line 748
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 5
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 776
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 777
    .local v0, "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_1d

    .line 779
    :try_start_a
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-interface {v1, v2, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1c

    .line 780
    :catch_16
    move-exception v1

    .line 781
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v2, p1, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 782
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1c
    goto :goto_22

    .line 784
    :cond_1d
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 786
    :goto_22
    return-void
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 789
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 790
    .local v0, "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-eqz v0, :cond_f

    .line 791
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 793
    :cond_f
    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .registers 2
    .param p1, "attachment"    # Ljava/lang/Object;

    .line 772
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->attachment:Ljava/lang/Object;

    .line 773
    return-void
.end method
