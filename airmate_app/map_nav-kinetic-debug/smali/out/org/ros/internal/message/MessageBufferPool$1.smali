.class Lorg/ros/internal/message/MessageBufferPool$1;
.super Ljava/lang/Object;
.source "MessageBufferPool.java"

# interfaces
.implements Lorg/apache/commons/pool/PoolableObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/message/MessageBufferPool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/pool/PoolableObjectFactory<",
        "Lorg/jboss/netty/buffer/ChannelBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/message/MessageBufferPool;


# direct methods
.method constructor <init>(Lorg/ros/internal/message/MessageBufferPool;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/message/MessageBufferPool;

    .line 38
    iput-object p1, p0, Lorg/ros/internal/message/MessageBufferPool$1;->this$0:Lorg/ros/internal/message/MessageBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic activateObject(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/ros/internal/message/MessageBufferPool$1;->activateObject(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public activateObject(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "channelBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public bridge synthetic destroyObject(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/ros/internal/message/MessageBufferPool$1;->destroyObject(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public destroyObject(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "channelBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public bridge synthetic makeObject()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/ros/internal/message/MessageBufferPool$1;->makeObject()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public makeObject()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-static {}, Lorg/ros/internal/message/MessageBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic passivateObject(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/ros/internal/message/MessageBufferPool$1;->passivateObject(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public passivateObject(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 2
    .param p1, "channelBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    .line 60
    return-void
.end method

.method public bridge synthetic validateObject(Ljava/lang/Object;)Z
    .registers 2

    .line 38
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/ros/internal/message/MessageBufferPool$1;->validateObject(Lorg/jboss/netty/buffer/ChannelBuffer;)Z

    move-result p1

    return p1
.end method

.method public validateObject(Lorg/jboss/netty/buffer/ChannelBuffer;)Z
    .registers 3
    .param p1, "channelBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 50
    const/4 v0, 0x1

    return v0
.end method
