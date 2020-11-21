.class public interface abstract Lrocon_interaction_msgs/RequestInteraction;
.super Ljava/lang/Object;
.source "RequestInteraction.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This is used between remocons and the interactions manager to request\n# the launch of a remote application to interact with the concert.\n\n# Name of the remocon doing the requesting\nstring remocon\n\n# Hash id of the interaction being requested\nint32 hash\n\n---\n\nbool result\n\n# classifying start success/failure, see ErrorCodes.msg\nint8 error_code\n\n# human friendly string for debugging (usually upon error)\nstring message\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/RequestInteraction"
