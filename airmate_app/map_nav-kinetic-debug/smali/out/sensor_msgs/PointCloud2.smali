.class public interface abstract Lsensor_msgs/PointCloud2;
.super Ljava/lang/Object;
.source "PointCloud2.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message holds a collection of N-dimensional points, which may\n# contain additional information such as normals, intensity, etc. The\n# point data is stored as a binary blob, its layout described by the\n# contents of the \"fields\" array.\n\n# The point cloud data may be organized 2d (image-like) or 1d\n# (unordered). Point clouds organized as 2d images may be produced by\n# camera depth sensors such as stereo or time-of-flight.\n\n# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n# points).\nHeader header\n\n# 2D structure of the point cloud. If the cloud is unordered, height is\n# 1 and width is the length of the point cloud.\nuint32 height\nuint32 width\n\n# Describes the channels and their layout in the binary data blob.\nPointField[] fields\n\nbool    is_bigendian # Is this data bigendian?\nuint32  point_step   # Length of a point in bytes\nuint32  row_step     # Length of a row in bytes\nuint8[] data         # Actual point data, size is (row_step*height)\n\nbool is_dense        # True if there are no invalid points\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/PointCloud2"


# virtual methods
.method public abstract getData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsensor_msgs/PointField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIsBigendian()Z
.end method

.method public abstract getIsDense()Z
.end method

.method public abstract getPointStep()I
.end method

.method public abstract getRowStep()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setFields(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsensor_msgs/PointField;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setIsBigendian(Z)V
.end method

.method public abstract setIsDense(Z)V
.end method

.method public abstract setPointStep(I)V
.end method

.method public abstract setRowStep(I)V
.end method

.method public abstract setWidth(I)V
.end method
