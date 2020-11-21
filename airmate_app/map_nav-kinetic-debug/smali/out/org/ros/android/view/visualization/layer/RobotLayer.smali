.class public Lorg/ros/android/view/visualization/layer/RobotLayer;
.super Lorg/ros/android/view/visualization/layer/DefaultLayer;
.source "RobotLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# instance fields
.field private final frame:Lorg/ros/namespace/GraphName;

.field private shape:Lorg/ros/android/view/visualization/shape/Shape;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "frame"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/RobotLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 2
    .param p1, "frame"    # Lorg/ros/namespace/GraphName;

    .line 36
    invoke-direct {p0}, Lorg/ros/android/view/visualization/layer/DefaultLayer;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/RobotLayer;->frame:Lorg/ros/namespace/GraphName;

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 46
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/RobotLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/RobotLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    invoke-interface {v0, p1, p2}, Lorg/ros/android/view/visualization/shape/Shape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 49
    :cond_9
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/RobotLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 53
    new-instance v0, Lorg/ros/android/view/visualization/shape/PixelSpacePoseShape;

    invoke-direct {v0}, Lorg/ros/android/view/visualization/shape/PixelSpacePoseShape;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/RobotLayer;->shape:Lorg/ros/android/view/visualization/shape/Shape;

    .line 54
    return-void
.end method
