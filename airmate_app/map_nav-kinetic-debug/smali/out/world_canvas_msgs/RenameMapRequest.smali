.class public interface abstract Lworld_canvas_msgs/RenameMapRequest;
.super Ljava/lang/Object;
.source "RenameMapRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Service used to rename a given map.\n\nstring map_id\nstring new_name\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/RenameMapRequest"


# virtual methods
.method public abstract getMapId()Ljava/lang/String;
.end method

.method public abstract getNewName()Ljava/lang/String;
.end method

.method public abstract setMapId(Ljava/lang/String;)V
.end method

.method public abstract setNewName(Ljava/lang/String;)V
.end method
