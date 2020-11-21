.class Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private count:I

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p1, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 578
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    .line 579
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p1, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 590
    iput p2, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    .line 591
    return-void
.end method

.method static containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .registers 6
    .param p0, "tokens"    # [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .param p1, "value"    # Ljava/lang/Object;

    .line 559
    array-length v0, p0

    .line 560
    .local v0, "sz":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_12

    .line 561
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_f

    .line 562
    const/4 v1, 0x1

    return v1

    .line 560
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 565
    .end local v2    # "i":I
    :cond_12
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj2"    # Ljava/lang/Object;

    .line 625
    instance-of v0, p1, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 626
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    .line 627
    .local v0, "tok2":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    iget-object v2, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_17

    .line 628
    return v1

    .line 630
    :cond_17
    iget v2, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    iget v3, v0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    if-eq v2, v3, :cond_1e

    .line 631
    return v1

    .line 633
    :cond_1e
    iget-object v2, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_35

    .line 634
    iget-object v1, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 635
    :cond_35
    iget-object v2, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_44

    .line 636
    iget-object v1, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 638
    :cond_44
    iget-object v2, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v3, v0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_4c

    const/4 v1, 0x1

    nop

    :cond_4c
    return v1

    .line 641
    .end local v0    # "tok2":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    :cond_4d
    return v1
.end method

.method getCount()I
    .registers 2

    .line 606
    iget v0, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .registers 2

    .line 615
    iget-object v0, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 652
    iget-object v0, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .registers 2

    .line 597
    iget v0, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    .line 598
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 661
    iget-object v0, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
