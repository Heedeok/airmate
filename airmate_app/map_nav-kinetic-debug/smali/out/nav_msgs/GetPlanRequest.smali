.class public interface abstract Lnav_msgs/GetPlanRequest;
.super Ljava/lang/Object;
.source "GetPlanRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Get a plan from the current position to the goal Pose \n\n# The start pose for the plan\ngeometry_msgs/PoseStamped start\n\n# The final pose of the goal position\ngeometry_msgs/PoseStamped goal\n\n# If the goal is obstructed, how many meters the planner can \n# relax the constraint in x and y before failing. \nfloat32 tolerance\n"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/GetPlanRequest"


# virtual methods
.method public abstract getGoal()Lgeometry_msgs/PoseStamped;
.end method

.method public abstract getStart()Lgeometry_msgs/PoseStamped;
.end method

.method public abstract getTolerance()F
.end method

.method public abstract setGoal(Lgeometry_msgs/PoseStamped;)V
.end method

.method public abstract setStart(Lgeometry_msgs/PoseStamped;)V
.end method

.method public abstract setTolerance(F)V
.end method
