.class Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;
.super Ljava/lang/Object;
.source "CameraControlLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/CameraControlLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

.field final synthetic val$view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    .line 72
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    iput-object p2, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 75
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    new-instance v1, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    .line 76
    invoke-virtual {v2}, Lorg/ros/android/view/visualization/VisualizationView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;

    invoke-direct {v3, p0}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;)V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 75
    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->access$002(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Landroid/support/v4/view/GestureDetectorCompat;)Landroid/support/v4/view/GestureDetectorCompat;

    .line 107
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    new-instance v1, Lorg/ros/android/view/visualization/RotateGestureDetector;

    new-instance v2, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;

    invoke-direct {v2, p0}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;)V

    invoke-direct {v1, v2}, Lorg/ros/android/view/visualization/RotateGestureDetector;-><init>(Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;)V

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->access$202(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Lorg/ros/android/view/visualization/RotateGestureDetector;)Lorg/ros/android/view/visualization/RotateGestureDetector;

    .line 124
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    .line 125
    invoke-virtual {v2}, Lorg/ros/android/view/visualization/VisualizationView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3;

    invoke-direct {v3, p0}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$3;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 124
    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->access$302(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Landroid/view/ScaleGestureDetector;)Landroid/view/ScaleGestureDetector;

    .line 145
    return-void
.end method
