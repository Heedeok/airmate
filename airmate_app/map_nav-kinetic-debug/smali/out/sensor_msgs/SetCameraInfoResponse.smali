.class public interface abstract Lsensor_msgs/SetCameraInfoResponse;
.super Ljava/lang/Object;
.source "SetCameraInfoResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "bool success          # True if the call succeeded\nstring status_message # Used to give details about success"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/SetCameraInfoResponse"


# virtual methods
.method public abstract getStatusMessage()Ljava/lang/String;
.end method

.method public abstract getSuccess()Z
.end method

.method public abstract setStatusMessage(Ljava/lang/String;)V
.end method

.method public abstract setSuccess(Z)V
.end method
