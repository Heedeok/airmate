.class public interface abstract Lsensor_msgs/LaserEcho;
.super Ljava/lang/Object;
.source "LaserEcho.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message is a submessage of MultiEchoLaserScan and is not intended\n# to be used separately.\n\nfloat32[] echoes  # Multiple values of ranges or intensities.\n                  # Each array represents data from the same angle increment."

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/LaserEcho"


# virtual methods
.method public abstract getEchoes()[F
.end method

.method public abstract setEchoes([F)V
.end method
