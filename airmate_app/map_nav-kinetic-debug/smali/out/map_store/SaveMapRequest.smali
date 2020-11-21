.class public interface abstract Lmap_store/SaveMapRequest;
.super Ljava/lang/Object;
.source "SaveMapRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Service used to name the most recent saved map.\n\nstring map_name\n"

.field public static final _TYPE:Ljava/lang/String; = "map_store/SaveMapRequest"


# virtual methods
.method public abstract getMapName()Ljava/lang/String;
.end method

.method public abstract setMapName(Ljava/lang/String;)V
.end method
