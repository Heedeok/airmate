.class public interface abstract Lvisualization_msgs/InteractiveMarkerInit;
.super Ljava/lang/Object;
.source "InteractiveMarkerInit.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Identifying string. Must be unique in the topic namespace\n# that this server works on.\nstring server_id\n\n# Sequence number.\n# The client will use this to detect if it has missed a subsequent\n# update.  Every update message will have the same sequence number as\n# an init message.  Clients will likely want to unsubscribe from the\n# init topic after a successful initialization to avoid receiving\n# duplicate data.\nuint64 seq_num\n\n# All markers.\nInteractiveMarker[] markers\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/InteractiveMarkerInit"


# virtual methods
.method public abstract getMarkers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvisualization_msgs/InteractiveMarker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeqNum()J
.end method

.method public abstract getServerId()Ljava/lang/String;
.end method

.method public abstract setMarkers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvisualization_msgs/InteractiveMarker;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSeqNum(J)V
.end method

.method public abstract setServerId(Ljava/lang/String;)V
.end method
