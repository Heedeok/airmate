.class public interface abstract Lgeometry_msgs/AccelWithCovariance;
.super Ljava/lang/Object;
.source "AccelWithCovariance.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This expresses acceleration in free space with uncertainty.\n\nAccel accel\n\n# Row-major representation of the 6x6 covariance matrix\n# The orientation parameters use a fixed-axis representation.\n# In order, the parameters are:\n# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\nfloat64[36] covariance\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/AccelWithCovariance"


# virtual methods
.method public abstract getAccel()Lgeometry_msgs/Accel;
.end method

.method public abstract getCovariance()[D
.end method

.method public abstract setAccel(Lgeometry_msgs/Accel;)V
.end method

.method public abstract setCovariance([D)V
.end method
