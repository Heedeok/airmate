.class Lorg/ros/android/view/visualization/layer/LaserScanLayer$1;
.super Ljava/lang/Object;
.source "LaserScanLayer.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/LaserScanLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lsensor_msgs/LaserScan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/LaserScanLayer;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/LaserScanLayer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/LaserScanLayer;

    .line 79
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/LaserScanLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 79
    check-cast p1, Lsensor_msgs/LaserScan;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/LaserScanLayer$1;->onNewMessage(Lsensor_msgs/LaserScan;)V

    return-void
.end method

.method public onNewMessage(Lsensor_msgs/LaserScan;)V
    .registers 4
    .param p1, "laserScan"    # Lsensor_msgs/LaserScan;

    .line 82
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/LaserScanLayer;

    invoke-interface {p1}, Lsensor_msgs/LaserScan;->getHeader()Lstd_msgs/Header;

    move-result-object v1

    invoke-interface {v1}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->access$002(Lorg/ros/android/view/visualization/layer/LaserScanLayer;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    .line 83
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/LaserScanLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/LaserScanLayer;

    const/16 v1, 0xf

    invoke-static {v0, p1, v1}, Lorg/ros/android/view/visualization/layer/LaserScanLayer;->access$100(Lorg/ros/android/view/visualization/layer/LaserScanLayer;Lsensor_msgs/LaserScan;I)V

    .line 84
    return-void
.end method
