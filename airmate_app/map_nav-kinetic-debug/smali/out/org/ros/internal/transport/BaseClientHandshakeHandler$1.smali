.class Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;
.super Ljava/lang/Object;
.source "BaseClientHandshakeHandler.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/transport/BaseClientHandshakeHandler;->signalOnSuccess(Lorg/ros/internal/transport/ConnectionHeader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/internal/transport/ClientHandshakeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/transport/BaseClientHandshakeHandler;

.field final synthetic val$incommingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;


# direct methods
.method constructor <init>(Lorg/ros/internal/transport/BaseClientHandshakeHandler;Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/transport/BaseClientHandshakeHandler;

    .line 82
    iput-object p1, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;->this$0:Lorg/ros/internal/transport/BaseClientHandshakeHandler;

    iput-object p2, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;->val$incommingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 82
    check-cast p1, Lorg/ros/internal/transport/ClientHandshakeListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;->run(Lorg/ros/internal/transport/ClientHandshakeListener;)V

    return-void
.end method

.method public run(Lorg/ros/internal/transport/ClientHandshakeListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/ros/internal/transport/ClientHandshakeListener;

    .line 85
    iget-object v0, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;->this$0:Lorg/ros/internal/transport/BaseClientHandshakeHandler;

    invoke-static {v0}, Lorg/ros/internal/transport/BaseClientHandshakeHandler;->access$000(Lorg/ros/internal/transport/BaseClientHandshakeHandler;)Lorg/ros/internal/transport/ClientHandshake;

    move-result-object v0

    invoke-interface {v0}, Lorg/ros/internal/transport/ClientHandshake;->getOutgoingConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/internal/transport/BaseClientHandshakeHandler$1;->val$incommingConnectionHeader:Lorg/ros/internal/transport/ConnectionHeader;

    invoke-interface {p1, v0, v1}, Lorg/ros/internal/transport/ClientHandshakeListener;->onSuccess(Lorg/ros/internal/transport/ConnectionHeader;Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 86
    return-void
.end method
