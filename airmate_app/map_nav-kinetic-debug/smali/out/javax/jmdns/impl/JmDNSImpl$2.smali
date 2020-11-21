.class Ljavax/jmdns/impl/JmDNSImpl$2;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmDNSImpl;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmDNSImpl;

.field final synthetic val$event:Ljavax/jmdns/ServiceEvent;

.field final synthetic val$listener_status:Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;Ljavax/jmdns/ServiceEvent;)V
    .registers 4
    .param p1, "this$0"    # Ljavax/jmdns/impl/JmDNSImpl;

    .line 981
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$2;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    iput-object p2, p0, Ljavax/jmdns/impl/JmDNSImpl$2;->val$listener_status:Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    iput-object p3, p0, Ljavax/jmdns/impl/JmDNSImpl$2;->val$event:Ljavax/jmdns/ServiceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 985
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$2;->val$listener_status:Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$2;->val$event:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ListenerStatus$ServiceListenerStatus;->serviceRemoved(Ljavax/jmdns/ServiceEvent;)V

    .line 986
    return-void
.end method
