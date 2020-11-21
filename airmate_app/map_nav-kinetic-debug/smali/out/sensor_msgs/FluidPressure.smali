.class public interface abstract Lsensor_msgs/FluidPressure;
.super Ljava/lang/Object;
.source "FluidPressure.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = " # Single pressure reading.  This message is appropriate for measuring the\n # pressure inside of a fluid (air, water, etc).  This also includes\n # atmospheric or barometric pressure.\n\n # This message is not appropriate for force/pressure contact sensors.\n\n Header header           # timestamp of the measurement\n                         # frame_id is the location of the pressure sensor\n\n float64 fluid_pressure  # Absolute pressure reading in Pascals.\n\n float64 variance        # 0 is interpreted as variance unknown"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/FluidPressure"


# virtual methods
.method public abstract getFluidPressure()D
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getVariance()D
.end method

.method public abstract setFluidPressure(D)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setVariance(D)V
.end method
