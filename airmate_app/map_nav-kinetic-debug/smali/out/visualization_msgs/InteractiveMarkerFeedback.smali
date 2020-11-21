.class public interface abstract Lvisualization_msgs/InteractiveMarkerFeedback;
.super Ljava/lang/Object;
.source "InteractiveMarkerFeedback.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final BUTTON_CLICK:B = 0x3t

.field public static final KEEP_ALIVE:B = 0x0t

.field public static final MENU_SELECT:B = 0x2t

.field public static final MOUSE_DOWN:B = 0x4t

.field public static final MOUSE_UP:B = 0x5t

.field public static final POSE_UPDATE:B = 0x1t

.field public static final _DEFINITION:Ljava/lang/String; = "# Time/frame info.\nHeader header\n\n# Identifying string. Must be unique in the topic namespace.\nstring client_id\n\n# Feedback message sent back from the GUI, e.g.\n# when the status of an interactive marker was modified by the user.\n\n# Specifies which interactive marker and control this message refers to\nstring marker_name\nstring control_name\n\n# Type of the event\n# KEEP_ALIVE: sent while dragging to keep up control of the marker\n# MENU_SELECT: a menu entry has been selected\n# BUTTON_CLICK: a button control has been clicked\n# POSE_UPDATE: the pose has been changed using one of the controls\nuint8 KEEP_ALIVE = 0\nuint8 POSE_UPDATE = 1\nuint8 MENU_SELECT = 2\nuint8 BUTTON_CLICK = 3\n\nuint8 MOUSE_DOWN = 4\nuint8 MOUSE_UP = 5\n\nuint8 event_type\n\n# Current pose of the marker\n# Note: Has to be valid for all feedback types.\ngeometry_msgs/Pose pose\n\n# Contains the ID of the selected menu entry\n# Only valid for MENU_SELECT events.\nuint32 menu_entry_id\n\n# If event_type is BUTTON_CLICK, MOUSE_DOWN, or MOUSE_UP, mouse_point\n# may contain the 3 dimensional position of the event on the\n# control.  If it does, mouse_point_valid will be true.  mouse_point\n# will be relative to the frame listed in the header.\ngeometry_msgs/Point mouse_point\nbool mouse_point_valid\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/InteractiveMarkerFeedback"


# virtual methods
.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getControlName()Ljava/lang/String;
.end method

.method public abstract getEventType()B
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getMarkerName()Ljava/lang/String;
.end method

.method public abstract getMenuEntryId()I
.end method

.method public abstract getMousePoint()Lgeometry_msgs/Point;
.end method

.method public abstract getMousePointValid()Z
.end method

.method public abstract getPose()Lgeometry_msgs/Pose;
.end method

.method public abstract setClientId(Ljava/lang/String;)V
.end method

.method public abstract setControlName(Ljava/lang/String;)V
.end method

.method public abstract setEventType(B)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setMarkerName(Ljava/lang/String;)V
.end method

.method public abstract setMenuEntryId(I)V
.end method

.method public abstract setMousePoint(Lgeometry_msgs/Point;)V
.end method

.method public abstract setMousePointValid(Z)V
.end method

.method public abstract setPose(Lgeometry_msgs/Pose;)V
.end method
