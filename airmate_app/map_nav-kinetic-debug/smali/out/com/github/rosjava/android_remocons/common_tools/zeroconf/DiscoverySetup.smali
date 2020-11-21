.class public Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoverySetup;
.super Landroid/os/AsyncTask;
.source "DiscoverySetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private commencing_dialog:Landroid/app/ProgressDialog;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoverySetup;->context:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoverySetup;->doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;)Ljava/lang/Void;
    .registers 5
    .param p1, "zeroconfs"    # [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    .line 40
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 41
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 42
    .local v0, "zconf":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;
    const-string v1, "zeroconf"

    const-string v2, "*********** Discovery Commencing **************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "_ros-master._tcp"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->addListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "_ros-master._udp"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->addListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "_concert-master._tcp"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->addListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "_concert-master._udp"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->addListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v0    # "zconf":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;
    goto :goto_32

    .line 50
    :cond_2b
    const-string v0, "zeroconf"

    const-string v1, "Error - DiscoveryTask::doInBackground received #zeroconfs != 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_32
    const/4 v0, 0x0

    return-object v0
.end method
