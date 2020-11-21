.class Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$DefaultLogger;
.super Ljava/lang/Object;
.source "Zeroconf.java"

# interfaces
.implements Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/ZeroconfLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;


# direct methods
.method private constructor <init>(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$DefaultLogger;->this$0:Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;
    .param p2, "x1"    # Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$1;

    .line 59
    invoke-direct {p0, p1}, Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf$DefaultLogger;-><init>(Lcom/github/rosjava/zeroconf_jmdns_suite/jmdns/Zeroconf;)V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 60
    return-void
.end method
