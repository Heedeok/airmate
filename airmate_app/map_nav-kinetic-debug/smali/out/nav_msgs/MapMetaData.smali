.class public interface abstract Lnav_msgs/MapMetaData;
.super Ljava/lang/Object;
.source "MapMetaData.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This hold basic information about the characterists of the OccupancyGrid\n\n# The time at which the map was loaded\ntime map_load_time\n# The map resolution [m/cell]\nfloat32 resolution\n# Map width [cells]\nuint32 width\n# Map height [cells]\nuint32 height\n# The origin of the map [m, m, rad].  This is the real-world pose of the\n# cell (0,0) in the map.\ngeometry_msgs/Pose origin"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/MapMetaData"


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getMapLoadTime()Lorg/ros/message/Time;
.end method

.method public abstract getOrigin()Lgeometry_msgs/Pose;
.end method

.method public abstract getResolution()F
.end method

.method public abstract getWidth()I
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setMapLoadTime(Lorg/ros/message/Time;)V
.end method

.method public abstract setOrigin(Lgeometry_msgs/Pose;)V
.end method

.method public abstract setResolution(F)V
.end method

.method public abstract setWidth(I)V
.end method
