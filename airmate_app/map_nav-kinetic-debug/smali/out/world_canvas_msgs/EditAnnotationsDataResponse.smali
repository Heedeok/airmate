.class public interface abstract Lworld_canvas_msgs/EditAnnotationsDataResponse;
.super Ljava/lang/Object;
.source "EditAnnotationsDataResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final CANCEL:B = 0xdt

.field public static final DELETE:B = 0xct

.field public static final UPDATE:B = 0xat

.field public static final _DEFINITION:Ljava/lang/String; = "uint8 UPDATE=10\nuint8 DELETE=12\nuint8 CANCEL=13\n\nuint8 action\n\nAnnotationData data "

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/EditAnnotationsDataResponse"


# virtual methods
.method public abstract getAction()B
.end method

.method public abstract getData()Lworld_canvas_msgs/AnnotationData;
.end method

.method public abstract setAction(B)V
.end method

.method public abstract setData(Lworld_canvas_msgs/AnnotationData;)V
.end method
