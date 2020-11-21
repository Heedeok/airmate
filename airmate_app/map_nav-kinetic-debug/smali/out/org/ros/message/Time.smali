.class public Lorg/ros/message/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ros/message/Time;",
        ">;"
    }
.end annotation


# instance fields
.field public nsecs:I

.field public secs:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/ros/message/Time;->secs:I

    .line 48
    iput v0, p0, Lorg/ros/message/Time;->nsecs:I

    .line 49
    return-void
.end method

.method public constructor <init>(D)V
    .registers 7
    .param p1, "secs"    # D

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    double-to-int v0, p1

    iput v0, p0, Lorg/ros/message/Time;->secs:I

    .line 59
    iget v0, p0, Lorg/ros/message/Time;->secs:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p1, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/ros/message/Time;->nsecs:I

    .line 60
    invoke-virtual {p0}, Lorg/ros/message/Time;->normalize()V

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "secs"    # I
    .param p2, "nsecs"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/ros/message/Time;->secs:I

    .line 53
    iput p2, p0, Lorg/ros/message/Time;->nsecs:I

    .line 54
    invoke-virtual {p0}, Lorg/ros/message/Time;->normalize()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/ros/message/Time;)V
    .registers 3
    .param p1, "t"    # Lorg/ros/message/Time;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Lorg/ros/message/Time;->secs:I

    iput v0, p0, Lorg/ros/message/Time;->secs:I

    .line 65
    iget v0, p1, Lorg/ros/message/Time;->nsecs:I

    iput v0, p0, Lorg/ros/message/Time;->nsecs:I

    .line 66
    return-void
.end method

.method public static fromMillis(J)Lorg/ros/message/Time;
    .registers 6
    .param p0, "timeInMillis"    # J

    .line 81
    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    long-to-int v2, v2

    .line 82
    .local v2, "secs":I
    rem-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0xf4240

    mul-int v0, v0, v1

    .line 83
    .local v0, "nsecs":I
    new-instance v1, Lorg/ros/message/Time;

    invoke-direct {v1, v2, v0}, Lorg/ros/message/Time;-><init>(II)V

    return-object v1
.end method

.method public static fromNano(J)Lorg/ros/message/Time;
    .registers 6
    .param p0, "timeInNs"    # J

    .line 87
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    long-to-int v2, v2

    .line 88
    .local v2, "secs":I
    rem-long v0, p0, v0

    long-to-int v0, v0

    .line 89
    .local v0, "nsecs":I
    new-instance v1, Lorg/ros/message/Time;

    invoke-direct {v1, v2, v0}, Lorg/ros/message/Time;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public add(Lorg/ros/message/Duration;)Lorg/ros/message/Time;
    .registers 6
    .param p1, "d"    # Lorg/ros/message/Duration;

    .line 69
    new-instance v0, Lorg/ros/message/Time;

    iget v1, p0, Lorg/ros/message/Time;->secs:I

    iget v2, p1, Lorg/ros/message/Duration;->secs:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/ros/message/Time;->nsecs:I

    iget v3, p1, Lorg/ros/message/Duration;->nsecs:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/ros/message/Time;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 41
    check-cast p1, Lorg/ros/message/Time;

    invoke-virtual {p0, p1}, Lorg/ros/message/Time;->compareTo(Lorg/ros/message/Time;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ros/message/Time;)I
    .registers 4
    .param p1, "t"    # Lorg/ros/message/Time;

    .line 148
    iget v0, p0, Lorg/ros/message/Time;->secs:I

    iget v1, p1, Lorg/ros/message/Time;->secs:I

    if-gt v0, v1, :cond_23

    iget v0, p0, Lorg/ros/message/Time;->secs:I

    iget v1, p1, Lorg/ros/message/Time;->secs:I

    if-ne v0, v1, :cond_13

    iget v0, p0, Lorg/ros/message/Time;->nsecs:I

    iget v1, p1, Lorg/ros/message/Time;->nsecs:I

    if-le v0, v1, :cond_13

    goto :goto_23

    .line 151
    :cond_13
    iget v0, p0, Lorg/ros/message/Time;->secs:I

    iget v1, p1, Lorg/ros/message/Time;->secs:I

    if-ne v0, v1, :cond_21

    iget v0, p0, Lorg/ros/message/Time;->nsecs:I

    iget v1, p1, Lorg/ros/message/Time;->nsecs:I

    if-ne v0, v1, :cond_21

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_21
    const/4 v0, -0x1

    return v0

    .line 149
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 139
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 140
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/message/Time;

    .line 141
    .local v2, "other":Lorg/ros/message/Time;
    iget v3, p0, Lorg/ros/message/Time;->nsecs:I

    iget v4, v2, Lorg/ros/message/Time;->nsecs:I

    if-eq v3, v4, :cond_1d

    return v1

    .line 142
    :cond_1d
    iget v3, p0, Lorg/ros/message/Time;->secs:I

    iget v4, v2, Lorg/ros/message/Time;->secs:I

    if-eq v3, v4, :cond_24

    return v1

    .line 143
    :cond_24
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 122
    const/16 v0, 0x1f

    .line 123
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 124
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/ros/message/Time;->nsecs:I

    add-int/2addr v2, v3

    .line 125
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/ros/message/Time;->secs:I

    add-int/2addr v1, v3

    .line 126
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isZero()Z
    .registers 6

    .line 106
    invoke-virtual {p0}, Lorg/ros/message/Time;->totalNsecs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public normalize()V
    .registers 3

    .line 110
    :goto_0
    iget v0, p0, Lorg/ros/message/Time;->nsecs:I

    const v1, 0x3b9aca00

    if-gez v0, :cond_13

    .line 111
    iget v0, p0, Lorg/ros/message/Time;->nsecs:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ros/message/Time;->nsecs:I

    .line 112
    iget v0, p0, Lorg/ros/message/Time;->secs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ros/message/Time;->secs:I

    goto :goto_0

    .line 114
    :cond_13
    :goto_13
    iget v0, p0, Lorg/ros/message/Time;->nsecs:I

    if-lt v0, v1, :cond_23

    .line 115
    iget v0, p0, Lorg/ros/message/Time;->nsecs:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/ros/message/Time;->nsecs:I

    .line 116
    iget v0, p0, Lorg/ros/message/Time;->secs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ros/message/Time;->secs:I

    goto :goto_13

    .line 118
    :cond_23
    return-void
.end method

.method public subtract(Lorg/ros/message/Time;)Lorg/ros/message/Duration;
    .registers 6
    .param p1, "t"    # Lorg/ros/message/Time;

    .line 77
    new-instance v0, Lorg/ros/message/Duration;

    iget v1, p0, Lorg/ros/message/Time;->secs:I

    iget v2, p1, Lorg/ros/message/Time;->secs:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/ros/message/Time;->nsecs:I

    iget v3, p1, Lorg/ros/message/Time;->nsecs:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/ros/message/Duration;-><init>(II)V

    return-object v0
.end method

.method public subtract(Lorg/ros/message/Duration;)Lorg/ros/message/Time;
    .registers 6
    .param p1, "d"    # Lorg/ros/message/Duration;

    .line 73
    new-instance v0, Lorg/ros/message/Time;

    iget v1, p0, Lorg/ros/message/Time;->secs:I

    iget v2, p1, Lorg/ros/message/Duration;->secs:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/ros/message/Time;->nsecs:I

    iget v3, p1, Lorg/ros/message/Duration;->nsecs:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/ros/message/Time;-><init>(II)V

    return-object v0
.end method

.method public toSeconds()D
    .registers 5

    .line 98
    invoke-virtual {p0}, Lorg/ros/message/Time;->totalNsecs()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/ros/message/Time;->secs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ros/message/Time;->nsecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalNsecs()J
    .registers 5

    .line 102
    iget v0, p0, Lorg/ros/message/Time;->secs:I

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    iget v2, p0, Lorg/ros/message/Time;->nsecs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
