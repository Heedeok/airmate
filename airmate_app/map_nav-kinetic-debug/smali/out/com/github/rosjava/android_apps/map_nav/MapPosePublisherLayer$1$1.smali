.class Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MapPosePublisherLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    .line 136
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 138
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v1, v1, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v1

    invoke-static {v1}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v1

    iput-object v1, v0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    move-object v0, v1

    .line 139
    .local v0, "unused":Lorg/ros/rosjava_geometry/Transform;
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v1, v1, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iget-object v1, v1, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->pose:Lorg/ros/rosjava_geometry/Transform;

    invoke-interface {v1, v2}, Lorg/ros/android/view/visualization/shape/Shape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    .line 140
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v1, v1, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->mapFrame:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->setFrame(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v1, v1, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->toCameraFrame(II)Lorg/ros/rosjava_geometry/Vector3;

    move-result-object v2

    invoke-static {v2}, Lorg/ros/rosjava_geometry/Transform;->translation(Lorg/ros/rosjava_geometry/Vector3;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    iput-object v2, v1, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->fixedPose:Lorg/ros/rosjava_geometry/Transform;

    move-object v1, v2

    .line 142
    .local v1, "unused2":Lorg/ros/rosjava_geometry/Transform;
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->robotFrame:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->setFrame(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;

    iget-object v2, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->visible:Z

    move v2, v3

    .line 144
    .local v2, "unused3":Z
    return-void
.end method
