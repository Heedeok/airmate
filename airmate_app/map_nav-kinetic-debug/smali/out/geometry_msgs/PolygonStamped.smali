.class public interface abstract Lgeometry_msgs/PolygonStamped;
.super Ljava/lang/Object;
.source "PolygonStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents a Polygon with reference coordinate frame and timestamp\nHeader header\nPolygon polygon\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/PolygonStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPolygon()Lgeometry_msgs/Polygon;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPolygon(Lgeometry_msgs/Polygon;)V
.end method
