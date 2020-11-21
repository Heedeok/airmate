.class public interface abstract Lrocon_app_manager_msgs/Rapp;
.super Ljava/lang/Object;
.source "Rapp.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This is the message that gets published in list_rapps. Do not think of it as the\n# \'rapp\' definition (since that is quite varied -> ancestor, virtual, child, implementation)\n# Rather it is the published list of rapps with the required information for the concert\n# and some introspection.\n\n# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)\nstring name\n# user-friendly display name\nstring display_name\nstring description\n# a rocon uri string indicating platform compatibility\nstring compatibility\nstring status\n\n# a list of implementations\nstring[] implementations\n\n# A preferred rapp for virtual rapp\nstring preferred\n\n# icon for showing the app\nrocon_std_msgs/Icon icon\n\n# public interface and parameters\nrocon_std_msgs/KeyValue[] public_interface\nrocon_std_msgs/KeyValue[] public_parameters\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/Rapp"


# virtual methods
.method public abstract getCompatibility()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getIcon()Lrocon_std_msgs/Icon;
.end method

.method public abstract getImplementations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPreferred()Ljava/lang/String;
.end method

.method public abstract getPublicInterface()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublicParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract setCompatibility(Ljava/lang/String;)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setDisplayName(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Lrocon_std_msgs/Icon;)V
.end method

.method public abstract setImplementations(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPreferred(Ljava/lang/String;)V
.end method

.method public abstract setPublicInterface(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPublicParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStatus(Ljava/lang/String;)V
.end method
