.class public interface abstract Lnav_msgs/GetPlan;
.super Ljava/lang/Object;
.source "GetPlan.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Get a plan from the current position to the goal Pose \n\n# The start pose for the plan\ngeometry_msgs/PoseStamped start\n\n# The final pose of the goal position\ngeometry_msgs/PoseStamped goal\n\n# If the goal is obstructed, how many meters the planner can \n# relax the constraint in x and y before failing. \nfloat32 tolerance\n---\nnav_msgs/Path plan\n"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/GetPlan"
