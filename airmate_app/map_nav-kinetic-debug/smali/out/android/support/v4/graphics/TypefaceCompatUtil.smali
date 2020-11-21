.class public Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 166
    if-eqz p0, :cond_7

    .line 168
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 170
    goto :goto_7

    .line 169
    :catch_6
    move-exception v0

    .line 172
    :cond_7
    :goto_7
    return-void
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 117
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 118
    .local v0, "tmpFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 119
    return-object v1

    .line 122
    :cond_8
    :try_start_8
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_18

    if-nez v2, :cond_13

    .line 123
    nop

    .line 127
    .end local v0    # "tmpFile":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "id":I
    :goto_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    .line 125
    .restart local v0    # "tmpFile":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "res":Landroid/content/res/Resources;
    .restart local p2    # "id":I
    :cond_13
    :try_start_13
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    goto :goto_f

    .line 127
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 159
    invoke-static {p0, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 161
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_e
    move-exception v1

    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v2

    .line 138
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 140
    .local v2, "buffer":[B
    :goto_c
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "readLen":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_18

    .line 141
    invoke-virtual {v0, v2, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_1f
    .catchall {:try_start_2 .. :try_end_17} :catchall_1d

    goto :goto_c

    .line 143
    :cond_18
    const/4 v1, 0x1

    .line 148
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "readLen":I
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "is":Ljava/io/InputStream;
    :goto_19
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    .restart local v0    # "os":Ljava/io/FileOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "is":Ljava/io/InputStream;
    :catchall_1d
    move-exception v1

    goto :goto_3b

    .line 144
    :catch_1f
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    :try_start_20
    const-string v3, "TypefaceCompatUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copying resource contents to temp file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_1d

    .line 146
    goto :goto_19

    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3b
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    const/16 v2, 0x64

    if-ge v1, v2, :cond_4f

    .line 63
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v2, "file":Ljava/io/File;
    :try_start_43
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_4b

    if-eqz v3, :cond_4a

    .line 66
    return-object v2

    .line 70
    :cond_4a
    goto :goto_4c

    .line 68
    :catch_4b
    move-exception v3

    .line 62
    .end local v2    # "file":Ljava/io/File;
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 72
    .end local v1    # "i":I
    :cond_4f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "r"

    invoke-virtual {v0, p2, v2, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 98
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_14

    .line 99
    nop

    .line 106
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_68

    :cond_13
    return-object v1

    .line 101
    :cond_14
    :try_start_14
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_51
    .catchall {:try_start_14 .. :try_end_1d} :catchall_4e

    .line 102
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 103
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 104
    .local v8, "size":J
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2d} :catch_39
    .catchall {:try_start_1d .. :try_end_2d} :catchall_36

    .line 105
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_51
    .catchall {:try_start_2d .. :try_end_30} :catchall_4e

    .line 106
    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_68

    :cond_35
    return-object v5

    .line 105
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v8    # "size":J
    :catchall_36
    move-exception v4

    move-object v5, v1

    goto :goto_3f

    .line 101
    :catch_39
    move-exception v4

    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 105
    :catchall_3b
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_3f
    if-eqz v5, :cond_4a

    :try_start_41
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_4e

    goto :goto_4d

    :catch_45
    move-exception v6

    :try_start_46
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4d

    :cond_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :goto_4d
    throw v4
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4e} :catch_51
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 106
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_4e
    move-exception v3

    move-object v4, v1

    goto :goto_57

    .line 97
    :catch_51
    move-exception v3

    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 106
    :catchall_53
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_57
    if-eqz v2, :cond_67

    if-eqz v4, :cond_64

    :try_start_5b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_68

    goto :goto_67

    :catch_5f
    move-exception v5

    :try_start_60
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_67

    :cond_64
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_67
    :goto_67
    throw v3
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_68} :catch_68

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_68
    move-exception v2

    .line 107
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 81
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_32

    .line 82
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 83
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 84
    .local v6, "size":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_1d
    .catchall {:try_start_6 .. :try_end_16} :catchall_1a

    .line 85
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_32

    return-object v3

    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v6    # "size":J
    :catchall_1a
    move-exception v2

    move-object v3, v0

    goto :goto_23

    .line 81
    :catch_1d
    move-exception v2

    :try_start_1e
    throw v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 85
    :catchall_1f
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_23
    if-eqz v3, :cond_2e

    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_32

    goto :goto_31

    :catch_29
    move-exception v4

    :try_start_2a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_31

    :cond_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_31
    throw v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_32

    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_32
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method
