.class public interface abstract Lworld_canvas_msgs/GetAnnotationsRequest;
.super Ljava/lang/Object;
.source "GetAnnotationsRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Various combinations of these filter criteria trigger various results\n# The only one mandatory is world_name; empty arrays are ignored\nstring world\nuuid_msgs/UniqueID[] ids  # Retrieved annotation uuid is within this list\nstring[] names            # Retrieved annotation name is within this list\nstring[] types            # Retrieved annotation type is within this list\nstring[] keywords         # Retrieved annotation has at least one of these keywords\nuuid_msgs/UniqueID[] relationships # Retrieve annotations related to those on this list\n\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/GetAnnotationsRequest"


# virtual methods
.method public abstract getIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luuid_msgs/UniqueID;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeywords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRelationships()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luuid_msgs/UniqueID;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorld()Ljava/lang/String;
.end method

.method public abstract setIds(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luuid_msgs/UniqueID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setKeywords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNames(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRelationships(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luuid_msgs/UniqueID;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTypes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setWorld(Ljava/lang/String;)V
.end method
