.class public Lorg/apache/commons/httpclient/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .line 63
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static hashCode(II)I
    .registers 3
    .param p0, "seed"    # I
    .param p1, "hashcode"    # I

    .line 51
    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .registers 3
    .param p0, "seed"    # I
    .param p1, "obj"    # Ljava/lang/Object;

    .line 55
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public static hashCode(IZ)I
    .registers 3
    .param p0, "seed"    # I
    .param p1, "b"    # Z

    .line 59
    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0
.end method
