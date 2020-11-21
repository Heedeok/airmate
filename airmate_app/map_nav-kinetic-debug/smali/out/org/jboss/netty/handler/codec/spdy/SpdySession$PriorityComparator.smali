.class final Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;
.super Ljava/lang/Object;
.source "SpdySession.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 7
    .param p1, "id1"    # Ljava/lang/Integer;
    .param p2, "id2"    # Ljava/lang/Integer;

    .line 266
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 267
    .local v0, "state1":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;

    .line 268
    .local v1, "state2":Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v2

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 259
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession$PriorityComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
