.class public interface abstract Lgeometry_msgs/AccelWithCovarianceStamped;
.super Ljava/lang/Object;
.source "AccelWithCovarianceStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents an estimated accel with reference coordinate frame and timestamp.\nHeader header\nAccelWithCovariance accel\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/AccelWithCovarianceStamped"


# virtual methods
.method public abstract getAccel()Lgeometry_msgs/AccelWithCovariance;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract setAccel(Lgeometry_msgs/AccelWithCovariance;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method
