.class final Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
.super Ljava/lang/Object;
.source "SpdyHeaders.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

.field before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

.field final hash:I

.field final key:Ljava/lang/String;

.field next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->hash:I

    .line 728
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    .line 729
    iput-object p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->value:Ljava/lang/String;

    .line 730
    return-void
.end method


# virtual methods
.method addBefore(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;)V
    .registers 3
    .param p1, "e"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 738
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 739
    iget-object v0, p1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 740
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 741
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 742
    return-void
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 719
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 745
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 719
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 749
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->value:Ljava/lang/String;

    return-object v0
.end method

.method remove()V
    .registers 3

    .line 733
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 734
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 735
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 719
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 753
    if-eqz p1, :cond_a

    .line 756
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->value:Ljava/lang/String;

    .line 758
    .local v0, "oldValue":Ljava/lang/String;
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->value:Ljava/lang/String;

    .line 759
    return-object v0

    .line 754
    .end local v0    # "oldValue":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
