.class public interface abstract Lgeometry_msgs/Inertia;
.super Ljava/lang/Object;
.source "Inertia.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Mass [kg]\nfloat64 m\n\n# Center of mass [m]\ngeometry_msgs/Vector3 com\n\n# Inertia Tensor [kg-m^2]\n#     | ixx ixy ixz |\n# I = | ixy iyy iyz |\n#     | ixz iyz izz |\nfloat64 ixx\nfloat64 ixy\nfloat64 ixz\nfloat64 iyy\nfloat64 iyz\nfloat64 izz\n"

.field public static final _TYPE:Ljava/lang/String; = "geometry_msgs/Inertia"


# virtual methods
.method public abstract getCom()Lgeometry_msgs/Vector3;
.end method

.method public abstract getIxx()D
.end method

.method public abstract getIxy()D
.end method

.method public abstract getIxz()D
.end method

.method public abstract getIyy()D
.end method

.method public abstract getIyz()D
.end method

.method public abstract getIzz()D
.end method

.method public abstract getM()D
.end method

.method public abstract setCom(Lgeometry_msgs/Vector3;)V
.end method

.method public abstract setIxx(D)V
.end method

.method public abstract setIxy(D)V
.end method

.method public abstract setIxz(D)V
.end method

.method public abstract setIyy(D)V
.end method

.method public abstract setIyz(D)V
.end method

.method public abstract setIzz(D)V
.end method

.method public abstract setM(D)V
.end method
