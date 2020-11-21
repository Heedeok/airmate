.class public interface abstract Lsensor_msgs/JoyFeedback;
.super Ljava/lang/Object;
.source "JoyFeedback.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final TYPE_BUZZER:B = 0x2t

.field public static final TYPE_LED:B = 0x0t

.field public static final TYPE_RUMBLE:B = 0x1t

.field public static final _DEFINITION:Ljava/lang/String; = "# Declare of the type of feedback\nuint8 TYPE_LED    = 0\nuint8 TYPE_RUMBLE = 1\nuint8 TYPE_BUZZER = 2\n\nuint8 type\n\n# This will hold an id number for each type of each feedback.\n# Example, the first led would be id=0, the second would be id=1\nuint8 id\n\n# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is\n# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.\nfloat32 intensity\n\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/JoyFeedback"


# virtual methods
.method public abstract getId()B
.end method

.method public abstract getIntensity()F
.end method

.method public abstract getType()B
.end method

.method public abstract setId(B)V
.end method

.method public abstract setIntensity(F)V
.end method

.method public abstract setType(B)V
.end method
