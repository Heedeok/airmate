.class final Lorg/ros/android/view/visualization/OpenGlTransform$1;
.super Ljava/lang/ThreadLocal;
.source "OpenGlTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/view/visualization/OpenGlTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/nio/FloatBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/OpenGlTransform$1;->get()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/nio/FloatBuffer;
    .registers 2

    .line 41
    invoke-super {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 42
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 43
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/OpenGlTransform$1;->initialValue()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/nio/FloatBuffer;
    .registers 2

    .line 36
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method
