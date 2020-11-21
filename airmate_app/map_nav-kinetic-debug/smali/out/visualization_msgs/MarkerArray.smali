.class public interface abstract Lvisualization_msgs/MarkerArray;
.super Ljava/lang/Object;
.source "MarkerArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "Marker[] markers\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/MarkerArray"


# virtual methods
.method public abstract getMarkers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvisualization_msgs/Marker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setMarkers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvisualization_msgs/Marker;",
            ">;)V"
        }
    .end annotation
.end method
