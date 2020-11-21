.class Lorg/ros/rosjava_tutorial_pubsub/Talker$1;
.super Lorg/ros/concurrent/CancellableLoop;
.source "Talker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/rosjava_tutorial_pubsub/Talker;->onStart(Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sequenceNumber:I

.field final synthetic this$0:Lorg/ros/rosjava_tutorial_pubsub/Talker;

.field final synthetic val$publisher:Lorg/ros/node/topic/Publisher;


# direct methods
.method constructor <init>(Lorg/ros/rosjava_tutorial_pubsub/Talker;Lorg/ros/node/topic/Publisher;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/rosjava_tutorial_pubsub/Talker;

    .line 54
    iput-object p1, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->this$0:Lorg/ros/rosjava_tutorial_pubsub/Talker;

    iput-object p2, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->val$publisher:Lorg/ros/node/topic/Publisher;

    invoke-direct {p0}, Lorg/ros/concurrent/CancellableLoop;-><init>()V

    return-void
.end method


# virtual methods
.method protected loop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->val$publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v0}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstd_msgs/String;

    .line 65
    .local v0, "str":Lstd_msgs/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hello world! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->sequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lstd_msgs/String;->setData(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->val$publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1, v0}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 67
    iget v1, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->sequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->sequenceNumber:I

    .line 68
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    return-void
.end method

.method protected setup()V
    .registers 2

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;->sequenceNumber:I

    .line 60
    return-void
.end method
