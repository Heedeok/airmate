.class public Lorg/ros/android/view/visualization/shape/GoalShape;
.super Lorg/ros/android/view/visualization/shape/MetricSpacePoseShape;
.source "GoalShape.java"


# static fields
.field private static final COLOR:Lorg/ros/android/view/visualization/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string v0, "03d5c9"

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/Color;->fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/shape/GoalShape;->COLOR:Lorg/ros/android/view/visualization/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lorg/ros/android/view/visualization/shape/MetricSpacePoseShape;-><init>()V

    .line 32
    sget-object v0, Lorg/ros/android/view/visualization/shape/GoalShape;->COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-virtual {p0, v0}, Lorg/ros/android/view/visualization/shape/GoalShape;->setColor(Lorg/ros/android/view/visualization/Color;)V

    .line 33
    return-void
.end method
