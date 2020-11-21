.class public interface abstract Lnav_msgs/GridCells;
.super Ljava/lang/Object;
.source "GridCells.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "#an array of cells in a 2D grid\nHeader header\nfloat32 cell_width\nfloat32 cell_height\ngeometry_msgs/Point[] cells\n"

.field public static final _TYPE:Ljava/lang/String; = "nav_msgs/GridCells"


# virtual methods
.method public abstract getCellHeight()F
.end method

.method public abstract getCellWidth()F
.end method

.method public abstract getCells()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract setCellHeight(F)V
.end method

.method public abstract setCellWidth(F)V
.end method

.method public abstract setCells(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method
