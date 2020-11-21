.class public final enum Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
.super Ljava/lang/Enum;
.source "WebSocketVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum UNKNOWN:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 28
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->UNKNOWN:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 34
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "V00"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 40
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "V08"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 47
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "V13"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->UNKNOWN:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .registers 1

    .line 27
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method


# virtual methods
.method public toHttpHeaderValue()Ljava/lang/String;
    .registers 4

    .line 53
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_7

    .line 54
    const-string v0, "0"

    return-object v0

    .line 55
    :cond_7
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_e

    .line 56
    const-string v0, "8"

    return-object v0

    .line 57
    :cond_e
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_15

    .line 58
    const-string v0, "13"

    return-object v0

    .line 60
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown web socket version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
