.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewControlLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    .line 125
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 127
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-boolean v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapViewGestureAvailable:Z

    if-nez v0, :cond_a

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    neg-float v1, p3

    float-to-double v1, v1

    float-to-double v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->translate(DD)V

    .line 131
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v1, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$1;FF)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
