.class public Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.super Lorg/ros/android/view/visualization/layer/DefaultLayer;
.source "SubscriberLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/android/view/visualization/layer/DefaultLayer;"
    }
.end annotation


# instance fields
.field private final messageType:Ljava/lang/String;

.field private subscriber:Lorg/ros/node/topic/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final topicName:Lorg/ros/namespace/GraphName;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p2, "messageType"    # Ljava/lang/String;

    .line 37
    .local p0, "this":Lorg/ros/android/view/visualization/layer/SubscriberLayer;, "Lorg/ros/android/view/visualization/layer/SubscriberLayer<TT;>;"
    invoke-direct {p0}, Lorg/ros/android/view/visualization/layer/DefaultLayer;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->topicName:Lorg/ros/namespace/GraphName;

    .line 39
    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->messageType:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getSubscriber()Lorg/ros/node/topic/Subscriber;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/ros/android/view/visualization/layer/SubscriberLayer;, "Lorg/ros/android/view/visualization/layer/SubscriberLayer<TT;>;"
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->subscriber:Lorg/ros/node/topic/Subscriber;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->subscriber:Lorg/ros/node/topic/Subscriber;

    return-object v0
.end method

.method public onShutdown(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "node"    # Lorg/ros/node/Node;

    .line 50
    .local p0, "this":Lorg/ros/android/view/visualization/layer/SubscriberLayer;, "Lorg/ros/android/view/visualization/layer/SubscriberLayer<TT;>;"
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->subscriber:Lorg/ros/node/topic/Subscriber;

    invoke-interface {v0}, Lorg/ros/node/topic/Subscriber;->shutdown()V

    .line 51
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/DefaultLayer;->onShutdown(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/Node;)V

    .line 52
    return-void
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 44
    .local p0, "this":Lorg/ros/android/view/visualization/layer/SubscriberLayer;, "Lorg/ros/android/view/visualization/layer/SubscriberLayer<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/DefaultLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 45
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->topicName:Lorg/ros/namespace/GraphName;

    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->messageType:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lorg/ros/node/ConnectedNode;->newSubscriber(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->subscriber:Lorg/ros/node/topic/Subscriber;

    .line 46
    return-void
.end method
