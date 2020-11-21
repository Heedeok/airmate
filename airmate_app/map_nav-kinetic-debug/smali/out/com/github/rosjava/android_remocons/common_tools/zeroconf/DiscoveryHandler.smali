.class public Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;
.super Ljava/lang/Object;
.source "DiscoveryHandler.java"

# interfaces
.implements Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;,
        Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;,
        Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;
    }
.end annotation


# instance fields
.field private discovered_services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
            ">;"
        }
    .end annotation
.end field

.field private discovery_adapter:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "discovery_adapter"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;",
            "Ljava/util/ArrayList<",
            "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p2, "discovered_services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->discovery_adapter:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    .line 159
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->discovered_services:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    .line 36
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->discovered_services:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    .line 36
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->discovery_adapter:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    return-object v0
.end method


# virtual methods
.method public serviceAdded(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V
    .registers 5
    .param p1, "service"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 168
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method public serviceRemoved(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V
    .registers 5
    .param p1, "service"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 172
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method

.method public serviceResolved(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V
    .registers 5
    .param p1, "service"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 176
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method
