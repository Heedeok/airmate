.class public interface abstract Lactionlib_msgs/GoalStatusArray;
.super Ljava/lang/Object;
.source "GoalStatusArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Stores the statuses for goals that are currently being tracked\n# by an action server\nHeader header\nGoalStatus[] status_list\n\n"

.field public static final _TYPE:Ljava/lang/String; = "actionlib_msgs/GoalStatusArray"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getStatusList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lactionlib_msgs/GoalStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setStatusList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lactionlib_msgs/GoalStatus;",
            ">;)V"
        }
    .end annotation
.end method
