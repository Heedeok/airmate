.class public interface abstract Lworld_canvas_msgs/EditAnnotationsData;
.super Ljava/lang/Object;
.source "EditAnnotationsData.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Request an auxiliary editor to add/modify/delete the data for the given annotation. The annotation\n# itself is passed just for information, to show extra information to the user or assist data edition,\n# but will not be changed.\n#  - On request, action involves whether the editor must show the given data or create it from scratch\n#  - On response, action provides the user choice concerning what to do with old and new annotation data\n\nuint8 NEW=0\nuint8 EDIT=1\n\nuint8 action\n\nAnnotation annotation\nAnnotationData data\n---\nuint8 UPDATE=10\nuint8 DELETE=12\nuint8 CANCEL=13\n\nuint8 action\n\nAnnotationData data "

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/EditAnnotationsData"
