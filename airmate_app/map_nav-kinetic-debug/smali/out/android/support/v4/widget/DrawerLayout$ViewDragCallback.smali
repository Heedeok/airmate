.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .registers 3
    .param p2, "gravity"    # I

    .line 2055
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 2049
    new-instance p1, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 2056
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 2057
    return-void
.end method

.method private closeOtherDrawer()V
    .registers 4

    .line 2106
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v1, 0x5

    nop

    :cond_7
    move v0, v1

    .line 2107
    .local v0, "otherGrav":I
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2108
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_15

    .line 2109
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 2111
    :cond_15
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 2197
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2198
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2200
    :cond_18
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 2201
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 2207
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 2192
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 5
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 2179
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 2180
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    goto :goto_14

    .line 2182
    :cond_d
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2185
    .local v0, "toCapture":Landroid/view/View;
    :goto_14
    if-eqz v0, :cond_23

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_23

    .line 2186
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 2188
    :cond_23
    return-void
.end method

.method public onEdgeLock(I)Z
    .registers 3
    .param p1, "edgeFlags"    # I

    .line 2173
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .registers 7
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 2134
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2135
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 5
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 2099
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 2100
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 2102
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2103
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 2077
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 2078
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 10
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 2083
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2086
    .local v0, "childWidth":I
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2087
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_1f

    .line 2089
    :cond_13
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 2090
    .local v1, "width":I
    sub-int v2, v1, p2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 2092
    .local v1, "offset":F
    :goto_1f
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 2093
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2b

    const/4 v2, 0x4

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2094
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2095
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 2117
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 2118
    .local v0, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2121
    .local v1, "childWidth":I
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_27

    .line 2122
    cmpl-float v2, p2, v4

    if-gtz v2, :cond_25

    cmpl-float v2, p2, v4

    if-nez v2, :cond_23

    cmpl-float v2, v0, v3

    if-lez v2, :cond_23

    goto :goto_25

    :cond_23
    neg-int v2, v1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v2, 0x0

    :goto_26
    goto :goto_3f

    .line 2124
    :cond_27
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 2125
    .local v2, "width":I
    cmpg-float v5, p2, v4

    if-ltz v5, :cond_3c

    cmpl-float v4, p2, v4

    if-nez v4, :cond_3a

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3a

    goto :goto_3c

    :cond_3a
    move v3, v2

    goto :goto_3e

    :cond_3c
    :goto_3c
    sub-int v3, v2, v1

    :goto_3e
    move v2, v3

    .line 2128
    .local v2, "left":I
    :goto_3f
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 2129
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2130
    return-void
.end method

.method peekDrawer()V
    .registers 9

    .line 2140
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v0

    .line 2141
    .local v0, "peekDistance":I
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 2142
    .local v1, "leftEdge":Z
    :goto_10
    if-eqz v1, :cond_22

    .line 2143
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v5, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 2144
    .local v4, "toCapture":Landroid/view/View;
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    nop

    :cond_20
    add-int/2addr v2, v0

    goto :goto_30

    .line 2146
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_22
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v4

    .line 2147
    .restart local v4    # "toCapture":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2150
    .local v2, "childLeft":I
    :goto_30
    if-eqz v4, :cond_68

    if-eqz v1, :cond_3a

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v2, :cond_42

    :cond_3a
    if-nez v1, :cond_68

    .line 2151
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_68

    :cond_42
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    .line 2152
    invoke-virtual {v5, v4}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_68

    .line 2153
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 2154
    .local v5, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6, v4, v2, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 2155
    iput-boolean v3, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 2156
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2158
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 2160
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3}, Landroid/support/v4/widget/DrawerLayout;->cancelChildViewTouch()V

    .line 2162
    .end local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_68
    return-void
.end method

.method public removeCallbacks()V
    .registers 3

    .line 2064
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2065
    return-void
.end method

.method public setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
    .registers 2
    .param p1, "dragger"    # Landroid/support/v4/widget/ViewDragHelper;

    .line 2060
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 2061
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 2071
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    .line 2072
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method