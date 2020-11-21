.class public interface abstract Lsensor_msgs/Joy;
.super Ljava/lang/Object;
.source "Joy.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Reports the state of a joysticks axes and buttons.\nHeader header           # timestamp in the header is the time the data is received from the joystick\nfloat32[] axes          # the axes measurements from a joystick\nint32[] buttons         # the buttons measurements from a joystick \n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/Joy"


# virtual methods
.method public abstract getAxes()[F
.end method

.method public abstract getButtons()[I
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract setAxes([F)V
.end method

.method public abstract setButtons([I)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method
