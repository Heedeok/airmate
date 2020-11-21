.class public interface abstract Lgeometry_msgs/Wrench;
.super Ljava/lang/Object;
.source "Wrench.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents force in free space, separated into\n# its linear and angular parts.\nVector3  force\nVector3  torque\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Wrench"


# virtual methods
.method public abstract getForce()Lgeometry_msgs/Vector3;
.end method

.method public abstract getTorque()Lgeometry_msgs/Vector3;
.end method

.method public abstract setForce(Lgeometry_msgs/Vector3;)V
.end method

.method public abstract setTorque(Lgeometry_msgs/Vector3;)V
.end method
