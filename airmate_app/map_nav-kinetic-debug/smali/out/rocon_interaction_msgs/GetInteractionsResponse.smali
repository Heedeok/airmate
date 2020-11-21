.class public interface abstract Lrocon_interaction_msgs/GetInteractionsResponse;
.super Ljava/lang/Object;
.source "GetInteractionsResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "Interaction[] interactions"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/GetInteractionsResponse"


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
