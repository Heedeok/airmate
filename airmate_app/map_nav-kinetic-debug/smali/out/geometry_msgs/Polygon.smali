.class public interface abstract Lgeometry_msgs/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "#A specification of a polygon where the first and last points are assumed to be connected\nPoint32[] points\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Polygon"


# virtual methods
.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point32;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point32;",
            ">;)V"
        }
    .end annotation
.end method
