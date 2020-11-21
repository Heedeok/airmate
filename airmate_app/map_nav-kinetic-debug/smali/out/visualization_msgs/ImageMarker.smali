.class public interface abstract Lvisualization_msgs/ImageMarker;
.super Ljava/lang/Object;
.source "ImageMarker.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ADD:B = 0x0t

.field public static final CIRCLE:B = 0x0t

.field public static final LINE_LIST:B = 0x2t

.field public static final LINE_STRIP:B = 0x1t

.field public static final POINTS:B = 0x4t

.field public static final POLYGON:B = 0x3t

.field public static final REMOVE:B = 0x1t

.field public static final _DEFINITION:Ljava/lang/String; = "uint8 CIRCLE=0\nuint8 LINE_STRIP=1\nuint8 LINE_LIST=2\nuint8 POLYGON=3\nuint8 POINTS=4\n\nuint8 ADD=0\nuint8 REMOVE=1\n\nHeader header\nstring ns\t\t# namespace, used with id to form a unique id\nint32 id          \t# unique id within the namespace\nint32 type        \t# CIRCLE/LINE_STRIP/etc.\nint32 action      \t# ADD/REMOVE\ngeometry_msgs/Point position # 2D, in pixel-coords\nfloat32 scale\t \t# the diameter for a circle, etc.\nstd_msgs/ColorRGBA outline_color\nuint8 filled\t\t# whether to fill in the shape with color\nstd_msgs/ColorRGBA fill_color # color [0.0-1.0]\nduration lifetime       # How long the object should last before being automatically deleted.  0 means forever\n\n\ngeometry_msgs/Point[] points # used for LINE_STRIP/LINE_LIST/POINTS/etc., 2D in pixel coords\nstd_msgs/ColorRGBA[] outline_colors # a color for each line, point, etc."

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/ImageMarker"


# virtual methods
.method public abstract getAction()I
.end method

.method public abstract getFillColor()Lstd_msgs/ColorRGBA;
.end method

.method public abstract getFilled()B
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getId()I
.end method

.method public abstract getLifetime()Lorg/ros/message/Duration;
.end method

.method public abstract getNs()Ljava/lang/String;
.end method

.method public abstract getOutlineColor()Lstd_msgs/ColorRGBA;
.end method

.method public abstract getOutlineColors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lstd_msgs/ColorRGBA;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPosition()Lgeometry_msgs/Point;
.end method

.method public abstract getScale()F
.end method

.method public abstract getType()I
.end method

.method public abstract setAction(I)V
.end method

.method public abstract setFillColor(Lstd_msgs/ColorRGBA;)V
.end method

.method public abstract setFilled(B)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setId(I)V
.end method

.method public abstract setLifetime(Lorg/ros/message/Duration;)V
.end method

.method public abstract setNs(Ljava/lang/String;)V
.end method

.method public abstract setOutlineColor(Lstd_msgs/ColorRGBA;)V
.end method

.method public abstract setOutlineColors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lstd_msgs/ColorRGBA;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/Point;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPosition(Lgeometry_msgs/Point;)V
.end method

.method public abstract setScale(F)V
.end method

.method public abstract setType(I)V
.end method
