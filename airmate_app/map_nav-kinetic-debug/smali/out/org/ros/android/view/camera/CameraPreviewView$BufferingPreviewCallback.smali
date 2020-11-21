.class final Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;
.super Ljava/lang/Object;
.source "CameraPreviewView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/view/camera/CameraPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferingPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/view/camera/CameraPreviewView;


# direct methods
.method private constructor <init>(Lorg/ros/android/view/camera/CameraPreviewView;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/android/view/camera/CameraPreviewView;Lorg/ros/android/view/camera/CameraPreviewView$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/ros/android/view/camera/CameraPreviewView;
    .param p2, "x1"    # Lorg/ros/android/view/camera/CameraPreviewView$1;

    .line 52
    invoke-direct {p0, p1}, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;-><init>(Lorg/ros/android/view/camera/CameraPreviewView;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 55
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->access$000(Lorg/ros/android/view/camera/CameraPreviewView;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 56
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->access$100(Lorg/ros/android/view/camera/CameraPreviewView;)[B

    move-result-object v0

    if-ne p1, v0, :cond_1a

    const/4 v1, 0x1

    nop

    :cond_1a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 57
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->access$200(Lorg/ros/android/view/camera/CameraPreviewView;)Lorg/ros/android/view/camera/RawImageListener;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 58
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->access$200(Lorg/ros/android/view/camera/CameraPreviewView;)Lorg/ros/android/view/camera/RawImageListener;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v1}, Lorg/ros/android/view/camera/CameraPreviewView;->access$300(Lorg/ros/android/view/camera/CameraPreviewView;)Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/ros/android/view/camera/RawImageListener;->onNewRawImage([BLandroid/hardware/Camera$Size;)V

    .line 60
    :cond_34
    iget-object v0, p0, Lorg/ros/android/view/camera/CameraPreviewView$BufferingPreviewCallback;->this$0:Lorg/ros/android/view/camera/CameraPreviewView;

    invoke-static {v0}, Lorg/ros/android/view/camera/CameraPreviewView;->access$100(Lorg/ros/android/view/camera/CameraPreviewView;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 61
    return-void
.end method
