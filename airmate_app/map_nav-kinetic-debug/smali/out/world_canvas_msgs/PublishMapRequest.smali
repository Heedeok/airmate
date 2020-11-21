.class public interface abstract Lworld_canvas_msgs/PublishMapRequest;
.super Ljava/lang/Object;
.source "PublishMapRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Service used to publish a given map from the database to the /map topic.\n\nstring map_id\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/PublishMapRequest"


# virtual methods
.method public abstract getMapId()Ljava/lang/String;
.end method

.method public abstract setMapId(Ljava/lang/String;)V
.end method
