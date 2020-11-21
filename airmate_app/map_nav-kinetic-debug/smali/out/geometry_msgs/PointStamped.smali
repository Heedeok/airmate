.class public interface abstract Lgeometry_msgs/PointStamped;
.super Ljava/lang/Object;
.source "PointStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents a Point with reference coordinate frame and timestamp\nHeader header\nPoint point\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/PointStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPoint()Lgeometry_msgs/Point;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPoint(Lgeometry_msgs/Point;)V
.end method
