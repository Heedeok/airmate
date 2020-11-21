.class Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;
.super Ljava/lang/Object;
.source "BufferedWriteHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidatedWrite(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/queue/BufferedWriteHandler;

.field final synthetic val$pendingWrites:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/queue/BufferedWriteHandler;Ljava/util/List;)V
    .registers 3

    .line 302
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;->this$0:Lorg/jboss/netty/handler/queue/BufferedWriteHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;->val$pendingWrites:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 306
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;->val$pendingWrites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 307
    .local v1, "e":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 308
    .end local v1    # "e":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_c

    .line 310
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 311
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;->val$pendingWrites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 312
    .local v2, "e":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 313
    .end local v2    # "e":Lorg/jboss/netty/channel/MessageEvent;
    goto :goto_2a

    .line 315
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3e
    return-void
.end method
