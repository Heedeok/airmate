.class final Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "CameraPreviewView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/view/camera/CameraPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SurfaceHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/camera/CameraPreviewView;


# direct methods
.method private constructor <init>(Lorg/ros/android/view/camera/CameraPreviewView;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/android/view/camera/CameraPreviewView;Lorg/ros/android/view/camera/CameraPreviewView$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/android/view/camera/CameraPreviewView;
    .param p2, "x1"    # Lorg/ros/android/view/camera/CameraPreviewView$1;

    .line 64
    invoke-direct {p0, p1}, Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;-><init>(Lorg/ros/android/view/camera/CameraPreviewView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 67
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->access$000(Lorg/ros/android/view/camera/CameraPreviewView;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 73
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->access$000(Lorg/ros/android/view/camera/CameraPreviewView;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    .line 77
    :cond_11
    nop

    .line 78
    return-void

    .line 75
    :catch_13
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 82
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$SurfaceHolderCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-virtual {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->releaseCamera()V

    .line 83
    return-void
.end method
