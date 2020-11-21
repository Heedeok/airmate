.class public interface abstract Lgeometry_msgs/Pose2D;
.super Ljava/lang/Object;
.source "Pose2D.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Deprecated\n# Please use the full 3D pose.\n\n# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n\n# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they\'re completely valid, as you\'d have to reimplement it with different inputs and outputs. It\'s not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n\n\n# This expresses a position and orientation on a 2D manifold.\n\nfloat64 x\nfloat64 y\nfloat64 theta\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Pose2D"


# virtual methods
.method public abstract getTheta()D
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public abstract setTheta(D)V
.end method

.method public abstract setX(D)V
.end method

.method public abstract setY(D)V
.end method
