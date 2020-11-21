.class public Lorg/apache/commons/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private stringEncoder:Lorg/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/StringEncoder;)V
    .registers 2
    .param p1, "stringEncoder"    # Lorg/apache/commons/codec/StringEncoder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    .line 53
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "compareCode":I
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    invoke-interface {v1, p1}, Lorg/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 74
    .local v1, "s1":Ljava/lang/Comparable;
    iget-object v2, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    invoke-interface {v2, p2}, Lorg/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 75
    .local v2, "s2":Ljava/lang/Comparable;
    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3
    :try_end_15
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_1 .. :try_end_15} :catch_17

    move v0, v3

    .line 79
    .end local v1    # "s1":Ljava/lang/Comparable;
    .end local v2    # "s2":Ljava/lang/Comparable;
    goto :goto_19

    .line 77
    :catch_17
    move-exception v1

    .line 78
    .local v1, "ee":Lorg/apache/commons/codec/EncoderException;
    const/4 v0, 0x0

    .line 80
    .end local v1    # "ee":Lorg/apache/commons/codec/EncoderException;
    :goto_19
    return v0
.end method
