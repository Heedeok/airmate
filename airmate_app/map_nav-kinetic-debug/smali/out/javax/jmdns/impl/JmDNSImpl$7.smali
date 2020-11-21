.class Ljavax/jmdns/impl/JmDNSImpl$7;
.super Ljava/lang/Thread;
.source "JmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmDNSImpl;->recover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .line 1729
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$7;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1735
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$7;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->__recover()V

    .line 1736
    return-void
.end method
