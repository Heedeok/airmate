.class public Lorg/ros/internal/message/MessageBuffers;
.super Ljava/lang/Object;
.source "MessageBuffers.java"


# static fields
.field static final ESTIMATED_LENGTH:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 42
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
