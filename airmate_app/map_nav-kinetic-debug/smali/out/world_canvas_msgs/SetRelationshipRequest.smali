.class public interface abstract Lworld_canvas_msgs/SetRelationshipRequest;
.super Ljava/lang/Object;
.source "SetRelationshipRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ADD:B = 0x1t

.field public static final DEL:B = 0x2t

.field public static final _DEFINITION:Ljava/lang/String; = "# Add/remove a specific relationship to the specified annotation\nuint8 ADD = 1\nuint8 DEL = 2\n\nuuid_msgs/UniqueID id\nuuid_msgs/UniqueID relationship\nuint8 action\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/SetRelationshipRequest"


# virtual methods
.method public abstract getAction()B
.end method

.method public abstract getId()Luuid_msgs/UniqueID;
.end method

.method public abstract getRelationship()Luuid_msgs/UniqueID;
.end method

.method public abstract setAction(B)V
.end method

.method public abstract setId(Luuid_msgs/UniqueID;)V
.end method

.method public abstract setRelationship(Luuid_msgs/UniqueID;)V
.end method
