.class public Lcom/github/rosjava/android_remocons/common_tools/zeroconf/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 24
    const-string v0, "zeroconf"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method
