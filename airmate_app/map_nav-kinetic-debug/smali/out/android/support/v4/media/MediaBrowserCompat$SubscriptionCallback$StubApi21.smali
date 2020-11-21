.class Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .registers 2

    .line 747
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    return-void
.end method


# virtual methods
.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .registers 8
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 780
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    if-nez p1, :cond_4

    .line 781
    const/4 v0, 0x0

    return-object v0

    .line 783
    :cond_4
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 784
    .local v0, "page":I
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 785
    .local v2, "pageSize":I
    if-ne v0, v1, :cond_16

    if-ne v2, v1, :cond_16

    .line 786
    return-object p1

    .line 788
    :cond_16
    mul-int v1, v2, v0

    .line 789
    .local v1, "fromIndex":I
    add-int v3, v1, v2

    .line 790
    .local v3, "toIndex":I
    if-ltz v0, :cond_35

    const/4 v4, 0x1

    if-lt v2, v4, :cond_35

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_26

    goto :goto_35

    .line 793
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_30

    .line 794
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 796
    :cond_30
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 791
    :cond_35
    :goto_35
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 752
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    .line 753
    .local v0, "sub":Landroid/support/v4/media/MediaBrowserCompat$Subscription;
    :goto_12
    if-nez v0, :cond_1e

    .line 754
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 755
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 754
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4c

    .line 757
    :cond_1e
    nop

    .line 758
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 759
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v2

    .line 760
    .local v2, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    .line 761
    .local v3, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 762
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 763
    .local v5, "options":Landroid/os/Bundle;
    if-nez v5, :cond_40

    .line 764
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v6, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_49

    .line 766
    :cond_40
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 767
    invoke-virtual {p0, v1, v5}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    .line 766
    invoke-virtual {v6, p1, v7, v5}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 761
    .end local v5    # "options":Landroid/os/Bundle;
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 771
    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    .end local v2    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;>;"
    .end local v3    # "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v4    # "i":I
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 775
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 776
    return-void
.end method