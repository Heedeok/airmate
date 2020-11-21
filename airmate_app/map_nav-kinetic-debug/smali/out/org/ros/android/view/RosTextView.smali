.class public Lorg/ros/android/view/RosTextView;
.super Landroid/widget/TextView;
.source "RosTextView.java"

# interfaces
.implements Lorg/ros/node/NodeMain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/TextView;",
        "Lorg/ros/node/NodeMain;"
    }
.end annotation


# instance fields
.field private callable:Lorg/ros/android/MessageCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/android/MessageCallable<",
            "Ljava/lang/String;",
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

    .line 40
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/RosTextView;)Lorg/ros/android/MessageCallable;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/RosTextView;

    .line 33
    iget-object v0, p0, Lorg/ros/android/view/RosTextView;->callable:Lorg/ros/android/MessageCallable;

    return-object v0
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 65
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    const-string v0, "android_gingerbread/ros_text_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 104
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 96
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 100
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 70
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    iget-object v0, p0, Lorg/ros/android/view/RosTextView;->topicName:Ljava/lang/String;

    iget-object v1, p0, Lorg/ros/android/view/RosTextView;->messageType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 71
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    new-instance v1, Lorg/ros/android/view/RosTextView$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/RosTextView$1;-><init>(Lorg/ros/android/view/RosTextView;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 92
    return-void
.end method

.method public setMessageToStringCallable(Lorg/ros/android/MessageCallable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/android/MessageCallable<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    .local p1, "callable":Lorg/ros/android/MessageCallable;, "Lorg/ros/android/MessageCallable<Ljava/lang/String;TT;>;"
    iput-object p1, p0, Lorg/ros/android/view/RosTextView;->callable:Lorg/ros/android/MessageCallable;

    .line 61
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .registers 2
    .param p1, "messageType"    # Ljava/lang/String;

    .line 56
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    iput-object p1, p0, Lorg/ros/android/view/RosTextView;->messageType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .registers 2
    .param p1, "topicName"    # Ljava/lang/String;

    .line 52
    .local p0, "this":Lorg/ros/android/view/RosTextView;, "Lorg/ros/android/view/RosTextView<TT;>;"
    iput-object p1, p0, Lorg/ros/android/view/RosTextView;->topicName:Ljava/lang/String;

    .line 53
    return-void
.end method
