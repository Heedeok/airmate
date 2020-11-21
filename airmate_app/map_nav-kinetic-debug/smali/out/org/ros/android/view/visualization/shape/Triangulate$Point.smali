.class public Lorg/ros/android/view/visualization/shape/Triangulate$Point;
.super Ljava/lang/Object;
.source "Triangulate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/view/visualization/shape/Triangulate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x:F

    .line 41
    iput p2, p0, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y:F

    .line 42
    return-void
.end method


# virtual methods
.method public x()F
    .registers 2

    .line 45
    iget v0, p0, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->x:F

    return v0
.end method

.method public y()F
    .registers 2

    .line 49
    iget v0, p0, Lorg/ros/android/view/visualization/shape/Triangulate$Point;->y:F

    return v0
.end method
