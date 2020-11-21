.class Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;
.super Ljava/io/Reader;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderReader"
.end annotation


# instance fields
.field private mark:I

.field private pos:I

.field private final synthetic this$0:Lorg/apache/commons/lang/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang/text/StrBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 2602
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2601
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    .line 2603
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 2608
    return-void
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .line 2662
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->mark:I

    .line 2663
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 2657
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    .line 2612
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->ready()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2613
    const/4 v0, -0x1

    return v0

    .line 2615
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 7
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 2620
    if-ltz p2, :cond_45

    if-ltz p3, :cond_45

    array-length v0, p1

    if-gt p2, v0, :cond_45

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_45

    add-int v0, p2, p3

    if-ltz v0, :cond_45

    .line 2624
    if-nez p3, :cond_14

    .line 2625
    const/4 v0, 0x0

    return v0

    .line 2627
    :cond_14
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v1

    if-lt v0, v1, :cond_20

    .line 2628
    const/4 v0, -0x1

    return v0

    .line 2630
    :cond_20
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v1

    if-le v0, v1, :cond_35

    .line 2631
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int p3, v0, v1

    .line 2633
    :cond_35
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v2, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->getChars(II[CI)V

    .line 2634
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    .line 2635
    return p3

    .line 2622
    :cond_45
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public ready()Z
    .registers 3

    .line 2652
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public reset()V
    .registers 2

    .line 2667
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->mark:I

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    .line 2668
    return-void
.end method

.method public skip(J)J
    .registers 8
    .param p1, "n"    # J

    .line 2640
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v2}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_19

    .line 2641
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 2643
    :cond_19
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_20

    .line 2644
    return-wide v0

    .line 2646
    :cond_20
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    .line 2647
    return-wide p1
.end method
