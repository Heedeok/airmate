.class public interface abstract Lrocon_interaction_msgs/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Indicates what pairs (rapp, remocon) are running at any point in time.\n# If none, these values drop back to empty strings.\n\nstring rapp\nstring remocon\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/Pair"


# virtual methods
.method public abstract getRapp()Ljava/lang/String;
.end method

.method public abstract getRemocon()Ljava/lang/String;
.end method

.method public abstract setRapp(Ljava/lang/String;)V
.end method

.method public abstract setRemocon(Ljava/lang/String;)V
.end method
