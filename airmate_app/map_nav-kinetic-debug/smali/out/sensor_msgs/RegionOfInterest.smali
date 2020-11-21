.class public interface abstract Lsensor_msgs/RegionOfInterest;
.super Ljava/lang/Object;
.source "RegionOfInterest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message is used to specify a region of interest within an image.\n#\n# When used to specify the ROI setting of the camera when the image was\n# taken, the height and width fields should either match the height and\n# width fields for the associated image; or height = width = 0\n# indicates that the full resolution image was captured.\n\nuint32 x_offset  # Leftmost pixel of the ROI\n                 # (0 if the ROI includes the left edge of the image)\nuint32 y_offset  # Topmost pixel of the ROI\n                 # (0 if the ROI includes the top edge of the image)\nuint32 height    # Height of ROI\nuint32 width     # Width of ROI\n\n# True if a distinct rectified ROI should be calculated from the \"raw\"\n# ROI in this message. Typically this should be False if the full image\n# is captured (ROI not used), and True if a subwindow is captured (ROI\n# used).\nbool do_rectify\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/RegionOfInterest"


# virtual methods
.method public abstract getDoRectify()Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract getXOffset()I
.end method

.method public abstract getYOffset()I
.end method

.method public abstract setDoRectify(Z)V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setWidth(I)V
.end method

.method public abstract setXOffset(I)V
.end method

.method public abstract setYOffset(I)V
.end method
