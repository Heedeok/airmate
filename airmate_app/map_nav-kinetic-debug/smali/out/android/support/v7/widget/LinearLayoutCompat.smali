.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 115
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 119
    const v3, 0x800033

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 154
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v3

    .line 157
    .local v3, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 158
    .local v4, "index":I
    if-ltz v4, :cond_22

    .line 159
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 162
    :cond_22
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 163
    if-ltz v4, :cond_2d

    .line 164
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 167
    :cond_2d
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 168
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_38

    .line 169
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 172
    :cond_38
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 174
    sget v5, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 175
    invoke-virtual {v3, v5, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 177
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 179
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 181
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 183
    invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 184
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1316
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1318
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 1319
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1320
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 1321
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1323
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 1326
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1327
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1330
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1331
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1318
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1335
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 894
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 896
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 897
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 898
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 899
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 901
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 904
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 905
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 908
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 909
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 896
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 913
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1644
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1645
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1750
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 321
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 322
    .local v0, "count":I
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 323
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3f

    .line 324
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 326
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 327
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 330
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_2f

    .line 331
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_39

    .line 333
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 335
    .local v5, "position":I
    :goto_39
    invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 323
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 340
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 341
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 343
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_61

    .line 344
    if-eqz v1, :cond_54

    .line 345
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    goto :goto_7d

    .line 347
    :cond_54
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    goto :goto_7d

    .line 350
    :cond_61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 351
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_75

    .line 352
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    .line 354
    move v3, v4

    goto :goto_7d

    :cond_75
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 357
    .local v3, "position":I
    :goto_7d
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 359
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_80
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 295
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 296
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 298
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 299
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 300
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 301
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 302
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 295
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 307
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 308
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 310
    .local v2, "bottom":I
    if-nez v1, :cond_4d

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    goto :goto_5b

    .line 313
    :cond_4d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 314
    .restart local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v3, v4, v5

    .line 316
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_5b
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 318
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_5e
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 363
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 362
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 365
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 369
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 368
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 1733
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1734
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1735
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 1736
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1738
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1720
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1743
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .registers 7

    .line 422
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 423
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 426
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_7a

    .line 431
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 434
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 435
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_23

    .line 437
    return v2

    .line 441
    :cond_23
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_2b
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 453
    .local v2, "childTop":I
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6f

    .line 454
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 455
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_6f

    .line 456
    const/16 v4, 0x10

    if-eq v3, v4, :cond_56

    const/16 v4, 0x50

    if-eq v3, v4, :cond_43

    .end local v3    # "majorGravity":I
    goto :goto_6f

    .line 458
    .restart local v3    # "majorGravity":I
    :cond_43
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 459
    goto :goto_6f

    .line 462
    :cond_56
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 469
    .end local v3    # "majorGravity":I
    :cond_6f
    :goto_6f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 470
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 427
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_7a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .line 479
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1346
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .line 267
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 277
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 1699
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1388
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1400
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1666
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .line 211
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 504
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .line 517
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .line 528
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 566
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    nop

    :cond_b
    return v0

    .line 567
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_1b

    .line 568
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    nop

    :cond_1a
    return v0

    .line 569
    :cond_1b
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_38

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_37

    .line 572
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_34

    .line 573
    const/4 v0, 0x1

    .line 574
    goto :goto_37

    .line 571
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 577
    .end local v1    # "i":I
    :cond_37
    :goto_37
    return v0

    .line 579
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_38
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .line 380
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 403
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 36
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1520
    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    .line 1521
    .local v9, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v10

    .line 1527
    .local v10, "paddingTop":I
    sub-int v13, p4, p2

    .line 1528
    .local v13, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v0

    sub-int v14, v13, v0

    .line 1531
    .local v14, "childBottom":I
    sub-int v0, v13, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int v15, v0, v1

    .line 1533
    .local v15, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v5

    .line 1535
    .local v5, "count":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v4, v0, v1

    .line 1536
    .local v4, "majorGravity":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v16, v0, 0x70

    .line 1538
    .local v16, "minorGravity":I
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1540
    .local v2, "baselineAligned":Z
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1541
    .local v1, "maxAscent":[I
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1543
    .local v0, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1544
    .local v3, "layoutDirection":I
    invoke-static {v4, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v11

    const/16 v17, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_52

    const/4 v12, 0x5

    if-eq v11, v12, :cond_46

    .line 1557
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v11

    .end local v3    # "layoutDirection":I
    .local v11, "childLeft":I
    .local v18, "layoutDirection":I
    :goto_43
    move/from16 v18, v3

    goto :goto_61

    .line 1547
    .end local v11    # "childLeft":I
    .end local v18    # "layoutDirection":I
    .restart local v3    # "layoutDirection":I
    :cond_46
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v11

    add-int v11, v11, p3

    sub-int v11, v11, p1

    iget v12, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v11, v12

    .line 1548
    .restart local v11    # "childLeft":I
    goto :goto_43

    .line 1552
    .end local v11    # "childLeft":I
    :cond_52
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v11

    sub-int v12, p3, p1

    move/from16 v18, v3

    .end local v3    # "layoutDirection":I
    .restart local v18    # "layoutDirection":I
    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v12, v3

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 1553
    .restart local v11    # "childLeft":I
    nop

    .line 1557
    :goto_61
    move v3, v11

    .line 1561
    .end local v11    # "childLeft":I
    .local v3, "childLeft":I
    const/4 v11, 0x0

    .line 1562
    .local v11, "start":I
    const/4 v12, 0x1

    .line 1564
    .local v12, "dir":I
    if-eqz v9, :cond_69

    .line 1565
    add-int/lit8 v11, v5, -0x1

    .line 1566
    const/4 v12, -0x1

    .line 1569
    :cond_69
    const/16 v19, 0x0

    move/from16 v20, v3

    .end local v3    # "childLeft":I
    .local v19, "i":I
    .local v20, "childLeft":I
    :goto_6d
    move/from16 v3, v19

    .end local v19    # "i":I
    .local v3, "i":I
    if-ge v3, v5, :cond_160

    .line 1570
    mul-int v19, v12, v3

    add-int v7, v11, v19

    .line 1571
    .local v7, "childIndex":I
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1573
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_8f

    .line 1574
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v19

    add-int v20, v20, v19

    .line 1569
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    goto/16 :goto_14f

    .line 1575
    :cond_8f
    move/from16 v21, v3

    .end local v3    # "i":I
    .local v21, "i":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v22, v4

    .end local v4    # "majorGravity":I
    .local v22, "majorGravity":I
    const/16 v4, 0x8

    if-eq v3, v4, :cond_143

    .line 1576
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1577
    .local v19, "childWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 1578
    .local v23, "childHeight":I
    const/4 v3, -0x1

    .line 1580
    .local v3, "childBaseline":I
    nop

    .line 1581
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1583
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v24, v3

    .end local v3    # "childBaseline":I
    .local v24, "childBaseline":I
    const/4 v3, -0x1

    if-eqz v2, :cond_bb

    move/from16 v25, v2

    .end local v2    # "baselineAligned":Z
    .local v25, "baselineAligned":Z
    iget v2, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-eq v2, v3, :cond_bd

    .line 1584
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v2

    goto :goto_bf

    .line 1587
    .end local v25    # "baselineAligned":Z
    .restart local v2    # "baselineAligned":Z
    :cond_bb
    move/from16 v25, v2

    .end local v2    # "baselineAligned":Z
    .restart local v25    # "baselineAligned":Z
    :cond_bd
    move/from16 v2, v24

    .end local v24    # "childBaseline":I
    .local v2, "childBaseline":I
    :goto_bf
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1588
    .local v3, "gravity":I
    if-gez v3, :cond_c5

    .line 1589
    move/from16 v3, v16

    .line 1592
    .end local v3    # "gravity":I
    .local v24, "gravity":I
    :cond_c5
    move/from16 v24, v3

    and-int/lit8 v3, v24, 0x70

    move/from16 v27, v5

    .end local v5    # "count":I
    .local v27, "count":I
    const/16 v5, 0x10

    if-eq v3, v5, :cond_fb

    const/16 v5, 0x30

    if-eq v3, v5, :cond_ed

    const/16 v5, 0x50

    if-eq v3, v5, :cond_d9

    .line 1624
    move v3, v10

    goto :goto_107

    .line 1617
    :cond_d9
    sub-int v3, v14, v23

    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1618
    .local v3, "childTop":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_107

    .line 1619
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    .line 1620
    .local v5, "descent":I
    aget v26, v0, v17

    sub-int v26, v26, v5

    sub-int v3, v3, v26

    .line 1621
    .end local v5    # "descent":I
    goto :goto_107

    .line 1594
    .end local v3    # "childTop":I
    :cond_ed
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    .line 1595
    .restart local v3    # "childTop":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_107

    .line 1596
    const/4 v5, 0x1

    aget v26, v1, v5

    sub-int v26, v26, v2

    add-int v3, v3, v26

    goto :goto_107

    .line 1612
    .end local v3    # "childTop":I
    :cond_fb
    sub-int v3, v15, v23

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v10

    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1614
    .restart local v3    # "childTop":I
    nop

    .line 1624
    :cond_107
    :goto_107
    nop

    .line 1628
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 1629
    iget v5, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int v20, v20, v5

    .line 1632
    :cond_112
    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v20, v20, v5

    .line 1633
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v20, v5

    move-object/from16 v26, v0

    .end local v0    # "maxDescent":[I
    .local v26, "maxDescent":[I
    move-object/from16 v0, p0

    move-object/from16 v28, v1

    .end local v1    # "maxAscent":[I
    .local v28, "maxAscent":[I
    move-object v1, v8

    move/from16 v29, v2

    .end local v2    # "childBaseline":I
    .local v29, "childBaseline":I
    move v2, v5

    move-object v5, v4

    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v5, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v4, v19

    move/from16 v30, v9

    move-object v9, v5

    .end local v5    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v30, "isLayoutRtl":Z
    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1635
    iget v0, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v19, v0

    .line 1636
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1638
    invoke-virtual {v6, v8, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v21, v0

    goto :goto_14f

    .line 1569
    .end local v3    # "childTop":I
    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    .end local v19    # "childWidth":I
    .end local v23    # "childHeight":I
    .end local v24    # "gravity":I
    .end local v25    # "baselineAligned":Z
    .end local v26    # "maxDescent":[I
    .end local v27    # "count":I
    .end local v28    # "maxAscent":[I
    .end local v29    # "childBaseline":I
    .end local v30    # "isLayoutRtl":Z
    .restart local v0    # "maxDescent":[I
    .restart local v1    # "maxAscent":[I
    .local v2, "baselineAligned":Z
    .local v5, "count":I
    .local v9, "isLayoutRtl":Z
    :cond_143
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v27, v5

    move/from16 v30, v9

    move/from16 v3, v21

    .end local v0    # "maxDescent":[I
    .end local v1    # "maxAscent":[I
    .end local v2    # "baselineAligned":Z
    .end local v5    # "count":I
    .end local v9    # "isLayoutRtl":Z
    .end local v21    # "i":I
    .local v3, "i":I
    .restart local v25    # "baselineAligned":Z
    .restart local v26    # "maxDescent":[I
    .restart local v27    # "count":I
    .restart local v28    # "maxAscent":[I
    .restart local v30    # "isLayoutRtl":Z
    :goto_14f
    const/4 v0, 0x1

    add-int/lit8 v19, v3, 0x1

    move/from16 v4, v22

    move/from16 v2, v25

    move-object/from16 v0, v26

    move/from16 v5, v27

    move-object/from16 v1, v28

    move/from16 v9, v30

    goto/16 :goto_6d

    .line 1641
    .end local v3    # "i":I
    .end local v22    # "majorGravity":I
    .end local v25    # "baselineAligned":Z
    .end local v26    # "maxDescent":[I
    .end local v27    # "count":I
    .end local v28    # "maxAscent":[I
    .end local v30    # "isLayoutRtl":Z
    .restart local v0    # "maxDescent":[I
    .restart local v1    # "maxAscent":[I
    .restart local v2    # "baselineAligned":Z
    .local v4, "majorGravity":I
    .restart local v5    # "count":I
    .restart local v9    # "isLayoutRtl":Z
    :cond_160
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    .end local v0    # "maxDescent":[I
    .end local v1    # "maxAscent":[I
    .end local v2    # "baselineAligned":Z
    .end local v4    # "majorGravity":I
    .end local v5    # "count":I
    .end local v9    # "isLayoutRtl":Z
    .restart local v22    # "majorGravity":I
    .restart local v25    # "baselineAligned":Z
    .restart local v26    # "maxDescent":[I
    .restart local v27    # "count":I
    .restart local v28    # "maxAscent":[I
    .restart local v30    # "isLayoutRtl":Z
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 29
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1425
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v9

    .line 1431
    .local v9, "paddingLeft":I
    sub-int v10, p3, p1

    .line 1432
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v0

    sub-int v11, v10, v0

    .line 1435
    .local v11, "childRight":I
    sub-int v0, v10, v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v12, v0, v1

    .line 1437
    .local v12, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v13

    .line 1439
    .local v13, "count":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v5, v0, 0x70

    .line 1440
    .local v5, "majorGravity":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v14, v0, v1

    .line 1442
    .local v14, "minorGravity":I
    const/16 v0, 0x10

    if-eq v5, v0, :cond_3e

    const/16 v0, 0x50

    if-eq v5, v0, :cond_32

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    goto :goto_4b

    .line 1445
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1446
    .local v0, "childTop":I
    goto :goto_4b

    .line 1450
    .end local v0    # "childTop":I
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1451
    .restart local v0    # "childTop":I
    nop

    .line 1455
    :goto_4b
    nop

    .line 1459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    move v4, v1

    .end local v1    # "i":I
    .local v4, "i":I
    if-ge v4, v13, :cond_f6

    .line 1460
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1461
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_63

    .line 1462
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1459
    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    goto/16 :goto_ee

    .line 1463
    :cond_63
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_e7

    .line 1464
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1465
    .local v16, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1467
    .local v17, "childHeight":I
    nop

    .line 1468
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1470
    .local v1, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1471
    .local v2, "gravity":I
    if-gez v2, :cond_7f

    .line 1472
    move v2, v14

    .line 1474
    :cond_7f
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 1475
    .local v7, "layoutDirection":I
    invoke-static {v2, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v18

    .line 1477
    .local v18, "absoluteGravity":I
    move/from16 v19, v2

    .end local v2    # "gravity":I
    .local v19, "gravity":I
    and-int/lit8 v2, v18, 0x7

    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "majorGravity":I
    .local v20, "majorGravity":I
    if-eq v2, v5, :cond_9d

    const/4 v5, 0x5

    if-eq v2, v5, :cond_97

    .line 1489
    iget v2, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    goto :goto_a9

    .line 1484
    :cond_97
    sub-int v2, v11, v16

    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1485
    .local v2, "childLeft":I
    goto :goto_a9

    .line 1479
    .end local v2    # "childLeft":I
    :cond_9d
    sub-int v2, v12, v16

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1481
    .restart local v2    # "childLeft":I
    nop

    .line 1489
    :goto_a9
    move/from16 v15, v19

    .line 1493
    .end local v19    # "gravity":I
    .local v15, "gravity":I
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 1494
    iget v5, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v5

    .line 1497
    :cond_b4
    iget v5, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v19, v0, v5

    .line 1498
    .end local v0    # "childTop":I
    .local v19, "childTop":I
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v19, v0

    move-object/from16 v0, p0

    move/from16 v22, v7

    const/16 v21, 0x1

    move-object v7, v1

    .end local v1    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v7, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "layoutDirection":I
    move-object v1, v3

    move-object v8, v3

    .end local v3    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    move v3, v5

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    move/from16 v4, v16

    move/from16 v23, v9

    move v9, v5

    .end local v5    # "i":I
    .local v9, "i":I
    .local v23, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1500
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 1502
    invoke-virtual {v6, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v4, v9, v0

    .line 1459
    move/from16 v0, v19

    goto :goto_ee

    .end local v2    # "childLeft":I
    .end local v7    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "child":Landroid/view/View;
    .end local v15    # "gravity":I
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v19    # "childTop":I
    .end local v20    # "majorGravity":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .restart local v4    # "i":I
    .local v5, "majorGravity":I
    .local v9, "paddingLeft":I
    :cond_e7
    move/from16 v20, v5

    move/from16 v23, v9

    const/16 v21, 0x1

    move v9, v4

    .end local v5    # "majorGravity":I
    .end local v9    # "paddingLeft":I
    .restart local v20    # "majorGravity":I
    .restart local v23    # "paddingLeft":I
    :goto_ee
    add-int/lit8 v1, v4, 0x1

    move/from16 v5, v20

    move/from16 v9, v23

    goto/16 :goto_4d

    .line 1505
    .end local v4    # "i":I
    .end local v20    # "majorGravity":I
    .end local v23    # "paddingLeft":I
    .restart local v5    # "majorGravity":I
    .restart local v9    # "paddingLeft":I
    :cond_f6
    move/from16 v20, v5

    move/from16 v23, v9

    .end local v5    # "majorGravity":I
    .end local v9    # "paddingLeft":I
    .restart local v20    # "majorGravity":I
    .restart local v23    # "paddingLeft":I
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1376
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1378
    return-void
.end method

.method measureHorizontal(II)V
    .registers 67
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 927
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 930
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 931
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 932
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 933
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 935
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 937
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 938
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 940
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 941
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 943
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v15, :cond_25

    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v15, :cond_2e

    .line 944
    :cond_25
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 945
    new-array v10, v15, [I

    iput-object v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 948
    :cond_2e
    iget-object v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 949
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 951
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 952
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 954
    iget-boolean v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 955
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 957
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_5a

    const/16 v23, 0x1

    goto :goto_5c

    :cond_5a
    const/16 v23, 0x0

    .line 959
    .local v23, "isExactly":Z
    :goto_5c
    const/16 v24, 0x0

    .line 962
    .local v24, "largestChildWidth":I
    move/from16 v25, v1

    move/from16 v1, v24

    move/from16 v24, v18

    move/from16 v18, v4

    move v4, v0

    const/4 v0, 0x0

    move/from16 v63, v3

    move v3, v2

    move/from16 v2, v63

    .local v0, "i":I
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v18, "allFillParent":Z
    .local v24, "matchHeight":Z
    .local v25, "childState":I
    :goto_6d
    const/16 v28, 0x0

    if-ge v0, v11, :cond_24c

    .line 963
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 965
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_8c

    .line 966
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .local v30, "largestChildWidth":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v27

    add-int v1, v1, v27

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 967
    nop

    .line 962
    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v1, v30

    goto/16 :goto_240

    .line 970
    .end local v30    # "largestChildWidth":I
    .restart local v1    # "largestChildWidth":I
    :cond_8c
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .restart local v30    # "largestChildWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v31, v2

    const/16 v2, 0x8

    .end local v2    # "weightedMaxHeight":I
    .local v31, "weightedMaxHeight":I
    if-ne v1, v2, :cond_a8

    .line 971
    invoke-virtual {v7, v9, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 972
    nop

    .line 962
    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v1, v30

    move/from16 v2, v31

    goto/16 :goto_240

    .line 975
    :cond_a8
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 976
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 979
    :cond_b5
    nop

    .line 980
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 982
    .local v2, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v29, v5, v1

    .line 984
    .end local v5    # "totalWeight":F
    .local v29, "totalWeight":F
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v12, v1, :cond_11d

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_11d

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_11d

    .line 988
    if-eqz v23, :cond_de

    .line 989
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    .end local v0    # "i":I
    .local v32, "i":I
    iget v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v0

    add-int/2addr v1, v5

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_ee

    .line 991
    .end local v32    # "i":I
    .restart local v0    # "i":I
    :cond_de
    move/from16 v32, v0

    .end local v0    # "i":I
    .restart local v32    # "i":I
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 992
    .local v0, "totalLength":I
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v5, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1001
    .end local v0    # "totalLength":I
    :goto_ee
    if-eqz v6, :cond_10b

    .line 1002
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1003
    .local v1, "freeSpec":I
    invoke-virtual {v9, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1004
    .end local v1    # "freeSpec":I
    nop

    .line 1046
    move-object v0, v2

    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v2, v30

    move/from16 v38, v31

    move/from16 v35, v32

    const/4 v12, -0x1

    goto/16 :goto_1a5

    .line 1005
    :cond_10b
    const/16 v22, 0x1

    .line 1046
    move-object v0, v2

    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v38, v31

    move/from16 v35, v32

    const/4 v12, -0x1

    goto/16 :goto_1a7

    .line 1008
    .end local v32    # "i":I
    .local v0, "i":I
    :cond_11d
    move/from16 v32, v0

    .end local v0    # "i":I
    .restart local v32    # "i":I
    const/high16 v0, -0x80000000

    .line 1010
    .local v0, "oldWidth":I
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_12f

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_12f

    .line 1015
    const/4 v0, 0x0

    .line 1016
    const/4 v1, -0x2

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1023
    .end local v0    # "oldWidth":I
    .local v5, "oldWidth":I
    :cond_12f
    move v5, v0

    cmpl-float v0, v29, v28

    if-nez v0, :cond_139

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v33, v0

    goto :goto_13b

    :cond_139
    const/16 v33, 0x0

    :goto_13b
    const/16 v34, 0x0

    move/from16 v1, v32

    .end local v32    # "i":I
    .local v1, "i":I
    move-object/from16 v0, p0

    move/from16 v35, v1

    move/from16 v36, v30

    .end local v1    # "i":I
    .end local v30    # "largestChildWidth":I
    .local v35, "i":I
    .local v36, "largestChildWidth":I
    move-object v1, v9

    move-object/from16 v37, v2

    move/from16 v38, v31

    .end local v2    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v31    # "weightedMaxHeight":I
    .local v37, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v38, "weightedMaxHeight":I
    move/from16 v2, v35

    move/from16 v39, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v39, "alternativeMaxHeight":I
    move/from16 v3, p1

    move/from16 v40, v4

    .end local v4    # "maxHeight":I
    .local v40, "maxHeight":I
    move/from16 v4, v33

    move v8, v5

    .end local v5    # "oldWidth":I
    .local v8, "oldWidth":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v41, v12

    const/4 v12, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v12    # "widthMode":I
    .local v21, "baselineAligned":Z
    .local v41, "widthMode":I
    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1027
    const/high16 v0, -0x80000000

    if-eq v8, v0, :cond_16a

    .line 1028
    move-object/from16 v0, v37

    .end local v37    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iput v8, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_16c

    .line 1031
    .end local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v37    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_16a
    move-object/from16 v0, v37

    .end local v37    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :goto_16c
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1032
    .local v1, "childWidth":I
    if-eqz v23, :cond_183

    .line 1033
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1034
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_198

    .line 1036
    :cond_183
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1037
    .local v2, "totalLength":I
    add-int v3, v2, v1

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 1038
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1037
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1041
    .end local v2    # "totalLength":I
    :goto_198
    if-eqz v14, :cond_1a3

    .line 1042
    move/from16 v2, v36

    .end local v36    # "largestChildWidth":I
    .local v2, "largestChildWidth":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1046
    move/from16 v30, v1

    goto :goto_1a7

    .end local v1    # "childWidth":I
    .end local v2    # "largestChildWidth":I
    .end local v8    # "oldWidth":I
    .restart local v36    # "largestChildWidth":I
    :cond_1a3
    move/from16 v2, v36

    .end local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v21    # "baselineAligned":Z
    .end local v35    # "i":I
    .end local v36    # "largestChildWidth":I
    .end local v38    # "weightedMaxHeight":I
    .end local v39    # "alternativeMaxHeight":I
    .end local v40    # "maxHeight":I
    .end local v41    # "widthMode":I
    .local v2, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v3    # "alternativeMaxHeight":I
    .restart local v4    # "maxHeight":I
    .restart local v6    # "baselineAligned":Z
    .restart local v12    # "widthMode":I
    .restart local v30    # "largestChildWidth":I
    .restart local v31    # "weightedMaxHeight":I
    .restart local v32    # "i":I
    :goto_1a5
    move/from16 v30, v2

    .end local v2    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v3    # "alternativeMaxHeight":I
    .end local v4    # "maxHeight":I
    .end local v6    # "baselineAligned":Z
    .end local v12    # "widthMode":I
    .end local v31    # "weightedMaxHeight":I
    .end local v32    # "i":I
    .restart local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v21    # "baselineAligned":Z
    .restart local v35    # "i":I
    .restart local v38    # "weightedMaxHeight":I
    .restart local v39    # "alternativeMaxHeight":I
    .restart local v40    # "maxHeight":I
    .restart local v41    # "widthMode":I
    :goto_1a7
    const/4 v1, 0x0

    .line 1047
    .local v1, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_1b3

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v2, v12, :cond_1b3

    .line 1051
    const/16 v24, 0x1

    .line 1052
    const/4 v1, 0x1

    .line 1055
    :cond_1b3
    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1056
    .local v2, "margin":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1057
    .local v3, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v6, v25

    .end local v25    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    .line 1059
    .end local v6    # "childState":I
    .local v4, "childState":I
    if-eqz v21, :cond_1f7

    .line 1060
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 1061
    .local v5, "childBaseline":I
    if-eq v5, v12, :cond_1f7

    .line 1064
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v6, :cond_1d6

    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_1d8

    :cond_1d6
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_1d8
    and-int/lit8 v6, v6, 0x70

    .line 1066
    .local v6, "gravity":I
    shr-int/lit8 v8, v6, 0x4

    const/16 v25, -0x2

    and-int/lit8 v8, v8, -0x2

    shr-int/lit8 v8, v8, 0x1

    .line 1069
    .local v8, "index":I
    aget v12, v10, v8

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v10, v8

    .line 1070
    aget v12, v15, v8

    move/from16 v42, v2

    .end local v2    # "margin":I
    .local v42, "margin":I
    sub-int v2, v3, v5

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v8

    goto :goto_1f9

    .line 1074
    .end local v5    # "childBaseline":I
    .end local v6    # "gravity":I
    .end local v8    # "index":I
    .end local v42    # "margin":I
    .restart local v2    # "margin":I
    :cond_1f7
    move/from16 v42, v2

    .end local v2    # "margin":I
    .restart local v42    # "margin":I
    :goto_1f9
    move/from16 v8, v40

    .end local v40    # "maxHeight":I
    .local v8, "maxHeight":I
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1076
    .end local v8    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v18, :cond_208

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_208

    const/4 v5, 0x1

    goto :goto_209

    :cond_208
    const/4 v5, 0x0

    .line 1077
    .end local v18    # "allFillParent":Z
    .local v5, "allFillParent":Z
    :goto_209
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v28

    if-lez v6, :cond_21f

    .line 1082
    if-eqz v1, :cond_214

    move/from16 v6, v42

    goto :goto_215

    :cond_214
    move v6, v3

    :goto_215
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .local v12, "weightedMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1089
    move v12, v6

    move/from16 v6, v39

    goto :goto_22d

    .line 1085
    .end local v12    # "weightedMaxHeight":I
    .restart local v38    # "weightedMaxHeight":I
    :cond_21f
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .restart local v12    # "weightedMaxHeight":I
    if-eqz v1, :cond_226

    move/from16 v6, v42

    goto :goto_227

    :cond_226
    move v6, v3

    :goto_227
    move/from16 v8, v39

    .end local v39    # "alternativeMaxHeight":I
    .local v8, "alternativeMaxHeight":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1089
    .end local v8    # "alternativeMaxHeight":I
    .local v6, "alternativeMaxHeight":I
    :goto_22d
    move/from16 v8, v35

    .end local v35    # "i":I
    .local v8, "i":I
    invoke-virtual {v7, v9, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v18

    add-int v0, v8, v18

    .line 962
    move/from16 v25, v4

    move/from16 v18, v5

    move v3, v6

    move/from16 v5, v29

    move/from16 v1, v30

    move v4, v2

    move v2, v12

    .end local v6    # "alternativeMaxHeight":I
    .end local v8    # "i":I
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "weightedMaxHeight":I
    .end local v29    # "totalWeight":F
    .end local v30    # "largestChildWidth":I
    .end local v42    # "margin":I
    .local v0, "i":I
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v5, "totalWeight":F
    .restart local v18    # "allFillParent":Z
    .restart local v25    # "childState":I
    :goto_240
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v21

    move/from16 v12, v41

    move/from16 v8, p1

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_6d

    .line 1092
    .end local v0    # "i":I
    .end local v21    # "baselineAligned":Z
    .end local v41    # "widthMode":I
    .local v6, "baselineAligned":Z
    .local v12, "widthMode":I
    :cond_24c
    move v8, v4

    move/from16 v21, v6

    move/from16 v41, v12

    move/from16 v6, v25

    move v12, v2

    move v2, v1

    .end local v1    # "largestChildWidth":I
    .end local v4    # "maxHeight":I
    .end local v25    # "childState":I
    .local v2, "largestChildWidth":I
    .local v6, "childState":I
    .local v8, "maxHeight":I
    .local v12, "weightedMaxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v41    # "widthMode":I
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v0, :cond_266

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 1093
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1098
    :cond_266
    aget v0, v10, v20

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27d

    const/4 v0, 0x0

    aget v4, v10, v0

    if-ne v4, v1, :cond_27d

    aget v0, v10, v19

    if-ne v0, v1, :cond_27d

    aget v0, v10, v17

    if-eq v0, v1, :cond_279

    goto :goto_27d

    .line 1111
    :cond_279
    move/from16 v43, v6

    move v4, v8

    goto :goto_2af

    .line 1102
    :cond_27d
    :goto_27d
    aget v0, v10, v17

    const/4 v1, 0x0

    aget v4, v10, v1

    aget v9, v10, v20

    aget v1, v10, v19

    .line 1104
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1103
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1102
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1105
    .local v0, "ascent":I
    aget v1, v15, v17

    const/4 v4, 0x0

    aget v9, v15, v4

    aget v4, v15, v20

    move/from16 v43, v6

    .end local v6    # "childState":I
    .local v43, "childState":I
    aget v6, v15, v19

    .line 1107
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1106
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1105
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1108
    .local v1, "descent":I
    add-int v4, v0, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1111
    .end local v0    # "ascent":I
    .end local v1    # "descent":I
    .end local v8    # "maxHeight":I
    .restart local v4    # "maxHeight":I
    :goto_2af
    if-eqz v14, :cond_326

    move/from16 v0, v41

    const/high16 v1, -0x80000000

    .end local v41    # "widthMode":I
    .local v0, "widthMode":I
    if-eq v0, v1, :cond_2be

    if-nez v0, :cond_2ba

    goto :goto_2be

    .line 1142
    :cond_2ba
    move/from16 v45, v4

    goto/16 :goto_32a

    .line 1113
    :cond_2be
    :goto_2be
    const/4 v1, 0x0

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c2
    if-ge v1, v11, :cond_323

    .line 1116
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1118
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_2d4

    .line 1119
    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1120
    goto :goto_2e2

    .line 1123
    :cond_2d4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2e7

    .line 1124
    invoke-virtual {v7, v6, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v1, v8

    .line 1125
    nop

    .line 1115
    .end local v1    # "i":I
    .end local v4    # "maxHeight":I
    .end local v6    # "child":Landroid/view/View;
    .local v44, "i":I
    .local v45, "maxHeight":I
    :goto_2e2
    move/from16 v44, v1

    move/from16 v45, v4

    goto :goto_31e

    .line 1128
    .end local v44    # "i":I
    .end local v45    # "maxHeight":I
    .restart local v1    # "i":I
    .restart local v4    # "maxHeight":I
    .restart local v6    # "child":Landroid/view/View;
    :cond_2e7
    nop

    .line 1129
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1130
    .local v8, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v23, :cond_305

    .line 1131
    iget v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v44, v1

    .end local v1    # "i":I
    .restart local v44    # "i":I
    iget v1, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    move/from16 v45, v4

    .end local v4    # "maxHeight":I
    .restart local v45    # "maxHeight":I
    iget v4, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 1132
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v9, v1

    iput v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_31e

    .line 1134
    .end local v44    # "i":I
    .end local v45    # "maxHeight":I
    .restart local v1    # "i":I
    .restart local v4    # "maxHeight":I
    :cond_305
    move/from16 v44, v1

    move/from16 v45, v4

    .end local v1    # "i":I
    .end local v4    # "maxHeight":I
    .restart local v44    # "i":I
    .restart local v45    # "maxHeight":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1135
    .local v1, "totalLength":I
    add-int v4, v1, v2

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    .line 1136
    invoke-virtual {v7, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v4, v9

    .line 1135
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1115
    .end local v1    # "totalLength":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :goto_31e
    add-int/lit8 v1, v44, 0x1

    move/from16 v4, v45

    goto :goto_2c2

    .line 1142
    .end local v44    # "i":I
    .end local v45    # "maxHeight":I
    .restart local v4    # "maxHeight":I
    :cond_323
    move/from16 v45, v4

    .end local v4    # "maxHeight":I
    .restart local v45    # "maxHeight":I
    goto :goto_32a

    .end local v0    # "widthMode":I
    .end local v45    # "maxHeight":I
    .restart local v4    # "maxHeight":I
    .restart local v41    # "widthMode":I
    :cond_326
    move/from16 v45, v4

    move/from16 v0, v41

    .end local v4    # "maxHeight":I
    .end local v41    # "widthMode":I
    .restart local v0    # "widthMode":I
    .restart local v45    # "maxHeight":I
    :goto_32a
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1144
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1147
    .local v1, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1150
    move/from16 v4, p1

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    .line 1151
    .local v8, "widthSizeAndState":I
    const v6, 0xffffff

    and-int v1, v8, v6

    .line 1156
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v1, v6

    .line 1157
    .local v6, "delta":I
    if-nez v22, :cond_3e6

    if-eqz v6, :cond_365

    cmpl-float v25, v5, v28

    if-lez v25, :cond_365

    .line 1158
    move/from16 v46, v1

    move/from16 v51, v2

    move v2, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_3ef

    .line 1268
    :cond_365
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1272
    if-eqz v14, :cond_3cd

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v0, v9, :cond_3cd

    .line 1273
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_371
    move/from16 v9, v16

    .end local v16    # "i":I
    .local v9, "i":I
    if-ge v9, v11, :cond_3cd

    .line 1274
    move/from16 v46, v1

    .end local v1    # "widthSize":I
    .local v46, "widthSize":I
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1276
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_3ba

    move/from16 v47, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v47, "alternativeMaxHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v48, v5

    const/16 v5, 0x8

    .end local v5    # "totalWeight":F
    .local v48, "totalWeight":F
    if-ne v3, v5, :cond_38f

    .line 1277
    nop

    .line 1273
    move/from16 v51, v2

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_3c2

    .line 1280
    :cond_38f
    nop

    .line 1281
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1283
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1284
    .local v5, "childExtra":F
    cmpl-float v16, v5, v28

    if-lez v16, :cond_3b5

    .line 1285
    nop

    .line 1286
    move-object/from16 v49, v3

    move/from16 v50, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "childExtra":F
    .local v49, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v50, "childExtra":F
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1287
    move/from16 v51, v2

    .end local v2    # "largestChildWidth":I
    .local v51, "largestChildWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1285
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3c2

    .line 1273
    .end local v1    # "child":Landroid/view/View;
    .end local v49    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v50    # "childExtra":F
    .end local v51    # "largestChildWidth":I
    .restart local v2    # "largestChildWidth":I
    :cond_3b5
    move/from16 v51, v2

    const/high16 v3, 0x40000000    # 2.0f

    .end local v2    # "largestChildWidth":I
    .restart local v51    # "largestChildWidth":I
    goto :goto_3c2

    .end local v47    # "alternativeMaxHeight":I
    .end local v48    # "totalWeight":F
    .end local v51    # "largestChildWidth":I
    .restart local v2    # "largestChildWidth":I
    .local v3, "alternativeMaxHeight":I
    .local v5, "totalWeight":F
    :cond_3ba
    move/from16 v51, v2

    move/from16 v47, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v2    # "largestChildWidth":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v5    # "totalWeight":F
    .restart local v47    # "alternativeMaxHeight":I
    .restart local v48    # "totalWeight":F
    .restart local v51    # "largestChildWidth":I
    :goto_3c2
    add-int/lit8 v16, v9, 0x1

    move/from16 v1, v46

    move/from16 v3, v47

    move/from16 v5, v48

    move/from16 v2, v51

    goto :goto_371

    .line 1294
    .end local v9    # "i":I
    .end local v46    # "widthSize":I
    .end local v47    # "alternativeMaxHeight":I
    .end local v48    # "totalWeight":F
    .end local v51    # "largestChildWidth":I
    .local v1, "widthSize":I
    .restart local v2    # "largestChildWidth":I
    .restart local v3    # "alternativeMaxHeight":I
    .restart local v5    # "totalWeight":F
    :cond_3cd
    move/from16 v46, v1

    move/from16 v51, v2

    move/from16 v47, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v1    # "widthSize":I
    .end local v2    # "largestChildWidth":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v5    # "totalWeight":F
    .restart local v46    # "widthSize":I
    .restart local v47    # "alternativeMaxHeight":I
    .restart local v48    # "totalWeight":F
    .restart local v51    # "largestChildWidth":I
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v52, v12

    move/from16 v53, v14

    move/from16 v6, p2

    goto/16 :goto_5d6

    .line 1158
    .end local v46    # "widthSize":I
    .end local v47    # "alternativeMaxHeight":I
    .end local v48    # "totalWeight":F
    .end local v51    # "largestChildWidth":I
    .restart local v1    # "widthSize":I
    .restart local v2    # "largestChildWidth":I
    .restart local v3    # "alternativeMaxHeight":I
    .restart local v5    # "totalWeight":F
    :cond_3e6
    move/from16 v46, v1

    move/from16 v51, v2

    move v2, v3

    move/from16 v48, v5

    const/high16 v3, 0x40000000    # 2.0f

    .end local v1    # "widthSize":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v5    # "totalWeight":F
    .local v2, "alternativeMaxHeight":I
    .restart local v46    # "widthSize":I
    .restart local v48    # "totalWeight":F
    .restart local v51    # "largestChildWidth":I
    :goto_3ef
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_3f8

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    goto :goto_3fa

    :cond_3f8
    move/from16 v5, v48

    :goto_3fa
    move v1, v5

    .line 1160
    .local v1, "weightSum":F
    const/4 v5, -0x1

    aput v5, v10, v17

    aput v5, v10, v19

    aput v5, v10, v20

    const/4 v9, 0x0

    aput v5, v10, v9

    .line 1161
    aput v5, v15, v17

    aput v5, v15, v19

    aput v5, v15, v20

    aput v5, v15, v9

    .line 1162
    const/4 v5, -0x1

    .line 1164
    .end local v45    # "maxHeight":I
    .local v5, "maxHeight":I
    iput v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1166
    move v3, v2

    move/from16 v9, v43

    move v2, v1

    const/4 v1, 0x0

    .end local v43    # "childState":I
    .local v1, "i":I
    .local v2, "weightSum":F
    .restart local v3    # "alternativeMaxHeight":I
    .local v9, "childState":I
    :goto_415
    if-ge v1, v11, :cond_570

    .line 1167
    move/from16 v52, v12

    .end local v12    # "weightedMaxHeight":I
    .local v52, "weightedMaxHeight":I
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1169
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_54f

    move/from16 v53, v14

    .end local v14    # "useLargestChild":Z
    .local v53, "useLargestChild":Z
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v4, 0x8

    if-ne v14, v4, :cond_437

    .line 1170
    nop

    .line 1166
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v6, p2

    const/16 v25, -0x2

    goto/16 :goto_55c

    .line 1173
    :cond_437
    nop

    .line 1174
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1176
    .local v14, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1177
    .local v4, "childExtra":F
    cmpl-float v25, v4, v28

    if-lez v25, :cond_4a8

    .line 1179
    move/from16 v54, v11

    .end local v11    # "count":I
    .local v54, "count":I
    int-to-float v11, v6

    mul-float v11, v11, v4

    div-float/2addr v11, v2

    float-to-int v11, v11

    .line 1180
    .local v11, "share":I
    sub-float/2addr v2, v4

    .line 1181
    sub-int/2addr v6, v11

    .line 1183
    nop

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v55, v2

    .end local v2    # "weightSum":F
    .local v55, "weightSum":F
    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v25, v25, v2

    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v2, v25, v2

    move/from16 v56, v4

    .end local v4    # "childExtra":F
    .local v56, "childExtra":F
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1183
    move/from16 v57, v6

    move/from16 v58, v8

    move/from16 v6, p2

    const/high16 v8, 0x40000000    # 2.0f

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .local v57, "delta":I
    .local v58, "widthSizeAndState":I
    invoke-static {v6, v2, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v2

    .line 1190
    .local v2, "childHeightMeasureSpec":I
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v4, :cond_488

    if-eq v0, v8, :cond_479

    goto :goto_488

    .line 1203
    :cond_479
    if-lez v11, :cond_47d

    move v4, v11

    goto :goto_47e

    :cond_47d
    const/4 v4, 0x0

    :goto_47e
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v4, v2}, Landroid/view/View;->measure(II)V

    .line 1209
    move/from16 v59, v0

    goto :goto_49b

    .line 1193
    :cond_488
    :goto_488
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v11

    .line 1194
    .local v4, "childWidth":I
    if-gez v4, :cond_490

    .line 1195
    const/4 v4, 0x0

    .line 1198
    :cond_490
    nop

    .line 1199
    move/from16 v59, v0

    .end local v0    # "widthMode":I
    .local v59, "widthMode":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1198
    invoke-virtual {v12, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1201
    .end local v4    # "childWidth":I
    nop

    .line 1209
    :goto_49b
    nop

    .line 1210
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    .line 1209
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    goto :goto_4b9

    .line 1213
    .end local v54    # "count":I
    .end local v55    # "weightSum":F
    .end local v56    # "childExtra":F
    .end local v57    # "delta":I
    .end local v58    # "widthSizeAndState":I
    .end local v59    # "widthMode":I
    .restart local v0    # "widthMode":I
    .local v2, "weightSum":F
    .local v4, "childExtra":F
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .local v11, "count":I
    :cond_4a8
    move/from16 v59, v0

    move/from16 v56, v4

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v6, p2

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v57, v0

    move/from16 v55, v2

    .end local v0    # "widthMode":I
    .end local v2    # "weightSum":F
    .end local v4    # "childExtra":F
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .restart local v54    # "count":I
    .restart local v55    # "weightSum":F
    .restart local v56    # "childExtra":F
    .restart local v57    # "delta":I
    .restart local v58    # "widthSizeAndState":I
    .restart local v59    # "widthMode":I
    :goto_4b9
    if-eqz v23, :cond_4d0

    .line 1214
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1215
    invoke-virtual {v7, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_4e8

    .line 1217
    :cond_4d0
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1218
    .local v0, "totalLength":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1219
    invoke-virtual {v7, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1218
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1222
    .end local v0    # "totalLength":I
    :goto_4e8
    if-eq v13, v8, :cond_4f1

    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4f1

    const/4 v0, 0x1

    goto :goto_4f2

    :cond_4f1
    const/4 v0, 0x0

    .line 1225
    .local v0, "matchHeightLocally":Z
    :goto_4f2
    iget v2, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1226
    .local v2, "margin":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1227
    .local v4, "childHeight":I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1228
    if-eqz v0, :cond_504

    move v11, v2

    goto :goto_505

    :cond_504
    move v11, v4

    :goto_505
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1231
    if-eqz v18, :cond_512

    iget v11, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v11, v8, :cond_512

    const/4 v8, 0x1

    goto :goto_513

    :cond_512
    const/4 v8, 0x0

    .line 1233
    .end local v18    # "allFillParent":Z
    .local v8, "allFillParent":Z
    :goto_513
    if-eqz v21, :cond_548

    .line 1234
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v11

    .line 1235
    .local v11, "childBaseline":I
    move/from16 v60, v0

    const/4 v0, -0x1

    .end local v0    # "matchHeightLocally":Z
    .local v60, "matchHeightLocally":Z
    if-eq v11, v0, :cond_548

    .line 1237
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v0, :cond_525

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_527

    :cond_525
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_527
    and-int/lit8 v0, v0, 0x70

    .line 1239
    .local v0, "gravity":I
    shr-int/lit8 v18, v0, 0x4

    const/16 v25, -0x2

    and-int/lit8 v18, v18, -0x2

    shr-int/lit8 v18, v18, 0x1

    .line 1242
    .local v18, "index":I
    move/from16 v61, v0

    .end local v0    # "gravity":I
    .local v61, "gravity":I
    aget v0, v10, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v18

    .line 1243
    aget v0, v15, v18

    move/from16 v62, v2

    .end local v2    # "margin":I
    .local v62, "margin":I
    sub-int v2, v4, v11

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v18

    goto :goto_54a

    .line 1166
    .end local v4    # "childHeight":I
    .end local v11    # "childBaseline":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v18    # "index":I
    .end local v56    # "childExtra":F
    .end local v60    # "matchHeightLocally":Z
    .end local v61    # "gravity":I
    .end local v62    # "margin":I
    :cond_548
    const/16 v25, -0x2

    :goto_54a
    move/from16 v18, v8

    move/from16 v2, v55

    goto :goto_55e

    .end local v53    # "useLargestChild":Z
    .end local v54    # "count":I
    .end local v55    # "weightSum":F
    .end local v57    # "delta":I
    .end local v58    # "widthSizeAndState":I
    .end local v59    # "widthMode":I
    .local v0, "widthMode":I
    .local v2, "weightSum":F
    .restart local v6    # "delta":I
    .local v8, "widthSizeAndState":I
    .local v11, "count":I
    .local v14, "useLargestChild":Z
    .local v18, "allFillParent":Z
    :cond_54f
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v53, v14

    move/from16 v6, p2

    const/16 v25, -0x2

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .end local v14    # "useLargestChild":Z
    .local v0, "delta":I
    .restart local v53    # "useLargestChild":Z
    .restart local v54    # "count":I
    .restart local v58    # "widthSizeAndState":I
    .restart local v59    # "widthMode":I
    :goto_55c
    move/from16 v57, v0

    .end local v0    # "delta":I
    .restart local v57    # "delta":I
    :goto_55e
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, v52

    move/from16 v14, v53

    move/from16 v11, v54

    move/from16 v6, v57

    move/from16 v8, v58

    move/from16 v0, v59

    move/from16 v4, p1

    goto/16 :goto_415

    .line 1250
    .end local v1    # "i":I
    .end local v52    # "weightedMaxHeight":I
    .end local v53    # "useLargestChild":Z
    .end local v54    # "count":I
    .end local v57    # "delta":I
    .end local v58    # "widthSizeAndState":I
    .end local v59    # "widthMode":I
    .local v0, "widthMode":I
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .restart local v11    # "count":I
    .local v12, "weightedMaxHeight":I
    .restart local v14    # "useLargestChild":Z
    :cond_570
    move/from16 v59, v0

    move v0, v6

    move/from16 v58, v8

    move/from16 v54, v11

    move/from16 v52, v12

    move/from16 v53, v14

    move/from16 v6, p2

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .end local v12    # "weightedMaxHeight":I
    .end local v14    # "useLargestChild":Z
    .local v0, "delta":I
    .restart local v52    # "weightedMaxHeight":I
    .restart local v53    # "useLargestChild":Z
    .restart local v54    # "count":I
    .restart local v58    # "widthSizeAndState":I
    .restart local v59    # "widthMode":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v8

    add-int/2addr v4, v8

    add-int/2addr v1, v4

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1255
    aget v1, v10, v20

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5a0

    const/4 v1, 0x0

    aget v8, v10, v1

    if-ne v8, v4, :cond_5a0

    aget v1, v10, v19

    if-ne v1, v4, :cond_5a0

    aget v1, v10, v17

    if-eq v1, v4, :cond_59e

    goto :goto_5a0

    .line 1267
    .end local v2    # "weightSum":F
    :cond_59e
    move v4, v5

    goto :goto_5d0

    .line 1259
    .restart local v2    # "weightSum":F
    :cond_5a0
    :goto_5a0
    aget v1, v10, v17

    const/4 v4, 0x0

    aget v8, v10, v4

    aget v11, v10, v20

    aget v12, v10, v19

    .line 1261
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1260
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1259
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1262
    .local v1, "ascent":I
    aget v8, v15, v17

    aget v4, v15, v4

    aget v11, v15, v20

    aget v12, v15, v19

    .line 1264
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1263
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1262
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1265
    .local v4, "descent":I
    add-int v8, v1, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1267
    move v4, v1

    .line 1294
    .end local v1    # "ascent":I
    .end local v2    # "weightSum":F
    .end local v5    # "maxHeight":I
    .local v4, "maxHeight":I
    :goto_5d0
    move/from16 v47, v3

    move/from16 v45, v4

    move/from16 v43, v9

    .end local v3    # "alternativeMaxHeight":I
    .end local v4    # "maxHeight":I
    .end local v9    # "childState":I
    .restart local v43    # "childState":I
    .restart local v45    # "maxHeight":I
    .restart local v47    # "alternativeMaxHeight":I
    :goto_5d6
    if-nez v18, :cond_5de

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_5de

    .line 1295
    move/from16 v45, v47

    .line 1298
    :cond_5de
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v45, v1

    .line 1301
    .end local v45    # "maxHeight":I
    .local v1, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1303
    const/high16 v2, -0x1000000

    and-int v2, v43, v2

    or-int v2, v58, v2

    shl-int/lit8 v3, v43, 0x10

    .line 1304
    invoke-static {v1, v6, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1303
    invoke-virtual {v7, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1307
    if-eqz v24, :cond_60a

    .line 1308
    move/from16 v3, v54

    move/from16 v2, p1

    .end local v54    # "count":I
    .local v3, "count":I
    invoke-direct {v7, v3, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    goto :goto_60e

    .line 1310
    .end local v3    # "count":I
    .restart local v54    # "count":I
    :cond_60a
    move/from16 v3, v54

    move/from16 v2, p1

    .end local v54    # "count":I
    .restart local v3    # "count":I
    :goto_60e
    return-void
.end method

.method measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 60
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 594
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 597
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 598
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 599
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 600
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 602
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 604
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 605
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 607
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 608
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 610
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 611
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 613
    .local v10, "useLargestChild":Z
    const/16 v17, 0x0

    .line 616
    .local v17, "largestChildHeight":I
    move/from16 v18, v6

    move v6, v2

    move v2, v0

    const/4 v0, 0x0

    move/from16 v56, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v56

    .local v0, "i":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v6, "alternativeMaxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    :goto_2f
    move/from16 v19, v4

    .end local v4    # "weightedMaxWidth":I
    .local v19, "weightedMaxWidth":I
    const/16 v21, 0x1

    const/16 v22, 0x0

    if-ge v0, v11, :cond_1c2

    .line 617
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 619
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_54

    .line 620
    move/from16 v25, v1

    .end local v1    # "childState":I
    .local v25, "childState":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v20

    add-int v1, v1, v20

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 621
    nop

    .line 616
    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v4, v19

    move/from16 v1, v25

    goto/16 :goto_1b6

    .line 624
    .end local v25    # "childState":I
    .restart local v1    # "childState":I
    :cond_54
    move/from16 v25, v1

    .end local v1    # "childState":I
    .restart local v25    # "childState":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v26, v2

    const/16 v2, 0x8

    .end local v2    # "maxWidth":I
    .local v26, "maxWidth":I
    if-ne v1, v2, :cond_72

    .line 625
    invoke-virtual {v7, v4, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    nop

    .line 616
    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v4, v19

    move/from16 v1, v25

    move/from16 v2, v26

    goto/16 :goto_1b6

    .line 629
    :cond_72
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 630
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 633
    :cond_7f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 635
    .local v2, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v23, v5, v1

    .line 637
    .end local v5    # "totalWeight":F
    .local v23, "totalWeight":F
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v13, v5, :cond_bc

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_bc

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v22

    if-lez v1, :cond_bc

    .line 641
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 642
    .local v1, "totalLength":I
    iget v5, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v1

    move/from16 v27, v0

    .end local v0    # "i":I
    .local v27, "i":I
    iget v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 643
    const/4 v14, 0x1

    .line 644
    .end local v1    # "totalLength":I
    nop

    .line 682
    move-object v0, v2

    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v32, v14

    move/from16 v9, v19

    move/from16 v8, v25

    move/from16 v31, v26

    move/from16 v29, v27

    move v11, v6

    goto/16 :goto_133

    .line 645
    .end local v27    # "i":I
    .restart local v0    # "i":I
    :cond_bc
    move/from16 v27, v0

    .end local v0    # "i":I
    .restart local v27    # "i":I
    const/high16 v0, -0x80000000

    .line 647
    .local v0, "oldHeight":I
    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_ce

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v22

    if-lez v1, :cond_ce

    .line 652
    const/4 v0, 0x0

    .line 653
    const/4 v1, -0x2

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 660
    .end local v0    # "oldHeight":I
    .local v5, "oldHeight":I
    :cond_ce
    move v5, v0

    const/16 v24, 0x0

    cmpl-float v0, v23, v22

    if-nez v0, :cond_da

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v28, v0

    goto :goto_dc

    :cond_da
    const/16 v28, 0x0

    :goto_dc
    move/from16 v1, v27

    .end local v27    # "i":I
    .local v1, "i":I
    move-object/from16 v0, p0

    move/from16 v29, v1

    move/from16 v8, v25

    .end local v1    # "i":I
    .end local v25    # "childState":I
    .local v8, "childState":I
    .local v29, "i":I
    move-object v1, v4

    move-object/from16 v30, v2

    move/from16 v31, v26

    .end local v2    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "maxWidth":I
    .local v30, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v31, "maxWidth":I
    move/from16 v2, v29

    move/from16 v32, v14

    move v14, v3

    .end local v3    # "largestChildHeight":I
    .local v14, "largestChildHeight":I
    .local v32, "skippedMeasure":Z
    move/from16 v3, p1

    move-object/from16 v33, v4

    move/from16 v34, v13

    move/from16 v9, v19

    const/high16 v13, -0x80000000

    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "heightMode":I
    .end local v19    # "weightedMaxWidth":I
    .local v9, "weightedMaxWidth":I
    .local v33, "child":Landroid/view/View;
    .local v34, "heightMode":I
    move/from16 v4, v24

    move v13, v5

    .end local v5    # "oldHeight":I
    .local v13, "oldHeight":I
    move/from16 v5, p2

    move/from16 v35, v11

    move v11, v6

    .end local v6    # "alternativeMaxWidth":I
    .local v11, "alternativeMaxWidth":I
    .local v35, "count":I
    move/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 664
    const/high16 v0, -0x80000000

    if-eq v13, v0, :cond_10e

    .line 665
    move-object/from16 v0, v30

    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iput v13, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    goto :goto_110

    .line 668
    .end local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_10e
    move-object/from16 v0, v30

    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :goto_110
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 669
    .local v1, "childHeight":I
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 670
    .local v2, "totalLength":I
    add-int v3, v2, v1

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 671
    move-object/from16 v4, v33

    .end local v33    # "child":Landroid/view/View;
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 670
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 673
    if-eqz v10, :cond_132

    .line 674
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_133

    .line 682
    .end local v1    # "childHeight":I
    .end local v2    # "totalLength":I
    .end local v13    # "oldHeight":I
    :cond_132
    move v3, v14

    .end local v14    # "largestChildHeight":I
    .restart local v3    # "largestChildHeight":I
    :goto_133
    if-ltz v15, :cond_140

    move/from16 v1, v29

    .end local v29    # "i":I
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    if-ne v15, v2, :cond_142

    .line 683
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    goto :goto_142

    .line 689
    .end local v1    # "i":I
    .restart local v29    # "i":I
    :cond_140
    move/from16 v1, v29

    .end local v29    # "i":I
    .restart local v1    # "i":I
    :cond_142
    :goto_142
    if-ge v1, v15, :cond_153

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v2, v2, v22

    if-gtz v2, :cond_14b

    goto :goto_153

    .line 690
    :cond_14b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 696
    :cond_153
    :goto_153
    const/4 v2, 0x0

    .line 697
    .local v2, "matchWidthLocally":Z
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v12, v5, :cond_161

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_162

    .line 702
    const/16 v18, 0x1

    .line 703
    const/4 v2, 0x1

    goto :goto_162

    .line 706
    :cond_161
    const/4 v6, -0x1

    :cond_162
    :goto_162
    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v13, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v13

    .line 707
    .local v5, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v5

    .line 708
    .local v13, "measuredWidth":I
    move/from16 v14, v31

    .end local v31    # "maxWidth":I
    .local v14, "maxWidth":I
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 709
    nop

    .line 710
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 709
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 712
    .end local v8    # "childState":I
    .local v6, "childState":I
    if-eqz v17, :cond_186

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v3

    const/4 v3, -0x1

    .end local v3    # "largestChildHeight":I
    .local v36, "largestChildHeight":I
    if-ne v8, v3, :cond_188

    const/4 v3, 0x1

    goto :goto_189

    .end local v36    # "largestChildHeight":I
    .restart local v3    # "largestChildHeight":I
    :cond_186
    move/from16 v36, v3

    .end local v3    # "largestChildHeight":I
    .restart local v36    # "largestChildHeight":I
    :cond_188
    const/4 v3, 0x0

    .line 713
    .end local v17    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_189
    iget v8, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v8, v8, v22

    if-lez v8, :cond_19b

    .line 718
    if-eqz v2, :cond_193

    move v8, v5

    goto :goto_194

    :cond_193
    move v8, v13

    :goto_194
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 725
    move v9, v8

    move v8, v11

    goto :goto_1a4

    .line 721
    :cond_19b
    if-eqz v2, :cond_19f

    move v8, v5

    goto :goto_1a0

    :cond_19f
    move v8, v13

    :goto_1a0
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 725
    .end local v11    # "alternativeMaxWidth":I
    .local v8, "alternativeMaxWidth":I
    :goto_1a4
    invoke-virtual {v7, v4, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int v0, v1, v11

    .line 616
    move/from16 v17, v3

    move v1, v6

    move v6, v8

    move v4, v9

    move v2, v14

    move/from16 v5, v23

    move/from16 v14, v32

    move/from16 v3, v36

    .end local v8    # "alternativeMaxWidth":I
    .end local v9    # "weightedMaxWidth":I
    .end local v13    # "measuredWidth":I
    .end local v23    # "totalWeight":F
    .end local v32    # "skippedMeasure":Z
    .end local v36    # "largestChildHeight":I
    .local v0, "i":I
    .local v1, "childState":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "totalWeight":F
    .local v6, "alternativeMaxWidth":I
    .local v14, "skippedMeasure":Z
    .restart local v17    # "allFillParent":Z
    :goto_1b6
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v34

    move/from16 v11, v35

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_2f

    .line 728
    .end local v0    # "i":I
    .end local v4    # "weightedMaxWidth":I
    .end local v34    # "heightMode":I
    .end local v35    # "count":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .restart local v19    # "weightedMaxWidth":I
    :cond_1c2
    move v8, v1

    move v0, v2

    move/from16 v35, v11

    move/from16 v34, v13

    move/from16 v32, v14

    move/from16 v9, v19

    move v14, v3

    move v11, v6

    .end local v1    # "childState":I
    .end local v2    # "maxWidth":I
    .end local v3    # "largestChildHeight":I
    .end local v6    # "alternativeMaxWidth":I
    .end local v13    # "heightMode":I
    .end local v19    # "weightedMaxWidth":I
    .local v0, "maxWidth":I
    .local v8, "childState":I
    .restart local v9    # "weightedMaxWidth":I
    .local v11, "alternativeMaxWidth":I
    .local v14, "largestChildHeight":I
    .restart local v32    # "skippedMeasure":Z
    .restart local v34    # "heightMode":I
    .restart local v35    # "count":I
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_1e2

    move/from16 v1, v35

    .end local v35    # "count":I
    .local v1, "count":I
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 729
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1e4

    .line 732
    .end local v1    # "count":I
    .restart local v35    # "count":I
    :cond_1e2
    move/from16 v1, v35

    .end local v35    # "count":I
    .restart local v1    # "count":I
    :cond_1e4
    :goto_1e4
    if-eqz v10, :cond_242

    move/from16 v2, v34

    const/high16 v3, -0x80000000

    .end local v34    # "heightMode":I
    .local v2, "heightMode":I
    if-eq v2, v3, :cond_1f2

    if-nez v2, :cond_1ef

    goto :goto_1f2

    .line 759
    :cond_1ef
    move/from16 v37, v0

    goto :goto_246

    .line 734
    :cond_1f2
    :goto_1f2
    const/4 v3, 0x0

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 736
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f6
    if-ge v3, v1, :cond_23f

    .line 737
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 739
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_208

    .line 740
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v13

    add-int/2addr v6, v13

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 741
    goto :goto_216

    .line 744
    :cond_208
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v13, 0x8

    if-ne v6, v13, :cond_219

    .line 745
    invoke-virtual {v7, v4, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v3, v6

    .line 746
    nop

    .line 736
    .end local v0    # "maxWidth":I
    .end local v4    # "child":Landroid/view/View;
    .local v37, "maxWidth":I
    :goto_216
    move/from16 v37, v0

    goto :goto_23a

    .line 749
    .end local v37    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    .restart local v4    # "child":Landroid/view/View;
    :cond_219
    nop

    .line 750
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 752
    .local v6, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v13, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 753
    .local v13, "totalLength":I
    add-int v19, v13, v14

    move/from16 v37, v0

    .end local v0    # "maxWidth":I
    .restart local v37    # "maxWidth":I
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v19, v19, v0

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v19, v19, v0

    .line 754
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v0, v19, v0

    .line 753
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 736
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v13    # "totalLength":I
    :goto_23a
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v37

    goto :goto_1f6

    .line 759
    .end local v3    # "i":I
    .end local v37    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    :cond_23f
    move/from16 v37, v0

    .end local v0    # "maxWidth":I
    .restart local v37    # "maxWidth":I
    goto :goto_246

    .end local v2    # "heightMode":I
    .end local v37    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    .restart local v34    # "heightMode":I
    :cond_242
    move/from16 v37, v0

    move/from16 v2, v34

    .end local v0    # "maxWidth":I
    .end local v34    # "heightMode":I
    .restart local v2    # "heightMode":I
    .restart local v37    # "maxWidth":I
    :goto_246
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 761
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 764
    .local v0, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 767
    move v4, v9

    move/from16 v3, p2

    const/4 v6, 0x0

    .end local v9    # "weightedMaxWidth":I
    .local v4, "weightedMaxWidth":I
    invoke-static {v0, v3, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 768
    .local v9, "heightSizeAndState":I
    const v6, 0xffffff

    and-int v0, v9, v6

    .line 773
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v0, v6

    .line 774
    .local v6, "delta":I
    if-nez v32, :cond_2fb

    if-eqz v6, :cond_281

    cmpl-float v13, v5, v22

    if-lez v13, :cond_281

    .line 775
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    goto/16 :goto_303

    .line 846
    :cond_281
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 852
    if-eqz v10, :cond_2e3

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v2, v13, :cond_2e3

    .line 853
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_28d
    move/from16 v13, v16

    .end local v16    # "i":I
    .local v13, "i":I
    if-ge v13, v1, :cond_2e3

    .line 854
    move/from16 v38, v0

    .end local v0    # "heightSize":I
    .local v38, "heightSize":I
    invoke-virtual {v7, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 856
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2d2

    move/from16 v39, v4

    .end local v4    # "weightedMaxWidth":I
    .local v39, "weightedMaxWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v40, v5

    const/16 v5, 0x8

    .end local v5    # "totalWeight":F
    .local v40, "totalWeight":F
    if-ne v4, v5, :cond_2a9

    .line 857
    nop

    .line 853
    move/from16 v43, v6

    goto :goto_2d8

    .line 860
    :cond_2a9
    nop

    .line 861
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 863
    .local v4, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 864
    .local v5, "childExtra":F
    cmpl-float v16, v5, v22

    if-lez v16, :cond_2cf

    .line 865
    nop

    .line 866
    move-object/from16 v41, v4

    .end local v4    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .local v41, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move/from16 v42, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "childExtra":F
    .local v42, "childExtra":F
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 868
    move/from16 v43, v6

    .end local v6    # "delta":I
    .local v43, "delta":I
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 865
    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_2d8

    .line 853
    .end local v0    # "child":Landroid/view/View;
    .end local v41    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v42    # "childExtra":F
    .end local v43    # "delta":I
    .restart local v6    # "delta":I
    :cond_2cf
    move/from16 v43, v6

    .end local v6    # "delta":I
    .restart local v43    # "delta":I
    goto :goto_2d8

    .end local v39    # "weightedMaxWidth":I
    .end local v40    # "totalWeight":F
    .end local v43    # "delta":I
    .local v4, "weightedMaxWidth":I
    .local v5, "totalWeight":F
    .restart local v6    # "delta":I
    :cond_2d2
    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .end local v6    # "delta":I
    .restart local v39    # "weightedMaxWidth":I
    .restart local v40    # "totalWeight":F
    .restart local v43    # "delta":I
    :goto_2d8
    add-int/lit8 v16, v13, 0x1

    move/from16 v0, v38

    move/from16 v4, v39

    move/from16 v5, v40

    move/from16 v6, v43

    goto :goto_28d

    .line 875
    .end local v13    # "i":I
    .end local v38    # "heightSize":I
    .end local v39    # "weightedMaxWidth":I
    .end local v40    # "totalWeight":F
    .end local v43    # "delta":I
    .local v0, "heightSize":I
    .restart local v4    # "weightedMaxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v6    # "delta":I
    :cond_2e3
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    .end local v0    # "heightSize":I
    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .end local v6    # "delta":I
    .restart local v38    # "heightSize":I
    .restart local v39    # "weightedMaxWidth":I
    .restart local v40    # "totalWeight":F
    .restart local v43    # "delta":I
    move/from16 v50, v2

    move/from16 v44, v10

    move/from16 v45, v14

    move/from16 v46, v15

    move/from16 v6, v37

    move/from16 v13, v43

    move/from16 v14, p1

    goto/16 :goto_438

    .line 775
    .end local v38    # "heightSize":I
    .end local v39    # "weightedMaxWidth":I
    .end local v40    # "totalWeight":F
    .end local v43    # "delta":I
    .restart local v0    # "heightSize":I
    .restart local v4    # "weightedMaxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v6    # "delta":I
    :cond_2fb
    move/from16 v38, v0

    move/from16 v39, v4

    move/from16 v40, v5

    move/from16 v43, v6

    .end local v0    # "heightSize":I
    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .end local v6    # "delta":I
    .restart local v38    # "heightSize":I
    .restart local v39    # "weightedMaxWidth":I
    .restart local v40    # "totalWeight":F
    .restart local v43    # "delta":I
    :goto_303
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v0, v0, v22

    if-lez v0, :cond_30c

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    goto :goto_30e

    :cond_30c
    move/from16 v5, v40

    :goto_30e
    move v0, v5

    .line 777
    .local v0, "weightSum":F
    const/4 v4, 0x0

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 779
    move/from16 v6, v37

    move/from16 v13, v43

    const/4 v0, 0x0

    .end local v37    # "maxWidth":I
    .end local v43    # "delta":I
    .local v0, "i":I
    .local v5, "weightSum":F
    .local v6, "maxWidth":I
    .local v13, "delta":I
    :goto_317
    if-ge v0, v1, :cond_41f

    .line 780
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 782
    .local v4, "child":Landroid/view/View;
    move/from16 v44, v10

    .end local v10    # "useLargestChild":Z
    .local v44, "useLargestChild":Z
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v45, v14

    const/16 v14, 0x8

    .end local v14    # "largestChildHeight":I
    .local v45, "largestChildHeight":I
    if-ne v10, v14, :cond_332

    .line 783
    nop

    .line 779
    move/from16 v50, v2

    move/from16 v46, v15

    move/from16 v14, p1

    goto/16 :goto_412

    .line 786
    :cond_332
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 788
    .local v10, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v14, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 789
    .local v14, "childExtra":F
    cmpl-float v16, v14, v22

    if-lez v16, :cond_3ad

    .line 791
    move/from16 v46, v15

    .end local v15    # "baselineChildIndex":I
    .local v46, "baselineChildIndex":I
    int-to-float v15, v13

    mul-float v15, v15, v14

    div-float/2addr v15, v5

    float-to-int v15, v15

    .line 792
    .local v15, "share":I
    sub-float/2addr v5, v14

    .line 793
    sub-int/2addr v13, v15

    .line 795
    nop

    .line 796
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v19

    add-int v16, v16, v19

    move/from16 v47, v5

    .end local v5    # "weightSum":F
    .local v47, "weightSum":F
    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v16, v16, v5

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v5, v16, v5

    move/from16 v48, v13

    .end local v13    # "delta":I
    .local v48, "delta":I
    iget v13, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 795
    move/from16 v49, v14

    move/from16 v14, p1

    .end local v14    # "childExtra":F
    .local v49, "childExtra":F
    invoke-static {v14, v5, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v5

    .line 801
    .local v5, "childWidthMeasureSpec":I
    iget v13, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v13, :cond_386

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v2, v13, :cond_373

    .line 804
    move/from16 v50, v2

    goto :goto_388

    .line 814
    :cond_373
    if-lez v15, :cond_377

    move v13, v15

    goto :goto_378

    :cond_377
    const/4 v13, 0x0

    .line 815
    :goto_378
    move/from16 v50, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "heightMode":I
    .local v50, "heightMode":I
    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 814
    invoke-virtual {v4, v5, v13}, Landroid/view/View;->measure(II)V

    .line 820
    move/from16 v51, v15

    goto :goto_39d

    .line 804
    .end local v50    # "heightMode":I
    .restart local v2    # "heightMode":I
    :cond_386
    move/from16 v50, v2

    .end local v2    # "heightMode":I
    .restart local v50    # "heightMode":I
    :goto_388
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v15

    .line 805
    .local v2, "childHeight":I
    if-gez v2, :cond_390

    .line 806
    const/4 v2, 0x0

    .line 809
    :cond_390
    nop

    .line 810
    move/from16 v51, v15

    const/high16 v13, 0x40000000    # 2.0f

    .end local v15    # "share":I
    .local v51, "share":I
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 809
    invoke-virtual {v4, v5, v15}, Landroid/view/View;->measure(II)V

    .line 811
    .end local v2    # "childHeight":I
    nop

    .line 820
    :goto_39d
    nop

    .line 821
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    .line 820
    invoke-static {v8, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    .line 825
    move/from16 v5, v47

    move/from16 v13, v48

    goto :goto_3b5

    .end local v46    # "baselineChildIndex":I
    .end local v47    # "weightSum":F
    .end local v48    # "delta":I
    .end local v49    # "childExtra":F
    .end local v50    # "heightMode":I
    .end local v51    # "share":I
    .local v2, "heightMode":I
    .local v5, "weightSum":F
    .restart local v13    # "delta":I
    .restart local v14    # "childExtra":F
    .local v15, "baselineChildIndex":I
    :cond_3ad
    move/from16 v50, v2

    move/from16 v49, v14

    move/from16 v46, v15

    move/from16 v14, p1

    .end local v2    # "heightMode":I
    .end local v14    # "childExtra":F
    .end local v15    # "baselineChildIndex":I
    .restart local v46    # "baselineChildIndex":I
    .restart local v49    # "childExtra":F
    .restart local v50    # "heightMode":I
    :goto_3b5
    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v15, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v15

    .line 826
    .local v2, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v2

    .line 827
    .local v15, "measuredWidth":I
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 829
    move/from16 v52, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "margin":I
    .local v52, "margin":I
    if-eq v12, v2, :cond_3d2

    iget v2, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v53, v5

    const/4 v5, -0x1

    .end local v5    # "weightSum":F
    .local v53, "weightSum":F
    if-ne v2, v5, :cond_3d4

    const/4 v2, 0x1

    goto :goto_3d5

    .end local v53    # "weightSum":F
    .restart local v5    # "weightSum":F
    :cond_3d2
    move/from16 v53, v5

    .end local v5    # "weightSum":F
    .restart local v53    # "weightSum":F
    :cond_3d4
    const/4 v2, 0x0

    .line 832
    .local v2, "matchWidthLocally":Z
    :goto_3d5
    if-eqz v2, :cond_3da

    move/from16 v5, v52

    goto :goto_3db

    :cond_3da
    move v5, v15

    :goto_3db
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 835
    .end local v11    # "alternativeMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    if-eqz v17, :cond_3ea

    iget v11, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v54, v2

    const/4 v2, -0x1

    .end local v2    # "matchWidthLocally":Z
    .local v54, "matchWidthLocally":Z
    if-ne v11, v2, :cond_3ed

    const/4 v11, 0x1

    goto :goto_3ee

    .end local v54    # "matchWidthLocally":Z
    .restart local v2    # "matchWidthLocally":Z
    :cond_3ea
    move/from16 v54, v2

    const/4 v2, -0x1

    .end local v2    # "matchWidthLocally":Z
    .restart local v54    # "matchWidthLocally":Z
    :cond_3ed
    const/4 v11, 0x0

    .line 837
    .end local v17    # "allFillParent":Z
    .local v11, "allFillParent":Z
    :goto_3ee
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 838
    .local v2, "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v2, v16

    move/from16 v55, v5

    .end local v5    # "alternativeMaxWidth":I
    .local v55, "alternativeMaxWidth":I
    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v16, v16, v5

    iget v5, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v16, v16, v5

    .line 839
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v16, v5

    .line 838
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 779
    move/from16 v17, v11

    move/from16 v5, v53

    move/from16 v11, v55

    .end local v2    # "totalLength":I
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v15    # "measuredWidth":I
    .end local v49    # "childExtra":F
    .end local v52    # "margin":I
    .end local v53    # "weightSum":F
    .end local v54    # "matchWidthLocally":Z
    .end local v55    # "alternativeMaxWidth":I
    .local v5, "weightSum":F
    .local v11, "alternativeMaxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_412
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v44

    move/from16 v14, v45

    move/from16 v15, v46

    move/from16 v2, v50

    const/4 v4, 0x0

    goto/16 :goto_317

    .line 843
    .end local v0    # "i":I
    .end local v44    # "useLargestChild":Z
    .end local v45    # "largestChildHeight":I
    .end local v46    # "baselineChildIndex":I
    .end local v50    # "heightMode":I
    .local v2, "heightMode":I
    .local v10, "useLargestChild":Z
    .local v14, "largestChildHeight":I
    .local v15, "baselineChildIndex":I
    :cond_41f
    move/from16 v50, v2

    move/from16 v44, v10

    move/from16 v45, v14

    move/from16 v46, v15

    move/from16 v14, p1

    .end local v2    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v14    # "largestChildHeight":I
    .end local v15    # "baselineChildIndex":I
    .restart local v44    # "useLargestChild":Z
    .restart local v45    # "largestChildHeight":I
    .restart local v46    # "baselineChildIndex":I
    .restart local v50    # "heightMode":I
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 845
    .end local v5    # "weightSum":F
    nop

    .line 875
    :goto_438
    if-nez v17, :cond_43f

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_43f

    .line 876
    move v6, v11

    .line 879
    :cond_43f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v6, v0

    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 884
    .end local v6    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v14, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 887
    if-eqz v18, :cond_45d

    .line 888
    invoke-direct {v7, v1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 890
    :cond_45d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 283
    return-void

    .line 286
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 287
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 289
    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 291
    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1755
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1756
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1757
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1761
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1762
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1763
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1405
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1406
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_c

    .line 1408
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1410
    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 549
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 550
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_c

    .line 552
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 554
    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z

    .line 391
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 392
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I

    .line 487
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 491
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 492
    return-void

    .line 488
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 232
    return-void

    .line 234
    :cond_5
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 235
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 236
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 239
    :cond_17
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 240
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 242
    :goto_1b
    if-nez p1, :cond_1f

    const/4 v0, 0x1

    nop

    :cond_1f
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 243
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 244
    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .line 256
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 257
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 1678
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1679
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1680
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1683
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1684
    or-int/lit8 p1, p1, 0x30

    .line 1687
    :cond_14
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1688
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1690
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I

    .line 1703
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1704
    .local v1, "gravity":I
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_16

    .line 1705
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1706
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1708
    :cond_16
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 417
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 418
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1653
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1654
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1655
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1657
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .line 194
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 197
    :cond_7
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 198
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I

    .line 1711
    and-int/lit8 v0, p1, 0x70

    .line 1712
    .local v0, "gravity":I
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1713
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1714
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1716
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F

    .line 544
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 545
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 202
    const/4 v0, 0x0

    return v0
.end method
