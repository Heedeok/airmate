.class Lorg/apache/commons/lang/builder/HashCodeBuilder$1;
.super Ljava/lang/ThreadLocal;
.source "HashCodeBuilder.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .registers 2

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method