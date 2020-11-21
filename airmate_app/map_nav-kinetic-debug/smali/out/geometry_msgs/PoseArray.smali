.class public interface abstract Lgeometry_msgs/PoseArray;
.super Ljava/lang/Object;
.source "PoseArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# An array of poses with a header for global reference.\n\nHeader header\n\nPose[] poses\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/PoseArray"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPoses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Pose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPoses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Pose;",
            ">;)V"
        }
    .end annotation
.end method
