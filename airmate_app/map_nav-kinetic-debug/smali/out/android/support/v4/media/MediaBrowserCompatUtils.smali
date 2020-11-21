.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 30
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 31
    return v0

    .line 32
    :cond_4
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_1b

    .line 33
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_19

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 34
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    .line 35
    :cond_1b
    if-nez p1, :cond_30

    .line 36
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2e

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 37
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 39
    :cond_30
    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE"

    .line 40
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_4d

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 41
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    .line 42
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    return v0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 11
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 47
    const/4 v0, -0x1

    if-nez p0, :cond_5

    const/4 v1, -0x1

    goto :goto_b

    :cond_5
    const-string v1, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "page1":I
    :goto_b
    if-nez p1, :cond_f

    const/4 v2, -0x1

    goto :goto_15

    :cond_f
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "page2":I
    :goto_15
    if-nez p0, :cond_19

    .line 50
    const/4 v3, -0x1

    goto :goto_1f

    .line 49
    :cond_19
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 50
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, "pageSize1":I
    :goto_1f
    if-nez p1, :cond_23

    .line 52
    const/4 v4, -0x1

    goto :goto_29

    .line 51
    :cond_23
    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    .line 52
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 55
    .local v4, "pageSize2":I
    :goto_29
    const/4 v5, 0x1

    if-eq v1, v0, :cond_35

    if-ne v3, v0, :cond_2f

    goto :goto_35

    .line 59
    :cond_2f
    mul-int v6, v3, v1

    .line 60
    .local v6, "startIndex1":I
    add-int v7, v6, v3

    sub-int/2addr v7, v5

    goto :goto_39

    .line 56
    .end local v6    # "startIndex1":I
    :cond_35
    :goto_35
    const/4 v6, 0x0

    .line 57
    .restart local v6    # "startIndex1":I
    const v7, 0x7fffffff

    .line 60
    .local v7, "endIndex1":I
    :goto_39
    nop

    .line 63
    if-eq v2, v0, :cond_45

    if-ne v4, v0, :cond_3f

    goto :goto_45

    .line 67
    :cond_3f
    mul-int v0, v4, v2

    .line 68
    .local v0, "startIndex2":I
    add-int v8, v0, v4

    sub-int/2addr v8, v5

    goto :goto_49

    .line 64
    .end local v0    # "startIndex2":I
    :cond_45
    :goto_45
    const/4 v0, 0x0

    .line 65
    .restart local v0    # "startIndex2":I
    const v8, 0x7fffffff

    .line 68
    .local v8, "endIndex2":I
    :goto_49
    nop

    .line 71
    if-gt v6, v0, :cond_4f

    if-gt v0, v7, :cond_4f

    .line 72
    return v5

    .line 73
    :cond_4f
    if-gt v6, v8, :cond_54

    if-gt v8, v7, :cond_54

    .line 74
    return v5

    .line 76
    :cond_54
    const/4 v5, 0x0

    return v5
.end method
