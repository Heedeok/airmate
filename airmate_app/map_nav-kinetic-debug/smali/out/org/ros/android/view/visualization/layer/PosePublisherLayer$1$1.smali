.class Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PosePublisherLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    .line 105
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 108
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    iget-object v0, v0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    iget-object v1, v1, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    .line 109
    invoke-virtual {v1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 109
    invoke-virtual {v1, v2, v3}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->access$102(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    .line 111
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    iget-object v0, v0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    invoke-static {v0}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->access$200(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;)Lorg/ros/android/view/visualization/shape/Shape;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    iget-object v1, v1, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    invoke-static {v1}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->access$100(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/android/view/visualization/shape/Shape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    .line 112
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;

    iget-object v0, v0, Lorg/ros/android/view/visualization/layer/PosePublisherLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/PosePublisherLayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/PosePublisherLayer;->access$302(Lorg/ros/android/view/visualization/layer/PosePublisherLayer;Z)Z

    .line 113
    return-void
.end method
