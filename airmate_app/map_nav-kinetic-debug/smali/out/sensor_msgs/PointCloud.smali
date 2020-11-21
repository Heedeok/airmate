.class public interface abstract Lsensor_msgs/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message holds a collection of 3d points, plus optional additional\n# information about each point.\n\n# Time of sensor data acquisition, coordinate frame ID.\nHeader header\n\n# Array of 3d points. Each Point32 should be interpreted as a 3d point\n# in the frame given in the header.\ngeometry_msgs/Point32[] points\n\n# Each channel should have the same number of elements as points array,\n# and the data in each channel should correspond 1:1 with each point.\n# Channel names in common practice are listed in ChannelFloat32.msg.\nChannelFloat32[] channels\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/PointCloud"


# virtual methods
.method public abstract getChannels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsensor_msgs/ChannelFloat32;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point32;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setChannels(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsensor_msgs/ChannelFloat32;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point32;",
            ">;)V"
        }
    .end annotation
.end method
