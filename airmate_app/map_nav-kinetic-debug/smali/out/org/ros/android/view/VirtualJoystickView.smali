.class public Lorg/ros/android/view/VirtualJoystickView;
.super Landroid/widget/RelativeLayout;
.source "VirtualJoystickView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lorg/ros/message/MessageListener;
.implements Lorg/ros/node/NodeMain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Lorg/ros/message/MessageListener<",
        "Lnav_msgs/Odometry;",
        ">;",
        "Lorg/ros/node/NodeMain;"
    }
.end annotation


# static fields
.field private static final BOX_TO_CIRCLE_RATIO:F = 1.363636f

.field private static final FLOAT_EPSILON:F = 0.001f

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final ORIENTATION_TACK_FADE_RANGE:F = 40.0f

.field private static final POST_LOCK_MAGNET_THETA:F = 20.0f

.field private static final THUMB_DIVET_RADIUS:F = 16.5f

.field private static final TURN_IN_PLACE_CONFIRMATION_DELAY:J = 0xc8L


# instance fields
.field private contactRadius:F

.field private contactTheta:F

.field private contactUpLocation:Landroid/graphics/Point;

.field private volatile currentOrientation:F

.field private currentRotationRange:Landroid/widget/ImageView;

.field private currentVelocityCommand:Lgeometry_msgs/Twist;

.field private deadZoneRatio:F

.field private holonomic:Z

.field private intensity:Landroid/widget/ImageView;

.field private joystickRadius:F

.field private lastVelocityDivet:Landroid/widget/ImageView;

.field private magnetTheta:F

.field private magnetizedXAxis:Z

.field private magnitudeText:Landroid/widget/TextView;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private normalizedMagnitude:F

.field private normalizingMultiplier:F

.field private orientationWidget:[Landroid/widget/ImageView;

.field private parentSize:F

.field private pointerId:I

.field private previousRotationRange:Landroid/widget/ImageView;

.field private previousVelocityMode:Z

.field private volatile publishVelocity:Z

.field private publisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lgeometry_msgs/Twist;",
            ">;"
        }
    .end annotation
.end field

.field private publisherTimer:Ljava/util/Timer;

.field private rightTurnOffset:F

.field private thumbDivet:Landroid/widget/ImageView;

.field private topicName:Ljava/lang/String;

.field private volatile turnInPlaceMode:Z

.field private turnInPlaceStartTheta:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnetTheta:F

    .line 158
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->deadZoneRatio:F

    .line 165
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    .line 170
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    .line 197
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceStartTheta:F

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    .line 247
    invoke-direct {p0, p1}, Lorg/ros/android/view/VirtualJoystickView;->initVirtualJoystick(Landroid/content/Context;)V

    .line 248
    const-string v0, "~cmd_vel"

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->topicName:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnetTheta:F

    .line 158
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->deadZoneRatio:F

    .line 165
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    .line 170
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    .line 197
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceStartTheta:F

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    .line 253
    invoke-direct {p0, p1}, Lorg/ros/android/view/VirtualJoystickView;->initVirtualJoystick(Landroid/content/Context;)V

    .line 254
    const-string v0, "~cmd_vel"

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->topicName:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 258
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnetTheta:F

    .line 158
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->deadZoneRatio:F

    .line 165
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    .line 170
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    .line 197
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceStartTheta:F

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    .line 259
    const-string v0, "~cmd_vel"

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->topicName:Ljava/lang/String;

    .line 260
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/VirtualJoystickView;)V
    .registers 1
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->updateTurnInPlaceRotation()V

    return-void
.end method

.method static synthetic access$100(Lorg/ros/android/view/VirtualJoystickView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    iget-boolean v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceMode:Z

    return v0
.end method

.method static synthetic access$200(Lorg/ros/android/view/VirtualJoystickView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentRotationRange:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/ros/android/view/VirtualJoystickView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->previousRotationRange:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/ros/android/view/VirtualJoystickView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->intensity:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/ros/android/view/VirtualJoystickView;)Z
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    iget-boolean v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publishVelocity:Z

    return v0
.end method

.method static synthetic access$600(Lorg/ros/android/view/VirtualJoystickView;)Lgeometry_msgs/Twist;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    return-object v0
.end method

.method static synthetic access$700(Lorg/ros/android/view/VirtualJoystickView;)Lorg/ros/node/topic/Publisher;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/VirtualJoystickView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publisher:Lorg/ros/node/topic/Publisher;

    return-object v0
.end method

.method private animateIntensityCircle(F)V
    .registers 15
    .param p1, "endScale"    # F

    .line 437
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 438
    .local v0, "intensityCircleAnimation":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 441
    new-instance v2, Landroid/view/animation/RotateAnimation;

    iget v3, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    iget v4, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    iget v5, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v6, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 442
    .local v2, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 443
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 444
    invoke-virtual {v2, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 445
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 447
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    iget v8, p0, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    iget v10, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v11, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    move-object v5, v12

    move v7, p1

    move v9, p1

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 450
    .local v5, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 451
    invoke-virtual {v5, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 452
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 454
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->intensity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    return-void
.end method

.method private animateIntensityCircle(FJ)V
    .registers 15
    .param p1, "endScale"    # F
    .param p2, "duration"    # J

    .line 469
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 470
    .local v0, "intensityCircleAnimation":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 474
    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 476
    new-instance v2, Landroid/view/animation/RotateAnimation;

    iget v3, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    iget v4, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    iget v5, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v6, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 477
    .local v2, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 478
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 479
    invoke-virtual {v2, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 480
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 482
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    iget v7, p0, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    iget v9, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v10, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    move-object v4, v3

    move v6, p1

    move v8, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 485
    .local v3, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v3, p2, p3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 486
    invoke-virtual {v3, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 487
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 489
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->intensity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 490
    return-void
.end method

.method private animateOrientationWidgets()V
    .registers 6

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 502
    mul-int/lit8 v1, v0, 0xf

    int-to-float v1, v1

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/VirtualJoystickView;->differenceBetweenAngles(FF)F

    move-result v1

    .line 503
    .local v1, "deltaTheta":F
    const/high16 v2, 0x42200000    # 40.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_22

    .line 504
    iget-object v3, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v1, v2

    sub-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2a

    .line 506
    :cond_22
    iget-object v2, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 501
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    .end local v0    # "i":I
    .end local v1    # "deltaTheta":F
    :cond_2d
    return-void
.end method

.method private differenceBetweenAngles(FF)F
    .registers 6
    .param p1, "angle0"    # F
    .param p2, "angle1"    # F

    .line 525
    const/high16 v0, 0x43340000    # 180.0f

    add-float v1, p1, v0

    sub-float/2addr v1, p2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private endTurnInPlaceRotation()V
    .registers 3

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceMode:Z

    .line 534
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentRotationRange:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 535
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->previousRotationRange:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 536
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->intensity:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 537
    return-void
.end method

.method private floatCompare(FF)Z
    .registers 5
    .param p1, "v1"    # F
    .param p2, "v2"    # F

    .line 908
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    .line 909
    const/4 v0, 0x1

    return v0

    .line 911
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private inLastContactRange(FF)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 916
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4030800000000000L    # 16.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3d

    .line 919
    const/4 v0, 0x1

    return v0

    .line 921
    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method private initVirtualJoystick(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .line 544
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/ros/android/view/VirtualJoystickView;->setGravity(I)V

    .line 546
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/ros/android/android_core_components/R$layout;->virtual_joystick:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 547
    sget v1, Lorg/ros/android/android_core_components/R$id;->virtual_joystick_layout:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->mainLayout:Landroid/widget/RelativeLayout;

    .line 548
    sget v1, Lorg/ros/android/android_core_components/R$id;->magnitude:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    .line 549
    sget v1, Lorg/ros/android/android_core_components/R$id;->intensity:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->intensity:Landroid/widget/ImageView;

    .line 550
    sget v1, Lorg/ros/android/android_core_components/R$id;->thumb_divet:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    .line 551
    const/16 v1, 0x18

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    .line 552
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_0_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 553
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_15_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v1, v3

    .line 554
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_30_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 555
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_45_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 556
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_60_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 557
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_75_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 558
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_90_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    .line 559
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_105_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 560
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_120_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0x8

    aput-object v2, v1, v5

    .line 561
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_135_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0x9

    aput-object v2, v1, v5

    .line 562
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_150_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0xa

    aput-object v2, v1, v5

    .line 563
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_165_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0xb

    aput-object v2, v1, v5

    .line 564
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_180_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0xc

    aput-object v2, v1, v5

    .line 565
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_195_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0xd

    aput-object v2, v1, v5

    .line 566
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_210_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0xe

    aput-object v2, v1, v5

    .line 567
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_225_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0xf

    aput-object v2, v1, v5

    .line 568
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_240_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v5, 0x10

    aput-object v2, v1, v5

    .line 569
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v2, Lorg/ros/android/android_core_components/R$id;->widget_255_degrees:I

    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 570
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->widget_270_degrees:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 571
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->widget_285_degrees:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 572
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->widget_300_degrees:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 573
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->widget_315_degrees:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 574
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->widget_330_degrees:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 575
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    sget v1, Lorg/ros/android/android_core_components/R$id;->widget_345_degrees:I

    invoke-virtual {p0, v1}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 577
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_186
    const/4 v5, 0x0

    if-ge v2, v1, :cond_194

    aget-object v6, v0, v2

    .line 578
    .local v6, "tack":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 579
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    .end local v6    # "tack":Landroid/widget/ImageView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_186

    .line 584
    :cond_194
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v6, v1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    mul-double v6, v6, v12

    double-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 585
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v8

    div-double/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v12

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 587
    invoke-direct {p0, v5}, Lorg/ros/android/view/VirtualJoystickView;->animateIntensityCircle(F)V

    .line 589
    iput v5, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    .line 590
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->animateOrientationWidgets()V

    .line 591
    sget v0, Lorg/ros/android/android_core_components/R$id;->top_angle_slice:I

    invoke-virtual {p0, v0}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentRotationRange:Landroid/widget/ImageView;

    .line 592
    sget v0, Lorg/ros/android/android_core_components/R$id;->mid_angle_slice:I

    invoke-virtual {p0, v0}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->previousRotationRange:Landroid/widget/ImageView;

    .line 594
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentRotationRange:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 595
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->previousRotationRange:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 596
    sget v0, Lorg/ros/android/android_core_components/R$id;->previous_velocity_divet:I

    invoke-virtual {p0, v0}, Lorg/ros/android/view/VirtualJoystickView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->lastVelocityDivet:Landroid/widget/ImageView;

    .line 597
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    .line 598
    iput-boolean v4, p0, Lorg/ros/android/view/VirtualJoystickView;->holonomic:Z

    .line 599
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    array-length v1, v0

    :goto_20a
    if-ge v4, v1, :cond_214

    aget-object v2, v0, v4

    .line 600
    .local v2, "tack":Landroid/widget/ImageView;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    .end local v2    # "tack":Landroid/widget/ImageView;
    add-int/lit8 v4, v4, 0x1

    goto :goto_20a

    .line 602
    :cond_214
    return-void
.end method

.method private initiateTurnInPlace()V
    .registers 9

    .line 818
    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentOrientation:F

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceStartTheta:F

    .line 820
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->rightTurnOffset:F

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->rightTurnOffset:F

    iget v3, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v4, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 822
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 823
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 824
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 825
    iget-object v4, p0, Lorg/ros/android/view/VirtualJoystickView;->currentRotationRange:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 826
    new-instance v4, Landroid/view/animation/RotateAnimation;

    iget v5, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v6, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    const/high16 v7, 0x41700000    # 15.0f

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    move-object v0, v4

    .line 827
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 828
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 829
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 830
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->previousRotationRange:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 831
    return-void
.end method

.method private onContactDown()V
    .registers 6

    .line 610
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 611
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 613
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->lastVelocityDivet:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 615
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    .line 616
    .local v4, "tack":Landroid/widget/ImageView;
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    .end local v4    # "tack":Landroid/widget/ImageView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 618
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publishVelocity:Z

    .line 619
    return-void
.end method

.method private onContactMove(FF)V
    .registers 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 633
    move-object v7, p0

    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    sub-float v0, p1, v0

    .line 634
    .local v0, "thumbDivetX":F
    iget v1, v7, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    sub-float v1, p2, v1

    .line 636
    .local v1, "thumbDivetY":F
    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v8

    const-wide v10, 0x4056800000000000L    # 90.0

    add-double/2addr v2, v10

    double-to-float v2, v2

    iput v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    .line 637
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 638
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizingMultiplier:F

    mul-float v2, v2, v3

    iput v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    .line 642
    iget v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    iget v3, v7, Lorg/ros/android/view/VirtualJoystickView;->deadZoneRatio:F

    sub-float/2addr v2, v3

    iget v3, v7, Lorg/ros/android/view/VirtualJoystickView;->deadZoneRatio:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    div-float/2addr v2, v3

    iput v2, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    .line 644
    iget v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_57

    .line 647
    iget v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    div-float/2addr v0, v2

    .line 648
    iget v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    div-float/2addr v1, v2

    .line 650
    iput v6, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    .line 651
    iput v6, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    .line 664
    .end local v0    # "thumbDivetX":F
    .end local v1    # "thumbDivetY":F
    .local v10, "thumbDivetX":F
    .local v11, "thumbDivetY":F
    :cond_54
    :goto_54
    move v10, v0

    move v11, v1

    goto :goto_65

    .line 652
    .end local v10    # "thumbDivetX":F
    .end local v11    # "thumbDivetY":F
    .restart local v0    # "thumbDivetX":F
    .restart local v1    # "thumbDivetY":F
    :cond_57
    iget v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    iget v3, v7, Lorg/ros/android/view/VirtualJoystickView;->deadZoneRatio:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_54

    .line 656
    const/4 v0, 0x0

    .line 657
    const/4 v1, 0x0

    .line 659
    const/4 v2, 0x0

    iput v2, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    goto :goto_54

    .line 664
    .end local v0    # "thumbDivetX":F
    .end local v1    # "thumbDivetY":F
    .restart local v10    # "thumbDivetX":F
    .restart local v11    # "thumbDivetY":F
    :goto_65
    iget-boolean v0, v7, Lorg/ros/android/view/VirtualJoystickView;->magnetizedXAxis:Z

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_ae

    .line 666
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v0, v2

    rem-float/2addr v0, v3

    iget v6, v7, Lorg/ros/android/view/VirtualJoystickView;->magnetTheta:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_83

    .line 670
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    iget v6, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v6, v2

    rem-float/2addr v6, v3

    sub-float/2addr v0, v6

    iput v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    goto :goto_9a

    .line 671
    :cond_83
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v0, v2

    rem-float/2addr v0, v3

    iget v6, v7, Lorg/ros/android/view/VirtualJoystickView;->magnetTheta:F

    sub-float v6, v3, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9a

    .line 675
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    iget v6, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v6, v2

    rem-float/2addr v6, v3

    sub-float v2, v3, v6

    add-float/2addr v0, v2

    iput v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    .line 678
    :cond_9a
    :goto_9a
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-direct {p0, v0, v3}, Lorg/ros/android/view/VirtualJoystickView;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_aa

    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-direct {p0, v0, v1}, Lorg/ros/android/view/VirtualJoystickView;->floatCompare(FF)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 679
    :cond_aa
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/ros/android/view/VirtualJoystickView;->magnetizedXAxis:Z

    goto :goto_d1

    .line 683
    :cond_ae
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v0, v2

    rem-float/2addr v0, v2

    invoke-direct {p0, v0, v3}, Lorg/ros/android/view/VirtualJoystickView;->differenceBetweenAngles(FF)F

    move-result v0

    const/high16 v6, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v6

    if-gez v0, :cond_bf

    .line 684
    iput v3, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    goto :goto_d1

    .line 685
    :cond_bf
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v0, v2

    rem-float/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/ros/android/view/VirtualJoystickView;->differenceBetweenAngles(FF)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_ce

    .line 686
    iput v1, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    goto :goto_d1

    .line 690
    :cond_ce
    const/4 v0, 0x0

    iput-boolean v0, v7, Lorg/ros/android/view/VirtualJoystickView;->magnetizedXAxis:Z

    .line 695
    :cond_d1
    :goto_d1
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    invoke-direct {p0, v0}, Lorg/ros/android/view/VirtualJoystickView;->animateIntensityCircle(F)V

    .line 696
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->animateOrientationWidgets()V

    .line 697
    invoke-direct {p0, v10, v11}, Lorg/ros/android/view/VirtualJoystickView;->updateThumbDivet(FF)V

    .line 698
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->updateMagnitudeText()V

    .line 700
    iget-boolean v0, v7, Lorg/ros/android/view/VirtualJoystickView;->holonomic:Z

    if-eqz v0, :cond_119

    .line 701
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    float-to-double v0, v0

    iget v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v0, v2

    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    float-to-double v12, v0

    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v8

    .line 702
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v12

    const-wide/16 v5, 0x0

    .line 701
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/ros/android/view/VirtualJoystickView;->publishVelocity(DDD)V

    goto :goto_153

    .line 704
    :cond_119
    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    float-to-double v0, v0

    iget v2, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v8

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v0, v2

    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    float-to-double v12, v0

    iget v0, v7, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v8

    .line 705
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v12, v3

    .line 704
    move-object v0, p0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/ros/android/view/VirtualJoystickView;->publishVelocity(DDD)V

    .line 709
    :goto_153
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->updateTurnInPlaceMode()V

    .line 710
    return-void
.end method

.method private onContactUp()V
    .registers 9

    .line 768
    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/ros/android/view/VirtualJoystickView;->animateIntensityCircle(FJ)V

    .line 769
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 771
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->lastVelocityDivet:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 772
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->lastVelocityDivet:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 773
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->lastVelocityDivet:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 774
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 775
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 777
    invoke-direct {p0, v2, v2}, Lorg/ros/android/view/VirtualJoystickView;->updateThumbDivet(FF)V

    .line 779
    const/4 v0, -0x1

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    .line 781
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/ros/android/view/VirtualJoystickView;->publishVelocity(DDD)V

    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publishVelocity:Z

    .line 786
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->publisher:Lorg/ros/node/topic/Publisher;

    iget-object v2, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    invoke-interface {v1, v2}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 788
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->endTurnInPlaceRotation()V

    .line 790
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->orientationWidget:[Landroid/widget/ImageView;

    array-length v2, v1

    :goto_64
    if-ge v0, v2, :cond_6f

    aget-object v3, v1, v0

    .line 791
    .local v3, "tack":Landroid/widget/ImageView;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    .end local v3    # "tack":Landroid/widget/ImageView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 793
    :cond_6f
    return-void
.end method

.method private publishVelocity(DDD)V
    .registers 10
    .param p1, "linearVelocityX"    # D
    .param p3, "linearVelocityY"    # D
    .param p5, "angularVelocityZ"    # D

    .line 805
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    invoke-interface {v0}, Lgeometry_msgs/Twist;->getLinear()Lgeometry_msgs/Vector3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lgeometry_msgs/Vector3;->setX(D)V

    .line 806
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    invoke-interface {v0}, Lgeometry_msgs/Twist;->getLinear()Lgeometry_msgs/Vector3;

    move-result-object v0

    neg-double v1, p3

    invoke-interface {v0, v1, v2}, Lgeometry_msgs/Vector3;->setY(D)V

    .line 807
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    invoke-interface {v0}, Lgeometry_msgs/Twist;->getLinear()Lgeometry_msgs/Vector3;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lgeometry_msgs/Vector3;->setZ(D)V

    .line 808
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    invoke-interface {v0}, Lgeometry_msgs/Twist;->getAngular()Lgeometry_msgs/Vector3;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lgeometry_msgs/Vector3;->setX(D)V

    .line 809
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    invoke-interface {v0}, Lgeometry_msgs/Twist;->getAngular()Lgeometry_msgs/Vector3;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lgeometry_msgs/Vector3;->setY(D)V

    .line 810
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    invoke-interface {v0}, Lgeometry_msgs/Twist;->getAngular()Lgeometry_msgs/Vector3;

    move-result-object v0

    neg-double v1, p5

    invoke-interface {v0, v1, v2}, Lgeometry_msgs/Vector3;->setZ(D)V

    .line 811
    return-void
.end method

.method private updateMagnitudeText()V
    .registers 13

    .line 838
    iget-boolean v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceMode:Z

    if-nez v0, :cond_6d

    .line 839
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v1, v5

    float-to-double v6, v1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 842
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    add-float/2addr v3, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v8

    div-double/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 845
    :cond_6d
    return-void
.end method

.method private updateThumbDivet(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 891
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    const/high16 v1, -0x3e7c0000    # -16.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 892
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 894
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 895
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 896
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->thumbDivet:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 897
    return-void
.end method

.method private updateTurnInPlaceMode()V
    .registers 5

    .line 716
    iget-boolean v0, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceMode:Z

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43870000    # 270.0f

    if-nez v0, :cond_39

    .line 717
    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-direct {p0, v0, v2}, Lorg/ros/android/view/VirtualJoystickView;->floatCompare(FF)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 720
    iput-boolean v2, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceMode:Z

    .line 721
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->rightTurnOffset:F

    goto :goto_25

    .line 722
    :cond_17
    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-direct {p0, v0, v1}, Lorg/ros/android/view/VirtualJoystickView;->floatCompare(FF)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 725
    iput-boolean v2, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceMode:Z

    .line 726
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->rightTurnOffset:F

    .line 734
    :goto_25
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->initiateTurnInPlace()V

    .line 737
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lorg/ros/android/view/VirtualJoystickView$2;

    invoke-direct {v1, p0}, Lorg/ros/android/view/VirtualJoystickView$2;-><init>(Lorg/ros/android/view/VirtualJoystickView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_4c

    .line 729
    :cond_38
    return-void

    .line 753
    :cond_39
    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-direct {p0, v0, v2}, Lorg/ros/android/view/VirtualJoystickView;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_4c

    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactTheta:F

    invoke-direct {p0, v0, v1}, Lorg/ros/android/view/VirtualJoystickView;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 756
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->endTurnInPlaceRotation()V

    .line 758
    :cond_4c
    :goto_4c
    return-void
.end method

.method private updateTurnInPlaceRotation()V
    .registers 12

    .line 852
    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentOrientation:F

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 855
    .local v0, "currentTheta":F
    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceStartTheta:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v1

    rem-float/2addr v2, v1

    .line 856
    .local v2, "offsetTheta":F
    sub-float/2addr v1, v2

    .line 858
    .end local v2    # "offsetTheta":F
    .local v1, "offsetTheta":F
    iget-object v2, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    float-to-int v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    const/high16 v2, 0x41700000    # 15.0f

    rem-float v3, v1, v2

    sub-float v3, v1, v3

    float-to-int v3, v3

    int-to-float v1, v3

    .line 863
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Lorg/ros/android/view/VirtualJoystickView;->rightTurnOffset:F

    add-float/2addr v4, v1

    iget v5, p0, Lorg/ros/android/view/VirtualJoystickView;->rightTurnOffset:F

    add-float/2addr v5, v1

    iget v6, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v7, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 866
    .local v3, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 867
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 868
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 869
    iget-object v7, p0, Lorg/ros/android/view/VirtualJoystickView;->currentRotationRange:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 870
    new-instance v7, Landroid/view/animation/RotateAnimation;

    add-float v8, v1, v2

    add-float/2addr v2, v1

    iget v9, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    iget v10, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    invoke-direct {v7, v8, v2, v9, v10}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    move-object v2, v7

    .line 872
    .end local v3    # "rotateAnim":Landroid/view/animation/RotateAnimation;
    .local v2, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 873
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 874
    invoke-virtual {v2, v6}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 875
    iget-object v3, p0, Lorg/ros/android/view/VirtualJoystickView;->previousRotationRange:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 876
    return-void
.end method


# virtual methods
.method public DisableSnapping()V
    .registers 2

    .line 389
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnetTheta:F

    .line 390
    return-void
.end method

.method public EnableSnapping()V
    .registers 2

    .line 382
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnetTheta:F

    .line 383
    return-void
.end method

.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 930
    const-string v0, "android_15/virtual_joystick_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->contactRadius:F

    .line 275
    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->normalizedMagnitude:F

    .line 276
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->updateMagnitudeText()V

    .line 277
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 285
    return-void
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 963
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 399
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 403
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    .line 406
    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 408
    :cond_15
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    .line 409
    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2e

    iget v0, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    const/high16 v1, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    .line 413
    :cond_2e
    invoke-virtual {p0, v2}, Lorg/ros/android/view/VirtualJoystickView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    :cond_31
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    .line 418
    const v0, 0x3fae8ba0

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ros/android/view/VirtualJoystickView;->normalizingMultiplier:F

    .line 420
    const/high16 v0, 0x41840000    # 16.5f

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->normalizingMultiplier:F

    mul-float v1, v1, v0

    iput v1, p0, Lorg/ros/android/view/VirtualJoystickView;->deadZoneRatio:F

    .line 423
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->magnitudeText:Landroid/widget/TextView;

    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->parentSize:F

    const/high16 v2, 0x41400000    # 12.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 424
    return-void
.end method

.method public bridge synthetic onNewMessage(Ljava/lang/Object;)V
    .registers 2

    .line 54
    check-cast p1, Lnav_msgs/Odometry;

    invoke-virtual {p0, p1}, Lorg/ros/android/view/VirtualJoystickView;->onNewMessage(Lnav_msgs/Odometry;)V

    return-void
.end method

.method public onNewMessage(Lnav_msgs/Odometry;)V
    .registers 16
    .param p1, "message"    # Lnav_msgs/Odometry;

    .line 292
    invoke-interface {p1}, Lnav_msgs/Odometry;->getPose()Lgeometry_msgs/PoseWithCovariance;

    move-result-object v0

    invoke-interface {v0}, Lgeometry_msgs/PoseWithCovariance;->getPose()Lgeometry_msgs/Pose;

    move-result-object v0

    invoke-interface {v0}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v0

    invoke-interface {v0}, Lgeometry_msgs/Quaternion;->getW()D

    move-result-wide v0

    .line 293
    .local v0, "w":D
    invoke-interface {p1}, Lnav_msgs/Odometry;->getPose()Lgeometry_msgs/PoseWithCovariance;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/PoseWithCovariance;->getPose()Lgeometry_msgs/Pose;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/Quaternion;->getX()D

    move-result-wide v2

    .line 294
    .local v2, "x":D
    invoke-interface {p1}, Lnav_msgs/Odometry;->getPose()Lgeometry_msgs/PoseWithCovariance;

    move-result-object v4

    invoke-interface {v4}, Lgeometry_msgs/PoseWithCovariance;->getPose()Lgeometry_msgs/Pose;

    move-result-object v4

    invoke-interface {v4}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v4

    invoke-interface {v4}, Lgeometry_msgs/Quaternion;->getZ()D

    move-result-wide v4

    .line 295
    .local v4, "y":D
    invoke-interface {p1}, Lnav_msgs/Odometry;->getPose()Lgeometry_msgs/PoseWithCovariance;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/PoseWithCovariance;->getPose()Lgeometry_msgs/Pose;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v6

    invoke-interface {v6}, Lgeometry_msgs/Quaternion;->getY()D

    move-result-wide v6

    .line 296
    .local v6, "z":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, v4, v8

    mul-double v10, v10, v0

    mul-double v8, v8, v2

    mul-double v8, v8, v6

    sub-double/2addr v10, v8

    mul-double v8, v2, v2

    mul-double v12, v4, v4

    sub-double/2addr v8, v12

    mul-double v12, v6, v6

    sub-double/2addr v8, v12

    mul-double v12, v0, v0

    add-double/2addr v8, v12

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double v8, v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    .line 300
    .local v8, "heading":D
    neg-double v10, v8

    double-to-float v10, v10

    iput v10, p0, Lorg/ros/android/view/VirtualJoystickView;->currentOrientation:F

    .line 302
    iget-boolean v10, p0, Lorg/ros/android/view/VirtualJoystickView;->turnInPlaceMode:Z

    if-eqz v10, :cond_7a

    .line 303
    new-instance v10, Lorg/ros/android/view/VirtualJoystickView$1;

    invoke-direct {v10, p0}, Lorg/ros/android/view/VirtualJoystickView$1;-><init>(Lorg/ros/android/view/VirtualJoystickView;)V

    invoke-virtual {p0, v10}, Lorg/ros/android/view/VirtualJoystickView;->post(Ljava/lang/Runnable;)Z

    .line 309
    invoke-virtual {p0}, Lorg/ros/android/view/VirtualJoystickView;->postInvalidate()V

    .line 311
    :cond_7a
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 953
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 957
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publisherTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 958
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publisherTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 959
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 10
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 935
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->topicName:Ljava/lang/String;

    const-string v1, "geometry_msgs/Twist"

    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publisher:Lorg/ros/node/topic/Publisher;

    .line 936
    iget-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v0}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeometry_msgs/Twist;

    iput-object v0, p0, Lorg/ros/android/view/VirtualJoystickView;->currentVelocityCommand:Lgeometry_msgs/Twist;

    .line 937
    const-string v0, "odom"

    const-string v1, "nav_msgs/Odometry"

    .line 938
    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 939
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Lnav_msgs/Odometry;>;"
    invoke-interface {v0, p0}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 940
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->publisherTimer:Ljava/util/Timer;

    .line 941
    iget-object v2, p0, Lorg/ros/android/view/VirtualJoystickView;->publisherTimer:Ljava/util/Timer;

    new-instance v3, Lorg/ros/android/view/VirtualJoystickView$3;

    invoke-direct {v3, p0}, Lorg/ros/android/view/VirtualJoystickView$3;-><init>(Lorg/ros/android/view/VirtualJoystickView;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x50

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 949
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 316
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v1, v2, :cond_ac

    packed-switch v1, :pswitch_data_ba

    goto/16 :goto_b9

    .line 320
    :pswitch_f
    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b9

    .line 322
    iget-boolean v1, p0, Lorg/ros/android/view/VirtualJoystickView;->previousVelocityMode:Z

    if-eqz v1, :cond_47

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 325
    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/VirtualJoystickView;->inLastContactRange(FF)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 328
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v4, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    add-float/2addr v2, v4

    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/VirtualJoystickView;->onContactMove(FF)V

    goto/16 :goto_b9

    .line 334
    :cond_43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/ros/android/view/VirtualJoystickView;->previousVelocityMode:Z

    goto :goto_b9

    .line 340
    :cond_47
    iget v1, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 340
    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/VirtualJoystickView;->onContactMove(FF)V

    goto :goto_b9

    .line 349
    :pswitch_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    .line 350
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->onContactDown()V

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/VirtualJoystickView;->inLastContactRange(FF)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 355
    iput-boolean v3, p0, Lorg/ros/android/view/VirtualJoystickView;->previousVelocityMode:Z

    .line 360
    iget-object v1, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/ros/android/view/VirtualJoystickView;->contactUpLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v4, p0, Lorg/ros/android/view/VirtualJoystickView;->joystickRadius:F

    add-float/2addr v2, v4

    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/VirtualJoystickView;->onContactMove(FF)V

    goto :goto_b9

    .line 362
    :cond_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/ros/android/view/VirtualJoystickView;->onContactMove(FF)V

    .line 364
    goto :goto_b9

    .line 369
    :cond_ac
    :pswitch_ac
    const v1, 0xff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/ros/android/view/VirtualJoystickView;->pointerId:I

    if-ne v1, v2, :cond_b9

    .line 370
    invoke-direct {p0}, Lorg/ros/android/view/VirtualJoystickView;->onContactUp()V

    .line 375
    :cond_b9
    :goto_b9
    return v3

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_ac
        :pswitch_f
    .end packed-switch
.end method

.method public setHolonomic(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 269
    iput-boolean p1, p0, Lorg/ros/android/view/VirtualJoystickView;->holonomic:Z

    .line 270
    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .registers 2
    .param p1, "topicName"    # Ljava/lang/String;

    .line 925
    iput-object p1, p0, Lorg/ros/android/view/VirtualJoystickView;->topicName:Ljava/lang/String;

    .line 926
    return-void
.end method
