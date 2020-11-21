.class public interface abstract Lrocon_app_manager_msgs/PublicInterface;
.super Ljava/lang/Object;
.source "PublicInterface.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Represents a public interface of a rapp\n\n# One of rocon_std_msgs.Connection type string constants (\'publisher, \'subscriber\', ...)\nstring connection_type\n\n# The data type, e.g. std_msgs/Strings\nstring data_type\n\n# Name of the topic/service/action xxx.\nstring name\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/PublicInterface"


# virtual methods
.method public abstract getConnectionType()Ljava/lang/String;
.end method

.method public abstract getDataType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setConnectionType(Ljava/lang/String;)V
.end method

.method public abstract setDataType(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
