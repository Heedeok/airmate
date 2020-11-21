.class public interface abstract Lworld_canvas_msgs/SaveAnnotationsData;
.super Ljava/lang/Object;
.source "SaveAnnotationsData.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Utility service kept to make debug and testing easier:\n#   saves together annotations and its data assuming a 1-1 relationship.\n\nAnnotation[] annotations\nAnnotationData[] data \n---\n# What went wrong, if anything\nbool result\nstring message\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/SaveAnnotationsData"
