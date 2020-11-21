.class public final Landroid/support/v4/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 143
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0

    .line 145
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 173
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 175
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 82
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 114
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_16

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 117
    :cond_16
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/FontRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 205
    :cond_8
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/FontRes;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/FontRes;
        .end annotation
    .end param
    .param p2, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 293
    invoke-static {p2}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 295
    const/4 v0, -0x4

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 297
    return-void

    .line 299
    :cond_e
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    .line 301
    return-void
.end method

.method private static loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "isRequestFromLayoutInflator"    # Z

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 335
    .local v8, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {v8, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 336
    move-object v0, p0

    move-object v1, v8

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/support/v4/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v0

    .line 338
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_39

    if-eqz p4, :cond_19

    goto :goto_39

    .line 339
    :cond_19
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be retrieved."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_39
    :goto_39
    return-object v0
.end method

.method private static loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .registers 27
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "style"    # I
    .param p5, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "isRequestFromLayoutInflator"    # Z

    .line 354
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-object v0, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f5

    .line 359
    iget-object v0, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 360
    .local v15, "file":Ljava/lang/String;
    const-string v0, "res/"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v16, 0x0

    const/4 v8, -0x3

    if-nez v0, :cond_27

    .line 362
    if-eqz v13, :cond_26

    .line 363
    invoke-virtual {v13, v8, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 366
    :cond_26
    return-object v16

    .line 368
    :cond_27
    invoke-static {v9, v11, v12}, Landroid/support/v4/graphics/TypefaceCompat;->findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v7

    .line 370
    .local v7, "typeface":Landroid/graphics/Typeface;
    if-eqz v7, :cond_33

    .line 371
    if-eqz v13, :cond_32

    .line 372
    invoke-virtual {v13, v7, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 374
    :cond_32
    return-object v7

    .line 378
    :cond_33
    :try_start_33
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_3d} :catch_d2
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_b5

    if-eqz v0, :cond_97

    .line 379
    :try_start_3f
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 380
    .local v0, "rp":Landroid/content/res/XmlResourceParser;
    nop

    .line 381
    invoke-static {v0, v9}, Landroid/support/v4/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v1
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_48} :catch_90
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_89

    move-object/from16 v17, v1

    .line 382
    .local v17, "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    if-nez v17, :cond_69

    .line 383
    :try_start_4c
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to find font-family tag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz v13, :cond_58

    .line 385
    invoke-virtual {v13, v8, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_58} :catch_61
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_58} :catch_59

    .line 388
    :cond_58
    return-object v16

    .line 406
    .end local v0    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v17    # "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :catch_59
    move-exception v0

    const/4 v10, -0x3

    move-object/from16 v1, p0

    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .local v18, "typeface":Landroid/graphics/Typeface;
    :goto_5d
    move-object/from16 v18, v7

    goto/16 :goto_bb

    .line 404
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_61
    move-exception v0

    const/4 v10, -0x3

    move-object/from16 v1, p0

    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    :goto_65
    move-object/from16 v18, v7

    goto/16 :goto_d8

    .line 390
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    .restart local v0    # "rp":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local v17    # "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :cond_69
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v18, v7

    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    move-object/from16 v7, p6

    const/4 v10, -0x3

    move/from16 v8, p7

    :try_start_7c
    invoke-static/range {v1 .. v8}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_80} :catch_85
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_81

    return-object v1

    .line 406
    .end local v0    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v17    # "familyEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :catch_81
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_bb

    .line 404
    :catch_85
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_d8

    .line 406
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_89
    move-exception v0

    move-object/from16 v18, v7

    const/4 v10, -0x3

    move-object/from16 v1, p0

    goto :goto_bb

    .line 404
    :catch_90
    move-exception v0

    move-object/from16 v18, v7

    const/4 v10, -0x3

    move-object/from16 v1, p0

    goto :goto_d8

    .line 393
    :cond_97
    move-object/from16 v18, v7

    const/4 v10, -0x3

    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    move-object/from16 v1, p0

    :try_start_9c
    invoke-static {v1, v9, v11, v15, v12}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_a0} :catch_b3
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a0} :catch_b1

    move-object v7, v0

    .line 395
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    if-eqz v13, :cond_b0

    .line 396
    if-eqz v7, :cond_ad

    .line 397
    :try_start_a5
    invoke-virtual {v13, v7, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_b0

    .line 406
    :catch_a9
    move-exception v0

    goto :goto_5d

    .line 404
    :catch_ab
    move-exception v0

    goto :goto_65

    .line 399
    :cond_ad
    invoke-virtual {v13, v10, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_b0} :catch_ab
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b0} :catch_a9

    .line 403
    :cond_b0
    :goto_b0
    return-object v7

    .line 406
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    :catch_b1
    move-exception v0

    goto :goto_bb

    .line 404
    :catch_b3
    move-exception v0

    goto :goto_d8

    .line 406
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_b5
    move-exception v0

    const/4 v10, -0x3

    move-object/from16 v1, p0

    move-object/from16 v18, v7

    .line 407
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    :goto_bb
    const-string v2, "ResourcesCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read xml resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ef

    .line 404
    .end local v0    # "e":Ljava/io/IOException;
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_d2
    move-exception v0

    const/4 v10, -0x3

    move-object/from16 v1, p0

    move-object/from16 v18, v7

    .line 405
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18    # "typeface":Landroid/graphics/Typeface;
    :goto_d8
    const-string v2, "ResourcesCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse xml resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 409
    :goto_ef
    if-eqz v13, :cond_f4

    .line 410
    invoke-virtual {v13, v10, v14}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 413
    :cond_f4
    return-object v16

    .line 355
    .end local v15    # "file":Ljava/lang/String;
    .end local v18    # "typeface":Landroid/graphics/Typeface;
    :cond_f5
    move-object/from16 v1, p0

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not a Font: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
