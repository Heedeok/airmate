.class public interface abstract Lvisualization_msgs/InteractiveMarkerUpdate;
.super Ljava/lang/Object;
.source "InteractiveMarkerUpdate.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final KEEP_ALIVE:B = 0x0t

.field public static final UPDATE:B = 0x1t

.field public static final _DEFINITION:Ljava/lang/String; = "# Identifying string. Must be unique in the topic namespace\n# that this server works on.\nstring server_id\n\n# Sequence number.\n# The client will use this to detect if it has missed an update.\nuint64 seq_num\n\n# Type holds the purpose of this message.  It must be one of UPDATE or KEEP_ALIVE.\n# UPDATE: Incremental update to previous state. \n#         The sequence number must be 1 higher than for\n#         the previous update.\n# KEEP_ALIVE: Indicates the that the server is still living.\n#             The sequence number does not increase.\n#             No payload data should be filled out (markers, poses, or erases).\nuint8 KEEP_ALIVE = 0\nuint8 UPDATE = 1\n\nuint8 type\n\n#Note: No guarantees on the order of processing.\n#      Contents must be kept consistent by sender.\n\n#Markers to be added or updated\nInteractiveMarker[] markers\n\n#Poses of markers that should be moved\nInteractiveMarkerPose[] poses\n\n#Names of markers to be erased\nstring[] erases\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/InteractiveMarkerUpdate"


# virtual methods
.method public abstract getErases()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

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

.method public abstract getPoses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvisualization_msgs/InteractiveMarkerPose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeqNum()J
.end method

.method public abstract getServerId()Ljava/lang/String;
.end method

.method public abstract getType()B
.end method

.method public abstract setErases(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
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

.method public abstract setPoses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvisualization_msgs/InteractiveMarkerPose;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSeqNum(J)V
.end method

.method public abstract setServerId(Ljava/lang/String;)V
.end method

.method public abstract setType(B)V
.end method
