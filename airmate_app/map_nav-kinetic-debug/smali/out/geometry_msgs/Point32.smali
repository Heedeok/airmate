.class public interface abstract Lgeometry_msgs/Point32;
.super Ljava/lang/Object;
.source "Point32.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This contains the position of a point in free space(with 32 bits of precision).\n# It is recommeded to use Point wherever possible instead of Point32.  \n# \n# This recommendation is to promote interoperability.  \n#\n# This message is designed to take up less space when sending\n# lots of points at once, as in the case of a PointCloud.  \n\nfloat32 x\nfloat32 y\nfloat32 z"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Point32"


# virtual methods
.method public abstract getX()F
.end method

.method public abstract getY()F
.end method

.method public abstract getZ()F
.end method

.method public abstract setX(F)V
.end method

.method public abstract setY(F)V
.end method

.method public abstract setZ(F)V
.end method
