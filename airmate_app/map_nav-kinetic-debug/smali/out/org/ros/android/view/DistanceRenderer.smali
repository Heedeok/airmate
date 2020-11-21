.class Lorg/ros/android/view/DistanceRenderer;
.super Ljava/lang/Object;
.source "DistanceRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final DISTANCE_VIEW_FIELD_OF_VIEW:F = 60.0f

.field private static final DISTANCE_VIEW_ZOOM_LOCK_KEY:Ljava/lang/String; = "DISTANCE_VIEW_ZOOM_LOCK"

.field private static final DISTANCE_VIEW_ZOOM_MODE_KEY:Ljava/lang/String; = "DISTANCE_VIEW_ZOOM_MODE"

.field private static final DISTANCE_VIEW_ZOOM_MULTIPLIER:D

.field private static final DISTANCE_VIEW_ZOOM_VALUE_KEY:Ljava/lang/String; = "DISTANCE_VIEW_ZOOM_VALUE"

.field private static final MAX_DISTANCE_ZOOM:F = -13.856406f

.field private static final MAX_FOV_DISTANCE:F = 8.0f

.field private static final MIN_DISTANCE_ZOOM:F = -5.196152f

.field private static final MIN_FOV_DISTANCE:F = 3.0f


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private rangeLines:Lorg/ros/android/view/DistancePoints;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private theta:F

.field private zoom:F

.field private zoomLocked:Z

.field private zoomMode:Lorg/ros/android/view/ZoomMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    nop

    .line 71
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    sput-wide v2, Lorg/ros/android/view/DistanceRenderer;->DISTANCE_VIEW_ZOOM_MULTIPLIER:D

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const v0, -0x3ea24c29

    iput v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoom:F

    .line 104
    sget-object v0, Lorg/ros/android/view/ZoomMode;->CLUTTER_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    iput-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    return-void
.end method

.method private setZoom(F)V
    .registers 6
    .param p1, "distanceFromCenter"    # F

    .line 272
    iget-boolean v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoomLocked:Z

    if-nez v0, :cond_28

    .line 274
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 275
    const v0, -0x3f59b91f

    iput v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoom:F

    goto :goto_28

    .line 276
    :cond_10
    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1c

    .line 277
    const v0, -0x3ea24c29

    iput v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoom:F

    goto :goto_28

    .line 279
    :cond_1c
    neg-float v0, p1

    float-to-double v0, v0

    sget-wide v2, Lorg/ros/android/view/DistanceRenderer;->DISTANCE_VIEW_ZOOM_MULTIPLIER:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoom:F

    .line 282
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public currentSpeed(D)V
    .registers 7
    .param p1, "speed"    # D

    .line 196
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    sget-object v1, Lorg/ros/android/view/ZoomMode;->VELOCITY_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    if-ne v0, v1, :cond_12

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v2

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/DistanceRenderer;->setZoom(F)V

    .line 199
    :cond_12
    return-void
.end method

.method public loadPreferences(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 236
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 237
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DISTANCE_VIEW_ZOOM_MODE"

    sget-object v2, Lorg/ros/android/view/ZoomMode;->CUSTOM_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    .line 238
    invoke-virtual {v2}, Lorg/ros/android/view/ZoomMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, "tmpMode":I
    sget-object v1, Lorg/ros/android/view/ZoomMode;->CUSTOM_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    invoke-virtual {v1}, Lorg/ros/android/view/ZoomMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 240
    sget-object v1, Lorg/ros/android/view/ZoomMode;->CUSTOM_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    iput-object v1, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    goto :goto_3a

    .line 241
    :cond_21
    sget-object v1, Lorg/ros/android/view/ZoomMode;->CLUTTER_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    invoke-virtual {v1}, Lorg/ros/android/view/ZoomMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 242
    sget-object v1, Lorg/ros/android/view/ZoomMode;->CLUTTER_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    iput-object v1, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    goto :goto_3a

    .line 243
    :cond_2e
    sget-object v1, Lorg/ros/android/view/ZoomMode;->VELOCITY_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    invoke-virtual {v1}, Lorg/ros/android/view/ZoomMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 244
    sget-object v1, Lorg/ros/android/view/ZoomMode;->VELOCITY_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    iput-object v1, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    .line 246
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lorg/ros/android/view/DistanceRenderer;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "DISTANCE_VIEW_ZOOM_LOCK"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/ros/android/view/DistanceRenderer;->zoomLocked:Z

    .line 247
    iget-object v1, p0, Lorg/ros/android/view/DistanceRenderer;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/DistanceRenderer;->editor:Landroid/content/SharedPreferences$Editor;

    .line 248
    return-void
.end method

.method public lockZoom()V
    .registers 2

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoomLocked:Z

    .line 179
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 131
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 132
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 134
    iget v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoom:F

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 136
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->rangeLines:Lorg/ros/android/view/DistancePoints;

    invoke-virtual {v0, p1}, Lorg/ros/android/view/DistancePoints;->drawRange(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 138
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->rangeLines:Lorg/ros/android/view/DistancePoints;

    invoke-virtual {v0, p1}, Lorg/ros/android/view/DistancePoints;->drawReferenceMarker(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 140
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->rangeLines:Lorg/ros/android/view/DistancePoints;

    invoke-virtual {v0, p1}, Lorg/ros/android/view/DistancePoints;->drawRobot(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 141
    iget v0, p0, Lorg/ros/android/view/DistanceRenderer;->theta:F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {p1, v0, v1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 142
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 114
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 115
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 116
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 117
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {p1, v1, v0, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 118
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 119
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 120
    const/16 v0, 0xc53

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 121
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 125
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 126
    new-instance v0, Lorg/ros/android/view/DistancePoints;

    invoke-direct {v0}, Lorg/ros/android/view/DistancePoints;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->rangeLines:Lorg/ros/android/view/DistancePoints;

    .line 127
    return-void
.end method

.method public savePreferences(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 258
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->editor:Landroid/content/SharedPreferences$Editor;

    .line 259
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DISTANCE_VIEW_ZOOM_MODE"

    iget-object v2, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    invoke-virtual {v2}, Lorg/ros/android/view/ZoomMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DISTANCE_VIEW_ZOOM_VALUE"

    iget v2, p0, Lorg/ros/android/view/DistanceRenderer;->zoom:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 261
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DISTANCE_VIEW_ZOOM_LOCK"

    iget-boolean v2, p0, Lorg/ros/android/view/DistanceRenderer;->zoomLocked:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 262
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    return-void
.end method

.method public setNormalizedZoom(F)V
    .registers 4
    .param p1, "normalizedZoomValue"    # F

    .line 162
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    sget-object v1, Lorg/ros/android/view/ZoomMode;->CUSTOM_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    if-ne v0, v1, :cond_13

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/ros/android/view/DistanceRenderer;->setZoom(F)V

    .line 165
    :cond_13
    return-void
.end method

.method public setRotation(F)V
    .registers 2
    .param p1, "theta"    # F

    .line 151
    iput p1, p0, Lorg/ros/android/view/DistanceRenderer;->theta:F

    .line 152
    return-void
.end method

.method public setZoomMode(Lorg/ros/android/view/ZoomMode;)V
    .registers 2
    .param p1, "mode"    # Lorg/ros/android/view/ZoomMode;

    .line 171
    iput-object p1, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    .line 172
    return-void
.end method

.method public unlockZoom()V
    .registers 2

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoomLocked:Z

    .line 186
    return-void
.end method

.method public updateRange(Ljava/util/List;FFFFF)V
    .registers 14
    .param p2, "maxRange"    # F
    .param p3, "minRange"    # F
    .param p4, "minTh"    # F
    .param p5, "thIncrement"    # F
    .param p6, "minDistToObject"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FFFFF)V"
        }
    .end annotation

    .line 221
    .local p1, "range":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v0, p0, Lorg/ros/android/view/DistanceRenderer;->zoomMode:Lorg/ros/android/view/ZoomMode;

    sget-object v1, Lorg/ros/android/view/ZoomMode;->CLUTTER_ZOOM_MODE:Lorg/ros/android/view/ZoomMode;

    if-ne v0, v1, :cond_d

    .line 223
    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float v0, v0, p6

    invoke-direct {p0, v0}, Lorg/ros/android/view/DistanceRenderer;->setZoom(F)V

    .line 226
    :cond_d
    iget-object v1, p0, Lorg/ros/android/view/DistanceRenderer;->rangeLines:Lorg/ros/android/view/DistancePoints;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/ros/android/view/DistancePoints;->updateRange(Ljava/util/List;FFFF)V

    .line 227
    return-void
.end method
