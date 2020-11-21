.class public interface abstract Lgeometry_msgs/TwistStamped;
.super Ljava/lang/Object;
.source "TwistStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# A twist with reference coordinate frame and timestamp\nHeader header\nTwist twist\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/TwistStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getTwist()Lgeometry_msgs/Twist;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setTwist(Lgeometry_msgs/Twist;)V
.end method
