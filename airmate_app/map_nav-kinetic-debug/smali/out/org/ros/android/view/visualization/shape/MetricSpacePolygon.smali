.class public Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;
.super Lorg/ros/android/view/visualization/shape/BaseShape;
.source "MetricSpacePolygon.java"


# instance fields
.field final triangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>([FLorg/ros/android/view/visualization/Color;)V
    .registers 10
    .param p1, "vertices"    # [F
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;

    .line 42
    invoke-direct {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;-><init>()V

    .line 43
    invoke-static {p1}, Lorg/ros/android/view/visualization/Vertices;->toFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 44
    invoke-virtual {p0, p2}, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->setColor(Lorg/ros/android/view/visualization/Color;)V

    .line 46
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/ros/android/view/visualization/shape/Triangulate$Point;>;"
    array-length v1, p1

    div-int/lit8 v1, v1, 0x3

    new-array v1, v1, [Lorg/ros/android/view/visualization/shape/Triangulate$Point;

    .line 48
    .local v1, "contour":[Lorg/ros/android/view/visualization/shape/Triangulate$Point;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v1

    if-ge v3, v4, :cond_2e

    .line 49
    new-instance v4, Lorg/ros/android/view/visualization/shape/Triangulate$Point;

    mul-int/lit8 v5, v3, 0x3

    aget v5, p1, v5

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;-><init>(FF)V

    aput-object v4, v1, v3

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 51
    .end local v3    # "i":I
    :cond_2e
    invoke-static {v1, v0}, Lorg/ros/android/view/visualization/shape/Triangulate;->process([Lorg/ros/android/view/visualization/shape/Triangulate$Point;Ljava/util/List;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->triangles:Ljava/util/List;

    .line 54
    nop

    .local v2, "i":I
    :goto_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_7e

    .line 55
    const/16 v3, 0x9

    invoke-static {v3}, Lorg/ros/android/view/visualization/Vertices;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 56
    .local v3, "triangle":Ljava/nio/FloatBuffer;
    mul-int/lit8 v4, v2, 0x3

    .local v4, "j":I
    :goto_4c
    mul-int/lit8 v5, v2, 0x3

    add-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_73

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ros/android/view/visualization/shape/Triangulate$Point;

    invoke-virtual {v5}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 58
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ros/android/view/visualization/shape/Triangulate$Point;

    invoke-virtual {v5}, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 61
    .end local v4    # "j":I
    :cond_73
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    iget-object v4, p0, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->triangles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v3    # "triangle":Ljava/nio/FloatBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 64
    .end local v2    # "i":I
    :cond_7e
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .line 36
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/shape/BaseShape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public drawShape(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 68
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    .line 69
    .local v0, "translucent":Lorg/ros/android/view/visualization/Color;
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lorg/ros/android/view/visualization/Color;->setAlpha(F)V

    .line 70
    iget-object v1, p0, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->triangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    .line 71
    .local v2, "triangle":Ljava/nio/FloatBuffer;
    invoke-static {p2, v2, v0}, Lorg/ros/android/view/visualization/Vertices;->drawTriangleFan(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;)V

    .line 72
    .end local v2    # "triangle":Ljava/nio/FloatBuffer;
    goto :goto_10

    .line 73
    :cond_20
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v1

    .line 74
    .local v1, "opaque":Lorg/ros/android/view/visualization/Color;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/ros/android/view/visualization/Color;->setAlpha(F)V

    .line 75
    iget-object v2, p0, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p2, v2, v1, v3}, Lorg/ros/android/view/visualization/Vertices;->drawLineLoop(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V

    .line 76
    iget-object v2, p0, Lorg/ros/android/view/visualization/shape/MetricSpacePolygon;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p2, v2, v1, v3}, Lorg/ros/android/view/visualization/Vertices;->drawPoints(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V

    .line 77
    return-void
.end method

.method public bridge synthetic getColor()Lorg/ros/android/view/visualization/Color;
    .registers 2

    .line 36
    invoke-super {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransform()Lorg/ros/rosjava_geometry/Transform;
    .registers 2

    .line 36
    invoke-super {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setColor(Lorg/ros/android/view/visualization/Color;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Lorg/ros/android/view/visualization/shape/BaseShape;->setColor(Lorg/ros/android/view/visualization/Color;)V

    return-void
.end method

.method public bridge synthetic setTransform(Lorg/ros/rosjava_geometry/Transform;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Lorg/ros/android/view/visualization/shape/BaseShape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    return-void
.end method
