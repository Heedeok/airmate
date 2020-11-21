.class Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;
.super Ljava/lang/Object;
.source "EvictionTimer.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/pool/impl/EvictionTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivilegedSetTccl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;->cl:Ljava/lang/ClassLoader;

    .line 119
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .registers 3

    .line 125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;->cl:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/EvictionTimer$PrivilegedSetTccl;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
