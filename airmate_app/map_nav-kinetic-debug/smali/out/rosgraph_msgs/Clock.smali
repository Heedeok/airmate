.class public interface abstract Lrosgraph_msgs/Clock;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# roslib/Clock is used for publishing simulated time in ROS. \n# This message simply communicates the current time.\n# For more information, see http://www.ros.org/wiki/Clock\ntime clock\n"

.field public static final _TYPE:Ljava/lang/String; = "rosgraph_msgs/Clock"


# virtual methods
.method public abstract getClock()Lorg/ros/message/Time;
.end method

.method public abstract setClock(Lorg/ros/message/Time;)V
.end method
