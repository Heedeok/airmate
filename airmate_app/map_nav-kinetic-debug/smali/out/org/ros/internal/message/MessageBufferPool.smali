.class public Lorg/ros/internal/message/MessageBufferPool;
.super Ljava/lang/Object;
.source "MessageBufferPool.java"


# instance fields
.field private final pool:Lorg/apache/commons/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/pool/ObjectPool<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/commons/pool/impl/StackObjectPool;

    new-instance v1, Lorg/ros/internal/message/MessageBufferPool$1;

    invoke-direct {v1, p0}, Lorg/ros/internal/message/MessageBufferPool$1;-><init>(Lorg/ros/internal/message/MessageBufferPool;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V

    iput-object v0, p0, Lorg/ros/internal/message/MessageBufferPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    .line 62
    return-void
.end method


# virtual methods
.method public acquire()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/message/MessageBufferPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0}, Lorg/apache/commons/pool/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 73
    :catch_9
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public release(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 4
    .param p1, "channelBuffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/message/MessageBufferPool;->pool:Lorg/apache/commons/pool/ObjectPool;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 89
    nop

    .line 90
    return-void

    .line 87
    :catch_7
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
