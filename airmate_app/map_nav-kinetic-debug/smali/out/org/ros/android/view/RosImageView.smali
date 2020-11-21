.class public Lorg/ros/android/view/RosImageView;
.super Landroid/widget/ImageView;
.source "RosImageView.java"

# interfaces
.implements Lorg/ros/node/NodeMain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ImageView;",
        "Lorg/ros/node/NodeMain;"
    }
.end annotation


# instance fields
.field private callable:Lorg/ros/android/MessageCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/android/MessageCallable<",
            "Landroid/graphics/Bitmap;",
            "TT;>;"
        }
    .end annotation
.end field

.field private messageType:Ljava/lang/String;

.field private topicName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 52
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/RosImageView;)Lorg/ros/android/MessageCallable;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/RosImageView;

    .line 37
    iget-object v0, p0, Lorg/ros/android/view/RosImageView;->callable:Lorg/ros/android/MessageCallable;

    return-object v0
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 69
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    const-string v0, "ros_image_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 99
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 91
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 95
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 74
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    iget-object v0, p0, Lorg/ros/android/view/RosImageView;->topicName:Ljava/lang/String;

    iget-object v1, p0, Lorg/ros/android/view/RosImageView;->messageType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 75
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    new-instance v1, Lorg/ros/android/view/RosImageView$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/RosImageView$1;-><init>(Lorg/ros/android/view/RosImageView;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 87
    return-void
.end method

.method public setMessageToBitmapCallable(Lorg/ros/android/MessageCallable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/android/MessageCallable<",
            "Landroid/graphics/Bitmap;",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    .local p1, "callable":Lorg/ros/android/MessageCallable;, "Lorg/ros/android/MessageCallable<Landroid/graphics/Bitmap;TT;>;"
    iput-object p1, p0, Lorg/ros/android/view/RosImageView;->callable:Lorg/ros/android/MessageCallable;

    .line 65
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .registers 2
    .param p1, "messageType"    # Ljava/lang/String;

    .line 60
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    iput-object p1, p0, Lorg/ros/android/view/RosImageView;->messageType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .registers 2
    .param p1, "topicName"    # Ljava/lang/String;

    .line 56
    .local p0, "this":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<TT;>;"
    iput-object p1, p0, Lorg/ros/android/view/RosImageView;->topicName:Ljava/lang/String;

    .line 57
    return-void
.end method
