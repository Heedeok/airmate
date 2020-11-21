.class public interface abstract Lrocon_app_manager_msgs/StartRappRequest;
.super Ljava/lang/Object;
.source "StartRappRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Name of the rapp to launch\nstring name\nrocon_std_msgs/Remapping[] remappings\n\n# Key value pairs representing rapp parameters\nrocon_std_msgs/KeyValue[] parameters\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/StartRappRequest"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

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

.method public abstract setName(Ljava/lang/String;)V
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
