.class public interface abstract Lrocon_app_manager_msgs/StartRapp;
.super Ljava/lang/Object;
.source "StartRapp.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Name of the rapp to launch\nstring name\nrocon_std_msgs/Remapping[] remappings\n\n# Key value pairs representing rapp parameters\nrocon_std_msgs/KeyValue[] parameters\n---\nbool started\n\n# classifying start success/failure, see ErrorCodes.msg\nint32 error_code\n\n# human friendly string for debugging (usually upon error)\nstring message\n\n# Namespace where the rapp interface can be found\nstring application_namespace\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/StartRapp"
