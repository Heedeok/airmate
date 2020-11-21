.class public interface abstract Lrocon_interaction_msgs/InteractiveClients;
.super Ljava/lang/Object;
.source "InteractiveClients.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# \n# Two lists are included here to distinguish between idle clients and those that\n# are currently running an app.\n#\nInteractiveClient[] idle_clients\nInteractiveClient[] running_clients\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/InteractiveClients"


# virtual methods
.method public abstract getIdleClients()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_interaction_msgs/InteractiveClient;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningClients()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_interaction_msgs/InteractiveClient;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setIdleClients(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_interaction_msgs/InteractiveClient;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRunningClients(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_interaction_msgs/InteractiveClient;",
            ">;)V"
        }
    .end annotation
.end method
