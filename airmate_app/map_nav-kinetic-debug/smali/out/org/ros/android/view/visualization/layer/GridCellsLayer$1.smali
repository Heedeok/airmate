.class Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;
.super Ljava/lang/Object;
.source "GridCellsLayer.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/GridCellsLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lnav_msgs/GridCells;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

.field final synthetic val$view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    .line 86
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 86
    check-cast p1, Lnav_msgs/GridCells;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->onNewMessage(Lnav_msgs/GridCells;)V

    return-void
.end method

.method public onNewMessage(Lnav_msgs/GridCells;)V
    .registers 4
    .param p1, "data"    # Lnav_msgs/GridCells;

    .line 89
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    invoke-interface {p1}, Lnav_msgs/GridCells;->getHeader()Lstd_msgs/Header;

    move-result-object v1

    invoke-interface {v1}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->access$002(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    .line 90
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/VisualizationView;->getFrameTransformTree()Lorg/ros/rosjava_geometry/FrameTransformTree;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    invoke-static {v1}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->access$000(Lorg/ros/android/view/visualization/layer/GridCellsLayer;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->lookUp(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 91
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    invoke-static {v0}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->access$100(Lorg/ros/android/view/visualization/layer/GridCellsLayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 92
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    invoke-static {v0, p1}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->access$202(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Lnav_msgs/GridCells;)Lnav_msgs/GridCells;

    .line 93
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->access$302(Lorg/ros/android/view/visualization/layer/GridCellsLayer;Z)Z

    .line 94
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/GridCellsLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/GridCellsLayer;

    invoke-static {v0}, Lorg/ros/android/view/visualization/layer/GridCellsLayer;->access$100(Lorg/ros/android/view/visualization/layer/GridCellsLayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 97
    :cond_43
    return-void
.end method
