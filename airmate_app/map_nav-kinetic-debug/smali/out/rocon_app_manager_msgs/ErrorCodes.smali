.class public interface abstract Lrocon_app_manager_msgs/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ALREADY_REMOTE_CONTROLLED:B = 0x20t

.field public static final CLIENT_CONNECTION_DISRUPTED:B = 0x24t

.field public static final INVITING_CONTROLLER_BLACKLISTED:B = 0x23t

.field public static final INVITING_CONTROLLER_NOT_WHITELISTED:B = 0x22t

.field public static final LOCAL_INVITATIONS_ONLY:B = 0x1et

.field public static final MULTI_RAPP_NOT_SUPPORTED:B = 0xat

.field public static final NOT_CURRENT_REMOTE_CONTROLLER:B = 0x21t

.field public static final NO_LOCAL_GATEWAY:B = 0x1ft

.field public static final RAPP_IS_NOT_AVAILABLE:B = 0x15t

.field public static final RAPP_IS_NOT_RUNNING:B = 0x14t

.field public static final SUCCESS:B = 0x0t

.field public static final UNKNOWN:B = 0x1t

.field public static final _DEFINITION:Ljava/lang/String; = "# Error types for the rocon app manager\n\n# General\nint8 SUCCESS = 0\nint8 UNKNOWN = 1\n\n# Start\nint8 MULTI_RAPP_NOT_SUPPORTED = 10\n\n# Stop Rapp\nint8 RAPP_IS_NOT_RUNNING = 20\nint8 RAPP_IS_NOT_AVAILABLE = 21\n\n# Invitations\nint8 LOCAL_INVITATIONS_ONLY = 30\nint8 NO_LOCAL_GATEWAY = 31\nint8 ALREADY_REMOTE_CONTROLLED = 32\nint8 NOT_CURRENT_REMOTE_CONTROLLER = 33\nint8 INVITING_CONTROLLER_NOT_WHITELISTED = 34\nint8 INVITING_CONTROLLER_BLACKLISTED = 35\nint8 CLIENT_CONNECTION_DISRUPTED = 36"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/ErrorCodes"
