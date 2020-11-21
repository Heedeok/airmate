.class public interface abstract Lworld_canvas_msgs/WorldCanvas;
.super Ljava/lang/Object;
.source "WorldCanvas.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# World canvas: a generic descriptor for a world, typically containing one or more geometric maps\n# plus semantic information in the form of annotations.\n#  - timestamp   : Creation/last update time\n#  - name        : World name; it must be unique\n#  - description : Informal description\n#  - geometry    : 2D, 3D (just informative by now)\n\ntime timestamp\nstring name\nstring description\nstring geometry"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/WorldCanvas"


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getGeometry()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTimestamp()Lorg/ros/message/Time;
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setGeometry(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setTimestamp(Lorg/ros/message/Time;)V
.end method
