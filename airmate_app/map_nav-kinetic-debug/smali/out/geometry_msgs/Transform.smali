.class public interface abstract Lgeometry_msgs/Transform;
.super Ljava/lang/Object;
.source "Transform.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents the transform between two coordinate frames in free space.\n\nVector3 translation\nQuaternion rotation\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Transform"


# virtual methods
.method public abstract getRotation()Lgeometry_msgs/Quaternion;
.end method

.method public abstract getTranslation()Lgeometry_msgs/Vector3;
.end method

.method public abstract setRotation(Lgeometry_msgs/Quaternion;)V
.end method

.method public abstract setTranslation(Lgeometry_msgs/Vector3;)V
.end method
