.class Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
.super Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
.source "OioClientSocketChannel.java"


# instance fields
.field volatile in:Ljava/io/PushbackInputStream;

.field volatile out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 10
    .param p1, "factory"    # Lorg/jboss/netty/channel/ChannelFactory;
    .param p2, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p3, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 38
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/net/Socket;)V

    .line 40
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    .line 41
    return-void
.end method


# virtual methods
.method getInputStream()Ljava/io/PushbackInputStream;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->in:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->out:Ljava/io/OutputStream;

    return-object v0
.end method
