.class public interface abstract Lnav_msgs/SetMapRequest;
.super Ljava/lang/Object;
.source "SetMapRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Set a new map together with an initial pose\nnav_msgs/OccupancyGrid map\ngeometry_msgs/PoseWithCovarianceStamped initial_pose\n"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/SetMapRequest"


# virtual methods
.method public abstract getInitialPose()Lgeometry_msgs/PoseWithCovarianceStamped;
.end method

.method public abstract getMap()Lnav_msgs/OccupancyGrid;
.end method

.method public abstract setInitialPose(Lgeometry_msgs/PoseWithCovarianceStamped;)V
.end method

.method public abstract setMap(Lnav_msgs/OccupancyGrid;)V
.end method
