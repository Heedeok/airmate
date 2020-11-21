.class Ljavax/jmdns/impl/JmmDNSImpl$4;
.super Ljava/lang/Object;
.source "JmmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmmDNSImpl;

.field final synthetic val$result:Ljava/util/List;

.field final synthetic val$service_list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Ljavax/jmdns/impl/JmmDNSImpl;

    .line 453
    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$4;->this$0:Ljavax/jmdns/impl/JmmDNSImpl;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$4;->val$result:Ljava/util/List;

    iput-object p3, p0, Ljavax/jmdns/impl/JmmDNSImpl$4;->val$service_list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 460
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$4;->val$result:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl$4;->val$service_list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    return-void
.end method
