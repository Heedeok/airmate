.class public interface abstract Lworld_canvas_msgs/MapListEntry;
.super Ljava/lang/Object;
.source "MapListEntry.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# One entry in a list of maps.\n\n# Naming a map is optional.\nstring name\n\n# Maps made by the make-a-map app are given a session ID, which is the\n# time when the map-making session was started, expressed as seconds\n# since the epoch and converted to a string.\nstring session_id\n\n# Creation time of this map, in seconds since the epoch.\nint64 date\n\n# Unique ID of this map.\nstring map_id\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/MapListEntry"


# virtual methods
.method public abstract getDate()J
.end method

.method public abstract getMapId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract setDate(J)V
.end method

.method public abstract setMapId(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSessionId(Ljava/lang/String;)V
.end method
