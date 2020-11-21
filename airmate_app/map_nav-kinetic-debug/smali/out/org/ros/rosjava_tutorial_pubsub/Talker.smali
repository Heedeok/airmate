.class public Lorg/ros/rosjava_tutorial_pubsub/Talker;
.super Lorg/ros/node/AbstractNodeMain;
.source "Talker.java"


# instance fields
.field private topic_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 35
    const-string v0, "chatter"

    iput-object v0, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker;->topic_name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "topic"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker;->topic_name:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 45
    const-string v0, "rosjava_tutorial_pubsub/talker"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 50
    iget-object v0, p0, Lorg/ros/rosjava_tutorial_pubsub/Talker;->topic_name:Ljava/lang/String;

    const-string v1, "std_msgs/String"

    .line 51
    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    .line 54
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<Lstd_msgs/String;>;"
    new-instance v1, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;

    invoke-direct {v1, p0, v0}, Lorg/ros/rosjava_tutorial_pubsub/Talker$1;-><init>(Lorg/ros/rosjava_tutorial_pubsub/Talker;Lorg/ros/node/topic/Publisher;)V

    invoke-interface {p1, v1}, Lorg/ros/node/ConnectedNode;->executeCancellableLoop(Lorg/ros/concurrent/CancellableLoop;)V

    .line 71
    return-void
.end method
