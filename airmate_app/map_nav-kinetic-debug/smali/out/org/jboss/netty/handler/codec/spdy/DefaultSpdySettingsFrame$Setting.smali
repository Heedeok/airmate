.class final Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
.super Ljava/lang/Object;
.source "DefaultSpdySettingsFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Setting"
.end annotation


# instance fields
.field private persist:Z

.field private persisted:Z

.field private value:I


# direct methods
.method constructor <init>(IZZ)V
    .registers 4
    .param p1, "value"    # I
    .param p2, "persist"    # Z
    .param p3, "persisted"    # Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->value:I

    .line 168
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persist:Z

    .line 169
    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persisted:Z

    .line 170
    return-void
.end method


# virtual methods
.method getValue()I
    .registers 2

    .line 173
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->value:I

    return v0
.end method

.method isPersist()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persist:Z

    return v0
.end method

.method isPersisted()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persisted:Z

    return v0
.end method

.method setPersist(Z)V
    .registers 2
    .param p1, "persist"    # Z

    .line 185
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persist:Z

    .line 186
    return-void
.end method

.method setPersisted(Z)V
    .registers 2
    .param p1, "persisted"    # Z

    .line 193
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persisted:Z

    .line 194
    return-void
.end method

.method setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 177
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->value:I

    .line 178
    return-void
.end method
