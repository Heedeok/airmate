.class public Lorg/ros/internal/node/service/ServiceClientHandshake;
.super Lorg/ros/internal/node/BaseClientHandshake;
.source "ServiceClientHandshake.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lorg/ros/internal/node/service/ServiceClientHandshake;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/service/ServiceClientHandshake;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 2
    .param p1, "outgoingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 36
    invoke-direct {p0, p1}, Lorg/ros/internal/node/BaseClientHandshake;-><init>(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 37
    return-void
.end method


# virtual methods
.method public handshake(Lorg/ros/internal/transport/ConnectionHeader;)Z
    .registers 5
    .param p1, "incommingConnectionHeader"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 45
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/service/ServiceClientHandshake;->setErrorMessage(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lorg/ros/internal/node/service/ServiceClientHandshake;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 47
    return v1

    .line 49
    :cond_11
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "type"

    .line 50
    invoke-virtual {p1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 51
    const-string v0, "Message types don\'t match."

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/service/ServiceClientHandshake;->setErrorMessage(Ljava/lang/String;)V

    .line 53
    :cond_28
    const-string v0, "md5sum"

    invoke-virtual {p1, v0}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "md5sum"

    .line 54
    invoke-virtual {p1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 55
    const-string v0, "Checksums don\'t match."

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/service/ServiceClientHandshake;->setErrorMessage(Ljava/lang/String;)V

    .line 57
    :cond_3f
    invoke-virtual {p0}, Lorg/ros/internal/node/service/ServiceClientHandshake;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    const/4 v1, 0x1

    nop

    :cond_47
    return v1
.end method
