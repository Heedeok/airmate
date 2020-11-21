.class public interface abstract Lworld_canvas_msgs/SetKeyword;
.super Ljava/lang/Object;
.source "SetKeyword.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Add/remove a specific keyword to the specified annotation\nuint8 ADD = 1\nuint8 DEL = 2\n\nuuid_msgs/UniqueID id\nstring keyword\nuint8 action\n---\n# What went wrong, if anything\nbool result\nstring message\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/SetKeyword"
