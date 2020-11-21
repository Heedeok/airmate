.class public Lorg/ros/internal/transport/queue/LazyMessage;
.super Ljava/lang/Object;
.source "LazyMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final deserializer:Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/ros/internal/transport/queue/LazyMessage;, "Lorg/ros/internal/transport/queue/LazyMessage<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/ros/internal/transport/queue/LazyMessage;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/ros/message/MessageDeserializer;)V

    .line 58
    iput-object p1, p0, Lorg/ros/internal/transport/queue/LazyMessage;->message:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/ros/message/MessageDeserializer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/ros/internal/transport/queue/LazyMessage;, "Lorg/ros/internal/transport/queue/LazyMessage<TT;>;"
    .local p2, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/ros/internal/transport/queue/LazyMessage;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 51
    iput-object p2, p0, Lorg/ros/internal/transport/queue/LazyMessage;->deserializer:Lorg/ros/message/MessageDeserializer;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/LazyMessage;->mutex:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/ros/internal/transport/queue/LazyMessage;, "Lorg/ros/internal/transport/queue/LazyMessage<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/LazyMessage;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/transport/queue/LazyMessage;->message:Ljava/lang/Object;

    if-eqz v1, :cond_b

    .line 67
    iget-object v1, p0, Lorg/ros/internal/transport/queue/LazyMessage;->message:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 69
    :cond_b
    iget-object v1, p0, Lorg/ros/internal/transport/queue/LazyMessage;->deserializer:Lorg/ros/message/MessageDeserializer;

    iget-object v2, p0, Lorg/ros/internal/transport/queue/LazyMessage;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v2}, Lorg/ros/message/MessageDeserializer;->deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/internal/transport/queue/LazyMessage;->message:Ljava/lang/Object;

    .line 70
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    .line 71
    iget-object v0, p0, Lorg/ros/internal/transport/queue/LazyMessage;->message:Ljava/lang/Object;

    return-object v0

    .line 70
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method
