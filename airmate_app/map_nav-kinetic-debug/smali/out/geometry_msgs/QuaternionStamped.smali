.class public interface abstract Lgeometry_msgs/QuaternionStamped;
.super Ljava/lang/Object;
.source "QuaternionStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents an orientation with reference coordinate frame and timestamp.\n\nHeader header\nQuaternion quaternion\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/QuaternionStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getQuaternion()Lgeometry_msgs/Quaternion;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setQuaternion(Lgeometry_msgs/Quaternion;)V
.end method
