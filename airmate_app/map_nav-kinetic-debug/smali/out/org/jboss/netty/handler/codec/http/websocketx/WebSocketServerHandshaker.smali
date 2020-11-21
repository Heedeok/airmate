.class public abstract Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.super Ljava/lang/Object;
.source "WebSocketServerHandshaker.java"


# static fields
.field public static final HANDSHAKE_LISTENER:Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private final maxFramePayloadLength:J

.field private selectedSubprotocol:Ljava/lang/String;

.field private final subprotocols:[Ljava/lang/String;

.field private final version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field private final webSocketUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$1;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$1;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->HANDSHAKE_LISTENER:Lorg/jboss/netty/channel/ChannelFutureListener;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "version"    # Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "webSocketUrl"    # Ljava/lang/String;
    .param p3, "subprotocols"    # Ljava/lang/String;

    .line 69
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p1, "version"    # Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .param p2, "webSocketUrl"    # Ljava/lang/String;
    .param p3, "subprotocols"    # Ljava/lang/String;
    .param p4, "maxFramePayloadLength"    # J

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 90
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->webSocketUrl:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    if-eqz p3, :cond_22

    .line 92
    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "subprotocolArray":[Ljava/lang/String;
    nop

    .local v0, "i":I
    :goto_11
    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 94
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 96
    .end local v0    # "i":I
    :cond_1f
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    .line 97
    .end local v1    # "subprotocolArray":[Ljava/lang/String;
    goto :goto_26

    .line 98
    :cond_22
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    .line 100
    :goto_26
    iput-wide p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->maxFramePayloadLength:J

    .line 101
    return-void
.end method


# virtual methods
.method public abstract close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public getMaxFramePayloadLength()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->maxFramePayloadLength:J

    return-wide v0
.end method

.method public getSelectedSubprotocol()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->selectedSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSubprotocols()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 115
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    .line 116
    .local v4, "p":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v4    # "p":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 118
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_13
    return-object v0
.end method

.method public getVersion()Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .registers 2

    .line 125
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method

.method public getWebSocketUrl()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->webSocketUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method protected selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "requestedSubprotocols"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_9

    goto :goto_31

    .line 167
    :cond_9
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "requestedSubprotocolArray":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_13
    if-ge v5, v3, :cond_30

    aget-object v6, v2, v5

    .line 169
    .local v6, "p":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "requestedSubprotocol":Ljava/lang/String;
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x0

    .local v9, "len$":I
    .local v10, "i$":I
    :goto_1f
    if-ge v10, v9, :cond_2d

    aget-object v11, v8, v10

    .line 172
    .local v11, "supportedSubprotocol":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 173
    return-object v7

    .line 171
    .end local v11    # "supportedSubprotocol":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 168
    .end local v6    # "p":Ljava/lang/String;
    .end local v7    # "requestedSubprotocol":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 179
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v5    # "i$":I
    :cond_30
    return-object v0

    .line 164
    .end local v1    # "requestedSubprotocolArray":[Ljava/lang/String;
    :cond_31
    :goto_31
    return-object v0
.end method

.method protected setSelectedSubprotocol(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->selectedSubprotocol:Ljava/lang/String;

    .line 194
    return-void
.end method
