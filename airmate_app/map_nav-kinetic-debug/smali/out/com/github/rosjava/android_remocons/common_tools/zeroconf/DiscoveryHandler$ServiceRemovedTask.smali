.class Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;
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
    name = "ServiceRemovedTask"
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

    .line 106
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;
    .param p2, "x1"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;

    .line 106
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .registers 8
    .param p1, "services"    # [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_51

    .line 111
    aget-object v0, p1, v1

    .line 112
    .local v0, "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[-] Service removed: "

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

    .line 113
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

    .line 114
    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->publishProgress([Ljava/lang/Object;)V

    .line 115
    return-object v0

    .line 117
    .end local v0    # "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .end local v3    # "result":Ljava/lang/String;
    :cond_51
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "Error - ServiceAddedTask::doInBackground received #services != 1"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->publishProgress([Ljava/lang/Object;)V

    .line 119
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

    .line 105
    check-cast p1, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V
    .registers 7
    .param p1, "discovered_service"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 125
    if-eqz p1, :cond_4d

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "index":I
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

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

    .line 128
    .local v2, "s":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    iget-object v3, v2, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 129
    goto :goto_27

    .line 131
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 133
    .end local v2    # "s":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    goto :goto_d

    .line 134
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->access$000(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_46

    .line 135
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->access$000(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;->access$100(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->notifyDataSetChanged()V

    goto :goto_4d

    .line 138
    :cond_46
    const-string v1, "zeroconf"

    const-string v2, "Tried to remove a non-existant service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "index":I
    :cond_4d
    :goto_4d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 105
    check-cast p1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceRemovedTask;->onPostExecute(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)V

    return-void
.end method
