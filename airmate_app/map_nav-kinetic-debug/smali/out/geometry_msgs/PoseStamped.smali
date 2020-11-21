.class public interface abstract Lgeometry_msgs/PoseStamped;
.super Ljava/lang/Object;
.source "PoseStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# A Pose with reference coordinate frame and timestamp\nHeader header\nPose pose\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/PoseStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPose()Lgeometry_msgs/Pose;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPose(Lgeometry_msgs/Pose;)V
.end method
