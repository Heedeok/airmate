.class public abstract Lorg/ros/android/RosActivity;
.super Landroid/app/Activity;
.source "RosActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/RosActivity$OnActivityResultCallback;,
        Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;
    }
.end annotation


# static fields
.field protected static final MASTER_CHOOSER_REQUEST_CODE:I


# instance fields
.field private masterChooserActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private masterChooserRequestCode:I

.field protected nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

.field private final nodeMainExecutorServiceConnection:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

.field private final notificationTicker:Ljava/lang/String;

.field private final notificationTitle:Ljava/lang/String;

.field private onActivityResultCallback:Lorg/ros/android/RosActivity$OnActivityResultCallback;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "notificationTicker"    # Ljava/lang/String;
    .param p2, "notificationTitle"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/android/RosActivity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 159
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V
    .registers 5
    .param p1, "notificationTicker"    # Ljava/lang/String;
    .param p2, "notificationTitle"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 187
    .local p3, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lorg/ros/android/RosActivity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-object p3, p0, Lorg/ros/android/RosActivity;->masterChooserActivity:Ljava/lang/Class;

    .line 189
    iput p4, p0, Lorg/ros/android/RosActivity;->masterChooserRequestCode:I

    .line 190
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .registers 5
    .param p1, "notificationTicker"    # Ljava/lang/String;
    .param p2, "notificationTitle"    # Ljava/lang/String;
    .param p3, "customMasterUri"    # Ljava/net/URI;

    .line 169
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const-class v0, Lorg/ros/android/MasterChooser;

    iput-object v0, p0, Lorg/ros/android/RosActivity;->masterChooserActivity:Ljava/lang/Class;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/android/RosActivity;->masterChooserRequestCode:I

    .line 55
    new-instance v0, Lorg/ros/android/RosActivity$1;

    invoke-direct {v0, p0}, Lorg/ros/android/RosActivity$1;-><init>(Lorg/ros/android/RosActivity;)V

    iput-object v0, p0, Lorg/ros/android/RosActivity;->onActivityResultCallback:Lorg/ros/android/RosActivity$OnActivityResultCallback;

    .line 170
    iput-object p1, p0, Lorg/ros/android/RosActivity;->notificationTicker:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lorg/ros/android/RosActivity;->notificationTitle:Ljava/lang/String;

    .line 172
    new-instance v0, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    invoke-direct {v0, p0, p3}, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;-><init>(Lorg/ros/android/RosActivity;Ljava/net/URI;)V

    iput-object v0, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorServiceConnection:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/RosActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/RosActivity;

    .line 41
    invoke-direct {p0}, Lorg/ros/android/RosActivity;->getDefaultHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultHostAddress()Ljava/lang/String;
    .registers 2

    .line 272
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newNonLoopback()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindNodeMainExecutorService()V
    .registers 4

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.ros.android.ACTION_START_NODE_RUNNER_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "org.ros.android.EXTRA_NOTIFICATION_TICKER"

    iget-object v2, p0, Lorg/ros/android/RosActivity;->notificationTicker:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "org.ros.android.EXTRA_NOTIFICATION_TITLE"

    iget-object v2, p0, Lorg/ros/android/RosActivity;->notificationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lorg/ros/android/RosActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    iget-object v1, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorServiceConnection:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    .line 205
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/ros/android/RosActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    const-string v2, "Failed to bind NodeMainExecutorService."

    .line 204
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 207
    return-void
.end method

.method public getMasterUri()Ljava/net/URI;
    .registers 2

    .line 248
    iget-object v0, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v0}, Lorg/ros/android/NodeMainExecutorService;->getMasterUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getRosHostname()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    invoke-virtual {v0}, Lorg/ros/android/NodeMainExecutorService;->getRosHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 3

    .line 220
    new-instance v0, Lorg/ros/android/RosActivity$2;

    invoke-direct {v0, p0}, Lorg/ros/android/RosActivity$2;-><init>(Lorg/ros/android/RosActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 226
    invoke-virtual {v0, v1}, Lorg/ros/android/RosActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    return-void
.end method

.method protected abstract init(Lorg/ros/node/NodeMainExecutor;)V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 266
    iget-object v0, p0, Lorg/ros/android/RosActivity;->onActivityResultCallback:Lorg/ros/android/RosActivity$OnActivityResultCallback;

    if-eqz v0, :cond_c

    .line 267
    iget-object v0, p0, Lorg/ros/android/RosActivity;->onActivityResultCallback:Lorg/ros/android/RosActivity$OnActivityResultCallback;

    invoke-interface {v0, p1, p2, p3}, Lorg/ros/android/RosActivity$OnActivityResultCallback;->execute(IILandroid/content/Intent;)V

    .line 269
    :cond_c
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 211
    iget-object v0, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorServiceConnection:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    invoke-virtual {p0, v0}, Lorg/ros/android/RosActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 212
    iget-object v0, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    iget-object v1, p0, Lorg/ros/android/RosActivity;->nodeMainExecutorServiceConnection:Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;

    .line 213
    invoke-virtual {v1}, Lorg/ros/android/RosActivity$NodeMainExecutorServiceConnection;->getServiceListener()Lorg/ros/android/NodeMainExecutorServiceListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/android/NodeMainExecutorService;->removeListener(Lorg/ros/android/NodeMainExecutorServiceListener;)V

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 215
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 195
    invoke-virtual {p0}, Lorg/ros/android/RosActivity;->bindNodeMainExecutorService()V

    .line 196
    return-void
.end method

.method public setOnActivityResultCallback(Lorg/ros/android/RosActivity$OnActivityResultCallback;)V
    .registers 2
    .param p1, "callback"    # Lorg/ros/android/RosActivity$OnActivityResultCallback;

    .line 286
    iput-object p1, p0, Lorg/ros/android/RosActivity;->onActivityResultCallback:Lorg/ros/android/RosActivity$OnActivityResultCallback;

    .line 287
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 259
    iget v0, p0, Lorg/ros/android/RosActivity;->masterChooserRequestCode:I

    if-eq p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 260
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    return-void
.end method

.method public startMasterChooser()V
    .registers 3

    .line 241
    invoke-virtual {p0}, Lorg/ros/android/RosActivity;->getMasterUri()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/ros/android/RosActivity;->masterChooserActivity:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lorg/ros/android/RosActivity;->masterChooserRequestCode:I

    invoke-super {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    return-void
.end method
