.class public interface abstract Lgeometry_msgs/TwistWithCovarianceStamped;
.super Ljava/lang/Object;
.source "TwistWithCovarianceStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents an estimated twist with reference coordinate frame and timestamp.\nHeader header\nTwistWithCovariance twist\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/TwistWithCovarianceStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getTwist()Lgeometry_msgs/TwistWithCovariance;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setTwist(Lgeometry_msgs/TwistWithCovariance;)V
.end method
