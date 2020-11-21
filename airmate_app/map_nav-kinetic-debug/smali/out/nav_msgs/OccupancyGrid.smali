.class public interface abstract Lnav_msgs/OccupancyGrid;
.super Ljava/lang/Object;
.source "OccupancyGrid.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This represents a 2-D grid map, in which each cell represents the probability of\n# occupancy.\n\nHeader header \n\n#MetaData for the map\nMapMetaData info\n\n# The map data, in row-major order, starting with (0,0).  Occupancy\n# probabilities are in the range [0,100].  Unknown is -1.\nint8[] data\n"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/OccupancyGrid"


# virtual methods
.method public abstract getData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getInfo()Lnav_msgs/MapMetaData;
.end method

.method public abstract setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setInfo(Lnav_msgs/MapMetaData;)V
.end method
