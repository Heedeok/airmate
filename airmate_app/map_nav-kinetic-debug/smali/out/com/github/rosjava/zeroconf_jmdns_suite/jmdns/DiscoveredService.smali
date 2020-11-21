.class public Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;
.super Ljava/lang/Object;
.source "DiscoveredService.java"


# instance fields
.field public description:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public hostname:Ljava/lang/String;

.field public ipv4_addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipv6_addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public port:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv4_addresses:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/DiscoveredService;->ipv6_addresses:Ljava/util/ArrayList;

    return-void
.end method
