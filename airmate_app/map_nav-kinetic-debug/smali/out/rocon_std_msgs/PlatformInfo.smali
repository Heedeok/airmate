.class public interface abstract Lrocon_std_msgs/PlatformInfo;
.super Ljava/lang/Object;
.source "PlatformInfo.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Provides platform details for robots, software or human\n# interactive devices.\n\n########################### Variables ###########################\n\n# rocon universal resource identifier\nstring uri\n# rocon version compatibility identifier (used when connecting to concerts)\nstring version\nIcon icon\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_std_msgs/PlatformInfo"


# virtual methods
.method public abstract getIcon()Lrocon_std_msgs/Icon;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract setIcon(Lrocon_std_msgs/Icon;)V
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method

.method public abstract setVersion(Ljava/lang/String;)V
.end method
