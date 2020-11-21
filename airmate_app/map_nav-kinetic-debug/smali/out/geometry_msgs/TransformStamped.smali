.class public interface abstract Lgeometry_msgs/TransformStamped;
.super Ljava/lang/Object;
.source "TransformStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This expresses a transform from coordinate frame header.frame_id\n# to the coordinate frame child_frame_id\n#\n# This message is mostly used by the \n# <a href=\"http://wiki.ros.org/tf\">tf</a> package. \n# See its documentation for more information.\n\nHeader header\nstring child_frame_id # the frame id of the child frame\nTransform transform\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/TransformStamped"


# virtual methods
.method public abstract getChildFrameId()Ljava/lang/String;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getTransform()Lgeometry_msgs/Transform;
.end method

.method public abstract setChildFrameId(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setTransform(Lgeometry_msgs/Transform;)V
.end method
