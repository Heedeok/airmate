.class public interface abstract Lrocon_app_manager_msgs/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final RAPP_RUNNING:Ljava/lang/String; = "running"

.field public static final RAPP_STOPPED:Ljava/lang/String; = "stopped"

.field public static final _DEFINITION:Ljava/lang/String; = "# Namespace under which applications will run if connected\nstring application_namespace\n\n# Who is controlling the app manager (i.e. who invited it to send it\'s\n# control handles). If the empty string, it is not being controlled \n# and subsequently is available\nstring remote_controller\n\n# Rapp is running or not\nstring RAPP_STOPPED=stopped\nstring RAPP_RUNNING=running\nstring rapp_status\n\n# Current app details (if running), a default Rapp() (filled with empty strings and lists) otherwise\nRapp rapp\n\n# The runtime, possibly namespaced and remapped interfaces/parameters\nPublishedInterface[] published_interfaces\nrocon_std_msgs/KeyValue[] published_parameters\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/Status"


# virtual methods
.method public abstract getApplicationNamespace()Ljava/lang/String;
.end method

.method public abstract getPublishedInterfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_app_manager_msgs/PublishedInterface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublishedParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRapp()Lrocon_app_manager_msgs/Rapp;
.end method

.method public abstract getRappStatus()Ljava/lang/String;
.end method

.method public abstract getRemoteController()Ljava/lang/String;
.end method

.method public abstract setApplicationNamespace(Ljava/lang/String;)V
.end method

.method public abstract setPublishedInterfaces(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_app_manager_msgs/PublishedInterface;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPublishedParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRapp(Lrocon_app_manager_msgs/Rapp;)V
.end method

.method public abstract setRappStatus(Ljava/lang/String;)V
.end method

.method public abstract setRemoteController(Ljava/lang/String;)V
.end method
