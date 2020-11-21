.class public Lorg/ros/android/view/PanTiltView;
.super Landroid/widget/RelativeLayout;
.source "PanTiltView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/ros/node/NodeMain;


# static fields
.field private static final GUIDE_LENGTH:F = 149.0f

.field private static final HOME_PAN_KEY_NAME:Ljava/lang/String; = "HOME_PAN"

.field private static final HOME_TILT_KEY_NAME:Ljava/lang/String; = "HOME_TILT"

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final INVALID_POINTER_LOCATION:I = -0x1

.field private static final MAX_PAN_KEY_NAME:Ljava/lang/String; = "MAX_PAN"

.field private static final MAX_TACK_COORDINATE:I = 0xb8

.field private static final MAX_TILT_KEY_NAME:Ljava/lang/String; = "MAX_TILT"

.field private static final MIDDLE_AREA:I = 0x0

.field private static final MIN_PAN_KEY_NAME:Ljava/lang/String; = "MIN_PAN"

.field private static final MIN_TACK_COORDINATE:I = 0x23

.field private static final MIN_TILT_KEY_NAME:Ljava/lang/String; = "MIN_TILT"

.field private static final RIGHT_AREA:I = 0x2

.field private static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "PAN_TILT_VIEW_PREFERENCE"

.field private static final TOP_AREA:I = 0x1


# instance fields
.field private desiredTack:Landroid/widget/ImageView;

.field private homeIcon:Landroid/widget/ImageView;

.field private homePan:F

.field private homeTilt:F

.field private initialPointerLocation:I

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private maxPan:F

.field private maxTilt:F

.field private minPan:F

.field private minTilt:F

.field private pointerId:I

.field private publisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lsensor_msgs/JointState;",
            ">;"
        }
    .end annotation
.end field

.field private rightLargeTack:[Landroid/widget/ImageView;

.field private rightSmallTack:[Landroid/widget/ImageView;

.field private topLargeTack:[Landroid/widget/ImageView;

.field private topSmallTack:[Landroid/widget/ImageView;

.field private zoomLitBar:[Landroid/widget/ImageView;

.field private zoomValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/ros/android/view/PanTiltView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ros/android/view/PanTiltView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->minPan:F

    .line 121
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/ros/android/view/PanTiltView;->maxPan:F

    .line 126
    iput v0, p0, Lorg/ros/android/view/PanTiltView;->minTilt:F

    .line 131
    iput v1, p0, Lorg/ros/android/view/PanTiltView;->maxTilt:F

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->homePan:F

    .line 139
    iput v0, p0, Lorg/ros/android/view/PanTiltView;->homeTilt:F

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->pointerId:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    .line 159
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/ros/android/android_core_components/R$layout;->pan_tilt:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    invoke-direct {p0}, Lorg/ros/android/view/PanTiltView;->loadSettings()V

    .line 162
    invoke-direct {p0}, Lorg/ros/android/view/PanTiltView;->initPanTiltWidget()V

    .line 163
    return-void
.end method

.method private initPanTiltWidget()V
    .registers 13

    .line 394
    sget v0, Lorg/ros/android/android_core_components/R$id;->pan_tilt_layout:I

    invoke-virtual {p0, v0}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    .line 395
    sget v0, Lorg/ros/android/android_core_components/R$id;->pt_divet:I

    invoke-virtual {p0, v0}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/ros/android/view/PanTiltView;->desiredTack:Landroid/widget/ImageView;

    .line 396
    const/16 v0, 0xa

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    .line 397
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    .line 398
    const/4 v0, 0x7

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    .line 399
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    .line 400
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    iget-object v3, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    array-length v3, v3

    if-ge v2, v3, :cond_4b

    .line 401
    iget-object v3, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    .line 402
    iget-object v3, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 404
    .end local v2    # "i":I
    :cond_4b
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_0:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v1

    .line 405
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_1:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 406
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_2:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 407
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_3:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 408
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_4:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    .line 409
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_5:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v8, 0x5

    aput-object v3, v2, v8

    .line 410
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_6:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v9, 0x6

    aput-object v3, v2, v9

    .line 411
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_7:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v0

    .line 412
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_8:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v10, 0x8

    aput-object v3, v2, v10

    .line 413
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_large_marker_9:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v11, 0x9

    aput-object v3, v2, v11

    .line 414
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_0:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v1

    .line 415
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_1:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v4

    .line 416
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_2:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v5

    .line 417
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_3:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v6

    .line 418
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_4:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v7

    .line 419
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_5:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v8

    .line 420
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_6:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v9

    .line 421
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v3, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_7:I

    invoke-virtual {p0, v3}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v2, v0

    .line 422
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_8:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v10

    .line 423
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->pan_small_marker_9:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v11

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_146
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_15d

    .line 425
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 426
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_146

    .line 428
    .end local v0    # "i":I
    :cond_15d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_15e
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_180

    .line 429
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v10, v2, v0

    .line 430
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v10, v2, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_15e

    .line 432
    .end local v0    # "i":I
    :cond_180
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_large_marker_0:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 433
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_large_marker_1:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v4

    .line 434
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_large_marker_2:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v5

    .line 435
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_large_marker_3:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v6

    .line 436
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_large_marker_4:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v7

    .line 437
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_large_marker_5:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v8

    .line 438
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_large_marker_6:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v9

    .line 439
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_small_marker_0:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 440
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_small_marker_1:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v4

    .line 441
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_small_marker_2:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v5

    .line 442
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_small_marker_3:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v6

    .line 443
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_small_marker_4:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v7

    .line 444
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_small_marker_5:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v8

    .line 445
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->tilt_small_marker_6:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v9

    .line 446
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_229
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_23f

    .line 447
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 448
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_229

    .line 451
    .end local v0    # "i":I
    :cond_23f
    new-array v0, v8, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    .line 452
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->zoom_bar_lit_0:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 453
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->zoom_bar_lit_1:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 454
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->zoom_bar_lit_2:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 455
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->zoom_bar_lit_3:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v6

    .line 456
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->zoom_bar_lit_4:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v7

    .line 458
    sget v0, Lorg/ros/android/android_core_components/R$id;->pt_home_marker:I

    invoke-virtual {p0, v0}, Lorg/ros/android/view/PanTiltView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    .line 459
    return-void
.end method

.method private loadSettings()V
    .registers 4

    .line 463
    nop

    .line 464
    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PAN_TILT_VIEW_PREFERENCE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 465
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "MAX_PAN"

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->maxPan:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 466
    const-string v1, "MIN_PAN"

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->minPan:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 467
    const-string v1, "MAX_TILT"

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->maxTilt:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 468
    const-string v1, "MIN_TILT"

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->minTilt:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 469
    const-string v1, "HOME_PAN"

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->homePan:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 470
    const-string v1, "HOME_TILT"

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->homeTilt:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 471
    return-void
.end method

.method private onContactDown(FF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 250
    const v0, 0x43b28000    # 357.0f

    const/4 v1, 0x0

    const/high16 v2, 0x42960000    # 75.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_24

    cmpg-float v3, p1, v0

    if-gez v3, :cond_24

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_24

    const/high16 v3, 0x438b0000    # 278.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_24

    .line 251
    iput v1, p0, Lorg/ros/android/view/PanTiltView;->initialPointerLocation:I

    .line 252
    invoke-direct {p0, p1}, Lorg/ros/android/view/PanTiltView;->updateTopTack(F)V

    .line 253
    invoke-direct {p0, p2}, Lorg/ros/android/view/PanTiltView;->updateRightTack(F)V

    goto/16 :goto_e6

    .line 254
    :cond_24
    const/high16 v3, 0x42200000    # 40.0f

    const/4 v4, 0x1

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3a

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3a

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3a

    .line 255
    iput v4, p0, Lorg/ros/android/view/PanTiltView;->initialPointerLocation:I

    .line 256
    invoke-direct {p0, p1}, Lorg/ros/android/view/PanTiltView;->updateTopTack(F)V

    goto/16 :goto_e6

    .line 257
    :cond_3a
    const v0, 0x43b48000    # 361.0f

    const/4 v3, 0x2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_55

    const/high16 v0, 0x42340000    # 45.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_55

    const/high16 v0, 0x43b70000    # 366.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_55

    .line 258
    iput v3, p0, Lorg/ros/android/view/PanTiltView;->initialPointerLocation:I

    .line 259
    invoke-direct {p0, p2}, Lorg/ros/android/view/PanTiltView;->updateRightTack(F)V

    goto/16 :goto_e6

    .line 260
    :cond_55
    const/4 v0, 0x5

    const/high16 v5, 0x42f00000    # 120.0f

    cmpg-float v6, p1, v2

    if-gez v6, :cond_76

    const/high16 v6, 0x425c0000    # 55.0f

    cmpl-float v6, p2, v6

    if-lez v6, :cond_76

    cmpg-float v6, p2, v5

    if-gez v6, :cond_76

    .line 262
    iget v1, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    .line 263
    iget v1, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    if-le v1, v0, :cond_71

    .line 264
    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    .line 266
    :cond_71
    invoke-direct {p0}, Lorg/ros/android/view/PanTiltView;->updateZoomBars()V

    goto/16 :goto_e6

    .line 267
    :cond_76
    const/high16 v6, 0x43780000    # 248.0f

    cmpg-float v7, p1, v2

    if-gez v7, :cond_8f

    cmpl-float v7, p2, v6

    if-lez v7, :cond_8f

    .line 269
    iget v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    .line 270
    iget v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    if-gez v0, :cond_8b

    .line 271
    iput v1, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    .line 273
    :cond_8b
    invoke-direct {p0}, Lorg/ros/android/view/PanTiltView;->updateZoomBars()V

    goto :goto_e6

    .line 274
    :cond_8f
    cmpg-float v2, p1, v2

    if-gez v2, :cond_e6

    cmpl-float v2, p2, v5

    if-lez v2, :cond_e6

    cmpg-float v2, p2, v6

    if-gez v2, :cond_e6

    .line 275
    const/high16 v2, 0x41a80000    # 21.0f

    .line 276
    .local v2, "tmp":F
    add-float v6, v2, v5

    cmpg-float v6, p2, v6

    if-gez v6, :cond_a6

    .line 277
    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_e3

    .line 278
    :cond_a6
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    cmpg-float v0, p2, v0

    if-gez v0, :cond_b3

    .line 279
    const/4 v0, 0x4

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_e3

    .line 280
    :cond_b3
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    cmpg-float v0, p2, v0

    if-gez v0, :cond_c0

    .line 281
    const/4 v0, 0x3

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_e3

    .line 282
    :cond_c0
    const/high16 v0, 0x40800000    # 4.0f

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    cmpg-float v0, p2, v0

    if-gez v0, :cond_cc

    .line 283
    iput v3, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_e3

    .line 284
    :cond_cc
    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    cmpg-float v0, p2, v0

    if-gez v0, :cond_d8

    .line 285
    iput v4, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_e3

    .line 286
    :cond_d8
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    cmpg-float v0, p2, v0

    if-gez v0, :cond_e3

    .line 287
    iput v1, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    .line 289
    :cond_e3
    :goto_e3
    invoke-direct {p0}, Lorg/ros/android/view/PanTiltView;->updateZoomBars()V

    .line 292
    .end local v2    # "tmp":F
    :cond_e6
    :goto_e6
    return-void
.end method

.method private onContactMove(FF)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 213
    iget v0, p0, Lorg/ros/android/view/PanTiltView;->initialPointerLocation:I

    if-nez v0, :cond_c

    .line 214
    invoke-direct {p0, p1}, Lorg/ros/android/view/PanTiltView;->updateTopTack(F)V

    .line 215
    invoke-direct {p0, p2}, Lorg/ros/android/view/PanTiltView;->updateRightTack(F)V

    goto/16 :goto_7e

    .line 216
    :cond_c
    iget v0, p0, Lorg/ros/android/view/PanTiltView;->initialPointerLocation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 217
    invoke-direct {p0, p1}, Lorg/ros/android/view/PanTiltView;->updateTopTack(F)V

    goto/16 :goto_7e

    .line 218
    :cond_16
    iget v0, p0, Lorg/ros/android/view/PanTiltView;->initialPointerLocation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    .line 219
    invoke-direct {p0, p2}, Lorg/ros/android/view/PanTiltView;->updateRightTack(F)V

    goto :goto_7e

    .line 220
    :cond_1f
    const/high16 v0, 0x42960000    # 75.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7e

    const/high16 v0, 0x42f00000    # 120.0f

    cmpl-float v3, p2, v0

    if-lez v3, :cond_7e

    const/high16 v3, 0x43780000    # 248.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_7e

    .line 221
    const/high16 v3, 0x41a80000    # 21.0f

    .line 222
    .local v3, "tmp":F
    add-float v4, v3, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_3d

    .line 223
    const/4 v0, 0x5

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_7b

    .line 224
    :cond_3d
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_4a

    .line 225
    const/4 v0, 0x4

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_7b

    .line 226
    :cond_4a
    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_57

    .line 227
    const/4 v0, 0x3

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_7b

    .line 228
    :cond_57
    const/high16 v4, 0x40800000    # 4.0f

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_63

    .line 229
    iput v2, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_7b

    .line 230
    :cond_63
    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v2, v2, v3

    add-float/2addr v2, v0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6f

    .line 231
    iput v1, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    goto :goto_7b

    .line 232
    :cond_6f
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v1, v1, v3

    add-float/2addr v1, v0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_7b

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    .line 235
    :cond_7b
    :goto_7b
    invoke-direct {p0}, Lorg/ros/android/view/PanTiltView;->updateZoomBars()V

    .line 238
    .end local v3    # "tmp":F
    :cond_7e
    :goto_7e
    return-void
.end method

.method private publishPan(F)V
    .registers 8
    .param p1, "x"    # F

    .line 481
    const/high16 v0, 0x43380000    # 184.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x43150000    # 149.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 483
    .local v1, "pan":F
    iget v0, p0, Lorg/ros/android/view/PanTiltView;->maxPan:F

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->minPan:F

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->minPan:F

    add-float/2addr v0, v2

    .line 485
    .end local v1    # "pan":F
    .local v0, "pan":F
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsensor_msgs/JointState;

    .line 486
    .local v1, "jointState":Lsensor_msgs/JointState;
    invoke-interface {v1}, Lsensor_msgs/JointState;->getName()Ljava/util/List;

    move-result-object v2

    const-string v3, "pan"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    const/4 v2, 0x1

    new-array v2, v2, [D

    float-to-double v3, v0

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-interface {v1, v2}, Lsensor_msgs/JointState;->setPosition([D)V

    .line 488
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v2, v1}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method private publishTilt(F)V
    .registers 8
    .param p1, "y"    # F

    .line 499
    const/high16 v0, 0x43380000    # 184.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x43150000    # 149.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 501
    .local v1, "tilt":F
    iget v0, p0, Lorg/ros/android/view/PanTiltView;->maxTilt:F

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->minTilt:F

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->minTilt:F

    add-float/2addr v0, v2

    .line 503
    .end local v1    # "tilt":F
    .local v0, "tilt":F
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsensor_msgs/JointState;

    .line 504
    .local v1, "jointState":Lsensor_msgs/JointState;
    invoke-interface {v1}, Lsensor_msgs/JointState;->getName()Ljava/util/List;

    move-result-object v2

    const-string v3, "tilt"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    const/4 v2, 0x1

    new-array v2, v2, [D

    float-to-double v3, v0

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-interface {v1, v2}, Lsensor_msgs/JointState;->setPosition([D)V

    .line 506
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v2, v1}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method private updateRightTack(F)V
    .registers 11
    .param p1, "y"    # F

    .line 313
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->desiredTack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 314
    .local v0, "offset":F
    const/high16 v1, 0x42200000    # 40.0f

    add-float v2, v0, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_14

    .line 315
    add-float p1, v0, v1

    goto :goto_66

    .line 316
    :cond_14
    const/high16 v1, 0x438b0000    # 278.0f

    sub-float v2, v1, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1f

    .line 317
    sub-float p1, v1, v0

    goto :goto_66

    .line 318
    :cond_1f
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_66

    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    .line 319
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_66

    .line 320
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float p1, v1, v2

    .line 322
    :cond_66
    :goto_66
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->desiredTack:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 323
    invoke-direct {p0, p1}, Lorg/ros/android/view/PanTiltView;->publishTilt(F)V

    .line 325
    const/high16 v1, 0x41400000    # 12.0f

    .line 326
    .local v1, "rangeLarge":F
    const/high16 v2, 0x42480000    # 50.0f

    .line 327
    .local v2, "rangeSmall":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7f
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    array-length v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_b5

    .line 328
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget-object v8, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_ab

    .line 329
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_b2

    .line 331
    :cond_ab
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->rightLargeTack:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 327
    :goto_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 335
    .end local v4    # "i":I
    :cond_b5
    nop

    .local v3, "i":I
    :goto_b6
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    array-length v4, v4

    if-ge v3, v4, :cond_104

    .line 336
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_fa

    .line 337
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    .line 338
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget-object v8, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v2

    sub-float v5, v7, v5

    .line 337
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_101

    .line 341
    :cond_fa
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->rightSmallTack:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 335
    :goto_101
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    .line 345
    .end local v3    # "i":I
    :cond_104
    return-void
.end method

.method private updateTopTack(F)V
    .registers 11
    .param p1, "x"    # F

    .line 355
    iget-object v0, p0, Lorg/ros/android/view/PanTiltView;->desiredTack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 356
    .local v0, "offset":F
    const/high16 v1, 0x42960000    # 75.0f

    add-float v2, v0, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_14

    .line 357
    add-float p1, v0, v1

    goto :goto_67

    .line 358
    :cond_14
    const v1, 0x43b28000    # 357.0f

    sub-float v2, v1, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_20

    .line 359
    sub-float p1, v1, v0

    goto :goto_67

    .line 360
    :cond_20
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_67

    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    .line 361
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_67

    .line 362
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->homeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Lorg/ros/android/view/PanTiltView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float p1, v1, v2

    .line 364
    :cond_67
    :goto_67
    iget-object v1, p0, Lorg/ros/android/view/PanTiltView;->desiredTack:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 365
    invoke-direct {p0, p1}, Lorg/ros/android/view/PanTiltView;->publishPan(F)V

    .line 367
    const/high16 v1, 0x41500000    # 13.0f

    .line 368
    .local v1, "rangeLarge":F
    const/high16 v2, 0x42480000    # 50.0f

    .line 369
    .local v2, "rangeSmall":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_80
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    array-length v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_b6

    .line 370
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget-object v8, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_ac

    .line 371
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_b3

    .line 377
    :cond_ac
    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->topLargeTack:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 369
    :goto_b3
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 381
    .end local v4    # "i":I
    :cond_b6
    nop

    .local v3, "i":I
    :goto_b7
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    array-length v4, v4

    if-ge v3, v4, :cond_105

    .line 382
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_fb

    .line 383
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/ros/android/view/PanTiltView;->mainLayout:Landroid/widget/RelativeLayout;

    .line 384
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget-object v8, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v2

    sub-float v5, v7, v5

    .line 383
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_102

    .line 387
    :cond_fb
    iget-object v4, p0, Lorg/ros/android/view/PanTiltView;->topSmallTack:[Landroid/widget/ImageView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 381
    :goto_102
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 391
    .end local v3    # "i":I
    :cond_105
    return-void
.end method

.method private updateZoomBars()V
    .registers 6

    .line 296
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    array-length v2, v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_14

    .line 297
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    rsub-int/lit8 v4, v1, 0x4

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 299
    .end local v1    # "i":I
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_15
    iget v2, p0, Lorg/ros/android/view/PanTiltView;->zoomValue:I

    if-ge v1, v2, :cond_25

    .line 300
    iget-object v2, p0, Lorg/ros/android/view/PanTiltView;->zoomLitBar:[Landroid/widget/ImageView;

    rsub-int/lit8 v4, v1, 0x4

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 302
    .end local v1    # "i":I
    :cond_25
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 511
    const-string v0, "android_15/pan_tilt_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 529
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 521
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 525
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 516
    const-string v0, "ptu_cmd"

    const-string v1, "sensor_msgs/JointState"

    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/PanTiltView;->publisher:Lorg/ros/node/topic/Publisher;

    .line 517
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 169
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, -0x1

    if-eq v1, v2, :cond_49

    packed-switch v1, :pswitch_data_50

    goto :goto_4d

    .line 173
    :pswitch_e
    iget v1, p0, Lorg/ros/android/view/PanTiltView;->pointerId:I

    if-ne v1, v3, :cond_13

    .line 174
    goto :goto_4d

    .line 176
    :cond_13
    iget v1, p0, Lorg/ros/android/view/PanTiltView;->pointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lorg/ros/android/view/PanTiltView;->pointerId:I

    .line 177
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 176
    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/PanTiltView;->onContactMove(FF)V

    .line 178
    goto :goto_4d

    .line 183
    :pswitch_2b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/ros/android/view/PanTiltView;->pointerId:I

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/PanTiltView;->onContactDown(FF)V

    .line 185
    goto :goto_4d

    .line 191
    :cond_49
    :pswitch_49
    iput v3, p0, Lorg/ros/android/view/PanTiltView;->pointerId:I

    .line 192
    iput v3, p0, Lorg/ros/android/view/PanTiltView;->initialPointerLocation:I

    .line 196
    :goto_4d
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_49
        :pswitch_e
    .end packed-switch
.end method
