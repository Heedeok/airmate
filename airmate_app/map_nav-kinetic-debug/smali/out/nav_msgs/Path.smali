.class public interface abstract Lnav_msgs/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "#An array of poses that represents a Path for a robot to follow\nHeader header\ngeometry_msgs/PoseStamped[] poses\n"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/Path"


# virtual methods
.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getPoses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/PoseStamped;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setPoses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/PoseStamped;",
            ">;)V"
        }
    .end annotation
.end method
