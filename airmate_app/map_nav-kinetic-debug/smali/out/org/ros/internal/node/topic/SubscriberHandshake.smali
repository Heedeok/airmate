.class public Lorg/ros/internal/node/topic/SubscriberHandshake;
.super Lorg/ros/internal/node/BaseClientHandshake;
.source "SubscriberHandshake.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lorg/ros/internal/node/topic/SubscriberHandshake;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/topic/SubscriberHandshake;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 3
    .param p1, "outgoingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 38
    invoke-direct {p0, p1}, Lorg/ros/internal/node/BaseClientHandshake;-><init>(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 39
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "md5sum"

    .line 41
    invoke-virtual {p1, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public handshake(Lorg/ros/internal/transport/ConnectionHeader;)Z
    .registers 6
    .param p1, "incommingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 50
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/topic/SubscriberHandshake;->setErrorMessage(Ljava/lang/String;)V

    .line 51
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "incomingType":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 53
    const-string v1, "Incoming type cannot be null."

    invoke-virtual {p0, v1}, Lorg/ros/internal/node/topic/SubscriberHandshake;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_2a

    .line 54
    :cond_17
    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberHandshake;->outgoingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 55
    const-string v1, "Message types don\'t match."

    invoke-virtual {p0, v1}, Lorg/ros/internal/node/topic/SubscriberHandshake;->setErrorMessage(Ljava/lang/String;)V

    .line 57
    :cond_2a
    :goto_2a
    const-string v1, "md5sum"

    .line 58
    invoke-virtual {p1, v1}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "incomingMd5Checksum":Ljava/lang/String;
    if-nez v1, :cond_38

    .line 60
    const-string v2, "Incoming MD5 checksum cannot be null."

    invoke-virtual {p0, v2}, Lorg/ros/internal/node/topic/SubscriberHandshake;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_4b

    .line 61
    :cond_38
    iget-object v2, p0, Lorg/ros/internal/node/topic/SubscriberHandshake;->outgoingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    const-string v3, "md5sum"

    .line 62
    invoke-virtual {v2, v3}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 63
    const-string v2, "Checksums don\'t match."

    invoke-virtual {p0, v2}, Lorg/ros/internal/node/topic/SubscriberHandshake;->setErrorMessage(Ljava/lang/String;)V

    .line 65
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lorg/ros/internal/node/topic/SubscriberHandshake;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_53

    const/4 v2, 0x1

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    return v2
.end method
