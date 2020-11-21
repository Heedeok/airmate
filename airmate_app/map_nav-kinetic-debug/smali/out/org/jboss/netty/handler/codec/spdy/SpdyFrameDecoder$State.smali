.class final enum Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
.super Ljava/lang/Enum;
.source "SpdyFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum DISCARD_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum READ_CONTROL_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum READ_DATA_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum READ_HEADER_BLOCK:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum READ_HEADER_BLOCK_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field public static final enum READ_SETTINGS_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 56
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "READ_COMMON_HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 57
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "READ_CONTROL_FRAME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_CONTROL_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 58
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "READ_SETTINGS_FRAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTINGS_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 59
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "READ_HEADER_BLOCK_FRAME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 60
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "READ_HEADER_BLOCK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 61
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "READ_DATA_FRAME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 62
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "DISCARD_FRAME"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->DISCARD_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 63
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v1, "FRAME_ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_CONTROL_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTINGS_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->DISCARD_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    aput-object v1, v0, v9

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    .registers 1

    .line 55
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-object v0
.end method
