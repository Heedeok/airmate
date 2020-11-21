.class public Lorg/ros/rosjava_tutorial_pubsub/Listener;
.super Lorg/ros/node/AbstractNodeMain;
.source "Listener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 36
    const-string v0, "rosjava_tutorial_pubsub/listener"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 41
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 42
    .local v0, "log":Lorg/apache/commons/logging/Log;
    const-string v1, "chatter"

    const-string v2, "std_msgs/String"

    invoke-interface {p1, v1, v2}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v1

    .line 43
    .local v1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Lstd_msgs/String;>;"
    new-instance v2, Lorg/ros/rosjava_tutorial_pubsub/Listener$1;

    invoke-direct {v2, p0, v0}, Lorg/ros/rosjava_tutorial_pubsub/Listener$1;-><init>(Lorg/ros/rosjava_tutorial_pubsub/Listener;Lorg/apache/commons/logging/Log;)V

    invoke-interface {v1, v2}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 49
    return-void
.end method
