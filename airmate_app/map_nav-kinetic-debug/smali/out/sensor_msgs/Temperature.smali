.class public interface abstract Lsensor_msgs/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = " # Single temperature reading.\n\n Header header           # timestamp is the time the temperature was measured\n                         # frame_id is the location of the temperature reading\n\n float64 temperature     # Measurement of the Temperature in Degrees Celsius\n\n float64 variance        # 0 is interpreted as variance unknown"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/Temperature"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getTemperature()D
.end method

.method public abstract getVariance()D
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setTemperature(D)V
.end method

.method public abstract setVariance(D)V
.end method
