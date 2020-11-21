.class Luk/co/blogspot/fractiousg/texample/TextureRegion;
.super Ljava/lang/Object;
.source "TextureRegion.java"


# instance fields
.field public u1:F

.field public u2:F

.field public v1:F

.field public v2:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .registers 9
    .param p1, "texWidth"    # F
    .param p2, "texHeight"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    div-float v0, p3, p1

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/TextureRegion;->u1:F

    .line 16
    div-float v0, p4, p2

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/TextureRegion;->v1:F

    .line 17
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/TextureRegion;->u1:F

    div-float v1, p5, p1

    add-float/2addr v0, v1

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/TextureRegion;->u2:F

    .line 18
    iget v0, p0, Luk/co/blogspot/fractiousg/texample/TextureRegion;->v1:F

    div-float v1, p6, p2

    add-float/2addr v0, v1

    iput v0, p0, Luk/co/blogspot/fractiousg/texample/TextureRegion;->v2:F

    .line 19
    return-void
.end method
