.class public interface abstract Lgeometry_msgs/WrenchStamped;
.super Ljava/lang/Object;
.source "WrenchStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# A wrench with reference coordinate frame and timestamp\nHeader header\nWrench wrench\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/WrenchStamped"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getWrench()Lgeometry_msgs/Wrench;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setWrench(Lgeometry_msgs/Wrench;)V
.end method
