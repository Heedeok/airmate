.class Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.super Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 50
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 53
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_2b} :catch_2d

    return-object v2

    .line 55
    :cond_2c
    return-object v0

    .line 57
    .end local v1    # "path":Ljava/lang/String;
    :catch_2d
    move-exception v1

    .line 58
    .local v1, "e":Landroid/system/ErrnoException;
    return-object v0
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .line 65
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    .line 66
    return-object v1

    .line 68
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 69
    .local v0, "bestFont":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 70
    .local v2, "resolver":Landroid/content/ContentResolver;
    nop

    .line 71
    :try_start_f
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_79

    .line 70
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 72
    :try_start_1a
    invoke-direct {p0, v3}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v4

    .line 73
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_31

    .line 80
    :cond_27
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2b} :catch_62
    .catchall {:try_start_1a .. :try_end_2b} :catchall_5f

    .line 81
    if-eqz v3, :cond_30

    :try_start_2d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_79

    :cond_30
    return-object v5

    .line 76
    :cond_31
    :goto_31
    :try_start_31
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3a} :catch_62
    .catchall {:try_start_31 .. :try_end_3a} :catchall_5f

    .line 77
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3a
    invoke-super {p0, p1, v5}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3e} :catch_4a
    .catchall {:try_start_3a .. :try_end_3e} :catchall_47

    .line 78
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_62
    .catchall {:try_start_3e .. :try_end_41} :catchall_5f

    .line 81
    if-eqz v3, :cond_46

    :try_start_43
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_79

    :cond_46
    return-object v6

    .line 78
    :catchall_47
    move-exception v6

    move-object v7, v1

    goto :goto_50

    .line 76
    :catch_4a
    move-exception v6

    :try_start_4b
    throw v6
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 78
    :catchall_4c
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_50
    if-eqz v7, :cond_5b

    :try_start_52
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_5f

    goto :goto_5e

    :catch_56
    move-exception v8

    :try_start_57
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5e

    :cond_5b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :goto_5e
    throw v6
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5f} :catch_62
    .catchall {:try_start_57 .. :try_end_5f} :catchall_5f

    .line 81
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_5f
    move-exception v4

    move-object v5, v1

    goto :goto_68

    .line 70
    :catch_62
    move-exception v4

    :try_start_63
    throw v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    .line 81
    :catchall_64
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_68
    if-eqz v3, :cond_78

    if-eqz v5, :cond_75

    :try_start_6c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_79

    goto :goto_78

    :catch_70
    move-exception v6

    :try_start_71
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_78

    :cond_75
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_78
    :goto_78
    throw v4
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_79

    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_79
    move-exception v3

    .line 82
    .local v3, "e":Ljava/io/IOException;
    return-object v1
.end method
