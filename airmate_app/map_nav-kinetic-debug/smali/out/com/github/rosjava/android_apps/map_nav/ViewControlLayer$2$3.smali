.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
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

    .line 158
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 13
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 160
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-boolean v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapViewGestureAvailable:Z

    if-nez v0, :cond_f

    goto :goto_39

    .line 163
    :cond_f
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 164
    .local v0, "focusX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 165
    .local v1, "focusY":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 166
    .local v2, "factor":F
    iget-object v3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v3}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v4

    float-to-double v5, v0

    float-to-double v7, v1

    float-to-double v9, v2

    invoke-virtual/range {v4 .. v10}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->zoom(DDD)V

    .line 167
    iget-object v3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v4, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$3;FFF)V

    invoke-virtual {v3, v4}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 172
    const/4 v3, 0x1

    return v3

    .line 161
    .end local v0    # "focusX":F
    .end local v1    # "focusY":F
    .end local v2    # "factor":F
    :cond_39
    :goto_39
    const/4 v0, 0x0

    return v0
.end method
