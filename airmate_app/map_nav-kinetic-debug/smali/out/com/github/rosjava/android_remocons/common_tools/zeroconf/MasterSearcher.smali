.class public Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;
.super Ljava/lang/Object;
.source "MasterSearcher.java"


# instance fields
.field private discoveredMasters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryAdapter:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

.field private discoveryHandler:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

.field private logger:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/Logger;

.field private zeroconf:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "targetServiceName"    # Ljava/lang/String;
    .param p4, "targetServiceDrawable"    # I
    .param p5, "otherServicesDrawable"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveredMasters:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveredMasters:Ljava/util/ArrayList;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveryAdapter:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    .line 44
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveryAdapter:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 46
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 48
    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/Logger;

    invoke-direct {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/Logger;-><init>()V

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->logger:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/Logger;

    .line 49
    new-instance v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->logger:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/Logger;

    invoke-direct {v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;-><init>(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;)V

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->zeroconf:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    .line 50
    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveryAdapter:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveredMasters:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveryHandler:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    .line 51
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->zeroconf:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->discoveryHandler:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-virtual {v1, v2}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->setDefaultDiscoveryCallback(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfDiscoveryHandler;)V

    .line 53
    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoverySetup;

    invoke-direct {v1, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoverySetup;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->zeroconf:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoverySetup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method


# virtual methods
.method public shutdown()V
    .registers 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/MasterSearcher;->zeroconf:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    invoke-virtual {v0}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 61
    goto :goto_a

    .line 59
    :catch_6
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :goto_a
    return-void
.end method
