.class public interface abstract Lrocon_interaction_msgs/RequestInteractionRequest;
.super Ljava/lang/Object;
.source "RequestInteractionRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# This is used between remocons and the interactions manager to request\n# the launch of a remote application to interact with the concert.\n\n# Name of the remocon doing the requesting\nstring remocon\n\n# Hash id of the interaction being requested\nint32 hash\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/RequestInteractionRequest"


# virtual methods
.method public abstract getHash()I
.end method

.method public abstract getRemocon()Ljava/lang/String;
.end method

.method public abstract setHash(I)V
.end method

.method public abstract setRemocon(Ljava/lang/String;)V
.end method
