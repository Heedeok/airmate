.class public Lorg/ros/android/view/visualization/RotateGestureDetector;
.super Ljava/lang/Object;
.source "RotateGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_DELTA_ANGLE:D = 0.1


# instance fields
.field private final listener:Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;

.field private previousMotionEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->listener:Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;

    .line 39
    return-void
.end method

.method private angle(Landroid/view/MotionEvent;)D
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-double v3, v1

    .line 43
    .local v3, "deltaX":D
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 44
    .local v0, "deltaY":D
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    return-wide v5
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    .line 49
    return v1

    .line 51
    :cond_9
    iget-object v0, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->previousMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_14

    .line 52
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 53
    return v1

    .line 55
    :cond_14
    iget-object v0, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 56
    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/RotateGestureDetector;->angle(Landroid/view/MotionEvent;)D

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/ros/android/view/visualization/RotateGestureDetector;->angle(Landroid/view/MotionEvent;)D

    move-result-wide v2

    sub-double v4, v0, v2

    const-wide v6, -0x4046666666666666L    # -0.1

    const-wide v8, 0x3fb999999999999aL    # 0.1

    invoke-static/range {v4 .. v9}, Lorg/ros/math/RosMath;->clamp(DDD)D

    move-result-wide v0

    .line 57
    .local v0, "deltaAngle":D
    iget-object v2, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->listener:Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;

    iget-object v3, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->previousMotionEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, p1, v0, v1}, Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;->onRotate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;D)Z

    move-result v2

    .line 58
    .local v2, "result":Z
    iget-object v3, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->previousMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 59
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lorg/ros/android/view/visualization/RotateGestureDetector;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 60
    return v2
.end method
