.class public interface abstract Lsensor_msgs/LaserScan;
.super Ljava/lang/Object;
.source "LaserScan.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Single scan from a planar laser range-finder\n#\n# If you have another ranging device with different behavior (e.g. a sonar\n# array), please find or create a different message, since applications\n# will make fairly laser-specific assumptions about this data\n\nHeader header            # timestamp in the header is the acquisition time of \n                         # the first ray in the scan.\n                         #\n                         # in frame frame_id, angles are measured around \n                         # the positive Z axis (counterclockwise, if Z is up)\n                         # with zero angle being forward along the x axis\n                         \nfloat32 angle_min        # start angle of the scan [rad]\nfloat32 angle_max        # end angle of the scan [rad]\nfloat32 angle_increment  # angular distance between measurements [rad]\n\nfloat32 time_increment   # time between measurements [seconds] - if your scanner\n                         # is moving, this will be used in interpolating position\n                         # of 3d points\nfloat32 scan_time        # time between scans [seconds]\n\nfloat32 range_min        # minimum range value [m]\nfloat32 range_max        # maximum range value [m]\n\nfloat32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)\nfloat32[] intensities    # intensity data [device-specific units].  If your\n                         # device does not provide intensities, please leave\n                         # the array empty.\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/LaserScan"


# virtual methods
.method public abstract getAngleIncrement()F
.end method

.method public abstract getAngleMax()F
.end method

.method public abstract getAngleMin()F
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getIntensities()[F
.end method

.method public abstract getRangeMax()F
.end method

.method public abstract getRangeMin()F
.end method

.method public abstract getRanges()[F
.end method

.method public abstract getScanTime()F
.end method

.method public abstract getTimeIncrement()F
.end method

.method public abstract setAngleIncrement(F)V
.end method

.method public abstract setAngleMax(F)V
.end method

.method public abstract setAngleMin(F)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setIntensities([F)V
.end method

.method public abstract setRangeMax(F)V
.end method

.method public abstract setRangeMin(F)V
.end method

.method public abstract setRanges([F)V
.end method

.method public abstract setScanTime(F)V
.end method

.method public abstract setTimeIncrement(F)V
.end method
