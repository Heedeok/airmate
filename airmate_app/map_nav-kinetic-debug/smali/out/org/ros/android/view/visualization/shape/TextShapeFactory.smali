.class public Lorg/ros/android/view/visualization/shape/TextShapeFactory;
.super Ljava/lang/Object;
.source "TextShapeFactory.java"


# instance fields
.field private final glText:Luk/co/blogspot/fractiousg/texample/GLText;


# direct methods
.method public constructor <init>(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Luk/co/blogspot/fractiousg/texample/GLText;

    invoke-virtual {p1}, Lorg/ros/android/view/visualization/VisualizationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Luk/co/blogspot/fractiousg/texample/GLText;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShapeFactory;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    .line 17
    return-void
.end method


# virtual methods
.method public loadFont(Landroid/graphics/Typeface;III)V
    .registers 6
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "size"    # I
    .param p3, "padX"    # I
    .param p4, "padY"    # I

    .line 20
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShapeFactory;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    invoke-virtual {v0, p1, p2, p3, p4}, Luk/co/blogspot/fractiousg/texample/GLText;->load(Landroid/graphics/Typeface;III)Z

    .line 21
    return-void
.end method

.method public loadFont(Ljava/lang/String;III)V
    .registers 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "padX"    # I
    .param p4, "padY"    # I

    .line 24
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShapeFactory;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    invoke-virtual {v0, p1, p2, p3, p4}, Luk/co/blogspot/fractiousg/texample/GLText;->load(Ljava/lang/String;III)Z

    .line 25
    return-void
.end method

.method public newTextShape(Ljava/lang/String;)Lorg/ros/android/view/visualization/shape/TextShape;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lorg/ros/android/view/visualization/shape/TextShape;

    iget-object v1, p0, Lorg/ros/android/view/visualization/shape/TextShapeFactory;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    invoke-direct {v0, v1, p1}, Lorg/ros/android/view/visualization/shape/TextShape;-><init>(Luk/co/blogspot/fractiousg/texample/GLText;Ljava/lang/String;)V

    return-object v0
.end method
