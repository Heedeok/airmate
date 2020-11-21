.class public final Landroid/support/v4/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 41
    return-void
.end method

.method public static getThreadStatsTag()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .registers 1
    .param p0, "operationCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {p0}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 67
    return-void
.end method

.method public static incrementOperationCount(II)V
    .registers 2
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-static {p0, p1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 81
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .registers 1
    .param p0, "tag"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 99
    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 4
    .param p0, "socket"    # Ljava/net/DatagramSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 137
    invoke-static {p0}, Landroid/net/TrafficStats;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    goto :goto_1d

    .line 139
    :cond_a
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 140
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/support/v4/net/DatagramSocketWrapper;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/net/DatagramSocketWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 145
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 147
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1d
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .registers 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-static {p0}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    .line 114
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 4
    .param p0, "socket"    # Ljava/net/DatagramSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 154
    invoke-static {p0}, Landroid/net/TrafficStats;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    goto :goto_1d

    .line 156
    :cond_a
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 157
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/support/v4/net/DatagramSocketWrapper;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/net/DatagramSocketWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 162
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 164
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1d
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .registers 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-static {p0}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 124
    return-void
.end method