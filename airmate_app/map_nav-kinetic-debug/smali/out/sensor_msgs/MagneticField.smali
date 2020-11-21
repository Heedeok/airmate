.class public interface abstract Lsensor_msgs/MagneticField;
.super Ljava/lang/Object;
.source "MagneticField.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = " # Measurement of the Magnetic Field vector at a specific location.\n\n # If the covariance of the measurement is known, it should be filled in\n # (if all you know is the variance of each measurement, e.g. from the datasheet,\n #just put those along the diagonal)\n # A covariance matrix of all zeros will be interpreted as \"covariance unknown\",\n # and to use the data a covariance will have to be assumed or gotten from some\n # other source\n\n\n Header header                        # timestamp is the time the\n                                      # field was measured\n                                      # frame_id is the location and orientation\n                                      # of the field measurement\n\n geometry_msgs/Vector3 magnetic_field # x, y, and z components of the\n                                      # field vector in Tesla\n                                      # If your sensor does not output 3 axes,\n                                      # put NaNs in the components not reported.\n\n float64[9] magnetic_field_covariance # Row major about x, y, z axes\n                                      # 0 is interpreted as variance unknown"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/MagneticField"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getMagneticField()Lgeometry_msgs/Vector3;
.end method

.method public abstract getMagneticFieldCovariance()[D
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setMagneticField(Lgeometry_msgs/Vector3;)V
.end method

.method public abstract setMagneticFieldCovariance([D)V
.end method
