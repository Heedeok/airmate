.class Lorg/apache/commons/lang/Entities$LookupEntityMap;
.super Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupEntityMap"
.end annotation


# instance fields
.field private LOOKUP_TABLE_SIZE:I

.field private lookupTable:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 524
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;-><init>()V

    .line 527
    const/16 v0, 0x100

    iput v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    return-void
.end method

.method private createLookupTable()V
    .registers 4

    .line 559
    iget v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-ge v0, v1, :cond_16

    .line 561
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 563
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method private lookupTable()[Ljava/lang/String;
    .registers 2

    .line 547
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 548
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;->createLookupTable()V

    .line 550
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public name(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .line 533
    iget v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    if-ge p1, v0, :cond_b

    .line 534
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;->lookupTable()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 536
    :cond_b
    invoke-super {p0, p1}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
