.class Lorg/ros/android/view/visualization/layer/PathLayer$1;
.super Ljava/lang/Object;
.source "PathLayer.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/PathLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lnav_msgs/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/PathLayer;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/PathLayer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/PathLayer;

    .line 73
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PathLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PathLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 73
    check-cast p1, Lnav_msgs/Path;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/PathLayer$1;->onNewMessage(Lnav_msgs/Path;)V

    return-void
.end method

.method public onNewMessage(Lnav_msgs/Path;)V
    .registers 4
    .param p1, "path"    # Lnav_msgs/Path;

    .line 76
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PathLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PathLayer;

    invoke-static {v0, p1}, Lorg/ros/android/view/visualization/layer/PathLayer;->access$000(Lorg/ros/android/view/visualization/layer/PathLayer;Lnav_msgs/Path;)V

    .line 77
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PathLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PathLayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/PathLayer;->access$102(Lorg/ros/android/view/visualization/layer/PathLayer;Z)Z

    .line 78
    return-void
.end method
