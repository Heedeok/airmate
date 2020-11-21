.class public interface abstract Lworld_canvas_msgs/ListMapsResponse;
.super Ljava/lang/Object;
.source "ListMapsResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "MapListEntry[] map_list"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/ListMapsResponse"


# virtual methods
.method public abstract getMapList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lworld_canvas_msgs/MapListEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setMapList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lworld_canvas_msgs/MapListEntry;",
            ">;)V"
        }
    .end annotation
.end method
