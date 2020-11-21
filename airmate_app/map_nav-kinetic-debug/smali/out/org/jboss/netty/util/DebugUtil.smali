.class public final Lorg/jboss/netty/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static isDebugEnabled()Z
    .registers 3

    .line 43
    :try_start_0
    const-string v0, "org.jboss.netty.debug"

    invoke-static {v0}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 46
    .local v0, "value":Ljava/lang/String;
    goto :goto_9

    .line 44
    .end local v0    # "value":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 48
    .local v0, "value":Ljava/lang/String;
    :goto_9
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 49
    return v1

    .line 52
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v1, 0x1

    nop

    :cond_2f
    return v1
.end method
