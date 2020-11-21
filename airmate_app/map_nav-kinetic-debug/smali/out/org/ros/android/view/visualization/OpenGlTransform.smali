.class public Lorg/ros/android/view/visualization/OpenGlTransform;
.super Ljava/lang/Object;
.source "OpenGlTransform.java"


# static fields
.field private static final buffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/ros/android/view/visualization/OpenGlTransform$1;

    invoke-direct {v0}, Lorg/ros/android/view/visualization/OpenGlTransform$1;-><init>()V

    sput-object v0, Lorg/ros/android/view/visualization/OpenGlTransform;->buffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static apply(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/rosjava_geometry/Transform;)V
    .registers 10
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "transform"    # Lorg/ros/rosjava_geometry/Transform;

    .line 60
    sget-object v0, Lorg/ros/android/view/visualization/OpenGlTransform;->buffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 61
    .local v0, "matrix":Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lorg/ros/rosjava_geometry/Transform;->toMatrix()[D

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_1a

    aget-wide v5, v1, v4

    .line 62
    .local v5, "value":D
    double-to-float v7, v5

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 61
    .end local v5    # "value":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 64
    :cond_1a
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 66
    return-void
.end method
