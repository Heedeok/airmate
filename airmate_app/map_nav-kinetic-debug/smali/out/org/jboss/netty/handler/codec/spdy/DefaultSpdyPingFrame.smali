.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyPingFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;


# instance fields
.field private id:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "id"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;->setId(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public getID()I
    .registers 2

    .line 37
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;->getId()I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 41
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;->id:I

    return v0
.end method

.method public setID(I)V
    .registers 2
    .param p1, "id"    # I

    .line 45
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;->setId(I)V

    .line 46
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 49
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;->id:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "--> ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
