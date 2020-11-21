.class Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;
.super Ljava/lang/Object;
.source "OutgoingMessageQueue.java"

# interfaces
.implements Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->loop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

.field final synthetic val$buffer:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method constructor <init>(Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 3
    .param p1, "this$1"    # Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    .line 72
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;"
    iput-object p1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;->this$1:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    iput-object p2, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;->val$buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/group/ChannelGroupFuture;)V
    .registers 4
    .param p1, "future"    # Lorg/jboss/netty/channel/group/ChannelGroupFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;->this$1:Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;

    iget-object v0, v0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->this$0:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-static {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->access$100(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/ros/internal/message/MessageBufferPool;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;->val$buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/MessageBufferPool;->release(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 76
    return-void
.end method
