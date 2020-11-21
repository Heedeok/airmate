.class public abstract Lorg/ros/node/NativeNodeMain;
.super Lorg/ros/node/AbstractNodeMain;
.source "NativeNodeMain.java"


# static fields
.field public static final SUCCESS:I


# instance fields
.field protected executeReturnCode:I

.field private hostName:Ljava/lang/String;

.field private libName:Ljava/lang/String;

.field private log:Lorg/apache/commons/logging/Log;

.field private masterUri:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;

.field private remappingArguments:[Ljava/lang/String;

.field protected shutdownReturnCode:I

.field private shuttingDown:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "libName"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ros/node/NativeNodeMain;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "remappings"    # [Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 33
    const-class v0, Lorg/ros/node/NativeNodeMain;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->log:Lorg/apache/commons/logging/Log;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->masterUri:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->hostName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->nodeName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/node/NativeNodeMain;->shuttingDown:Z

    .line 40
    iput v0, p0, Lorg/ros/node/NativeNodeMain;->executeReturnCode:I

    .line 41
    iput v0, p0, Lorg/ros/node/NativeNodeMain;->shutdownReturnCode:I

    .line 51
    iput-object p1, p0, Lorg/ros/node/NativeNodeMain;->libName:Ljava/lang/String;

    .line 54
    if-nez p2, :cond_22

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->remappingArguments:[Ljava/lang/String;

    goto :goto_24

    .line 57
    :cond_22
    iput-object p2, p0, Lorg/ros/node/NativeNodeMain;->remappingArguments:[Ljava/lang/String;

    .line 60
    :goto_24
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to load native library \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 62
    :try_start_3f
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/SecurityException; {:try_start_3f .. :try_end_42} :catch_55
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3f .. :try_end_42} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_42} :catch_43

    .line 72
    :goto_42
    goto :goto_5e

    .line 70
    :catch_43
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lorg/ros/node/NativeNodeMain;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Error loading library! NullPointerException"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_5e

    .line 67
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_4c
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    iget-object v1, p0, Lorg/ros/node/NativeNodeMain;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Error loading library! UnsatisfiedLinkError"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_42

    .line 64
    :catch_55
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lorg/ros/node/NativeNodeMain;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Error loading library! SecurityException"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_42

    .line 73
    :goto_5e
    return-void
.end method

.method static synthetic access$000(Lorg/ros/node/NativeNodeMain;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/NativeNodeMain;

    .line 30
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain;->masterUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/node/NativeNodeMain;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/NativeNodeMain;

    .line 30
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/node/NativeNodeMain;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/NativeNodeMain;

    .line 30
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain;->nodeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/ros/node/NativeNodeMain;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/NativeNodeMain;

    .line 30
    iget-object v0, p0, Lorg/ros/node/NativeNodeMain;->remappingArguments:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/ros/node/NativeNodeMain;)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/node/NativeNodeMain;

    .line 30
    iget-boolean v0, p0, Lorg/ros/node/NativeNodeMain;->shuttingDown:Z

    return v0
.end method


# virtual methods
.method protected abstract execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 5
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/node/NativeNodeMain;->shuttingDown:Z

    .line 115
    invoke-virtual {p0}, Lorg/ros/node/NativeNodeMain;->shutdown()I

    move-result v0

    iput v0, p0, Lorg/ros/node/NativeNodeMain;->shutdownReturnCode:I

    .line 117
    iget v0, p0, Lorg/ros/node/NativeNodeMain;->shutdownReturnCode:I

    if-eqz v0, :cond_2d

    .line 118
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ros/node/NativeNodeMain;->nodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shutdown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ros/node/NativeNodeMain;->shutdownReturnCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/ros/node/NativeNodeMain;->onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V

    .line 120
    :cond_2d
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 3
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 90
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getMasterUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->masterUri:Ljava/lang/String;

    .line 91
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->hostName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lorg/ros/node/NativeNodeMain;->getDefaultNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/node/NativeNodeMain;->nodeName:Ljava/lang/String;

    .line 95
    new-instance v0, Lorg/ros/node/NativeNodeMain$1;

    invoke-direct {v0, p0, p1}, Lorg/ros/node/NativeNodeMain$1;-><init>(Lorg/ros/node/NativeNodeMain;Lorg/ros/node/ConnectedNode;)V

    .line 109
    invoke-virtual {v0}, Lorg/ros/node/NativeNodeMain$1;->start()V

    .line 110
    return-void
.end method

.method protected abstract shutdown()I
.end method
