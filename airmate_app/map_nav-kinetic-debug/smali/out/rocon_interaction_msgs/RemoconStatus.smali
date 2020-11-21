.class public interface abstract Lrocon_interaction_msgs/RemoconStatus;
.super Ljava/lang/Object;
.source "RemoconStatus.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Used by the remocons to inform the concert of it\'s current status. They should\n# publish this as a latched publisher.\n\nrocon_std_msgs/PlatformInfo platform_info\n# The remocon id\n# This should be a \'32 character Type 4 uuid hex string\'\nstring uuid\n\n\n# We should be using this, but java can\'t handle the type, reintegrate when we bugfix.\n# uuid_msgs/UniqueID[] running_interactions\n\n# This is a crc32 hash code we use because of the above.\nint32[] running_interactions\n\n# rocon version compatibility identifier (used when connecting to concerts)\nstring version\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/RemoconStatus"


# virtual methods
.method public abstract getPlatformInfo()Lrocon_std_msgs/PlatformInfo;
.end method

.method public abstract getRunningInteractions()[I
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract setPlatformInfo(Lrocon_std_msgs/PlatformInfo;)V
.end method

.method public abstract setRunningInteractions([I)V
.end method

.method public abstract setUuid(Ljava/lang/String;)V
.end method

.method public abstract setVersion(Ljava/lang/String;)V
.end method
