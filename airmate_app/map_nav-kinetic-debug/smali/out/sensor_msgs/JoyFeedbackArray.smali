.class public interface abstract Lsensor_msgs/JoyFeedbackArray;
.super Ljava/lang/Object;
.source "JoyFeedbackArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This message publishes values for multiple feedback at once. \nJoyFeedback[] array"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/JoyFeedbackArray"


# virtual methods
.method public abstract getArray()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsensor_msgs/JoyFeedback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsensor_msgs/JoyFeedback;",
            ">;)V"
        }
    .end annotation
.end method
