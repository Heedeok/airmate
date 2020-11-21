.class abstract Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .registers 2

    .line 1178
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    iget-object p1, p1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    .line 1180
    const/4 p1, -0x1

    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    .line 1181
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    .line 1182
    return-void
.end method


# virtual methods
.method final advance()V
    .registers 4

    .line 1199
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v0, :cond_d

    .line 1200
    return-void

    .line 1203
    :cond_d
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_20

    .line 1204
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v0, :cond_d

    .line 1205
    return-void

    .line 1209
    :cond_20
    :goto_20
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_50

    .line 1210
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    .line 1211
    .local v0, "seg":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    if-eqz v1, :cond_4f

    .line 1212
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1213
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_3d
    if-ltz v1, :cond_4f

    .line 1214
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v2, :cond_4c

    .line 1215
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    .line 1216
    return-void

    .line 1213
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    .line 1220
    .end local v0    # "seg":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .end local v1    # "j":I
    :cond_4f
    goto :goto_20

    .line 1221
    :cond_50
    return-void
.end method

.method public hasMoreElements()Z
    .registers 2

    .line 1195
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 1224
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v0, :cond_12

    .line 1225
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1226
    const/4 v0, 0x1

    return v0

    .line 1228
    :cond_e
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    goto :goto_0

    .line 1231
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method nextEntry()Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1236
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v0, :cond_1a

    .line 1240
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1241
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1242
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    .line 1243
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    return-object v0

    .line 1237
    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 1249
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    if-eqz v0, :cond_f

    .line 1252
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1254
    return-void

    .line 1250
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public rewind()V
    .registers 2

    .line 1185
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextSegmentIndex:I

    .line 1186
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextTableIndex:I

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1188
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1189
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 1190
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashIterator;->advance()V

    .line 1192
    return-void
.end method
