.class public final Lorg/jboss/netty/util/ExternalResourceUtil;
.super Ljava/lang/Object;
.source "ExternalResourceUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static varargs release([Lorg/jboss/netty/util/ExternalResourceReleasable;)V
    .registers 6
    .param p0, "releasables"    # [Lorg/jboss/netty/util/ExternalResourceReleasable;

    .line 28
    array-length v0, p0

    new-array v0, v0, [Lorg/jboss/netty/util/ExternalResourceReleasable;

    .line 31
    .local v0, "releasablesCopy":[Lorg/jboss/netty/util/ExternalResourceReleasable;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_2f

    .line 32
    aget-object v3, p0, v2

    if-eqz v3, :cond_13

    .line 35
    aget-object v3, p0, v2

    aput-object v3, v0, v2

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 33
    :cond_13
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasables["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    .end local v2    # "i":I
    :cond_2f
    move-object v2, v0

    .local v2, "arr$":[Lorg/jboss/netty/util/ExternalResourceReleasable;
    array-length v3, v2

    .local v1, "i$":I
    .local v3, "len$":I
    :goto_31
    if-ge v1, v3, :cond_3b

    aget-object v4, v2, v1

    .line 39
    .local v4, "e":Lorg/jboss/netty/util/ExternalResourceReleasable;
    invoke-interface {v4}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    .line 38
    .end local v4    # "e":Lorg/jboss/netty/util/ExternalResourceReleasable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 41
    .end local v1    # "i$":I
    .end local v2    # "arr$":[Lorg/jboss/netty/util/ExternalResourceReleasable;
    .end local v3    # "len$":I
    :cond_3b
    return-void
.end method
