.class public interface abstract Lgeometry_msgs/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents a vector in free space. \n# It is only meant to represent a direction. Therefore, it does not\n# make sense to apply a translation to it (e.g., when applying a \n# generic rigid transformation to a Vector3, tf2 will only apply the\n# rotation). If you want your data to be translatable too, use the\n# geometry_msgs/Point message instead.\n\nfloat64 x\nfloat64 y\nfloat64 z"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Vector3"


# virtual methods
.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public abstract getZ()D
.end method

.method public abstract setX(D)V
.end method

.method public abstract setY(D)V
.end method

.method public abstract setZ(D)V
.end method
