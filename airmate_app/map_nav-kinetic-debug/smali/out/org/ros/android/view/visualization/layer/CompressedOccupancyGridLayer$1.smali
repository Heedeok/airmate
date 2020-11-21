.class Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer$1;
.super Ljava/lang/Object;
.source "CompressedOccupancyGridLayer.java"

# interfaces
.implements Lorg/ros/message/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/message/MessageListener<",
        "Lnav_msgs/OccupancyGrid;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;

    .line 85
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 85
    check-cast p1, Lnav_msgs/OccupancyGrid;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer$1;->onNewMessage(Lnav_msgs/OccupancyGrid;)V

    return-void
.end method

.method public onNewMessage(Lnav_msgs/OccupancyGrid;)V
    .registers 3
    .param p1, "message"    # Lnav_msgs/OccupancyGrid;

    .line 88
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;

    invoke-virtual {v0, p1}, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->update(Lnav_msgs/OccupancyGrid;)V

    .line 89
    return-void
.end method
