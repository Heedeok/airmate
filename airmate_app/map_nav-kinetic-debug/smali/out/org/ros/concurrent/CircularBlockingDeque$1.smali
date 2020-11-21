.class Lorg/ros/concurrent/CircularBlockingDeque$1;
.super Ljava/lang/Object;
.source "CircularBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/concurrent/CircularBlockingDeque;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lorg/ros/concurrent/CircularBlockingDeque;


# direct methods
.method constructor <init>(Lorg/ros/concurrent/CircularBlockingDeque;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/concurrent/CircularBlockingDeque;

    .line 197
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque$1;, "Lorg/ros/concurrent/CircularBlockingDeque$1;"
    iput-object p1, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->this$0:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->offset:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 202
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque$1;, "Lorg/ros/concurrent/CircularBlockingDeque$1;"
    iget v0, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->offset:I

    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->this$0:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-static {v1}, Lorg/ros/concurrent/CircularBlockingDeque;->access$000(Lorg/ros/concurrent/CircularBlockingDeque;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque$1;, "Lorg/ros/concurrent/CircularBlockingDeque$1;"
    iget v0, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->offset:I

    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->this$0:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-static {v1}, Lorg/ros/concurrent/CircularBlockingDeque;->access$000(Lorg/ros/concurrent/CircularBlockingDeque;)I

    move-result v1

    if-eq v0, v1, :cond_29

    .line 210
    iget-object v0, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->this$0:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-static {v0}, Lorg/ros/concurrent/CircularBlockingDeque;->access$100(Lorg/ros/concurrent/CircularBlockingDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->this$0:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-static {v1}, Lorg/ros/concurrent/CircularBlockingDeque;->access$200(Lorg/ros/concurrent/CircularBlockingDeque;)I

    move-result v1

    iget v2, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->offset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->this$0:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-static {v2}, Lorg/ros/concurrent/CircularBlockingDeque;->access$300(Lorg/ros/concurrent/CircularBlockingDeque;)I

    move-result v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 211
    .local v0, "entry":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/ros/concurrent/CircularBlockingDeque$1;->offset:I

    .line 212
    return-object v0

    .line 208
    .end local v0    # "entry":Ljava/lang/Object;, "TT;"
    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 217
    .local p0, "this":Lorg/ros/concurrent/CircularBlockingDeque$1;, "Lorg/ros/concurrent/CircularBlockingDeque$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
