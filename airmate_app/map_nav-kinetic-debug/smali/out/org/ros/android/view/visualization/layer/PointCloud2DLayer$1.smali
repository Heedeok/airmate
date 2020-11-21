.class Lorg/ros/android/view/visualization/layer/PointCloud2DLayer$1;
.super Ljava/lang/Object;
.source "PointCloud2DLayer.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lsensor_msgs/PointCloud2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;

    .line 83
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 83
    check-cast p1, Lsensor_msgs/PointCloud2;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer$1;->onNewMessage(Lsensor_msgs/PointCloud2;)V

    return-void
.end method

.method public onNewMessage(Lsensor_msgs/PointCloud2;)V
    .registers 4
    .param p1, "pointCloud"    # Lsensor_msgs/PointCloud2;

    .line 86
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;

    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getHeader()Lstd_msgs/Header;

    move-result-object v1

    invoke-interface {v1}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->access$002(Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    .line 87
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;

    invoke-static {v0, p1}, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->access$100(Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;Lsensor_msgs/PointCloud2;)V

    .line 88
    return-void
.end method
