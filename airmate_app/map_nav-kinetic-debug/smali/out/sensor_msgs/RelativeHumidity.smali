.class public interface abstract Lsensor_msgs/RelativeHumidity;
.super Ljava/lang/Object;
.source "RelativeHumidity.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = " # Single reading from a relative humidity sensor.  Defines the ratio of partial\n # pressure of water vapor to the saturated vapor pressure at a temperature.\n\n Header header             # timestamp of the measurement\n                           # frame_id is the location of the humidity sensor\n\n float64 relative_humidity # Expression of the relative humidity\n                           # from 0.0 to 1.0.\n                           # 0.0 is no partial pressure of water vapor\n                           # 1.0 represents partial pressure of saturation\n\n float64 variance          # 0 is interpreted as variance unknown"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/RelativeHumidity"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getRelativeHumidity()D
.end method

.method public abstract getVariance()D
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setRelativeHumidity(D)V
.end method

.method public abstract setVariance(D)V
.end method
