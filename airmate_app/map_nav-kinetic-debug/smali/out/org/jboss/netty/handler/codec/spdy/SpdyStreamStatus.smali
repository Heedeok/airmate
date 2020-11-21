.class public Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;
.super Ljava/lang/Object;
.source "SpdyStreamStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final CANCEL:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final FRAME_TOO_LARGE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final INVALID_CREDENTIALS:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final UNSUPPORTED_VERSION:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;


# instance fields
.field private final code:I

.field private final statusPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 33
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "INVALID_STREAM"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 39
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 45
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "UNSUPPORTED_VERSION"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->UNSUPPORTED_VERSION:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 51
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->CANCEL:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 57
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 63
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 69
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "STREAM_IN_USE"

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 75
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "STREAM_ALREADY_CLOSED"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 81
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "INVALID_CREDENTIALS"

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_CREDENTIALS:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 87
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const-string v1, "FRAME_TOO_LARGE"

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FRAME_TOO_LARGE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "statusPhrase"    # Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p1, :cond_14

    .line 143
    if-eqz p2, :cond_c

    .line 147
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->code:I

    .line 148
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->statusPhrase:Ljava/lang/String;

    .line 149
    return-void

    .line 144
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statusPhrase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 is not a valid status code for a RST_STREAM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;
    .registers 4
    .param p0, "code"    # I

    .line 96
    if-eqz p0, :cond_42

    .line 101
    packed-switch p0, :pswitch_data_4a

    .line 126
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 123
    :pswitch_21
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FRAME_TOO_LARGE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 121
    :pswitch_24
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_CREDENTIALS:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 119
    :pswitch_27
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 117
    :pswitch_2a
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 115
    :pswitch_2d
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 113
    :pswitch_30
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 111
    :pswitch_33
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->CANCEL:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 109
    :pswitch_36
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->UNSUPPORTED_VERSION:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 107
    :pswitch_39
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 105
    :pswitch_3c
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 103
    :pswitch_3f
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0

    .line 97
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 is not a valid status code for a RST_STREAM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 22
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 185
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 172
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 173
    return v1

    .line 176
    :cond_6
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1
.end method

.method public getCode()I
    .registers 2

    .line 155
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->code:I

    return v0
.end method

.method public getStatusPhrase()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->statusPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 167
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 181
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getStatusPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
