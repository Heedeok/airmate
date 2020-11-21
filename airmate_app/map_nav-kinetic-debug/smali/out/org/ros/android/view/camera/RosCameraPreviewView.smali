.class public Lorg/ros/android/view/camera/RosCameraPreviewView;
.super Lorg/ros/android/view/camera/CameraPreviewView;
.source "RosCameraPreviewView.java"

# interfaces
.implements Lorg/ros/node/NodeMain;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lorg/ros/android/view/camera/CameraPreviewView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/ros/android/view/camera/CameraPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/ros/android/view/camera/CameraPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 47
    const-string v0, "ros_camera_preview_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 65
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 57
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 61
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 3
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 52
    new-instance v0, Lorg/ros/android/view/camera/CompressedImagePublisher;

    invoke-direct {v0, p1}, Lorg/ros/android/view/camera/CompressedImagePublisher;-><init>(Lorg/ros/node/ConnectedNode;)V

    invoke-virtual {p0, v0}, Lorg/ros/android/view/camera/RosCameraPreviewView;->setRawImageListener(Lorg/ros/android/view/camera/RawImageListener;)V

    .line 53
    return-void
.end method
