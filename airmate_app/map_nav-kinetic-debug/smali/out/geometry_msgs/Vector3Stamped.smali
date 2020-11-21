.class public interface abstract Lgeometry_msgs/Vector3Stamped;
.super Ljava/lang/Object;
.source "Vector3Stamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents a Vector3 with reference coordinate frame and timestamp\nHeader header\nVector3 vector\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Vector3Stamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getVector()Lgeometry_msgs/Vector3;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setVector(Lgeometry_msgs/Vector3;)V
.end method
