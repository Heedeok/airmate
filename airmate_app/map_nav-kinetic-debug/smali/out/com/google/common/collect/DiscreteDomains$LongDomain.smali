.class final Lcom/google/common/collect/DiscreteDomains$LongDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "DiscreteDomains.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/collect/DiscreteDomains$LongDomain;
    .registers 1

    .line 87
    sget-object v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 121
    sget-object v0, Lcom/google/common/collect/DiscreteDomains$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomains$LongDomain;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .registers 5
    .param p1, "x0"    # Ljava/lang/Comparable;
    .param p2, "x1"    # Ljava/lang/Comparable;

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->distance(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Ljava/lang/Long;Ljava/lang/Long;)J
    .registers 12
    .param p1, "start"    # Ljava/lang/Long;
    .param p2, "end"    # Ljava/lang/Long;

    .line 102
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 103
    .local v0, "result":J
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_21

    cmp-long v2, v0, v6

    if-gez v2, :cond_21

    .line 104
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    .line 106
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v8, v2, v4

    if-gez v8, :cond_34

    cmp-long v2, v0, v6

    if-lez v2, :cond_34

    .line 107
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 109
    :cond_34
    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->maxValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public maxValue()Ljava/lang/Long;
    .registers 3

    .line 117
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->minValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public minValue()Ljava/lang/Long;
    .registers 3

    .line 113
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Comparable;

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->next(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 7
    .param p1, "value"    # Ljava/lang/Long;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 93
    .local v0, "l":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    const/4 v2, 0x0

    goto :goto_16

    :cond_f
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_16
    return-object v2
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Comparable;

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/DiscreteDomains$LongDomain;->previous(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public previous(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 7
    .param p1, "value"    # Ljava/lang/Long;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 98
    .local v0, "l":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_14

    :cond_c
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_14
    return-object v2
.end method
