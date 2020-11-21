.class public interface abstract Lrocon_std_msgs/MasterInfo;
.super Ljava/lang/Object;
.source "MasterInfo.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Publish basic information about the concert.\n#\n# Fixed variables\n#   version\n# Over-ridable variables:\n#   name\n#   description\n#   icon\n# Runtime variables:\n#   id\n#\n\nstring name\n#uuid_msgs/UniqueID id\nstring description\nrocon_std_msgs/Icon icon\nstring version"

.field public static final _TYPE:Ljava/lang/String; = "rocon_std_msgs/MasterInfo"


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIcon()Lrocon_std_msgs/Icon;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Lrocon_std_msgs/Icon;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setVersion(Ljava/lang/String;)V
.end method
