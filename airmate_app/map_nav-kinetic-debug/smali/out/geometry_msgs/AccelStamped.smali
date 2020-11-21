.class public interface abstract Lgeometry_msgs/AccelStamped;
.super Ljava/lang/Object;
.source "AccelStamped.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# An accel with reference coordinate frame and timestamp\nHeader header\nAccel accel\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/AccelStamped"


# virtual methods
.method public abstract getAccel()Lgeometry_msgs/Accel;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract setAccel(Lgeometry_msgs/Accel;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method
