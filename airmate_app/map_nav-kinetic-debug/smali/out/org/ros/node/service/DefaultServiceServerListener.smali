.class public Lorg/ros/node/service/DefaultServiceServerListener;
.super Ljava/lang/Object;
.source "DefaultServiceServerListener.java"

# interfaces
.implements Lorg/ros/node/service/ServiceServerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ros/node/service/ServiceServerListener<",
        "TT;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMasterRegistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 22
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    check-cast p1, Lorg/ros/node/service/ServiceServer;

    invoke-virtual {p0, p1}, Lorg/ros/node/service/DefaultServiceServerListener;->onMasterRegistrationFailure(Lorg/ros/node/service/ServiceServer;)V

    return-void
.end method

.method public onMasterRegistrationFailure(Lorg/ros/node/service/ServiceServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    .local p1, "registrant":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    return-void
.end method

.method public bridge synthetic onMasterRegistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 22
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    check-cast p1, Lorg/ros/node/service/ServiceServer;

    invoke-virtual {p0, p1}, Lorg/ros/node/service/DefaultServiceServerListener;->onMasterRegistrationSuccess(Lorg/ros/node/service/ServiceServer;)V

    return-void
.end method

.method public onMasterRegistrationSuccess(Lorg/ros/node/service/ServiceServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    .local p1, "registrant":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationFailure(Ljava/lang/Object;)V
    .registers 2

    .line 22
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    check-cast p1, Lorg/ros/node/service/ServiceServer;

    invoke-virtual {p0, p1}, Lorg/ros/node/service/DefaultServiceServerListener;->onMasterUnregistrationFailure(Lorg/ros/node/service/ServiceServer;)V

    return-void
.end method

.method public onMasterUnregistrationFailure(Lorg/ros/node/service/ServiceServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    .local p1, "registrant":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    return-void
.end method

.method public bridge synthetic onMasterUnregistrationSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 22
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    check-cast p1, Lorg/ros/node/service/ServiceServer;

    invoke-virtual {p0, p1}, Lorg/ros/node/service/DefaultServiceServerListener;->onMasterUnregistrationSuccess(Lorg/ros/node/service/ServiceServer;)V

    return-void
.end method

.method public onMasterUnregistrationSuccess(Lorg/ros/node/service/ServiceServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    .local p1, "registrant":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    return-void
.end method

.method public onShutdown(Lorg/ros/node/service/ServiceServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/ros/node/service/DefaultServiceServerListener;, "Lorg/ros/node/service/DefaultServiceServerListener<TT;TS;>;"
    .local p1, "serviceServer":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<TT;TS;>;"
    return-void
.end method
