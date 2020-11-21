.class public interface abstract Lsensor_msgs/Imu;
.super Ljava/lang/Object;
.source "Imu.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This is a message to hold data from an IMU (Inertial Measurement Unit)\n#\n# Accelerations should be in m/s^2 (not in g\'s), and rotational velocity should be in rad/sec\n#\n# If the covariance of the measurement is known, it should be filled in (if all you know is the \n# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)\n# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the\n# data a covariance will have to be assumed or gotten from some other source\n#\n# If you have no estimate for one of the data elements (e.g. your IMU doesn\'t produce an orientation \n# estimate), please set element 0 of the associated covariance matrix to -1\n# If you are interpreting this message, please check for a value of -1 in the first element of each \n# covariance matrix, and disregard the associated estimate.\n\nHeader header\n\ngeometry_msgs/Quaternion orientation\nfloat64[9] orientation_covariance # Row major about x, y, z axes\n\ngeometry_msgs/Vector3 angular_velocity\nfloat64[9] angular_velocity_covariance # Row major about x, y, z axes\n\ngeometry_msgs/Vector3 linear_acceleration\nfloat64[9] linear_acceleration_covariance # Row major x, y z \n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/Imu"


# virtual methods
.method public abstract getAngularVelocity()Lgeometry_msgs/Vector3;
.end method

.method public abstract getAngularVelocityCovariance()[D
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getLinearAcceleration()Lgeometry_msgs/Vector3;
.end method

.method public abstract getLinearAccelerationCovariance()[D
.end method

.method public abstract getOrientation()Lgeometry_msgs/Quaternion;
.end method

.method public abstract getOrientationCovariance()[D
.end method

.method public abstract setAngularVelocity(Lgeometry_msgs/Vector3;)V
.end method

.method public abstract setAngularVelocityCovariance([D)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setLinearAcceleration(Lgeometry_msgs/Vector3;)V
.end method

.method public abstract setLinearAccelerationCovariance([D)V
.end method

.method public abstract setOrientation(Lgeometry_msgs/Quaternion;)V
.end method

.method public abstract setOrientationCovariance([D)V
.end method
