.class public Lorg/ros/android/MasterChooser;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MasterChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/MasterChooser$RosURIPattern;,
        Lorg/ros/android/MasterChooser$StableArrayAdapter;
    }
.end annotation


# static fields
.field private static final BAR_CODE_SCANNER_PACKAGE_NAME:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"

.field private static final CONNECTION_EXCEPTION_TEXT:Ljava/lang/String; = "ECONNREFUSED"

.field private static final DEFAULT_PORT:I = 0x2c2f

.field private static final PREFS_KEY_NAME:Ljava/lang/String; = "URI_KEY"

.field private static final RECENT_COUNT_KEY_NAME:Ljava/lang/String; = "RECENT_MASTER_URI_COUNT"

.field private static final RECENT_MASTER_HISTORY_COUNT:I = 0x5

.field private static final RECENT_PREFIX_KEY_NAME:Ljava/lang/String; = "RECENT_MASTER_URI_"

.field private static final UNKNOW_HOST_TEXT:Ljava/lang/String; = "UnknownHost"


# instance fields
.field private connectButton:Landroid/widget/Button;

.field private connectionLayout:Landroid/widget/LinearLayout;

.field private selectedInterface:Ljava/lang/String;

.field private uriText:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/MasterChooser;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/MasterChooser;

    .line 72
    iget-object v0, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/android/MasterChooser;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/MasterChooser;

    .line 72
    iget-object v0, p0, Lorg/ros/android/MasterChooser;->connectButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/android/MasterChooser;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/MasterChooser;

    .line 72
    iget-object v0, p0, Lorg/ros/android/MasterChooser;->selectedInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/ros/android/MasterChooser;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/MasterChooser;
    .param p1, "x1"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/ros/android/MasterChooser;->selectedInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/ros/android/MasterChooser;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/MasterChooser;

    .line 72
    iget-object v0, p0, Lorg/ros/android/MasterChooser;->connectionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/ros/android/MasterChooser;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/MasterChooser;
    .param p1, "x1"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lorg/ros/android/MasterChooser;->addRecentMasterURI(Ljava/lang/String;)V

    return-void
.end method

.method private addRecentMasterURI(Ljava/lang/String;)V
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;

    .line 403
    invoke-direct {p0}, Lorg/ros/android/MasterChooser;->getRecentMasterURIs()Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, "recentURIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 405
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_19

    .line 407
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 410
    :cond_19
    invoke-virtual {p0, v2}, Lorg/ros/android/MasterChooser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 411
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "URI_KEY"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    nop

    .local v2, "i":I
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RECENT_MASTER_URI_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 416
    .end local v2    # "i":I
    :cond_4e
    const-string v2, "RECENT_MASTER_URI_COUNT"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    return-void
.end method

.method private getRecentMasterURIs()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ros/android/MasterChooser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 429
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "RECENT_MASTER_URI_COUNT"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 430
    .local v2, "numRecent":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .local v3, "recentURIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .local v0, "i":I
    :goto_11
    if-ge v0, v2, :cond_3a

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RECENT_MASTER_URI_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "uri":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_37

    .line 434
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    .end local v4    # "uri":Ljava/lang/String;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 438
    .end local v0    # "i":I
    :cond_3a
    return-object v3
.end method


# virtual methods
.method public advancedCheckboxClicked(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 347
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 348
    .local v0, "checked":Z
    sget v1, Lorg/ros/android/android_core_components/R$id;->advancedOptions:I

    invoke-virtual {p0, v1}, Lorg/ros/android/MasterChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 349
    .local v1, "advancedOptions":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_16

    .line 350
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1b

    .line 352
    :cond_16
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    :goto_1b
    return-void
.end method

.method public cancelButtonClicked(Landroid/view/View;)V
    .registers 3
    .param p1, "unused"    # Landroid/view/View;

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ros/android/MasterChooser;->setResult(I)V

    .line 378
    invoke-virtual {p0}, Lorg/ros/android/MasterChooser;->finish()V

    .line 379
    return-void
.end method

.method public createNewMasterIntent(ZZ)Landroid/content/Intent;
    .registers 7
    .param p1, "newMaster"    # Z
    .param p2, "isPrivate"    # Z

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "ROS_MASTER_CREATE_NEW"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    const-string v2, "ROS_MASTER_PRIVATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    const-string v2, "ROS_MASTER_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "ROS_MASTER_NETWORK_INTERFACE"

    iget-object v3, p0, Lorg/ros/android/MasterChooser;->selectedInterface:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    return-object v0
.end method

.method protected isQRCodeReaderInstalled(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 390
    nop

    .line 391
    invoke-virtual {p0}, Lorg/ros/android/MasterChooser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public newMasterButtonClicked(Landroid/view/View;)V
    .registers 4
    .param p1, "unused"    # Landroid/view/View;

    .line 367
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/ros/android/MasterChooser;->createNewMasterIntent(ZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/ros/android/MasterChooser;->setResult(ILandroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lorg/ros/android/MasterChooser;->finish()V

    .line 369
    return-void
.end method

.method public newPrivateMasterButtonClicked(Landroid/view/View;)V
    .registers 4
    .param p1, "unused"    # Landroid/view/View;

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/ros/android/MasterChooser;->createNewMasterIntent(ZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/ros/android/MasterChooser;->setResult(ILandroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Lorg/ros/android/MasterChooser;->finish()V

    .line 374
    return-void
.end method

.method public okButtonClicked(Landroid/view/View;)V
    .registers 10
    .param p1, "unused"    # Landroid/view/View;

    .line 241
    iget-object v0, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "tmpURI":Ljava/lang/String;
    sget-object v1, Lorg/ros/android/MasterChooser$RosURIPattern;->PORT:Ljava/util/regex/Pattern;

    .line 245
    .local v1, "portPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "%s:%d/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const/4 v6, 0x1

    const/16 v7, 0x2c2f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v2, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_34
    move-object v2, v0

    .line 257
    .local v2, "uri":Ljava/lang/String;
    iget-object v4, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 258
    iget-object v4, p0, Lorg/ros/android/MasterChooser;->connectButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    new-instance v4, Lorg/ros/android/MasterChooser$3;

    invoke-direct {v4, p0, v2}, Lorg/ros/android/MasterChooser$3;-><init>(Lorg/ros/android/MasterChooser;Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Void;

    .line 319
    invoke-virtual {v4, v3}, Lorg/ros/android/MasterChooser$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 223
    if-nez p1, :cond_2d

    .line 224
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2d

    .line 225
    const-string v0, "SCAN_RESULT_FORMAT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "scanResultFormat":Ljava/lang/String;
    const-string v1, "TEXT_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "QR_CODE"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 226
    :goto_1f
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 228
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "contents":Ljava/lang/String;
    iget-object v2, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .end local v0    # "scanResultFormat":Ljava/lang/String;
    .end local v1    # "contents":Ljava/lang/String;
    :cond_2d
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/ros/android/MasterChooser;->moveTaskToBack(Z)Z

    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 149
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    sget v0, Lorg/ros/android/android_core_components/R$layout;->master_chooser:I

    invoke-virtual {p0, v0}, Lorg/ros/android/MasterChooser;->setContentView(I)V

    .line 151
    sget-object v0, Lorg/ros/android/MasterChooser$RosURIPattern;->URI:Ljava/util/regex/Pattern;

    .line 152
    .local v0, "uriPattern":Ljava/util/regex/Pattern;
    sget v1, Lorg/ros/android/android_core_components/R$id;->master_chooser_uri:I

    invoke-virtual {p0, v1}, Lorg/ros/android/MasterChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    .line 153
    sget v1, Lorg/ros/android/android_core_components/R$id;->master_chooser_ok:I

    invoke-virtual {p0, v1}, Lorg/ros/android/MasterChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/ros/android/MasterChooser;->connectButton:Landroid/widget/Button;

    .line 154
    iget-object v1, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    sget v2, Lorg/ros/android/MasterChooser$RosURIPattern;->HTTP_PROTOCOL_LENGTH:I

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 156
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 157
    invoke-direct {p0}, Lorg/ros/android/MasterChooser;->getRecentMasterURIs()Ljava/util/List;

    move-result-object v2

    const v3, 0x1090011

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 158
    .local v1, "uriAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v2, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lorg/ros/android/MasterChooser$1;

    invoke-direct {v3, p0, v0}, Lorg/ros/android/MasterChooser$1;-><init>(Lorg/ros/android/MasterChooser;Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    sget v2, Lorg/ros/android/android_core_components/R$id;->networkInterfaces:I

    invoke-virtual {p0, v2}, Lorg/ros/android/MasterChooser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 184
    .local v2, "interfacesList":Landroid/widget/ListView;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_4d
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 188
    .local v5, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v6

    if-nez v6, :cond_78

    .line 189
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/net/SocketException; {:try_start_4d .. :try_end_78} :catch_b2

    .line 191
    .end local v5    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_78
    goto :goto_59

    .line 194
    :cond_79
    nop

    .line 197
    const-string v4, ""

    iput-object v4, p0, Lorg/ros/android/MasterChooser;->selectedInterface:Ljava/lang/String;

    .line 199
    new-instance v4, Lorg/ros/android/MasterChooser$StableArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p0, p0, v5, v3}, Lorg/ros/android/MasterChooser$StableArrayAdapter;-><init>(Lorg/ros/android/MasterChooser;Landroid/content/Context;ILjava/util/List;)V

    .line 200
    .local v4, "adapter":Lorg/ros/android/MasterChooser$StableArrayAdapter;
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    new-instance v5, Lorg/ros/android/MasterChooser$2;

    invoke-direct {v5, p0}, Lorg/ros/android/MasterChooser$2;-><init>(Lorg/ros/android/MasterChooser;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    const/4 v5, 0x0

    .line 213
    invoke-virtual {p0, v5}, Lorg/ros/android/MasterChooser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "URI_KEY"

    sget-object v7, Lorg/ros/node/NodeConfiguration;->DEFAULT_MASTER_URI:Ljava/net/URI;

    .line 214
    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "uri":Ljava/lang/String;
    iget-object v6, p0, Lorg/ros/android/MasterChooser;->uriText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    sget v6, Lorg/ros/android/android_core_components/R$id;->connection_layout:I

    invoke-virtual {p0, v6}, Lorg/ros/android/MasterChooser;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lorg/ros/android/MasterChooser;->connectionLayout:Landroid/widget/LinearLayout;

    .line 218
    return-void

    .line 192
    .end local v4    # "adapter":Lorg/ros/android/MasterChooser$StableArrayAdapter;
    .end local v5    # "uri":Ljava/lang/String;
    :catch_b2
    move-exception v4

    .line 193
    .local v4, "e":Ljava/net/SocketException;
    new-instance v5, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v5, v4}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public qrCodeButtonClicked(Landroid/view/View;)V
    .registers 6
    .param p1, "unused"    # Landroid/view/View;

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Lorg/ros/android/MasterChooser;->isQRCodeReaderInstalled(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.google.zxing.client.android"

    .line 339
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    invoke-virtual {p0, v1}, Lorg/ros/android/MasterChooser;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    .line 342
    :cond_25
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/ros/android/MasterChooser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 344
    :goto_29
    return-void
.end method

.method protected toast(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 323
    new-instance v0, Lorg/ros/android/MasterChooser$4;

    invoke-direct {v0, p0, p1}, Lorg/ros/android/MasterChooser$4;-><init>(Lorg/ros/android/MasterChooser;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/ros/android/MasterChooser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method
