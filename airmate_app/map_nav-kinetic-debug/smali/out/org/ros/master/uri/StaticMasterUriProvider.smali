.class public Lorg/ros/master/uri/StaticMasterUriProvider;
.super Ljava/lang/Object;
.source "StaticMasterUriProvider.java"

# interfaces
.implements Lorg/ros/master/uri/MasterUriProvider;


# instance fields
.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ros/master/uri/StaticMasterUriProvider;->uri:Ljava/net/URI;

    .line 36
    return-void
.end method


# virtual methods
.method public getMasterUri()Ljava/net/URI;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/ros/master/uri/StaticMasterUriProvider;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getMasterUri(JLjava/util/concurrent/TimeUnit;)Ljava/net/URI;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 45
    iget-object v0, p0, Lorg/ros/master/uri/StaticMasterUriProvider;->uri:Ljava/net/URI;

    return-object v0
.end method
