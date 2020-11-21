.class public Lorg/ros/android/view/visualization/shape/PixelSpacePoseShape;
.super Lorg/ros/android/view/visualization/shape/MetricSpacePoseShape;
.source "PixelSpacePoseShape.java"


# static fields
.field private static final PIXELS_PER_METER:F = 250.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/ros/android/view/visualization/shape/MetricSpacePoseShape;-><init>()V

    return-void
.end method


# virtual methods
.method protected scale(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 38
    const/high16 v0, 0x437a0000    # 250.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p2, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 40
    invoke-virtual {p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getZoom()D

    move-result-wide v2

    double-to-float v0, v2

    div-float v0, v1, v0

    invoke-virtual {p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getZoom()D

    move-result-wide v2

    double-to-float v2, v2

    div-float v2, v1, v2

    invoke-interface {p2, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 42
    return-void
.end method
