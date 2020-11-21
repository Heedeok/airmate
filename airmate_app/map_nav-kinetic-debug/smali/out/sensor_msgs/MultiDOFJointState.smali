.class public interface abstract Lsensor_msgs/MultiDOFJointState;
.super Ljava/lang/Object;
.source "MultiDOFJointState.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Representation of state for joints with multiple degrees of freedom, \n# following the structure of JointState.\n#\n# It is assumed that a joint in a system corresponds to a transform that gets applied \n# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)\n# and those 3DOF can be expressed as a transformation matrix, and that transformation\n# matrix can be converted back to (x, y, yaw)\n#\n# Each joint is uniquely identified by its name\n# The header specifies the time at which the joint states were recorded. All the joint states\n# in one message have to be recorded at the same time.\n#\n# This message consists of a multiple arrays, one for each part of the joint state. \n# The goal is to make each of the fields optional. When e.g. your joints have no\n# wrench associated with them, you can leave the wrench array empty. \n#\n# All arrays in this message should have the same size, or be empty.\n# This is the only way to uniquely associate the joint name with the correct\n# states.\n\nHeader header\n\nstring[] joint_names\ngeometry_msgs/Transform[] transforms\ngeometry_msgs/Twist[] twist\ngeometry_msgs/Wrench[] wrench\n"

.field public static final _TYPE:Ljava/lang/String; = "sensor_msgs/MultiDOFJointState"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getJointNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransforms()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Transform;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTwist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Twist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWrench()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Wrench;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setJointNames(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTransforms(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Transform;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTwist(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Twist;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setWrench(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Wrench;",
            ">;)V"
        }
    .end annotation
.end method
