.class public Lorg/apache/commons/io/comparator/SizeFileComparator;
.super Ljava/lang/Object;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_REVERSE:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 58
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "sumDirectoryContents"    # Z

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean p1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 95
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 14
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    .line 110
    .local v0, "file1":Ljava/io/File;
    move-object v1, p2

    check-cast v1, Ljava/io/File;

    .line 111
    .local v1, "file2":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 112
    .local v2, "size1":J
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_22

    .line 113
    iget-boolean v4, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v4, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v7

    goto :goto_20

    :cond_1f
    move-wide v7, v5

    :goto_20
    move-wide v2, v7

    .line 114
    goto :goto_26

    .line 115
    :cond_22
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 117
    :goto_26
    const-wide/16 v7, 0x0

    .line 118
    .local v7, "size2":J
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 119
    iget-boolean v4, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v4, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v9

    goto :goto_3e

    :cond_3d
    move-wide v9, v5

    :goto_3e
    move-wide v7, v9

    .line 120
    goto :goto_44

    .line 121
    :cond_40
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 123
    :goto_44
    const/4 v4, 0x0

    sub-long v9, v2, v7

    .line 124
    .local v9, "result":J
    cmp-long v4, v9, v5

    if-gez v4, :cond_4d

    .line 125
    const/4 v4, -0x1

    return v4

    .line 126
    :cond_4d
    cmp-long v4, v9, v5

    if-lez v4, :cond_53

    .line 127
    const/4 v4, 0x1

    return v4

    .line 129
    :cond_53
    const/4 v4, 0x0

    return v4
.end method
