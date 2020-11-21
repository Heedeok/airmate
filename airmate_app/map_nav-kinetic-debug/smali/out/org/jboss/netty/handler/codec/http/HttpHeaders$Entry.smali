.class final Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpHeaders;
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
.field after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field final hash:I

.field final key:Ljava/lang/String;

.field next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    .line 989
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    .line 990
    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    .line 991
    return-void
.end method


# virtual methods
.method addBefore(Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;)V
    .registers 3
    .param p1, "e"    # Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 999
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 1000
    iget-object v0, p1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 1001
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 1002
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 1003
    return-void
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 980
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1006
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 980
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1010
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    return-object v0
.end method

.method remove()V
    .registers 3

    .line 994
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 995
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 996
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 980
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1014
    if-eqz p1, :cond_a

    .line 1017
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    .line 1019
    .local v0, "oldValue":Ljava/lang/String;
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    .line 1020
    return-object v0

    .line 1015
    .end local v0    # "oldValue":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
