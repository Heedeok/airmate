.class public Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;
.super Landroid/view/View;
.source "BatteryLevelView.java"


# instance fields
.field private gray:Landroid/graphics/Paint;

.field private green:Landroid/graphics/Paint;

.field private levelPercent:F

.field private plug:Landroid/graphics/Bitmap;

.field private pluggedIn:Z

.field private red:Landroid/graphics/Paint;

.field private silhouette:Landroid/graphics/Bitmap;

.field private yellow:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/rosjava/android_extras/gingerbread/R$drawable;->battery_silhouette:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->silhouette:Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/github/rosjava/android_extras/gingerbread/R$drawable;->battery_charging:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->plug:Landroid/graphics/Bitmap;

    .line 46
    const v0, 0xff00

    invoke-direct {p0, v0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->makePaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->green:Landroid/graphics/Paint;

    .line 47
    const v0, 0xffff00

    invoke-direct {p0, v0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->makePaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->yellow:Landroid/graphics/Paint;

    .line 48
    const/high16 v0, 0xff0000

    invoke-direct {p0, v0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->makePaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->red:Landroid/graphics/Paint;

    .line 49
    const v0, 0x808080

    invoke-direct {p0, v0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->makePaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->gray:Landroid/graphics/Paint;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->levelPercent:F

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->pluggedIn:Z

    .line 52
    return-void
.end method

.method private makePaint(I)Landroid/graphics/Paint;
    .registers 6
    .param p1, "color"    # I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x1000000

    or-int/2addr v2, p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 41
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->silhouette:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->silhouette:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .local v0, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    .local v1, "destRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->silhouette:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->gray:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    iget v2, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->levelPercent:F

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_34

    .line 70
    iget-object v2, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->red:Landroid/graphics/Paint;

    goto :goto_41

    .line 71
    :cond_34
    iget v2, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->levelPercent:F

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3f

    .line 72
    iget-object v2, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->yellow:Landroid/graphics/Paint;

    goto :goto_41

    .line 74
    :cond_3f
    iget-object v2, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->green:Landroid/graphics/Paint;

    .line 78
    .local v2, "fillPaint":Landroid/graphics/Paint;
    :goto_41
    iget-object v4, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->silhouette:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->levelPercent:F

    mul-float v4, v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v6, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->silhouette:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->levelPercent:F

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 80
    iget-object v4, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->silhouette:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    iget-boolean v4, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->pluggedIn:Z

    if-eqz v4, :cond_98

    .line 83
    iget-object v4, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->plug:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->plug:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    iget-object v3, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->plug:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 87
    :cond_98
    return-void
.end method

.method public setBatteryPercent(F)V
    .registers 2
    .param p1, "percent"    # F

    .line 54
    iput p1, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->levelPercent:F

    .line 55
    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->invalidate()V

    .line 56
    return-void
.end method

.method public setPluggedIn(Z)V
    .registers 2
    .param p1, "plugged"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->pluggedIn:Z

    .line 59
    invoke-virtual {p0}, Lcom/github/rosjava/android_extras/gingerbread/view/BatteryLevelView;->invalidate()V

    .line 60
    return-void
.end method
