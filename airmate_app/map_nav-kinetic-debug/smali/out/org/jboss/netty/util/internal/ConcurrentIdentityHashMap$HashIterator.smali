.class abstract Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
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

.field currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .registers 2

    .line 1098
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iget-object p1, p1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    .line 1100
    const/4 p1, -0x1

    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    .line 1101
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    .line 1102
    return-void
.end method


# virtual methods
.method final advance()V
    .registers 4

    .line 1119
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_d

    .line 1120
    return-void

    .line 1123
    :cond_d
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_20

    .line 1124
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_d

    .line 1125
    return-void

    .line 1129
    :cond_20
    :goto_20
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_50

    .line 1130
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    .line 1131
    .local v0, "seg":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    if-eqz v1, :cond_4f

    .line 1132
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 1133
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_3d
    if-ltz v1, :cond_4f

    .line 1134
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v2, :cond_4c

    .line 1135
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    .line 1136
    return-void

    .line 1133
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    .line 1140
    .end local v0    # "seg":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .end local v1    # "j":I
    :cond_4f
    goto :goto_20

    .line 1141
    :cond_50
    return-void
.end method

.method public hasMoreElements()Z
    .registers 2

    .line 1115
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.HashIterator;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 1144
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.HashIterator;"
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_12

    .line 1145
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1146
    const/4 v0, 0x1

    return v0

    .line 1148
    :cond_e
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    goto :goto_0

    .line 1151
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method nextEntry()Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1156
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.HashIterator;"
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_1a

    .line 1160
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 1161
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1162
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    .line 1163
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    return-object v0

    .line 1157
    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 1169
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    if-eqz v0, :cond_f

    .line 1172
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 1174
    return-void

    .line 1170
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public rewind()V
    .registers 2

    .line 1105
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->this$0:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextSegmentIndex:I

    .line 1106
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextTableIndex:I

    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentTable:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 1108
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->nextEntry:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 1109
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->lastReturned:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 1110
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 1111
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashIterator;->advance()V

    .line 1112
    return-void
.end method
