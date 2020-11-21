.class Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoader"
.end annotation


# static fields
.field static disabled:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 191
    sget-boolean v0, Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;->disabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 192
    return-object v1

    .line 196
    :cond_6
    :try_start_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_17

    .line 200
    .local v0, "systemLoader":Ljava/lang/ClassLoader;
    nop

    .line 201
    if-eqz v0, :cond_16

    .line 203
    :try_start_d
    const-string v2, "com.google.common.base.internal.Finalizer"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_13} :catch_14

    return-object v2

    .line 204
    :catch_14
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return-object v1

    .line 209
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_16
    return-object v1

    .line 197
    .end local v0    # "systemLoader":Ljava/lang/ClassLoader;
    :catch_17
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/google/common/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Not allowed to access system class loader."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 199
    return-object v1
.end method
