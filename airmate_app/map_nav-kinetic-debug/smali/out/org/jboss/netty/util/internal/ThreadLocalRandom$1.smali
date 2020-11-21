.class final Lorg/jboss/netty/util/internal/ThreadLocalRandom$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/jboss/netty/util/internal/ThreadLocalRandom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ThreadLocalRandom$1;->initialValue()Lorg/jboss/netty/util/internal/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/jboss/netty/util/internal/ThreadLocalRandom;
    .registers 2

    .line 81
    new-instance v0, Lorg/jboss/netty/util/internal/ThreadLocalRandom;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ThreadLocalRandom;-><init>()V

    return-object v0
.end method
