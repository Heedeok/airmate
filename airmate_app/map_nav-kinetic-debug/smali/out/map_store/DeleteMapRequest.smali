.class public interface abstract Lmap_store/DeleteMapRequest;
.super Ljava/lang/Object;
.source "DeleteMapRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Service used to delete a given map\n\nstring map_id\n"

.field public static final _TYPE:Ljava/lang/String; = "map_store/DeleteMapRequest"


# virtual methods
.method public abstract getMapId()Ljava/lang/String;
.end method

.method public abstract setMapId(Ljava/lang/String;)V
.end method
