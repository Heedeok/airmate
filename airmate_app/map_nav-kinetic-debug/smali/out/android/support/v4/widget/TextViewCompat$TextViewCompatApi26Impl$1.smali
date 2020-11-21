.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;->setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;

    .line 351
    iput-object p1, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->this$0:Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;

    iput-object p2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    iput-object p3, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mInitializedMenuBuilderReferences:Z

    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .registers 3

    .line 481
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 469
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 470
    invoke-direct {p0, p2}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->isEditable(Landroid/widget/TextView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 471
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v0, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    instance-of v1, p1, Landroid/app/Activity;

    .line 442
    .local v1, "canStartActivityForResult":Z
    if-nez v1, :cond_a

    .line 443
    return-object v0

    .line 445
    :cond_a
    nop

    .line 446
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 447
    .local v2, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 448
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 449
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2d
    goto :goto_18

    .line 452
    :cond_2e
    return-object v0
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 475
    instance-of v0, p1, Landroid/text/Editable;

    if-eqz v0, :cond_12

    .line 476
    invoke-virtual {p1}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 477
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 456
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 457
    return v1

    .line 459
    :cond_10
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 460
    return v2

    .line 462
    :cond_18
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v1, 0x0

    nop

    :cond_2b
    :goto_2b
    return v1
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .registers 11
    .param p1, "menu"    # Landroid/view/Menu;

    .line 387
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 388
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 390
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mInitializedMenuBuilderReferences:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_35

    .line 391
    iput-boolean v4, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mInitializedMenuBuilderReferences:Z

    .line 393
    :try_start_12
    const-string v2, "com.android.internal.view.menu.MenuBuilder"

    .line 394
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    .line 395
    iget-object v2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    const-string v5, "removeItemAt"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 396
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 397
    iput-boolean v4, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mCanUseMenuBuilderReferences:Z
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_2c} :catch_2d

    .line 402
    goto :goto_35

    .line 398
    :catch_2d
    move-exception v2

    .line 399
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    .line 400
    iput-object v5, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 401
    iput-boolean v3, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mCanUseMenuBuilderReferences:Z

    .line 406
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_35
    :goto_35
    :try_start_35
    iget-boolean v2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mCanUseMenuBuilderReferences:Z

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    .line 407
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    goto :goto_54

    .line 409
    :cond_44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "removeItemAt"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 410
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 411
    .local v2, "removeItemAtMethod":Ljava/lang/reflect/Method;
    :goto_54
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_59
    if-ltz v5, :cond_83

    .line 412
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 413
    .local v6, "item":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_80

    const-string v7, "android.intent.action.PROCESS_TEXT"

    .line 414
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 415
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_80} :catch_b1
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_80} :catch_b1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_80} :catch_b1

    .line 411
    .end local v6    # "item":Landroid/view/MenuItem;
    :cond_80
    add-int/lit8 v5, v5, -0x1

    goto :goto_59

    .line 423
    .end local v2    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    .end local v5    # "i":I
    :cond_83
    nop

    .line 426
    nop

    .line 427
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    .line 428
    .local v2, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b0

    .line 429
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 430
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v7, v5, 0x64

    .line 432
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 430
    invoke-interface {p1, v3, v3, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$textView:Landroid/widget/TextView;

    .line 433
    invoke-direct {p0, v6, v8}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    .line 434
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 428
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    .line 436
    .end local v5    # "i":I
    :cond_b0
    return-void

    .line 418
    .end local v2    # "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_b1
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 378
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 383
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 384
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 372
    invoke-direct {p0, p2}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    .line 373
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
