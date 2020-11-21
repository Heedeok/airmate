.class public Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;
.super Ljava/lang/Object;
.source "SpdySessionStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

.field public static final OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

.field public static final PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;


# instance fields
.field private final code:I

.field private final statusPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    .line 33
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    .line 39
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "statusPhrase"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p2, :cond_a

    .line 73
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->code:I

    .line 74
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->statusPhrase:Ljava/lang/String;

    .line 75
    return-void

    .line 70
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statusPhrase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;
    .registers 4
    .param p0, "code"    # I

    .line 48
    const/16 v0, 0xb

    if-eq p0, v0, :cond_29

    packed-switch p0, :pswitch_data_2c

    .line 57
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 52
    :pswitch_23
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0

    .line 50
    :pswitch_26
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0

    .line 54
    :cond_29
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 22
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)I
    .registers 4
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    .line 111
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 99
    return v1

    .line 102
    :cond_6
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v0

    move-object v2, p1

    check-cast v2, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    return v1
.end method

.method public getCode()I
    .registers 2

    .line 81
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->code:I

    return v0
.end method

.method public getStatusPhrase()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->statusPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 93
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getStatusPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
