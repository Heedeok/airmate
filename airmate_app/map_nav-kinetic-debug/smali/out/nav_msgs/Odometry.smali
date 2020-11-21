.class public interface abstract Lnav_msgs/Odometry;
.super Ljava/lang/Object;
.source "Odometry.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents an estimate of a position and velocity in free space.  \n# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n# The twist in this message should be specified in the coordinate frame given by the child_frame_id\nHeader header\nstring child_frame_id\ngeometry_msgs/PoseWithCovariance pose\ngeometry_msgs/TwistWithCovariance twist\n"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/Odometry"


# virtual methods
.method public abstract getChildFrameId()Ljava/lang/String;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPose()Lgeometry_msgs/PoseWithCovariance;
.end method

.method public abstract getTwist()Lgeometry_msgs/TwistWithCovariance;
.end method

.method public abstract setChildFrameId(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPose(Lgeometry_msgs/PoseWithCovariance;)V
.end method

.method public abstract setTwist(Lgeometry_msgs/TwistWithCovariance;)V
.end method
