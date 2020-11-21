.class public interface abstract Lsensor_msgs/SetCameraInfoRequest;
.super Ljava/lang/Object;
.source "SetCameraInfoRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This service requests that a camera stores the given CameraInfo \n# as that camera\'s calibration information.\n#\n# The width and height in the camera_info field should match what the\n# camera is currently outputting on its camera_info topic, and the camera\n# will assume that the region of the imager that is being referred to is\n# the region that the camera is currently capturing.\n\nsensor_msgs/CameraInfo camera_info # The camera_info to store\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/SetCameraInfoRequest"


# virtual methods
.method public abstract getCameraInfo()Lsensor_msgs/CameraInfo;
.end method

.method public abstract setCameraInfo(Lsensor_msgs/CameraInfo;)V
.end method
