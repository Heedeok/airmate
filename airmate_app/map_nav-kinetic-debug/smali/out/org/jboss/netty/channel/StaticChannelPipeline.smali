.class public Lorg/jboss/netty/channel/StaticChannelPipeline;
.super Ljava/lang/Object;
.source "StaticChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile channel:Lorg/jboss/netty/channel/Channel;

.field private final contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

.field private final lastIndex:I

.field private final name2ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sink:Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public varargs constructor <init>([Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 10
    .param p1, "handlers"    # [Lorg/jboss/netty/channel/ChannelHandler;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    .line 56
    if-eqz p1, :cond_64

    .line 59
    array-length v0, p1

    if-eqz v0, :cond_5c

    .line 64
    array-length v0, p1

    new-array v0, v0, [Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 67
    .local v0, "contexts":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "nContexts":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 68
    aget-object v3, p1, v2

    .line 69
    .local v3, "h":Lorg/jboss/netty/channel/ChannelHandler;
    if-nez v3, :cond_1d

    .line 70
    goto :goto_20

    .line 67
    .end local v3    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 74
    :cond_20
    :goto_20
    array-length v3, v0

    if-ne v2, v3, :cond_2b

    .line 75
    iput-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 76
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    goto :goto_34

    .line 78
    :cond_2b
    new-array v3, v2, [Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-object v0, v3

    iput-object v3, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 80
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    .line 84
    :goto_34
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    if-ge v3, v2, :cond_4c

    .line 85
    aget-object v4, p1, v3

    .line 86
    .local v4, "h":Lorg/jboss/netty/channel/ChannelHandler;
    invoke-static {v3}, Lorg/jboss/netty/util/internal/ConversionUtil;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    invoke-direct {v6, p0, v3, v5, v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/StaticChannelPipeline;ILjava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 89
    .local v6, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    aput-object v6, v0, v3

    .line 90
    iget-object v7, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v4    # "h":Lorg/jboss/netty/channel/ChannelHandler;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 93
    .end local v3    # "i":I
    :cond_4c
    move-object v3, v0

    .local v3, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v4, v3

    .local v1, "i$":I
    .local v4, "len$":I
    :goto_4e
    if-ge v1, v4, :cond_5b

    aget-object v5, v3, v1

    .line 94
    .local v5, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-static {v5}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 95
    invoke-static {v5}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 93
    .end local v5    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 97
    .end local v1    # "i$":I
    .end local v3    # "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v4    # "len$":I
    :cond_5b
    return-void

    .line 60
    .end local v0    # "contexts":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v2    # "nContexts":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no handlers specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 8
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 200
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 201
    return-void

    .line 204
    :cond_9
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 208
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 228
    nop

    .line 229
    return-void

    .line 209
    :catch_14
    move-exception v1

    .line 210
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 212
    .local v2, "removed":Z
    :try_start_16
    invoke-static {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 213
    invoke-static {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1c} :catch_1e

    .line 214
    const/4 v2, 0x1

    .line 217
    goto :goto_39

    .line 215
    :catch_1e
    move-exception v3

    .line 216
    .local v3, "t2":Ljava/lang/Throwable;
    sget-object v4, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove a handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .end local v3    # "t2":Ljava/lang/Throwable;
    :goto_39
    if-eqz v2, :cond_5a

    .line 220
    new-instance v3, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".afterAdd() has thrown an exception; removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 224
    :cond_5a
    new-instance v3, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".afterAdd() has thrown an exception; also failed to remove."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 249
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 250
    return-void

    .line 253
    :cond_9
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 257
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 262
    nop

    .line 263
    return-void

    .line 258
    :catch_14
    move-exception v1

    .line 259
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".afterRemove() has thrown an exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 183
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 184
    return-void

    .line 187
    :cond_9
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 191
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 196
    nop

    .line 197
    return-void

    .line 192
    :catch_14
    move-exception v1

    .line 193
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".beforeAdd() has thrown an exception; not adding."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 232
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 233
    return-void

    .line 236
    :cond_9
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 240
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 245
    nop

    .line 246
    return-void

    .line 241
    :catch_14
    move-exception v1

    .line 242
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".beforeRemove() has thrown an exception; not removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 116
    if-eqz p1, :cond_21

    .line 119
    if-eqz p2, :cond_19

    .line 122
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-nez v0, :cond_11

    .line 125
    iput-object p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    .line 126
    iput-object p2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 127
    return-void

    .line 123
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attached already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 100
    invoke-virtual {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 283
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    .line 284
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_8

    .line 285
    const/4 v1, 0x0

    return-object v1

    .line 287
    :cond_8
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .line 275
    .local v0, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-nez v0, :cond_c

    .line 276
    const/4 v1, 0x0

    return-object v1

    .line 278
    :cond_c
    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    return-object v1
.end method

.method getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .registers 5
    .param p1, "index"    # I

    .line 422
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_11

    .line 423
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    aget-object v1, v1, v0

    .line 424
    .local v1, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 425
    return-object v1

    .line 422
    .end local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 428
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .registers 5
    .param p1, "index"    # I

    .line 412
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 413
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    aget-object v1, v1, v0

    .line 414
    .local v1, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 415
    return-object v1

    .line 412
    .end local v1    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;"
        }
    .end annotation

    .line 311
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jboss/netty/channel/ChannelHandler;>;"
    if-eqz p1, :cond_1e

    .line 314
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v0, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 315
    .local v3, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v3}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 316
    return-object v3

    .line 314
    .end local v3    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 319
    .end local v0    # "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0

    .line 312
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlerType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 292
    if-eqz p1, :cond_b

    .line 295
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0

    .line 293
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 7
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 299
    if-eqz p1, :cond_16

    .line 302
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v0, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 303
    .local v3, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v3}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    if-ne v4, p1, :cond_11

    .line 304
    return-object v3

    .line 302
    .end local v3    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 307
    .end local v0    # "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_14
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3

    .line 266
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3

    .line 270
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v1, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 325
    .local v4, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v4    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 327
    .end local v1    # "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_17
    return-object v0
.end method

.method public getSink()Lorg/jboss/netty/channel/ChannelSink;
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 109
    .local v0, "sink":Lorg/jboss/netty/channel/ChannelSink;
    if-nez v0, :cond_7

    .line 110
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    return-object v1

    .line 112
    :cond_7
    return-object v0
.end method

.method public isAttached()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 432
    instance-of v0, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v0, :cond_20

    .line 433
    sget-object v0, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception was thrown by a user handler while handling an exception event ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    return-void

    .line 440
    :cond_20
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v0, :cond_28

    .line 441
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    goto :goto_2d

    .line 443
    :cond_28
    new-instance v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    .line 447
    .local v0, "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    :goto_2d
    :try_start_2d
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-interface {v1, p0, p1, v0}, Lorg/jboss/netty/channel/ChannelSink;->exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 450
    goto :goto_3b

    .line 448
    :catch_33
    move-exception v1

    .line 449
    .local v1, "e1":Ljava/lang/Exception;
    sget-object v2, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "An exception was thrown by an exception handler."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .end local v1    # "e1":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 158
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 3
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 2

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 2

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 5
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    .line 179
    .local p1, "oldHandlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 5
    .param p1, "oldHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 379
    iget v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    .line 380
    .local v0, "tail":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-nez v0, :cond_15

    .line 382
    :try_start_8
    invoke-virtual {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_10

    .line 383
    return-void

    .line 384
    :catch_10
    move-exception v1

    .line 385
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 386
    return-void

    .line 390
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_15
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 391
    return-void
.end method

.method sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 394
    instance-of v0, p2, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    if-nez v0, :cond_1a

    .line 399
    :try_start_4
    invoke-virtual {p1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/ChannelDownstreamHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 408
    goto :goto_19

    .line 400
    :catch_e
    move-exception v0

    .line 406
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 407
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 409
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_19
    return-void

    .line 395
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot send an upstream event to downstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    .line 361
    .local v0, "head":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    if-nez v0, :cond_1e

    .line 362
    sget-object v1, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The pipeline contains no upstream handlers; discarding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 364
    return-void

    .line 367
    :cond_1e
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 368
    return-void
.end method

.method sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 372
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/ChannelUpstreamHandler;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 375
    goto :goto_e

    .line 373
    :catch_a
    move-exception v0

    .line 374
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 376
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_e
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 332
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v1, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 333
    .local v4, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v4    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 335
    .end local v1    # "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    .local v1, "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_19
    if-ge v3, v2, :cond_4a

    aget-object v4, v1, v3

    .line 348
    .local v4, "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .end local v4    # "ctx":Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 355
    .end local v1    # "arr$":[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
