.class public interface abstract Lgeometry_msgs/Pose;
.super Ljava/lang/Object;
.source "Pose.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# A representation of pose in free space, composed of position and orientation. \nPoint position\nQuaternion orientation\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Pose"


# virtual methods
.method public abstract getOrientation()Lgeometry_msgs/Quaternion;
.end method

.method public abstract getPosition()Lgeometry_msgs/Point;
.end method

.method public abstract setOrientation(Lgeometry_msgs/Quaternion;)V
.end method

.method public abstract setPosition(Lgeometry_msgs/Point;)V
.end method
