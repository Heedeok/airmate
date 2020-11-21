.class public Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;
.super Lorg/ros/android/view/visualization/layer/CameraControlLayer;
.source "ViewControlLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;
    }
.end annotation


# instance fields
.field private cameraView:Lorg/ros/android/view/RosImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/android/view/RosImageView<",
            "Lsensor_msgs/CompressedImage;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field public final listeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/android/view/visualization/layer/CameraControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private mainLayout:Landroid/view/ViewGroup;

.field private mapView:Lorg/ros/android/view/visualization/VisualizationView;

.field public mapViewGestureAvailable:Z

.field private robotFrame:Ljava/lang/String;

.field public rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

.field private sideLayout:Landroid/view/ViewGroup;

.field public translateGestureDetector:Landroid/view/GestureDetector;

.field private viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

.field public zoomGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lorg/ros/android/view/RosImageView;Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;)V
    .registers 11
    .param p1, "context2"    # Landroid/content/Context;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "mapView2"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p5, "mainLayout2"    # Landroid/view/ViewGroup;
    .param p6, "sideLayout2"    # Landroid/view/ViewGroup;
    .param p7, "params"    # Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lorg/ros/android/view/RosImageView<",
            "Lsensor_msgs/CompressedImage;",
            ">;",
            "Lorg/ros/android/view/visualization/VisualizationView;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;",
            ")V"
        }
    .end annotation

    .line 47
    .local p3, "cameraView2":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<Lsensor_msgs/CompressedImage;>;"
    invoke-direct {p0}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;-><init>()V

    .line 38
    sget-object v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    .line 48
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->context:Landroid/content/Context;

    .line 49
    new-instance v0, Lorg/ros/concurrent/ListenerGroup;

    invoke-direct {v0, p2}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    .line 50
    iput-object p3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->cameraView:Lorg/ros/android/view/RosImageView;

    .line 51
    iput-object p4, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    .line 52
    iput-object p5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mainLayout:Landroid/view/ViewGroup;

    .line 53
    iput-object p6, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->sideLayout:Landroid/view/ViewGroup;

    .line 54
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->cameraView:Lorg/ros/android/view/RosImageView;

    new-instance v1, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$1;

    invoke-direct {v1, p0}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ros/android/view/visualization/VisualizationView;->setClickable(Z)V

    .line 60
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->cameraView:Lorg/ros/android/view/RosImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosImageView;->setClickable(Z)V

    .line 61
    const-string v0, "robot_frame"

    const v2, 0x7f0c0032

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p7, v0, v2}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->robotFrame:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapViewGestureAvailable:Z

    .line 63
    return-void
.end method


# virtual methods
.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 123
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-virtual {p1, v0}, Lorg/ros/android/view/visualization/VisualizationView;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 67
    iput-boolean v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapViewGestureAvailable:Z

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    sget-object v2, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    if-ne v0, v2, :cond_13

    .line 70
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->swapViews()V

    .line 71
    return v1

    .line 72
    :cond_13
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->translateGestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->zoomGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_21

    goto :goto_3c

    .line 75
    :cond_21
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->translateGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

    invoke-virtual {v0, p2}, Lorg/ros/android/view/visualization/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->zoomGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3b

    .line 78
    :cond_3a
    return v2

    .line 76
    :cond_3b
    :goto_3b
    return v1

    .line 73
    :cond_3c
    :goto_3c
    return v2
.end method

.method public swapViews()V
    .registers 11

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "z2":Z
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    sget-object v2, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    if-ne v1, v2, :cond_c

    .line 89
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->sideLayout:Landroid/view/ViewGroup;

    .line 90
    .local v1, "mapViewParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mainLayout:Landroid/view/ViewGroup;

    goto :goto_10

    .line 92
    .end local v1    # "mapViewParent":Landroid/view/ViewGroup;
    :cond_c
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mainLayout:Landroid/view/ViewGroup;

    .line 93
    .restart local v1    # "mapViewParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->sideLayout:Landroid/view/ViewGroup;

    .line 95
    .local v2, "cameraViewParent":Landroid/view/ViewGroup;
    :goto_10
    iget-object v3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 96
    .local v3, "mapViewIndex":I
    iget-object v4, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->cameraView:Lorg/ros/android/view/RosImageView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 97
    .local v4, "cameraViewIndex":I
    iget-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    iget-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->cameraView:Lorg/ros/android/view/RosImageView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    iget-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->cameraView:Lorg/ros/android/view/RosImageView;

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 100
    iget-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 101
    iget-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    sget-object v6, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_3e

    .line 102
    sget-object v5, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->MAP:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    iput-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    .line 103
    iput-boolean v7, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapViewGestureAvailable:Z

    goto :goto_42

    .line 105
    :cond_3e
    sget-object v5, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    iput-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    .line 107
    :goto_42
    iget-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v5}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v5

    iget-object v6, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->robotFrame:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->jumpToFrame(Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    .line 109
    .local v5, "visualizationView":Lorg/ros/android/view/visualization/VisualizationView;
    iget-object v6, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    sget-object v8, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->MAP:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    if-eq v6, v8, :cond_57

    .line 110
    const/4 v7, 0x1

    goto :goto_58

    .line 112
    :cond_57
    nop

    .local v7, "z":Z
    :goto_58
    move v6, v7

    .line 114
    .end local v7    # "z":Z
    .local v6, "z":Z
    invoke-virtual {v5, v6}, Lorg/ros/android/view/visualization/VisualizationView;->setClickable(Z)V

    .line 115
    iget-object v7, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->cameraView:Lorg/ros/android/view/RosImageView;

    .line 116
    .local v7, "rosImageView":Lorg/ros/android/view/RosImageView;, "Lorg/ros/android/view/RosImageView<Lsensor_msgs/CompressedImage;>;"
    iget-object v8, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->viewMode:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    sget-object v9, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    if-ne v8, v9, :cond_65

    .line 117
    const/4 v0, 0x0

    .line 119
    :cond_65
    invoke-virtual {v7, v0}, Lorg/ros/android/view/RosImageView;->setClickable(Z)V

    .line 120
    return-void
.end method
