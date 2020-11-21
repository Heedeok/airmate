.class public interface abstract Lorg/ros/internal/transport/ProtocolNames;
.super Ljava/lang/Object;
.source "ProtocolNames.java"


# static fields
.field public static final SUPPORTED:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCPROS:Ljava/lang/String; = "TCPROS"

.field public static final UDPROS:Ljava/lang/String; = "UDPROS"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TCPROS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/transport/ProtocolNames;->SUPPORTED:Ljava/util/Collection;

    return-void
.end method
