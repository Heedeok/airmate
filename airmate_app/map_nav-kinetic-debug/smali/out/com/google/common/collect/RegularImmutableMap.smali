.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;,
        Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;,
        Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;,
        Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient keySetHashCode:I

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, "immutableEntries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<**>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 47
    array-length v0, p1

    .line 48
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 50
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->chooseTableSize(I)I

    move-result v1

    .line 51
    .local v1, "tableSize":I
    invoke-direct {p0, v1}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 52
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "keySetHashCodeMutable":I
    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    .local v2, "entryIndex":I
    .local v4, "keySetHashCodeMutable":I
    :goto_1c
    if-ge v2, v0, :cond_61

    .line 58
    aget-object v5, p1, v2

    .line 59
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 60
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 61
    .local v7, "keyHashCode":I
    add-int/2addr v4, v7

    .line 62
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v8

    iget v9, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v8, v9

    .line 63
    .local v8, "tableIndex":I
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aget-object v9, v9, v8

    .line 65
    .local v9, "existing":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10, v9}, Lcom/google/common/collect/RegularImmutableMap;->newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v10

    .line 67
    .local v10, "linkedEntry":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    iget-object v11, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v10, v11, v8

    .line 68
    iget-object v11, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aput-object v10, v11, v2

    .line 69
    :goto_44
    if-eqz v9, :cond_5e

    .line 70
    invoke-interface {v9}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    const-string v13, "duplicate key: %s"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v6, v12, v3

    invoke-static {v11, v13, v12}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-interface {v9}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->next()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v9

    goto :goto_44

    .line 55
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "keyHashCode":I
    .end local v8    # "tableIndex":I
    .end local v9    # "existing":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    .end local v10    # "linkedEntry":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 74
    .end local v2    # "entryIndex":I
    :cond_61
    iput v4, p0, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/RegularImmutableMap;

    .line 34
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method

.method private static chooseTableSize(I)I
    .registers 7
    .param p0, "size"    # I

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    .line 80
    .local v0, "tableSize":I
    const/4 v2, 0x0

    if-lez v0, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    const-string v4, "table too large: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return v0
.end method

.method private createEntryArray(I)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-array v0, p1, [Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method

.method private static newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .registers 4
    .param p2    # Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 96
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "next":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    if-nez p2, :cond_8

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_8
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)V

    :goto_d
    return-object v0
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 174
    return v0

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .local v1, "arr$":[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    array-length v2, v1

    const/4 v3, 0x0

    .local v2, "len$":I
    .local v3, "i$":I
    :goto_8
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 177
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 178
    const/4 v0, 0x1

    return v0

    .line 176
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 181
    .end local v1    # "arr$":[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1b
    return v0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/RegularImmutableMap$1;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableMap$KeySet;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 142
    return-object v0

    .line 144
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v1, v2

    .line 145
    .local v1, "index":I
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    aget-object v2, v2, v1

    .line 146
    .local v2, "entry":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    :goto_13
    if-eqz v2, :cond_29

    .line 148
    invoke-interface {v2}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "candidateKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 157
    invoke-interface {v2}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 147
    .end local v3    # "candidateKey":Ljava/lang/Object;, "TK;"
    :cond_24
    invoke-interface {v2}, Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;->next()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v2

    goto :goto_13

    .line 160
    .end local v2    # "entry":Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;, "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry<TK;TV;>;"
    :cond_29
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 169
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .line 185
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .line 165
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 213
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/common/collect/Collections2;->STANDARD_JOINER:Lcom/google/common/base/Joiner;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
