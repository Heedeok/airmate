.class public Lorg/apache/commons/io/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"


# static fields
.field private static final INIT_PROBLEM:I = -0x1

.field private static final INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

.field private static final OS:I

.field private static final OTHER:I = 0x0

.field private static final POSIX_UNIX:I = 0x3

.field private static final UNIX:I = 0x2

.field private static final WINDOWS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    new-instance v0, Lorg/apache/commons/io/FileSystemUtils;

    invoke-direct {v0}, Lorg/apache/commons/io/FileSystemUtils;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "os":I
    :try_start_8
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "osName":Ljava/lang/String;
    if-eqz v1, :cond_89

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 76
    const-string v2, "windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 77
    const/4 v0, 0x1

    .line 78
    goto :goto_88

    :cond_20
    const-string v2, "linux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "sun os"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "sunos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "solaris"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "mpe/ix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "freebsd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "irix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "digital unix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "unix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_86

    const-string v2, "mac os x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_71

    goto :goto_86

    .line 89
    :cond_71
    const-string v2, "hp-ux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_84

    const-string v2, "aix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_82

    goto :goto_84

    .line 93
    :cond_82
    const/4 v0, 0x0

    goto :goto_88

    .line 91
    :cond_84
    :goto_84
    const/4 v0, 0x3

    .line 92
    goto :goto_88

    .line 88
    :cond_86
    :goto_86
    const/4 v0, 0x2

    .line 89
    nop

    .line 98
    .end local v1    # "osName":Ljava/lang/String;
    :goto_88
    goto :goto_93

    .line 72
    .restart local v1    # "osName":Ljava/lang/String;
    :cond_89
    new-instance v2, Ljava/io/IOException;

    const-string v3, "os.name not found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_91} :catch_91

    .line 96
    .end local v1    # "osName":Ljava/lang/String;
    :catch_91
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v0, -0x1

    .line 99
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_93
    sput v0, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    .line 100
    .end local v0    # "os":I
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static freeSpace(Ljava/lang/String;)J
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;)J
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method freeSpaceOS(Ljava/lang/String;IZ)J
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "os"    # I
    .param p3, "kb"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    if-eqz p1, :cond_30

    .line 192
    packed-switch p2, :pswitch_data_38

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exception caught when determining operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :pswitch_d
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0

    .line 196
    :pswitch_13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0

    .line 194
    :pswitch_19
    if-eqz p3, :cond_23

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    goto :goto_27

    :cond_23
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;)J

    move-result-wide v0

    :goto_27
    return-wide v0

    .line 200
    :pswitch_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_28
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method freeSpaceUnix(Ljava/lang/String;ZZ)J
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "kb"    # Z
    .param p3, "posix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d5

    .line 309
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    const-string v0, "-"

    .line 313
    .local v0, "flags":Ljava/lang/String;
    if-eqz p2, :cond_1f

    .line 314
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_1f
    if-eqz p3, :cond_32

    .line 317
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-le v1, v5, :cond_47

    new-array v1, v3, [Ljava/lang/String;

    const-string v6, "df"

    aput-object v6, v1, v2

    aput-object v0, v1, v5

    aput-object p1, v1, v4

    goto :goto_4f

    :cond_47
    new-array v1, v4, [Ljava/lang/String;

    const-string v6, "df"

    aput-object v6, v1, v2

    aput-object p1, v1, v5

    .line 323
    .local v1, "cmdAttribs":[Ljava/lang/String;
    :goto_4f
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 324
    .local v2, "lines":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v4, :cond_b6

    .line 330
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 333
    .local v6, "line2":Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v7, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v7, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_a4

    .line 336
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    if-ne v8, v5, :cond_88

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v3, :cond_88

    .line 337
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 338
    .local v3, "line3":Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, " "

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    .line 339
    .end local v3    # "line3":Ljava/lang/String;
    goto :goto_a7

    .line 340
    :cond_88
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Command line \'df\' did not return data as expected for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\'- check path is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_a4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 347
    :goto_a7
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 348
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 349
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "freeSpace":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 326
    .end local v3    # "freeSpace":Ljava/lang/String;
    .end local v6    # "line2":Ljava/lang/String;
    .end local v7    # "tok":Ljava/util/StringTokenizer;
    :cond_b6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Command line \'df\' did not return info as expected for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\'- response was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    .end local v0    # "flags":Ljava/lang/String;
    .end local v1    # "cmdAttribs":[Ljava/lang/String;
    .end local v2    # "lines":Ljava/util/List;
    :cond_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method freeSpaceWindows(Ljava/lang/String;)J
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_19

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_19

    .line 218
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "cmd.exe"

    aput-object v4, v0, v1

    const-string v1, "/C"

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "dir /-c "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 225
    .local v0, "cmdAttribs":[Ljava/lang/String;
    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "lines":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_43
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_5a

    .line 232
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    .line 234
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseDir(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 231
    .end local v3    # "line":Ljava/lang/String;
    :cond_57
    add-int/lit8 v3, v2, -0x1

    goto :goto_43

    .line 238
    .end local v2    # "i":I
    :cond_5a
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Command line \'dir /-c\' did not return any info for path \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method openProcess([Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .param p1, "cmdAttribs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method parseBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .param p1, "freeSpace"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 365
    .local v0, "bytes":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_b

    .line 370
    return-wide v0

    .line 366
    :cond_b
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Command line \'df\' did not find free space in response for path \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\'- check path is valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_27} :catch_27

    .line 372
    .end local v0    # "bytes":J
    :catch_27
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Command line \'df\' did not return numeric data as expected for path \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'- check path is valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method parseDir(Ljava/lang/String;Ljava/lang/String;)J
    .registers 11
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "bytesStart":I
    const/4 v1, 0x0

    .line 258
    .local v1, "bytesEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 259
    .local v2, "j":I
    :goto_8
    if-ltz v2, :cond_1a

    .line 260
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 261
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 264
    add-int/lit8 v1, v2, 0x1

    .line 265
    goto :goto_1a

    .line 267
    :cond_17
    add-int/lit8 v2, v2, -0x1

    .line 268
    .end local v3    # "c":C
    goto :goto_8

    .line 269
    :cond_1a
    :goto_1a
    const/16 v3, 0x2e

    const/16 v4, 0x2c

    if-ltz v2, :cond_34

    .line 270
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 271
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_31

    if-eq v5, v4, :cond_31

    if-eq v5, v3, :cond_31

    .line 274
    add-int/lit8 v0, v2, 0x1

    .line 275
    goto :goto_34

    .line 277
    :cond_31
    add-int/lit8 v2, v2, -0x1

    .line 278
    .end local v5    # "c":C
    goto :goto_1a

    .line 279
    :cond_34
    :goto_34
    if-ltz v2, :cond_64

    .line 286
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 287
    .local v5, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_40
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v6, v7, :cond_5b

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_52

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v3, :cond_58

    .line 289
    :cond_52
    add-int/lit8 v7, v6, -0x1

    .local v7, "k":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 287
    move v6, v7

    .end local v7    # "k":I
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 292
    .end local v6    # "k":I
    :cond_5b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3

    .line 280
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_64
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Command line \'dir /-c\' did not return valid info for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method performCommand([Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .param p1, "cmdAttribs"    # [Ljava/lang/String;
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .local v0, "lines":Ljava/util/List;
    const/4 v1, 0x0

    .line 399
    .local v1, "proc":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 400
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 401
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 402
    .local v4, "err":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 404
    .local v5, "inr":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->openProcess([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    move-object v1, v6

    .line 405
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v2, v6

    .line 406
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    move-object v3, v6

    .line 407
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v4, v6

    .line 408
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v6

    .line 409
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "line":Ljava/lang/String;
    :goto_2f
    if-eqz v6, :cond_49

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, p2, :cond_49

    .line 411
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 412
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 414
    goto :goto_2f

    .line 416
    :cond_49
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 417
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v7

    if-nez v7, :cond_86

    .line 423
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_56} :catch_af
    .catchall {:try_start_c .. :try_end_56} :catchall_ad

    if-eqz v7, :cond_6b

    .line 429
    nop

    .line 436
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 437
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 438
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 439
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 440
    if-eqz v1, :cond_6a

    .line 441
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 443
    :cond_6a
    return-object v0

    .line 425
    :cond_6b
    :try_start_6b
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Command line did not return any info for command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 419
    :cond_86
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Command line returned OS error code \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, "\' for command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_ad} :catch_af
    .catchall {:try_start_6b .. :try_end_ad} :catchall_ad

    .line 436
    .end local v6    # "line":Ljava/lang/String;
    :catchall_ad
    move-exception v6

    goto :goto_d7

    .line 431
    :catch_af
    move-exception v6

    .line 432
    .local v6, "ex":Ljava/lang/InterruptedException;
    :try_start_b0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Command line threw an InterruptedException \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\' for command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_d7
    .catchall {:try_start_b0 .. :try_end_d7} :catchall_ad

    .line 436
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    :goto_d7
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 437
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 438
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 439
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 440
    if-eqz v1, :cond_e8

    .line 441
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 443
    :cond_e8
    throw v6
.end method
