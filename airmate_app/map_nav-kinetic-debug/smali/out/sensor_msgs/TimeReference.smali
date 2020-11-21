.class public interface abstract Lsensor_msgs/TimeReference;
.super Ljava/lang/Object;
.source "TimeReference.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Measurement from an external time source not actively synchronized with the system clock.\n\nHeader header    # stamp is system time for which measurement was valid\n                 # frame_id is not used \n\ntime   time_ref  # corresponding time from this external source\nstring source    # (optional) name of time source\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/TimeReference"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getTimeRef()Lorg/ros/message/Time;
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setSource(Ljava/lang/String;)V
.end method

.method public abstract setTimeRef(Lorg/ros/message/Time;)V
.end method
