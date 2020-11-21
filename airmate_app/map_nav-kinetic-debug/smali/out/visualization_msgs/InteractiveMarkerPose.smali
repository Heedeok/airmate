.class public interface abstract Lvisualization_msgs/InteractiveMarkerPose;
.super Ljava/lang/Object;
.source "InteractiveMarkerPose.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Time/frame info.\nHeader header\n\n# Initial pose. Also, defines the pivot point for rotations.\ngeometry_msgs/Pose pose\n\n# Identifying string. Must be globally unique in\n# the topic that this message is sent through.\nstring name\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/InteractiveMarkerPose"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPose()Lgeometry_msgs/Pose;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPose(Lgeometry_msgs/Pose;)V
.end method
