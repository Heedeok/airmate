.class public Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/StandardLogger;
.super Ljava/lang/Object;
.source "StandardLogger.java"

# interfaces
.implements Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    return-void
.end method
