.class public interface abstract Lworld_canvas_msgs/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Annotation: a generic descriptor for an element (object) in a semantic map\n# An annotation can be used to introspect, visualize or key into database filters/searches without\n# having to touch the described object directly\n#  - timestamp : Creation/last update time\n#  - world     : World the object belongs to\n#  - id        : Annotation unique id\n#  - data_id   : Referenced object unique id (an object can be reference by 1 or more annotations)\n#  - name      : Referenced object name\n#  - type      : Referenced object type (a message type, as world canvas objects are ROS messages)\n#  - shape     : One of 1 (CUBE), 2 (SPHERE), 3 (CYLINDER), 9 (TEXT)\n#  - color     : R, G, B, A (optional)\n#  - size      : X, Y, Z (optional)\n#  - keywords  : Generic properties of this object: allows basic filtering without introspecting\n#                the object itself\n#  - relationships : List of associated annotations, used for retrieving operational sets of objects\n\n# General properties\ntime timestamp\nuuid_msgs/UniqueID id\nuuid_msgs/UniqueID data_id\nstring world\nstring name\nstring type\n\n# Physical properties\nint32  shape\nstd_msgs/ColorRGBA color\ngeometry_msgs/Vector3 size\ngeometry_msgs/PoseWithCovarianceStamped pose\n\n# Querying properties\nstring[] keywords\nuuid_msgs/UniqueID[] relationships\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/Annotation"


# virtual methods
.method public abstract getColor()Lstd_msgs/ColorRGBA;
.end method

.method public abstract getDataId()Luuid_msgs/UniqueID;
.end method

.method public abstract getId()Luuid_msgs/UniqueID;
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

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPose()Lgeometry_msgs/PoseWithCovarianceStamped;
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

.method public abstract getShape()I
.end method

.method public abstract getSize()Lgeometry_msgs/Vector3;
.end method

.method public abstract getTimestamp()Lorg/ros/message/Time;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getWorld()Ljava/lang/String;
.end method

.method public abstract setColor(Lstd_msgs/ColorRGBA;)V
.end method

.method public abstract setDataId(Luuid_msgs/UniqueID;)V
.end method

.method public abstract setId(Luuid_msgs/UniqueID;)V
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

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPose(Lgeometry_msgs/PoseWithCovarianceStamped;)V
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

.method public abstract setShape(I)V
.end method

.method public abstract setSize(Lgeometry_msgs/Vector3;)V
.end method

.method public abstract setTimestamp(Lorg/ros/message/Time;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract setWorld(Ljava/lang/String;)V
.end method
