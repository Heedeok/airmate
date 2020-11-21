.class public Lorg/ros/android/view/visualization/shape/MetricSpacePoiShape;
.super Lorg/ros/android/view/visualization/shape/TriangleFanShape;
.source "MetricSpacePoiShape.java"


# static fields
.field private static final COLOR:Lorg/ros/android/view/visualization/Color;

.field private static final VERTICES:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string v0, "377dfa"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/Color;->fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/shape/MetricSpacePoiShape;->COLOR:Lorg/ros/android/view/visualization/Color;

    .line 29
    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lorg/ros/android/view/visualization/shape/MetricSpacePoiShape;->VERTICES:[F

    return-void

    :array_14
    .array-data 4
        -0x41b33333    # -0.2f
        0x3e4ccccd    # 0.2f
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3e4ccccd    # 0.2f
        -0x41b33333    # -0.2f
        0x0
        -0x41b33333    # -0.2f
        -0x41b33333    # -0.2f
        0x0
        -0x41b33333    # -0.2f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    sget-object v0, Lorg/ros/android/view/visualization/shape/MetricSpacePoiShape;->VERTICES:[F

    sget-object v1, Lorg/ros/android/view/visualization/shape/MetricSpacePoiShape;->COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-direct {p0, v0, v1}, Lorg/ros/android/view/visualization/shape/TriangleFanShape;-><init>([FLorg/ros/android/view/visualization/Color;)V

    .line 40
    return-void
.end method
