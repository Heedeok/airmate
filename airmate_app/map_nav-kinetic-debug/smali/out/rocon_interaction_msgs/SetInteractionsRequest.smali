.class public interface abstract Lrocon_interaction_msgs/SetInteractionsRequest;
.super Ljava/lang/Object;
.source "SetInteractionsRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Extend or delete the rocon interactions database with this list. \n\nInteraction[] interactions\n\n# If true, load, else attempt to unload them.\nbool load\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/SetInteractionsRequest"


# virtual methods
.method public abstract getInteractions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_interaction_msgs/Interaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLoad()Z
.end method

.method public abstract setInteractions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_interaction_msgs/Interaction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLoad(Z)V
.end method
