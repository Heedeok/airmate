.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/ros/node/service/ServiceResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->loadMap(Lworld_canvas_msgs/MapListEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/node/service/ServiceResponseListener<",
        "Lworld_canvas_msgs/PublishMapResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    .line 275
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$8;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/ros/exception/RemoteException;)V
    .registers 4
    .param p1, "e"    # Lorg/ros/exception/RemoteException;

    .line 282
    const-string v0, "MapNav"

    const-string v1, "loadMap() Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$8;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeDismissWaitingDialog()V

    .line 284
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 275
    check-cast p1, Lworld_canvas_msgs/PublishMapResponse;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$8;->onSuccess(Lworld_canvas_msgs/PublishMapResponse;)V

    return-void
.end method

.method public onSuccess(Lworld_canvas_msgs/PublishMapResponse;)V
    .registers 4
    .param p1, "message"    # Lworld_canvas_msgs/PublishMapResponse;

    .line 277
    const-string v0, "MapNav"

    const-string v1, "loadMap() Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$8;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeDismissWaitingDialog()V

    .line 279
    return-void
.end method
