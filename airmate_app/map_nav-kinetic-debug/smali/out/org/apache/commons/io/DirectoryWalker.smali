.class public abstract Lorg/apache/commons/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/DirectoryWalker$CancelException;
    }
.end annotation


# instance fields
.field private final depthLimit:I

.field private final filter:Ljava/io/FileFilter;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 266
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 267
    return-void
.end method

.method protected constructor <init>(Ljava/io/FileFilter;I)V
    .registers 3
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "depthLimit"    # I

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 283
    iput p2, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 284
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V
    .registers 5
    .param p1, "directoryFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p3, "depthLimit"    # I

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 303
    goto :goto_27

    .line 304
    :cond_b
    if-eqz p1, :cond_f

    move-object v0, p1

    goto :goto_11

    :cond_f
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_11
    move-object p1, v0

    .line 305
    if-eqz p2, :cond_16

    move-object v0, p2

    goto :goto_18

    :cond_16
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_18
    move-object p2, v0

    .line 306
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    .line 307
    invoke-static {p2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p2

    .line 308
    invoke-static {p1, p2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->orFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 310
    :goto_27
    iput p3, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 311
    return-void
.end method

.method private walk(Ljava/io/File;ILjava/util/Collection;)V
    .registers 9
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 352
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 353
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V

    .line 354
    add-int/lit8 v0, p2, 0x1

    .line 355
    .local v0, "childDepth":I
    iget v1, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-ltz v1, :cond_16

    iget v1, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-gt v0, v1, :cond_4a

    .line 356
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 357
    iget-object v1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    if-nez v1, :cond_22

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    goto :goto_28

    :cond_22
    iget-object v1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 358
    .local v1, "childFiles":[Ljava/io/File;
    :goto_28
    if-nez v1, :cond_2e

    .line 359
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleRestricted(Ljava/io/File;ILjava/util/Collection;)V

    .line 360
    goto :goto_4a

    .line 361
    :cond_2e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v3, v1

    if-ge v2, v3, :cond_4a

    .line 362
    aget-object v3, v1, v2

    .line 363
    .local v3, "childFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 364
    invoke-direct {p0, v3, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 365
    goto :goto_47

    .line 366
    :cond_3e
    invoke-virtual {p0, v3, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 367
    invoke-virtual {p0, v3, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleFile(Ljava/io/File;ILjava/util/Collection;)V

    .line 368
    invoke-virtual {p0, v3, v0, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 361
    .end local v3    # "childFile":Ljava/io/File;
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 373
    .end local v1    # "childFiles":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_4a
    :goto_4a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V

    .line 375
    .end local v0    # "childDepth":I
    :cond_4d
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 376
    return-void
.end method


# virtual methods
.method protected final checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 397
    return-void

    .line 395
    :cond_7
    new-instance v0, Lorg/apache/commons/io/DirectoryWalker$CancelException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/io/File;I)V

    throw v0
.end method

.method protected handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V
    .registers 4
    .param p1, "startDirectory"    # Ljava/io/File;
    .param p2, "results"    # Ljava/util/Collection;
    .param p3, "cancel"    # Lorg/apache/commons/io/DirectoryWalker$CancelException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    throw p3
.end method

.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .registers 5
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method protected handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    return-void
.end method

.method protected handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    return-void
.end method

.method protected handleEnd(Ljava/util/Collection;)V
    .registers 2
    .param p1, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    return-void
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    return-void
.end method

.method protected handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRestricted(Ljava/io/File;ILjava/util/Collection;)V
    .registers 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    return-void
.end method

.method protected handleStart(Ljava/io/File;Ljava/util/Collection;)V
    .registers 3
    .param p1, "startDirectory"    # Ljava/io/File;
    .param p2, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    return-void
.end method

.method protected final walk(Ljava/io/File;Ljava/util/Collection;)V
    .registers 5
    .param p1, "startDirectory"    # Ljava/io/File;
    .param p2, "results"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    if-eqz p1, :cond_12

    .line 334
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleStart(Ljava/io/File;Ljava/util/Collection;)V

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 336
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleEnd(Ljava/util/Collection;)V
    :try_end_c
    .catch Lorg/apache/commons/io/DirectoryWalker$CancelException; {:try_start_2 .. :try_end_c} :catch_d

    .line 339
    goto :goto_11

    .line 337
    :catch_d
    move-exception v0

    .line 338
    .local v0, "cancel":Lorg/apache/commons/io/DirectoryWalker$CancelException;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/DirectoryWalker;->handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V

    .line 340
    .end local v0    # "cancel":Lorg/apache/commons/io/DirectoryWalker$CancelException;
    :goto_11
    return-void

    .line 331
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Start Directory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
