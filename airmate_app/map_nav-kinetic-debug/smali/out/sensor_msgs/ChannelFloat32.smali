.class public interface abstract Lsensor_msgs/ChannelFloat32;
.super Ljava/lang/Object;
.source "ChannelFloat32.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message is used by the PointCloud message to hold optional data\n# associated with each point in the cloud. The length of the values\n# array should be the same as the length of the points array in the\n# PointCloud, and each value should be associated with the corresponding\n# point.\n\n# Channel names in existing practice include:\n#   \"u\", \"v\" - row and column (respectively) in the left stereo image.\n#              This is opposite to usual conventions but remains for\n#              historical reasons. The newer PointCloud2 message has no\n#              such problem.\n#   \"rgb\" - For point clouds produced by color stereo cameras. uint8\n#           (R,G,B) values packed into the least significant 24 bits,\n#           in order.\n#   \"intensity\" - laser or pixel intensity.\n#   \"distance\"\n\n# The channel name should give semantics of the channel (e.g.\n# \"intensity\" instead of \"value\").\nstring name\n\n# The values array should be 1-1 with the elements of the associated\n# PointCloud.\nfloat32[] values\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/ChannelFloat32"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValues()[F
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setValues([F)V
.end method
