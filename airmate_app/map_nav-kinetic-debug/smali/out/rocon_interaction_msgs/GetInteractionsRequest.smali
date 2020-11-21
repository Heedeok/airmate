.class public interface abstract Lrocon_interaction_msgs/GetInteractionsRequest;
.super Ljava/lang/Object;
.source "GetInteractionsRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# For remocons who need to retrieve a filtered list of interactions\n# appropriate to the role and platform they will run for/on. \n\n# Filter according to roles. If not specified it will return \n# interactions for all roles.\nstring[] roles\n\n# Filter according to the rocon uri of the requesting device. T\n# If not specified, the manager will assume \'rocon://\' (wildcards)\nstring uri\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/GetInteractionsRequest"


# virtual methods
.method public abstract getRoles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract setRoles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method
