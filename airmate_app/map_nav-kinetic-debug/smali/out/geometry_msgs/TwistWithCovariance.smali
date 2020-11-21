.class public interface abstract Lgeometry_msgs/TwistWithCovariance;
.super Ljava/lang/Object;
.source "TwistWithCovariance.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This expresses velocity in free space with uncertainty.\n\nTwist twist\n\n# Row-major representation of the 6x6 covariance matrix\n# The orientation parameters use a fixed-axis representation.\n# In order, the parameters are:\n# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\nfloat64[36] covariance\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/TwistWithCovariance"


# virtual methods
.method public abstract getCovariance()[D
.end method

.method public abstract getTwist()Lgeometry_msgs/Twist;
.end method

.method public abstract setCovariance([D)V
.end method

.method public abstract setTwist(Lgeometry_msgs/Twist;)V
.end method
