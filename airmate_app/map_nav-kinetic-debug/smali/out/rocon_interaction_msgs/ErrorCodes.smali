.class public interface abstract Lrocon_interaction_msgs/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ALREADY_PAIRING:B = 0x20t

.field public static final INTERACTION_QUOTA_REACHED:B = 0x15t

.field public static final INTERACTION_UNAVAILABLE:B = 0x14t

.field public static final MSG_ALREADY_PAIRING:Ljava/lang/String; = "\"Already pairing, cannot start another pairing.\""

.field public static final MSG_INTERACTION_QUOTA_REACHED:Ljava/lang/String; = "\"More connections of this type not permitted.\""

.field public static final MSG_INTERACTION_UNAVAILABLE:Ljava/lang/String; = "\"This role-app pair is not available for use.\""

.field public static final MSG_START_PAIRED_RAPP_FAILED:Ljava/lang/String; = "\"Failed to start the paired rapp.\""

.field public static final START_PAIRED_RAPP_FAILED:B = 0x1ft

.field public static final SUCCESS:B = 0x0t

.field public static final _DEFINITION:Ljava/lang/String; = "# Error types for interactions\n\nint8 SUCCESS = 0\n\n# Interaction errors\nint8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available\nint8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached \n\n# Pairing errors\nint8 START_PAIRED_RAPP_FAILED = 31   # If a paired rapp fails to start.\nint8 ALREADY_PAIRING          = 32   # If trying to start a pairing, but already pairing\n\nstring MSG_INTERACTION_UNAVAILABLE   = \"This role-app pair is not available for use.\"\nstring MSG_INTERACTION_QUOTA_REACHED = \"More connections of this type not permitted.\"\nstring MSG_START_PAIRED_RAPP_FAILED  = \"Failed to start the paired rapp.\"\nstring MSG_ALREADY_PAIRING           = \"Already pairing, cannot start another pairing.\""

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/ErrorCodes"
