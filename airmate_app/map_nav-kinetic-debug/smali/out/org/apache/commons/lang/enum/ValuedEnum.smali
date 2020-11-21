.class public abstract Lorg/apache/commons/lang/enum/ValuedEnum;
.super Lorg/apache/commons/lang/enum/Enum;
.source "ValuedEnum.java"


# static fields
.field private static final serialVersionUID:J = -0x62f19b5ff54bca1dL


# instance fields
.field private final iValue:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;-><init>(Ljava/lang/String;)V

    .line 127
    iput p2, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    .line 128
    return-void
.end method

.method protected static getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enum/Enum;
    .registers 6
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "value"    # I

    .line 143
    if-eqz p0, :cond_1f

    .line 146
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/enum/ValuedEnum;

    .line 149
    .local v2, "enumeration":Lorg/apache/commons/lang/enum/ValuedEnum;
    invoke-virtual {v2}, Lorg/apache/commons/lang/enum/ValuedEnum;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_a

    .line 150
    return-object v2

    .line 153
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "enumeration":Lorg/apache/commons/lang/enum/ValuedEnum;
    :cond_1d
    const/4 v1, 0x0

    return-object v1

    .line 144
    .end local v0    # "list":Ljava/util/List;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Enum Class must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 179
    iget v0, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enum/ValuedEnum;

    iget v1, v1, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getValue()I
    .registers 2

    .line 162
    iget v0, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 190
    iget-object v0, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iToString:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/ValuedEnum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/ValuedEnum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/ValuedEnum;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iToString:Ljava/lang/String;

    .line 194
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_37
    iget-object v0, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iToString:Ljava/lang/String;

    return-object v0
.end method
