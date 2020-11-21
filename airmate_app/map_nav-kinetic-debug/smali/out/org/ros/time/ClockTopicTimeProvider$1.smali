.class Lorg/ros/time/ClockTopicTimeProvider$1;
.super Ljava/lang/Object;
.source "ClockTopicTimeProvider.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/time/ClockTopicTimeProvider;-><init>(Lorg/ros/internal/node/DefaultNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lrosgraph_msgs/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/time/ClockTopicTimeProvider;


# direct methods
.method constructor <init>(Lorg/ros/time/ClockTopicTimeProvider;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/time/ClockTopicTimeProvider;

    .line 44
    iput-object p1, p0, Lorg/ros/time/ClockTopicTimeProvider$1;->this$0:Lorg/ros/time/ClockTopicTimeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 44
    check-cast p1, Lrosgraph_msgs/Clock;

    invoke-virtual {p0, p1}, Lorg/ros/time/ClockTopicTimeProvider$1;->onNewMessage(Lrosgraph_msgs/Clock;)V

    return-void
.end method

.method public onNewMessage(Lrosgraph_msgs/Clock;)V
    .registers 4
    .param p1, "message"    # Lrosgraph_msgs/Clock;

    .line 47
    iget-object v0, p0, Lorg/ros/time/ClockTopicTimeProvider$1;->this$0:Lorg/ros/time/ClockTopicTimeProvider;

    invoke-static {v0}, Lorg/ros/time/ClockTopicTimeProvider;->access$000(Lorg/ros/time/ClockTopicTimeProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 48
    :try_start_7
    iget-object v1, p0, Lorg/ros/time/ClockTopicTimeProvider$1;->this$0:Lorg/ros/time/ClockTopicTimeProvider;

    invoke-static {v1, p1}, Lorg/ros/time/ClockTopicTimeProvider;->access$102(Lorg/ros/time/ClockTopicTimeProvider;Lrosgraph_msgs/Clock;)Lrosgraph_msgs/Clock;

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
