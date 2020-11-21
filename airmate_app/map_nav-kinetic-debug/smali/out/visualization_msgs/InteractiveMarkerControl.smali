.class public interface abstract Lvisualization_msgs/InteractiveMarkerControl;
.super Ljava/lang/Object;
.source "InteractiveMarkerControl.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final BUTTON:B = 0x2t

.field public static final FIXED:B = 0x1t

.field public static final INHERIT:B = 0x0t

.field public static final MENU:B = 0x1t

.field public static final MOVE_3D:B = 0x7t

.field public static final MOVE_AXIS:B = 0x3t

.field public static final MOVE_PLANE:B = 0x4t

.field public static final MOVE_ROTATE:B = 0x6t

.field public static final MOVE_ROTATE_3D:B = 0x9t

.field public static final NONE:B = 0x0t

.field public static final ROTATE_3D:B = 0x8t

.field public static final ROTATE_AXIS:B = 0x5t

.field public static final VIEW_FACING:B = 0x2t

.field public static final _DEFINITION:Ljava/lang/String; = "# Represents a control that is to be displayed together with an interactive marker\n\n# Identifying string for this control.\n# You need to assign a unique value to this to receive feedback from the GUI\n# on what actions the user performs on this control (e.g. a button click).\nstring name\n\n\n# Defines the local coordinate frame (relative to the pose of the parent\n# interactive marker) in which is being rotated and translated.\n# Default: Identity\ngeometry_msgs/Quaternion orientation\n\n\n# Orientation mode: controls how orientation changes.\n# INHERIT: Follow orientation of interactive marker\n# FIXED: Keep orientation fixed at initial state\n# VIEW_FACING: Align y-z plane with screen (x: forward, y:left, z:up).\nuint8 INHERIT = 0 \nuint8 FIXED = 1\nuint8 VIEW_FACING = 2\n\nuint8 orientation_mode\n\n# Interaction mode for this control\n# \n# NONE: This control is only meant for visualization; no context menu.\n# MENU: Like NONE, but right-click menu is active.\n# BUTTON: Element can be left-clicked.\n# MOVE_AXIS: Translate along local x-axis.\n# MOVE_PLANE: Translate in local y-z plane.\n# ROTATE_AXIS: Rotate around local x-axis.\n# MOVE_ROTATE: Combines MOVE_PLANE and ROTATE_AXIS.\nuint8 NONE = 0 \nuint8 MENU = 1\nuint8 BUTTON = 2\nuint8 MOVE_AXIS = 3 \nuint8 MOVE_PLANE = 4\nuint8 ROTATE_AXIS = 5\nuint8 MOVE_ROTATE = 6\n# \"3D\" interaction modes work with the mouse+SHIFT+CTRL or with 3D cursors.\n# MOVE_3D: Translate freely in 3D space.\n# ROTATE_3D: Rotate freely in 3D space about the origin of parent frame.\n# MOVE_ROTATE_3D: Full 6-DOF freedom of translation and rotation about the cursor origin.\nuint8 MOVE_3D = 7\nuint8 ROTATE_3D = 8\nuint8 MOVE_ROTATE_3D = 9\n\nuint8 interaction_mode\n\n\n# If true, the contained markers will also be visible\n# when the gui is not in interactive mode.\nbool always_visible\n\n\n# Markers to be displayed as custom visual representation.\n# Leave this empty to use the default control handles.\n#\n# Note: \n# - The markers can be defined in an arbitrary coordinate frame,\n#   but will be transformed into the local frame of the interactive marker.\n# - If the header of a marker is empty, its pose will be interpreted as \n#   relative to the pose of the parent interactive marker.\nMarker[] markers\n\n\n# In VIEW_FACING mode, set this to true if you don\'t want the markers\n# to be aligned with the camera view point. The markers will show up\n# as in INHERIT mode.\nbool independent_marker_orientation\n\n\n# Short description (< 40 characters) of what this control does,\n# e.g. \"Move the robot\". \n# Default: A generic description based on the interaction mode\nstring description\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/InteractiveMarkerControl"


# virtual methods
.method public abstract getAlwaysVisible()Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIndependentMarkerOrientation()Z
.end method

.method public abstract getInteractionMode()B
.end method

.method public abstract getMarkers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvisualization_msgs/Marker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOrientation()Lgeometry_msgs/Quaternion;
.end method

.method public abstract getOrientationMode()B
.end method

.method public abstract setAlwaysVisible(Z)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setIndependentMarkerOrientation(Z)V
.end method

.method public abstract setInteractionMode(B)V
.end method

.method public abstract setMarkers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvisualization_msgs/Marker;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOrientation(Lgeometry_msgs/Quaternion;)V
.end method

.method public abstract setOrientationMode(B)V
.end method
