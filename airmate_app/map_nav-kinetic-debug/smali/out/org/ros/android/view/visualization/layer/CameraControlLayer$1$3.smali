.class Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CameraControlLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    .line 126
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 13
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 129
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8

    .line 130
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_8
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 133
    .local v0, "focusX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 134
    .local v1, "focusY":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 135
    .local v2, "factor":F
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    iget-object v3, v3, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v3}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v4

    float-to-double v5, v0

    float-to-double v7, v1

    float-to-double v9, v2

    invoke-virtual/range {v4 .. v10}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->zoom(DDD)V

    .line 136
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    iget-object v3, v3, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    invoke-static {v3}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->access$100(Lorg/ros/android/view/visualization/layer/CameraControlLayer;)Lorg/ros/concurrent/ListenerGroup;

    move-result-object v3

    new-instance v4, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3$1;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3;FFF)V

    invoke-virtual {v3, v4}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 142
    const/4 v3, 0x1

    return v3
.end method
