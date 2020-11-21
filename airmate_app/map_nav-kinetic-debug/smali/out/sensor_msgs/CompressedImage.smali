.class public interface abstract Lsensor_msgs/CompressedImage;
.super Ljava/lang/Object;
.source "CompressedImage.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message contains a compressed image\n\nHeader header        # Header timestamp should be acquisition time of image\n                     # Header frame_id should be optical frame of camera\n                     # origin of frame should be optical center of camera\n                     # +x should point to the right in the image\n                     # +y should point down in the image\n                     # +z should point into to plane of the image\n\nstring format        # Specifies the format of the data\n                     #   Acceptable values:\n                     #     jpeg, png\nuint8[] data         # Compressed image buffer\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/CompressedImage"


# virtual methods
.method public abstract getData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method
