.class public Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DiscoveryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private discoveredServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
            ">;"
        }
    .end annotation
.end field

.field private otherServicesDrawable:I

.field private targetServiceDrawable:I

.field private targetServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "targetServiceName"    # Ljava/lang/String;
    .param p4, "targetServiceDrawable"    # I
    .param p5, "otherServicesDrawable"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 82
    .local p2, "discoveredServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;>;"
    sget v0, Lcom/github/rosjava/android_remocons/common_tools/R$layout;->zeroconf_master_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 83
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->discoveredServices:Ljava/util/ArrayList;

    .line 85
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->targetServiceName:Ljava/lang/String;

    .line 86
    iput p4, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->targetServiceDrawable:I

    .line 87
    iput p5, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->otherServicesDrawable:I

    .line 88
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 92
    move-object v0, p2

    .line 93
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_d

    .line 94
    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;

    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter$CustomCheckBox;-><init>(Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;Landroid/content/Context;)V

    move-object v0, v1

    .line 97
    :cond_d
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->discoveredServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;

    .line 98
    .local v1, "discovered_service":Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
    if-eqz v1, :cond_146

    .line 99
    sget v2, Lcom/github/rosjava/android_remocons/common_tools/R$id;->service_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    .local v2, "tt":Landroid/widget/TextView;
    sget v3, Lcom/github/rosjava/android_remocons/common_tools/R$id;->service_detail:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 101
    .local v3, "bt":Landroid/widget/TextView;
    if-eqz v2, :cond_2e

    .line 102
    iget-object v4, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_2e
    if-eqz v3, :cond_db

    .line 105
    const-string v4, ""

    .line 106
    .local v4, "result":Ljava/lang/String;
    iget-object v5, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 107
    .local v6, "ipv4_address":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_84

    .line 110
    :cond_66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .end local v6    # "ipv4_address":Ljava/lang/String;
    :goto_84
    goto :goto_38

    .line 113
    :cond_85
    iget-object v5, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 114
    .local v6, "ipv6_address":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d7

    .line 117
    :cond_b9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .end local v6    # "ipv6_address":Ljava/lang/String;
    :goto_d7
    goto :goto_8b

    .line 120
    :cond_d8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .end local v4    # "result":Ljava/lang/String;
    :cond_db
    sget v4, Lcom/github/rosjava/android_remocons/common_tools/R$id;->icon:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 123
    .local v4, "im":Landroid/widget/ImageView;
    if-eqz v4, :cond_146

    .line 124
    iget-object v5, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->type:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->targetServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "._tcp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_137

    iget-object v5, v1, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->type:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->targetServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "._udp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_127

    goto :goto_137

    .line 128
    :cond_127
    iget-object v5, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->otherServicesDrawable:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_146

    .line 126
    :cond_137
    :goto_137
    iget-object v5, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/github/rosjava/android_remocons/common_tools/zeroconf/DiscoveryAdapter;->targetServiceDrawable:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .end local v2    # "tt":Landroid/widget/TextView;
    .end local v3    # "bt":Landroid/widget/TextView;
    .end local v4    # "im":Landroid/widget/ImageView;
    :cond_146
    :goto_146
    return-object v0
.end method
