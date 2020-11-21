.class public interface abstract Lrocon_interaction_msgs/InteractiveClient;
.super Ljava/lang/Object;
.source "InteractiveClient.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# \n# Describes an interactive concert client.\n#\n# Unique names - human consumable rocon name as well as globally unique name\n# provided by the remocon client.\n\nstring name\nuuid_msgs/UniqueID id\n\nrocon_std_msgs/PlatformInfo platform_info\n\n# easy to read display names of interactions running on this remocon\nstring[] running_interactions\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/InteractiveClient"


# virtual methods
.method public abstract getId()Luuid_msgs/UniqueID;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPlatformInfo()Lrocon_std_msgs/PlatformInfo;
.end method

.method public abstract getRunningInteractions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setId(Luuid_msgs/UniqueID;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPlatformInfo(Lrocon_std_msgs/PlatformInfo;)V
.end method

.method public abstract setRunningInteractions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
