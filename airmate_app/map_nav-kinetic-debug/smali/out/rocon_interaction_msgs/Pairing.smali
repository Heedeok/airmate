.class public interface abstract Lrocon_interaction_msgs/Pairing;
.super Ljava/lang/Object;
.source "Pairing.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Properties of a paired app that is destined to work with a rocon interaction.\n\n# ros resource name of the rapp, e.g. rocon_apps/talker\nstring rapp\n\nrocon_std_msgs/Remapping[] remappings\n\n# Key value pairs representing rapp parameters\nrocon_std_msgs/KeyValue[] parameters\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/Pairing"


# virtual methods
.method public abstract getParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRapp()Ljava/lang/String;
.end method

.method public abstract getRemappings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_std_msgs/Remapping;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_std_msgs/KeyValue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRapp(Ljava/lang/String;)V
.end method

.method public abstract setRemappings(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_std_msgs/Remapping;",
            ">;)V"
        }
    .end annotation
.end method
