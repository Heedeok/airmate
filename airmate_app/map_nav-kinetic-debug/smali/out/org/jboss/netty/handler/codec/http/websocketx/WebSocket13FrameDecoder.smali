.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;
.source "WebSocket13FrameDecoder.java"


# direct methods
.method public constructor <init>(ZZ)V
    .registers 5
    .param p1, "maskedPayload"    # Z
    .param p2, "allowExtensions"    # Z

    .line 72
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket13FrameDecoder;-><init>(ZZJ)V

    .line 73
    return-void
.end method

.method public constructor <init>(ZZJ)V
    .registers 5
    .param p1, "maskedPayload"    # Z
    .param p2, "allowExtensions"    # Z
    .param p3, "maxFramePayloadLength"    # J

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(ZZJ)V

    .line 90
    return-void
.end method
