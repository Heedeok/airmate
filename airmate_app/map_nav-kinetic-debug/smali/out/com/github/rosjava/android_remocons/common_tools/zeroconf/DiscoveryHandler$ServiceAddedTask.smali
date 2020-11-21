.class Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;
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
    name = "ServiceAddedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;


# direct methods
.method private constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;->this$0:Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;
    .param p2, "x1"    # Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$1;

    .line 44
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 43
    check-cast p1, [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;->doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;)Ljava/lang/Void;
    .registers 7
    .param p1, "services"    # [Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 48
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3b

    .line 49
    aget-object v0, p1, v1

    .line 50
    .local v0, "service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[+] Service added: "

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

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "result":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;->publishProgress([Ljava/lang/Object;)V

    .line 52
    .end local v0    # "service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    .end local v3    # "result":Ljava/lang/String;
    goto :goto_44

    .line 53
    :cond_3b
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "Error - ServiceAddedTask::doInBackground received #services != 1"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryHandler$ServiceAddedTask;->publishProgress([Ljava/lang/Object;)V

    .line 55
    :goto_44
    const/4 v0, 0x0

    return-object v0
.end method
