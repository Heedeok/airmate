.class Lorg/ros/android/MasterChooser$3;
.super Landroid/os/AsyncTask;
.source "MasterChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/MasterChooser;->okButtonClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/MasterChooser;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/ros/android/MasterChooser;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/MasterChooser;

    .line 262
    iput-object p1, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    iput-object p2, p0, Lorg/ros/android/MasterChooser$3;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .line 275
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/ros/internal/node/client/MasterClient;

    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lorg/ros/android/MasterChooser$3;->val$uri:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/ros/internal/node/client/MasterClient;-><init>(Ljava/net/URI;)V

    .line 276
    .local v1, "masterClient":Lorg/ros/internal/node/client/MasterClient;
    const-string v2, "android/master_chooser_activity"

    invoke-static {v2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/internal/node/client/MasterClient;->getUri(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    .line 277
    iget-object v2, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const-string v3, "Connected!"

    invoke-virtual {v2, v3}, Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V

    .line 278
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_22
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_22} :catch_61
    .catch Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException; {:try_start_1 .. :try_end_22} :catch_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object v2

    .line 286
    .end local v1    # "masterClient":Lorg/ros/internal/node/client/MasterClient;
    :catch_23
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "exceptionMessage":Ljava/lang/String;
    const-string v3, "ECONNREFUSED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 289
    iget-object v3, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const-string v4, "Unable to communicate with master!"

    invoke-virtual {v3, v4}, Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V

    goto :goto_4f

    .line 290
    :cond_38
    const-string v3, "UnknownHost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 291
    iget-object v3, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const-string v4, "Unable to resolve URI hostname!"

    invoke-virtual {v3, v4}, Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V

    goto :goto_4f

    .line 293
    :cond_48
    iget-object v3, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const-string v4, "Communication error!"

    invoke-virtual {v3, v4}, Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V

    .line 294
    :goto_4f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    :catch_54
    move-exception v1

    .line 283
    .local v1, "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    iget-object v2, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const-string v3, "Master unreachable!"

    invoke-virtual {v2, v3}, Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V

    .line 284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 279
    .end local v1    # "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    :catch_61
    move-exception v1

    .line 280
    .local v1, "e":Ljava/net/URISyntaxException;
    iget-object v2, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const-string v3, "Invalid URI."

    invoke-virtual {v2, v3}, Lorg/ros/android/MasterChooser;->toast(Ljava/lang/String;)V

    .line 281
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 262
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/ros/android/MasterChooser$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 300
    iget-object v0, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    new-instance v1, Lorg/ros/android/MasterChooser$3$2;

    invoke-direct {v1, p0}, Lorg/ros/android/MasterChooser$3$2;-><init>(Lorg/ros/android/MasterChooser$3;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/MasterChooser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 308
    iget-object v0, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    iget-object v2, p0, Lorg/ros/android/MasterChooser$3;->val$uri:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/ros/android/MasterChooser;->access$400(Lorg/ros/android/MasterChooser;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/ros/android/MasterChooser;->createNewMasterIntent(ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lorg/ros/android/MasterChooser;->setResult(ILandroid/content/Intent;)V

    .line 313
    iget-object v1, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    invoke-virtual {v1}, Lorg/ros/android/MasterChooser;->finish()V

    .line 314
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_3d

    .line 315
    :cond_2b
    iget-object v0, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    invoke-static {v0}, Lorg/ros/android/MasterChooser;->access$100(Lorg/ros/android/MasterChooser;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    invoke-static {v0}, Lorg/ros/android/MasterChooser;->access$000(Lorg/ros/android/MasterChooser;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 318
    :goto_3d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 262
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/ros/android/MasterChooser$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 265
    iget-object v0, p0, Lorg/ros/android/MasterChooser$3;->this$0:Lorg/ros/android/MasterChooser;

    new-instance v1, Lorg/ros/android/MasterChooser$3$1;

    invoke-direct {v1, p0}, Lorg/ros/android/MasterChooser$3$1;-><init>(Lorg/ros/android/MasterChooser$3;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/MasterChooser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method
