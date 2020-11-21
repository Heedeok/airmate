.class public abstract Lorg/ros/android/AppCompatRosActivity;
.super Lorg/ros/android/RosActivity;
.source "AppCompatRosActivity.java"


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/ros/android/RosActivity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "notificationTicker"    # Ljava/lang/String;
    .param p2, "notificationTitle"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/ros/android/RosActivity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
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

    .line 36
    .local p3, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ros/android/RosActivity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .registers 4
    .param p1, "notificationTicker"    # Ljava/lang/String;
    .param p2, "notificationTitle"    # Ljava/lang/String;
    .param p3, "customMasterUri"    # Ljava/net/URI;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/ros/android/RosActivity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 33
    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .registers 2

    .line 105
    iget-object v0, p0, Lorg/ros/android/AppCompatRosActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_b

    .line 106
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/AppCompatRosActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 108
    :cond_b
    iget-object v0, p0, Lorg/ros/android/AppCompatRosActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 74
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 58
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .registers 2

    .line 51
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 102
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 103
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 88
    invoke-super {p0, p1}, Lorg/ros/android/RosActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 42
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-super {p0, p1}, Lorg/ros/android/RosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 98
    invoke-super {p0}, Lorg/ros/android/RosActivity;->onDestroy()V

    .line 99
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    .line 100
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Lorg/ros/android/RosActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected onPostResume()V
    .registers 2

    .line 78
    invoke-super {p0}, Lorg/ros/android/RosActivity;->onPostResume()V

    .line 79
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    .line 80
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 93
    invoke-super {p0}, Lorg/ros/android/RosActivity;->onStop()V

    .line 94
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 95
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 83
    invoke-super {p0, p1, p2}, Lorg/ros/android/RosActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 84
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    .line 63
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 70
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .registers 3
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Lorg/ros/android/AppCompatRosActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 55
    return-void
.end method
