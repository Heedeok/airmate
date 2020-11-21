.class public Lorg/ros/android/view/visualization/layer/CameraControlLayer;
.super Lorg/ros/android/view/visualization/layer/DefaultLayer;
.source "CameraControlLayer.java"


# instance fields
.field private listeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/android/view/visualization/layer/CameraControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

.field private translateGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private zoomGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/ros/android/view/visualization/layer/DefaultLayer;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Landroid/support/v4/view/GestureDetectorCompat;)Landroid/support/v4/view/GestureDetectorCompat;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer;
    .param p1, "x1"    # Landroid/support/v4/view/GestureDetectorCompat;

    .line 39
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->translateGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/ros/android/view/visualization/layer/CameraControlLayer;)Lorg/ros/concurrent/ListenerGroup;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    .line 39
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    return-object v0
.end method

.method static synthetic access$202(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Lorg/ros/android/view/visualization/RotateGestureDetector;)Lorg/ros/android/view/visualization/RotateGestureDetector;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer;
    .param p1, "x1"    # Lorg/ros/android/view/visualization/RotateGestureDetector;

    .line 39
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

    return-object p1
.end method

.method static synthetic access$302(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Landroid/view/ScaleGestureDetector;)Landroid/view/ScaleGestureDetector;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer;
    .param p1, "x1"    # Landroid/view/ScaleGestureDetector;

    .line 39
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->zoomGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p1
.end method


# virtual methods
.method public addListener(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/android/view/visualization/layer/CameraControlListener;

    .line 53
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 55
    return-void
.end method

.method public init(Lorg/ros/node/NodeMainExecutor;)V
    .registers 4
    .param p1, "nodeMainExecutor"    # Lorg/ros/node/NodeMainExecutor;

    .line 48
    new-instance v0, Lorg/ros/concurrent/ListenerGroup;

    .line 49
    invoke-interface {p1}, Lorg/ros/node/NodeMainExecutor;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    .line 50
    return-void
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 72
    new-instance v0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    invoke-direct {v0, p0, p1}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer;Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-virtual {p1, v0}, Lorg/ros/android/view/visualization/VisualizationView;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 59
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->translateGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->zoomGestureDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_e

    goto :goto_30

    .line 63
    :cond_e
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->translateGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    .local v0, "translateGestureHandled":Z
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->rotateGestureDetector:Lorg/ros/android/view/visualization/RotateGestureDetector;

    invoke-virtual {v2, p2}, Lorg/ros/android/view/visualization/RotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 65
    .local v2, "rotateGestureHandled":Z
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->zoomGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 66
    .local v3, "zoomGestureHandled":Z
    if-nez v0, :cond_2e

    if-nez v2, :cond_2e

    if-nez v3, :cond_2e

    .line 67
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/DefaultLayer;->onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2e

    :cond_2d
    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    .line 66
    :goto_2f
    return v1

    .line 61
    .end local v0    # "translateGestureHandled":Z
    .end local v2    # "rotateGestureHandled":Z
    .end local v3    # "zoomGestureHandled":Z
    :cond_30
    :goto_30
    return v1
.end method
