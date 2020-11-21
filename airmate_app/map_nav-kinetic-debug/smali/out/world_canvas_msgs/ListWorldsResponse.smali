.class public interface abstract Lworld_canvas_msgs/ListWorldsResponse;
.super Ljava/lang/Object;
.source "ListWorldsResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string[] names"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/ListWorldsResponse"


# virtual methods
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
