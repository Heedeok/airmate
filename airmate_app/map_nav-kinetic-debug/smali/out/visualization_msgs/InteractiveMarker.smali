.class public interface abstract Lvisualization_msgs/InteractiveMarker;
.super Ljava/lang/Object;
.source "InteractiveMarker.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Time/frame info.\n# If header.time is set to 0, the marker will be retransformed into\n# its frame on each timestep. You will receive the pose feedback\n# in the same frame.\n# Otherwise, you might receive feedback in a different frame.\n# For rviz, this will be the current \'fixed frame\' set by the user.\nHeader header\n\n# Initial pose. Also, defines the pivot point for rotations.\ngeometry_msgs/Pose pose\n\n# Identifying string. Must be globally unique in\n# the topic that this message is sent through.\nstring name\n\n# Short description (< 40 characters).\nstring description\n\n# Scale to be used for default controls (default=1).\nfloat32 scale\n\n# All menu and submenu entries associated with this marker.\nMenuEntry[] menu_entries\n\n# List of controls displayed for this marker.\nInteractiveMarkerControl[] controls\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/InteractiveMarker"


# virtual methods
.method public abstract getControls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvisualization_msgs/InteractiveMarkerControl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getMenuEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvisualization_msgs/MenuEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPose()Lgeometry_msgs/Pose;
.end method

.method public abstract getScale()F
.end method

.method public abstract setControls(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvisualization_msgs/InteractiveMarkerControl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setMenuEntries(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvisualization_msgs/MenuEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPose(Lgeometry_msgs/Pose;)V
.end method

.method public abstract setScale(F)V
.end method
