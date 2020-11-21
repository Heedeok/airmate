.class public interface abstract Lsensor_msgs/SetCameraInfo;
.super Ljava/lang/Object;
.source "SetCameraInfo.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This service requests that a camera stores the given CameraInfo \n# as that camera\'s calibration information.\n#\n# The width and height in the camera_info field should match what the\n# camera is currently outputting on its camera_info topic, and the camera\n# will assume that the region of the imager that is being referred to is\n# the region that the camera is currently capturing.\n\nsensor_msgs/CameraInfo camera_info # The camera_info to store\n---\nbool success          # True if the call succeeded\nstring status_message # Used to give details about success\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/SetCameraInfo"
