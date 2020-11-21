.class public Ljavax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Nonnegative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator<",
        "Ljavax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 4
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 18
    move-object v0, p1

    check-cast v0, Ljavax/annotation/Nonnegative;

    invoke-virtual {p0, v0, p2}, Ljavax/annotation/Nonnegative$Checker;->forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method

.method public forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 11
    .param p1, "annotation"    # Ljavax/annotation/Nonnegative;
    .param p2, "v"    # Ljava/lang/Object;

    .line 21
    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_7

    .line 22
    sget-object v0, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object v0

    .line 24
    :cond_7
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    .line 25
    .local v0, "value":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1c

    const/4 v2, 0x1

    nop

    :cond_1c
    move v1, v2

    goto :goto_4a

    .line 27
    :cond_1e
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_30

    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2e

    const/4 v2, 0x1

    nop

    :cond_2e
    move v1, v2

    goto :goto_4a

    .line 29
    :cond_30
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_41

    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3f

    const/4 v2, 0x1

    nop

    :cond_3f
    move v1, v2

    goto :goto_4a

    .line 32
    :cond_41
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    .line 34
    .local v1, "isNegative":Z
    :goto_4a
    if-eqz v1, :cond_4f

    .line 35
    sget-object v2, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object v2

    .line 37
    :cond_4f
    sget-object v2, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object v2
.end method
