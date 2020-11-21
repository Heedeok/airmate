.class public Lorg/ros/android/view/visualization/VisualizationView;
.super Landroid/opengl/GLSurfaceView;
.source "VisualizationView.java"

# interfaces
.implements Lorg/ros/node/NodeMain;


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final camera:Lorg/ros/android/view/visualization/XYOrthographicCamera;

.field private connectedNode:Lorg/ros/node/ConnectedNode;

.field private final frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ros/android/view/visualization/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;

.field private renderer:Lorg/ros/android/view/visualization/XYOrthographicRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->mutex:Ljava/lang/Object;

    .line 53
    new-instance v0, Lorg/ros/rosjava_geometry/FrameTransformTree;

    invoke-direct {v0}, Lorg/ros/rosjava_geometry/FrameTransformTree;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    .line 54
    new-instance v0, Lorg/ros/android/view/visualization/XYOrthographicCamera;

    iget-object v1, p0, Lorg/ros/android/view/visualization/VisualizationView;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    invoke-direct {v0, v1}, Lorg/ros/android/view/visualization/XYOrthographicCamera;-><init>(Lorg/ros/rosjava_geometry/FrameTransformTree;)V

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->camera:Lorg/ros/android/view/visualization/XYOrthographicCamera;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->mutex:Ljava/lang/Object;

    .line 53
    new-instance v0, Lorg/ros/rosjava_geometry/FrameTransformTree;

    invoke-direct {v0}, Lorg/ros/rosjava_geometry/FrameTransformTree;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    .line 54
    new-instance v0, Lorg/ros/android/view/visualization/XYOrthographicCamera;

    iget-object v1, p0, Lorg/ros/android/view/visualization/VisualizationView;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    invoke-direct {v0, v1}, Lorg/ros/android/view/visualization/XYOrthographicCamera;-><init>(Lorg/ros/rosjava_geometry/FrameTransformTree;)V

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->camera:Lorg/ros/android/view/visualization/XYOrthographicCamera;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/visualization/VisualizationView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/VisualizationView;

    .line 48
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/android/view/visualization/VisualizationView;)Lorg/ros/rosjava_geometry/FrameTransformTree;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/VisualizationView;

    .line 48
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    return-object v0
.end method

.method private startLayers()V
    .registers 4

    .line 164
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/Layer;

    .line 165
    .local v1, "layer":Lorg/ros/android/view/visualization/layer/Layer;
    iget-object v2, p0, Lorg/ros/android/view/visualization/VisualizationView;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v1, p0, v2}, Lorg/ros/android/view/visualization/layer/Layer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 166
    .end local v1    # "layer":Lorg/ros/android/view/visualization/layer/Layer;
    goto :goto_6

    .line 167
    :cond_18
    return-void
.end method

.method private startTransformListener()V
    .registers 5

    .line 137
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->connectedNode:Lorg/ros/node/ConnectedNode;

    const-string v1, "tf"

    const-string v2, "tf2_msgs/TFMessage"

    .line 138
    invoke-interface {v0, v1, v2}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 139
    .local v0, "tfSubscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Ltf2_msgs/TFMessage;>;"
    new-instance v1, Lorg/ros/android/view/visualization/VisualizationView$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/visualization/VisualizationView$1;-><init>(Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 149
    iget-object v1, p0, Lorg/ros/android/view/visualization/VisualizationView;->connectedNode:Lorg/ros/node/ConnectedNode;

    const-string v2, "tf_static"

    const-string v3, "tf2_msgs/TFMessage"

    .line 150
    invoke-interface {v1, v2, v3}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v1

    .line 151
    .local v1, "tfStaticSubscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Ltf2_msgs/TFMessage;>;"
    new-instance v2, Lorg/ros/android/view/visualization/VisualizationView$2;

    invoke-direct {v2, p0}, Lorg/ros/android/view/visualization/VisualizationView$2;-><init>(Lorg/ros/android/view/visualization/VisualizationView;)V

    invoke-interface {v1, v2}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 161
    return-void
.end method


# virtual methods
.method public addLayer(Lorg/ros/android/view/visualization/layer/Layer;)V
    .registers 3
    .param p1, "layer"    # Lorg/ros/android/view/visualization/layer/Layer;

    .line 170
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->camera:Lorg/ros/android/view/visualization/XYOrthographicCamera;

    return-object v0
.end method

.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 100
    const-string v0, "android_15/visualization_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getFrameTransformTree()Lorg/ros/rosjava_geometry/FrameTransformTree;
    .registers 2

    .line 122
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->frameTransformTree:Lorg/ros/rosjava_geometry/FrameTransformTree;

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/android/view/visualization/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRenderer()Lorg/ros/android/view/visualization/XYOrthographicRenderer;
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->renderer:Lorg/ros/android/view/visualization/XYOrthographicRenderer;

    return-object v0
.end method

.method public init(Lorg/ros/node/NodeMainExecutor;)V
    .registers 4
    .param p1, "nodeMainExecutor"    # Lorg/ros/node/NodeMainExecutor;

    .line 92
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/Layer;

    .line 94
    .local v1, "layer":Lorg/ros/android/view/visualization/layer/Layer;
    invoke-interface {v1, p1}, Lorg/ros/android/view/visualization/layer/Layer;->init(Lorg/ros/node/NodeMainExecutor;)V

    .line 95
    .end local v1    # "layer":Lorg/ros/android/view/visualization/layer/Layer;
    goto :goto_b

    .line 96
    :cond_1b
    return-void
.end method

.method public onCreate(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ros/android/view/visualization/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "layers":Ljava/util/List;, "Ljava/util/List<Lorg/ros/android/view/visualization/layer/Layer;>;"
    iput-object p1, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/ros/android/view/visualization/VisualizationView;->setDebugFlags(I)V

    .line 80
    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/ros/android/view/visualization/VisualizationView;->setEGLConfigChooser(IIIIII)V

    .line 81
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/VisualizationView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 82
    new-instance v0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;

    invoke-direct {v0, p0}, Lorg/ros/android/view/visualization/XYOrthographicRenderer;-><init>(Lorg/ros/android/view/visualization/VisualizationView;)V

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->renderer:Lorg/ros/android/view/visualization/XYOrthographicRenderer;

    .line 83
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->renderer:Lorg/ros/android/view/visualization/XYOrthographicRenderer;

    invoke-virtual {p0, v0}, Lorg/ros/android/view/visualization/VisualizationView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 84
    return-void
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 187
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 4
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 175
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/Layer;

    .line 176
    .local v1, "layer":Lorg/ros/android/view/visualization/layer/Layer;
    invoke-interface {v1, p0, p1}, Lorg/ros/android/view/visualization/layer/Layer;->onShutdown(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/Node;)V

    .line 177
    .end local v1    # "layer":Lorg/ros/android/view/visualization/layer/Layer;
    goto :goto_6

    .line 178
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 179
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 183
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 2
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 131
    iput-object p1, p0, Lorg/ros/android/view/visualization/VisualizationView;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 132
    invoke-direct {p0}, Lorg/ros/android/view/visualization/VisualizationView;->startTransformListener()V

    .line 133
    invoke-direct {p0}, Lorg/ros/android/view/visualization/VisualizationView;->startLayers()V

    .line 134
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 105
    iget-object v0, p0, Lorg/ros/android/view/visualization/VisualizationView;->layers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/Layer;

    .line 106
    .local v1, "layer":Lorg/ros/android/view/visualization/layer/Layer;
    invoke-interface {v1, p0, p1}, Lorg/ros/android/view/visualization/layer/Layer;->onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    .end local v1    # "layer":Lorg/ros/android/view/visualization/layer/Layer;
    :cond_1e
    goto :goto_a

    .line 110
    :cond_1f
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
