.class public interface abstract Lvisualization_msgs/Marker;
.super Ljava/lang/Object;
.source "Marker.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ADD:B = 0x0t

.field public static final ARROW:B = 0x0t

.field public static final CUBE:B = 0x1t

.field public static final CUBE_LIST:B = 0x6t

.field public static final CYLINDER:B = 0x3t

.field public static final DELETE:B = 0x2t

.field public static final DELETEALL:B = 0x3t

.field public static final LINE_LIST:B = 0x5t

.field public static final LINE_STRIP:B = 0x4t

.field public static final MESH_RESOURCE:B = 0xat

.field public static final MODIFY:B = 0x0t

.field public static final POINTS:B = 0x8t

.field public static final SPHERE:B = 0x2t

.field public static final SPHERE_LIST:B = 0x7t

.field public static final TEXT_VIEW_FACING:B = 0x9t

.field public static final TRIANGLE_LIST:B = 0xbt

.field public static final _DEFINITION:Ljava/lang/String; = "# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz\n\nuint8 ARROW=0\nuint8 CUBE=1\nuint8 SPHERE=2\nuint8 CYLINDER=3\nuint8 LINE_STRIP=4\nuint8 LINE_LIST=5\nuint8 CUBE_LIST=6\nuint8 SPHERE_LIST=7\nuint8 POINTS=8\nuint8 TEXT_VIEW_FACING=9\nuint8 MESH_RESOURCE=10\nuint8 TRIANGLE_LIST=11\n\nuint8 ADD=0\nuint8 MODIFY=0\nuint8 DELETE=2\nuint8 DELETEALL=3\n\nHeader header                        # header for time/frame information\nstring ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object\nint32 id \t\t                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later\nint32 type \t\t                       # Type of object\nint32 action \t                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects\ngeometry_msgs/Pose pose                 # Pose of the object\ngeometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)\nstd_msgs/ColorRGBA color             # Color [0.0-1.0]\nduration lifetime                    # How long the object should last before being automatically deleted.  0 means forever\nbool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep\n\n#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)\ngeometry_msgs/Point[] points\n#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)\n#number of colors must either be 0 or equal to the number of points\n#NOTE: alpha is not yet used\nstd_msgs/ColorRGBA[] colors\n\n# NOTE: only used for text markers\nstring text\n\n# NOTE: only used for MESH_RESOURCE markers\nstring mesh_resource\nbool mesh_use_embedded_materials\n"

.field public static final _TYPE:Ljava/lang/String; = "visualization_msgs/Marker"


# virtual methods
.method public abstract getAction()I
.end method

.method public abstract getColor()Lstd_msgs/ColorRGBA;
.end method

.method public abstract getColors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lstd_msgs/ColorRGBA;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFrameLocked()Z
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getId()I
.end method

.method public abstract getLifetime()Lorg/ros/message/Duration;
.end method

.method public abstract getMeshResource()Ljava/lang/String;
.end method

.method public abstract getMeshUseEmbeddedMaterials()Z
.end method

.method public abstract getNs()Ljava/lang/String;
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

.method public abstract getPose()Lgeometry_msgs/Pose;
.end method

.method public abstract getScale()Lgeometry_msgs/Vector3;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract setAction(I)V
.end method

.method public abstract setColor(Lstd_msgs/ColorRGBA;)V
.end method

.method public abstract setColors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lstd_msgs/ColorRGBA;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFrameLocked(Z)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setId(I)V
.end method

.method public abstract setLifetime(Lorg/ros/message/Duration;)V
.end method

.method public abstract setMeshResource(Ljava/lang/String;)V
.end method

.method public abstract setMeshUseEmbeddedMaterials(Z)V
.end method

.method public abstract setNs(Ljava/lang/String;)V
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

.method public abstract setPose(Lgeometry_msgs/Pose;)V
.end method

.method public abstract setScale(Lgeometry_msgs/Vector3;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setType(I)V
.end method
