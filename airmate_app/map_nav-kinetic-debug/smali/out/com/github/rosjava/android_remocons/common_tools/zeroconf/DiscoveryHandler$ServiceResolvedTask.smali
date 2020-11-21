.class Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;
.super Landroid/os/AsyncTask;
.source "DiscoveryHandler.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceResolvedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
        "Ljava/lang/String;",
        "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;


# direct methods
.method private constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;
    .param p2, "x1"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;

    .line 61
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .registers 10
    .param p1, "services"    # [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9f

    .line 66
    aget-object v0, p1, v1

    .line 67
    .local v0, "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[=] Service resolved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v4, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 70
    .local v5, "address":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n    Address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .end local v5    # "address":Ljava/lang/String;
    goto :goto_4f

    .line 72
    :cond_70
    iget-object v4, v0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    .restart local v5    # "address":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n    Address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .end local v5    # "address":Ljava/lang/String;
    goto :goto_76

    .line 75
    :cond_97
    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->publishProgress([Ljava/lang/Object;)V

    .line 76
    return-object v0

    .line 78
    .end local v0    # "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .end local v3    # "result":Ljava/lang/String;
    :cond_9f
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "Error - ServiceAddedTask::doInBackground received #services != 1"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->publishProgress([Ljava/lang/Object;)V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 60
    check-cast p1, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V
    .registers 7
    .param p1, "discovered_service"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_4d

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "index":I
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->access$000(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 89
    .local v2, "s":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    iget-object v3, v2, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 90
    goto :goto_27

    .line 92
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 94
    .end local v2    # "s":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    goto :goto_d

    .line 95
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->access$000(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_46

    .line 96
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->access$000(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->access$100(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->notifyDataSetChanged()V

    goto :goto_4d

    .line 99
    :cond_46
    const-string v1, "zeroconf"

    const-string v2, "Tried to add an existing service (fix this)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "index":I
    :cond_4d
    :goto_4d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 60
    check-cast p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceResolvedTask;->onPostExecute(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V

    return-void
.end method
