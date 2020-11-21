.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/ros/node/service/ServiceResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->readAvailableMapList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/node/service/ServiceResponseListener<",
        "Lworld_canvas_msgs/ListMapsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    .line 223
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/ros/exception/RemoteException;)V
    .registers 4
    .param p1, "e"    # Lorg/ros/exception/RemoteException;

    .line 231
    const-string v0, "MapNav"

    const-string v1, "readAvailableMapList() Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeDismissWaitingDialog()V

    .line 233
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 223
    check-cast p1, Lworld_canvas_msgs/ListMapsResponse;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;->onSuccess(Lworld_canvas_msgs/ListMapsResponse;)V

    return-void
.end method

.method public onSuccess(Lworld_canvas_msgs/ListMapsResponse;)V
    .registers 4
    .param p1, "message"    # Lworld_canvas_msgs/ListMapsResponse;

    .line 225
    const-string v0, "MapNav"

    const-string v1, "readAvailableMapList() Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeDismissWaitingDialog()V

    .line 227
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-interface {p1}, Lworld_canvas_msgs/ListMapsResponse;->getMapList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->showMapListDialog(Ljava/util/List;)V

    .line 228
    return-void
.end method
