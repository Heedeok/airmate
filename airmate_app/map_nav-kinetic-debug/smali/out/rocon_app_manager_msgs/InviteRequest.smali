.class public interface abstract Lrocon_app_manager_msgs/InviteRequest;
.super Ljava/lang/Object;
.source "InviteRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Invite the application manager to send (or cancel) the app manager control handles \n# (/start_app etc) to a remote target. That target is usually the client\'s gateway name.\n\nstring remote_target_name\n\n# Set up the default application namespace - there are typically three options here:\n#  - an absolute namespace\n#  - a relative namespace, in which case it will reside underneath the app manager namespace\n#  - unset, in which case it defaults to the relative namespace \'application\'\nstring application_namespace\nbool cancel\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/InviteRequest"


# virtual methods
.method public abstract getApplicationNamespace()Ljava/lang/String;
.end method

.method public abstract getCancel()Z
.end method

.method public abstract getRemoteTargetName()Ljava/lang/String;
.end method

.method public abstract setApplicationNamespace(Ljava/lang/String;)V
.end method

.method public abstract setCancel(Z)V
.end method

.method public abstract setRemoteTargetName(Ljava/lang/String;)V
.end method
