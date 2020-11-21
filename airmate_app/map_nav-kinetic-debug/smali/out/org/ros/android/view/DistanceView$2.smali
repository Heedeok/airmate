.class Lorg/ros/android/view/DistanceView$2;
.super Ljava/lang/Object;
.source "DistanceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/DistanceView;->onNewMessage(Lsensor_msgs/LaserScan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/DistanceView;

.field final synthetic val$message:Lsensor_msgs/LaserScan;


# direct methods
.method constructor <init>(Lorg/ros/android/view/DistanceView;Lsensor_msgs/LaserScan;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/view/DistanceView;

    .line 147
    iput-object p1, p0, Lorg/ros/android/view/DistanceView$2;->this$0:Lorg/ros/android/view/DistanceView;

    iput-object p2, p0, Lorg/ros/android/view/DistanceView$2;->val$message:Lsensor_msgs/LaserScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "outRanges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v1, p0, Lorg/ros/android/view/DistanceView$2;->val$message:Lsensor_msgs/LaserScan;

    invoke-interface {v1}, Lsensor_msgs/LaserScan;->getRangeMax()F

    move-result v1

    .line 154
    .local v1, "minDistToObject":F
    iget-object v2, p0, Lorg/ros/android/view/DistanceView$2;->val$message:Lsensor_msgs/LaserScan;

    invoke-interface {v2}, Lsensor_msgs/LaserScan;->getRanges()[F

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v8, v1

    .end local v1    # "minDistToObject":F
    .local v8, "minDistToObject":F
    :goto_14
    if-ge v4, v3, :cond_2a

    aget v1, v2, v4

    .line 155
    .local v1, "range":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    cmpl-float v5, v8, v1

    if-lez v5, :cond_25

    move v5, v1

    goto :goto_26

    :cond_25
    move v5, v8

    :goto_26
    move v8, v5

    .line 154
    .end local v1    # "range":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 159
    :cond_2a
    iget-object v1, p0, Lorg/ros/android/view/DistanceView$2;->this$0:Lorg/ros/android/view/DistanceView;

    invoke-static {v1}, Lorg/ros/android/view/DistanceView;->access$000(Lorg/ros/android/view/DistanceView;)Lorg/ros/android/view/DistanceRenderer;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/android/view/DistanceView$2;->val$message:Lsensor_msgs/LaserScan;

    invoke-interface {v2}, Lsensor_msgs/LaserScan;->getRangeMax()F

    move-result v3

    iget-object v2, p0, Lorg/ros/android/view/DistanceView$2;->val$message:Lsensor_msgs/LaserScan;

    invoke-interface {v2}, Lsensor_msgs/LaserScan;->getRangeMin()F

    move-result v4

    iget-object v2, p0, Lorg/ros/android/view/DistanceView$2;->val$message:Lsensor_msgs/LaserScan;

    .line 160
    invoke-interface {v2}, Lsensor_msgs/LaserScan;->getAngleMin()F

    move-result v5

    iget-object v2, p0, Lorg/ros/android/view/DistanceView$2;->val$message:Lsensor_msgs/LaserScan;

    invoke-interface {v2}, Lsensor_msgs/LaserScan;->getAngleIncrement()F

    move-result v6

    .line 159
    move-object v2, v0

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lorg/ros/android/view/DistanceRenderer;->updateRange(Ljava/util/List;FFFFF)V

    .line 162
    iget-object v1, p0, Lorg/ros/android/view/DistanceView$2;->this$0:Lorg/ros/android/view/DistanceView;

    invoke-virtual {v1}, Lorg/ros/android/view/DistanceView;->requestRender()V

    .line 163
    return-void
.end method
