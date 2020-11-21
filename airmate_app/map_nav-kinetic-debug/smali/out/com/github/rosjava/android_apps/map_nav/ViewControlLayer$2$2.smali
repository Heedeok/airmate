.class Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;
.super Ljava/lang/Object;
.source "ViewControlLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;


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

    .line 139
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;D)Z
    .registers 16
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "deltaAngle"    # D

    .line 141
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-boolean v0, v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->mapViewGestureAvailable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 142
    return v1

    .line 144
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 145
    .local v2, "focusX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    .line 146
    .local v1, "focusY":F
    iget-object v3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v3}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v4

    float-to-double v5, v2

    float-to-double v7, v1

    move-wide v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->rotate(DDD)V

    .line 147
    move v6, v2

    .line 148
    .local v6, "f":F
    move v7, v1

    .line 149
    .local v7, "f2":F
    move-wide v8, p3

    .line 150
    .local v8, "d":D
    iget-object v3, p0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;->this$1:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2;->this$0:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    iget-object v3, v3, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v10, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$2$2;FFD)V

    invoke-virtual {v3, v10}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 155
    return v0
.end method
