.class final Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;
.super Lorg/ros/concurrent/CancellableLoop;
.source "OutgoingMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/internal/transport/queue/OutgoingMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Writer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;


# direct methods
.method private constructor <init>(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)V
    .registers 2

    .line 58
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>.Writer;"
    iput-object p1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->this$0:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-direct {p0}, Lorg/ros/concurrent/CancellableLoop;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;Lorg/ros/internal/transport/queue/OutgoingMessageQueue$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/internal/transport/queue/OutgoingMessageQueue;
    .param p2, "x1"    # Lorg/ros/internal/transport/queue/OutgoingMessageQueue$1;

    .line 58
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>.Writer;"
    invoke-direct {p0, p1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;-><init>(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)V

    return-void
.end method


# virtual methods
.method public loop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;, "Lorg/ros/internal/transport/queue/OutgoingMessageQueue<TT;>.Writer;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->this$0:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-static {v0}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->access$000(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/ros/concurrent/CircularBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/concurrent/CircularBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "message":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->this$0:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-static {v1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->access$100(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/ros/internal/message/MessageBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/message/MessageBufferPool;->acquire()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 63
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v2, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->this$0:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-static {v2}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->access$200(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/ros/message/MessageSerializer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/ros/message/MessageSerializer;->serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 72
    iget-object v2, p0, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;->this$0:Lorg/ros/internal/transport/queue/OutgoingMessageQueue;

    invoke-static {v2}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue;->access$300(Lorg/ros/internal/transport/queue/OutgoingMessageQueue;)Lorg/jboss/netty/channel/group/ChannelGroup;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/group/ChannelGroup;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;

    move-result-object v2

    new-instance v3, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;

    invoke-direct {v3, p0, v1}, Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer$1;-><init>(Lorg/ros/internal/transport/queue/OutgoingMessageQueue$Writer;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/group/ChannelGroupFuture;->addListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V

    .line 78
    return-void
.end method
