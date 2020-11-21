.class public interface abstract Lrocon_std_msgs/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ACTION_CLIENT:Ljava/lang/String; = "action_client"

.field public static final ACTION_SERVER:Ljava/lang/String; = "action_server"

.field public static final INVALID:Ljava/lang/String; = "invalid"

.field public static final PUBLISHER:Ljava/lang/String; = "publisher"

.field public static final SERVICE:Ljava/lang/String; = "service"

.field public static final SUBSCRIBER:Ljava/lang/String; = "subscriber"

.field public static final _DEFINITION:Ljava/lang/String; = "# A connection can be 1 of 5 types\nstring PUBLISHER = publisher\nstring SUBSCRIBER = subscriber\nstring SERVICE = service\nstring ACTION_CLIENT = action_client\nstring ACTION_SERVER = action_server\nstring INVALID = invalid\n\n# type of connection (from string constants above)\nstring type\n\n# this is the topic/service name or the action base name\nstring name \n\n# the name of the node establishing this connection\nstring node\n\n# topic, service or action type, e.g. std_msgs/String\nstring type_info\n\n# xmlrpc node uri for managing the connection\nstring xmlrpc_uri"

.field public static final _TYPE:Ljava/lang/String; = "rocon_std_msgs/Connection"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNode()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getTypeInfo()Ljava/lang/String;
.end method

.method public abstract getXmlrpcUri()Ljava/lang/String;
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNode(Ljava/lang/String;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract setTypeInfo(Ljava/lang/String;)V
.end method

.method public abstract setXmlrpcUri(Ljava/lang/String;)V
.end method
