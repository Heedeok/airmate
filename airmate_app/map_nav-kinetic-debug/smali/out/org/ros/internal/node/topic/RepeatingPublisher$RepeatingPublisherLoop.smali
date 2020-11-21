.class final Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;
.super Lorg/ros/concurrent/CancellableLoop;
.source "RepeatingPublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/internal/node/topic/RepeatingPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RepeatingPublisherLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/topic/RepeatingPublisher;


# direct methods
.method private constructor <init>(Lorg/ros/internal/node/topic/RepeatingPublisher;)V
    .registers 2

    .line 48
    .local p0, "this":Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;, "Lorg/ros/internal/node/topic/RepeatingPublisher<TMessageType;>.RepeatingPublisherLoop;"
    iput-object p1, p0, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;->this$0:Lorg/ros/internal/node/topic/RepeatingPublisher;

    invoke-direct {p0}, Lorg/ros/concurrent/CancellableLoop;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/internal/node/topic/RepeatingPublisher;Lorg/ros/internal/node/topic/RepeatingPublisher$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/internal/node/topic/RepeatingPublisher;
    .param p2, "x1"    # Lorg/ros/internal/node/topic/RepeatingPublisher$1;

    .line 48
    .local p0, "this":Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;, "Lorg/ros/internal/node/topic/RepeatingPublisher<TMessageType;>.RepeatingPublisherLoop;"
    invoke-direct {p0, p1}, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;-><init>(Lorg/ros/internal/node/topic/RepeatingPublisher;)V

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

    .line 51
    .local p0, "this":Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;, "Lorg/ros/internal/node/topic/RepeatingPublisher<TMessageType;>.RepeatingPublisherLoop;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;->this$0:Lorg/ros/internal/node/topic/RepeatingPublisher;

    invoke-static {v0}, Lorg/ros/internal/node/topic/RepeatingPublisher;->access$100(Lorg/ros/internal/node/topic/RepeatingPublisher;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;->this$0:Lorg/ros/internal/node/topic/RepeatingPublisher;

    invoke-static {v1}, Lorg/ros/internal/node/topic/RepeatingPublisher;->access$000(Lorg/ros/internal/node/topic/RepeatingPublisher;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lorg/ros/internal/node/topic/RepeatingPublisher$RepeatingPublisherLoop;->this$0:Lorg/ros/internal/node/topic/RepeatingPublisher;

    invoke-static {v0}, Lorg/ros/internal/node/topic/RepeatingPublisher;->access$200(Lorg/ros/internal/node/topic/RepeatingPublisher;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-long v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 56
    return-void
.end method
