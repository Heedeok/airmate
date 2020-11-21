.class public interface abstract Lgeometry_msgs/PoseWithCovarianceStamped;
.super Ljava/lang/Object;
.source "PoseWithCovarianceStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This expresses an estimated pose with a reference coordinate frame and timestamp\n\nHeader header\nPoseWithCovariance pose\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/PoseWithCovarianceStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPose()Lgeometry_msgs/PoseWithCovariance;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPose(Lgeometry_msgs/PoseWithCovariance;)V
.end method
