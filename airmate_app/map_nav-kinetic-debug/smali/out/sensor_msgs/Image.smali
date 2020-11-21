.class public interface abstract Lsensor_msgs/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message contains an uncompressed image\n# (0, 0) is at top-left corner of image\n#\n\nHeader header        # Header timestamp should be acquisition time of image\n                     # Header frame_id should be optical frame of camera\n                     # origin of frame should be optical center of camera\n                     # +x should point to the right in the image\n                     # +y should point down in the image\n                     # +z should point into to plane of the image\n                     # If the frame_id here and the frame_id of the CameraInfo\n                     # message associated with the image conflict\n                     # the behavior is undefined\n\nuint32 height         # image height, that is, number of rows\nuint32 width          # image width, that is, number of columns\n\n# The legal values for encoding are in file src/image_encodings.cpp\n# If you want to standardize a new string format, join\n# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\nstring encoding       # Encoding of pixels -- channel meaning, ordering, size\n                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\nuint8 is_bigendian    # is this data bigendian?\nuint32 step           # Full row length in bytes\nuint8[] data          # actual matrix data, size is (step * rows)\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/Image"


# virtual methods
.method public abstract getData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIsBigendian()B
.end method

.method public abstract getStep()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setIsBigendian(B)V
.end method

.method public abstract setStep(I)V
.end method

.method public abstract setWidth(I)V
.end method
