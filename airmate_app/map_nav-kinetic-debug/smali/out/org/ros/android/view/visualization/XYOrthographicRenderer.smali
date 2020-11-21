.class public Lorg/ros/android/view/visualization/XYOrthographicRenderer;
.super Ljava/lang/Object;
.source "XYOrthographicRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final BACKGROUND_COLOR:Lorg/ros/android/view/visualization/Color;


# instance fields
.field private final view:Lorg/ros/android/view/visualization/VisualizationView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Lorg/ros/android/view/visualization/Color;

    const v1, 0x3f5eb852    # 0.87f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lorg/ros/android/view/visualization/Color;-><init>(FFFF)V

    sput-object v0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->BACKGROUND_COLOR:Lorg/ros/android/view/visualization/Color;

    return-void
.end method

.method public constructor <init>(Lorg/ros/android/view/visualization/VisualizationView;)V
    .registers 2
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    .line 41
    return-void
.end method

.method private drawLayers(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 68
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/VisualizationView;->getLayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/Layer;

    .line 69
    .local v1, "layer":Lorg/ros/android/view/visualization/layer/Layer;
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 70
    instance-of v2, v1, Lorg/ros/android/view/visualization/layer/TfLayer;

    if-eqz v2, :cond_38

    .line 71
    move-object v2, v1

    check-cast v2, Lorg/ros/android/view/visualization/layer/TfLayer;

    invoke-interface {v2}, Lorg/ros/android/view/visualization/layer/TfLayer;->getFrame()Lorg/ros/namespace/GraphName;

    move-result-object v2

    .line 72
    .local v2, "layerFrame":Lorg/ros/namespace/GraphName;
    if-eqz v2, :cond_37

    iget-object v3, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v3}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->applyFrameTransform(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/namespace/GraphName;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 73
    iget-object v3, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-interface {v1, v3, p1}, Lorg/ros/android/view/visualization/layer/Layer;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 75
    .end local v2    # "layerFrame":Lorg/ros/namespace/GraphName;
    :cond_37
    goto :goto_3d

    .line 76
    :cond_38
    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-interface {v1, v2, p1}, Lorg/ros/android/view/visualization/layer/Layer;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 78
    :goto_3d
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 79
    .end local v1    # "layer":Lorg/ros/android/view/visualization/layer/Layer;
    goto :goto_a

    .line 80
    :cond_41
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 61
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 62
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 63
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 64
    invoke-direct {p0, p1}, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->drawLayers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 65
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 45
    new-instance v0, Lorg/ros/android/view/visualization/Viewport;

    invoke-direct {v0, p2, p3}, Lorg/ros/android/view/visualization/Viewport;-><init>(II)V

    .line 46
    .local v0, "viewport":Lorg/ros/android/view/visualization/Viewport;
    invoke-virtual {v0, p1}, Lorg/ros/android/view/visualization/Viewport;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 47
    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->setViewport(Lorg/ros/android/view/visualization/Viewport;)V

    .line 48
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 49
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 50
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 51
    const/16 v1, 0xb71

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 52
    sget-object v1, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->BACKGROUND_COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-virtual {v1}, Lorg/ros/android/view/visualization/Color;->getRed()F

    move-result v1

    sget-object v2, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->BACKGROUND_COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/Color;->getGreen()F

    move-result v2

    sget-object v3, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->BACKGROUND_COLOR:Lorg/ros/android/view/visualization/Color;

    .line 53
    invoke-virtual {v3}, Lorg/ros/android/view/visualization/Color;->getBlue()F

    move-result v3

    sget-object v4, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->BACKGROUND_COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/Color;->getAlpha()F

    move-result v4

    .line 52
    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 54
    iget-object v1, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v1}, Lorg/ros/android/view/visualization/VisualizationView;->getLayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/android/view/visualization/layer/Layer;

    .line 55
    .local v2, "layer":Lorg/ros/android/view/visualization/layer/Layer;
    iget-object v3, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-interface {v2, v3, p1, p2, p3}, Lorg/ros/android/view/visualization/layer/Layer;->onSurfaceChanged(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 56
    .end local v2    # "layer":Lorg/ros/android/view/visualization/layer/Layer;
    goto :goto_4c

    .line 57
    :cond_5e
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 84
    iget-object v0, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/VisualizationView;->getLayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/android/view/visualization/layer/Layer;

    .line 85
    .local v1, "layer":Lorg/ros/android/view/visualization/layer/Layer;
    iget-object v2, p0, Lorg/ros/android/view/visualization/XYOrthographicRenderer;->view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-interface {v1, v2, p1, p2}, Lorg/ros/android/view/visualization/layer/Layer;->onSurfaceCreated(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 86
    .end local v1    # "layer":Lorg/ros/android/view/visualization/layer/Layer;
    goto :goto_a

    .line 87
    :cond_1c
    return-void
.end method
