.class Landroid/support/v4/view/ViewCompat$ViewCompatApi24Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1541
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1566
    invoke-virtual {p1}, Landroid/view/View;->cancelDragAndDrop()V

    .line 1567
    return-void
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1550
    return-void
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1544
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1545
    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pointerIconCompat"    # Landroid/support/v4/view/PointerIconCompat;

    .line 1554
    if-eqz p2, :cond_7

    .line 1555
    invoke-virtual {p2}, Landroid/support/v4/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    check-cast v0, Landroid/view/PointerIcon;

    .line 1554
    invoke-virtual {p1, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 1556
    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "flags"    # I

    .line 1561
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .line 1571
    invoke-virtual {p1, p2}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 1572
    return-void
.end method