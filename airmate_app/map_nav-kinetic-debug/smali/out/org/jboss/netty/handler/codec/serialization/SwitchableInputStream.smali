.class final Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;
.super Ljava/io/FilterInputStream;
.source "SwitchableInputStream.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    return-void
.end method


# virtual methods
.method switchStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 40
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/serialization/SwitchableInputStream;->in:Ljava/io/InputStream;

    .line 41
    return-void
.end method
