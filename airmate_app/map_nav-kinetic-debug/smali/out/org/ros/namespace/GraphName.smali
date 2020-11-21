.class public Lorg/ros/namespace/GraphName;
.super Ljava/lang/Object;
.source "GraphName.java"


# static fields
.field static final ANONYMOUS_PREFIX:Ljava/lang/String; = "anonymous_"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ROOT:Ljava/lang/String; = "/"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final VALID_GRAPH_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static anonymousCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-string v0, "^([\\~\\/A-Za-z][\\w_\\/]*)?$"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/ros/namespace/GraphName;->VALID_GRAPH_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/ros/namespace/GraphName;->anonymousCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lorg/ros/namespace/GraphName;->VALID_GRAPH_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 109
    :goto_c
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 112
    :cond_28
    const-string v0, "~/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    :cond_46
    return-object p0

    .line 106
    :cond_47
    new-instance v0, Lorg/ros/exception/RosRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid graph name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static empty()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 77
    new-instance v0, Lorg/ros/namespace/GraphName;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newAnonymous()Lorg/ros/namespace/GraphName;
    .registers 3

    .line 63
    new-instance v0, Lorg/ros/namespace/GraphName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anonymous_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/ros/namespace/GraphName;->anonymousCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lorg/ros/namespace/GraphName;

    invoke-static {p0}, Lorg/ros/namespace/GraphName;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static root()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 70
    new-instance v0, Lorg/ros/namespace/GraphName;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 299
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 300
    return v0

    .line 301
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 302
    return v1

    .line 303
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 304
    return v1

    .line 305
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/namespace/GraphName;

    .line 306
    .local v2, "other":Lorg/ros/namespace/GraphName;
    iget-object v3, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 307
    iget-object v3, v2, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 308
    return v1

    .line 309
    :cond_1f
    iget-object v3, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 310
    return v1

    .line 311
    :cond_2a
    return v0
.end method

.method public getBasename()Lorg/ros/namespace/GraphName;
    .registers 5

    .line 218
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 219
    .local v0, "slashIdx":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_28

    .line 220
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 221
    new-instance v1, Lorg/ros/namespace/GraphName;

    iget-object v2, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 223
    :cond_23
    invoke-static {}, Lorg/ros/namespace/GraphName;->empty()Lorg/ros/namespace/GraphName;

    move-result-object v1

    return-object v1

    .line 225
    :cond_28
    return-object p0
.end method

.method public getParent()Lorg/ros/namespace/GraphName;
    .registers 5

    .line 198
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 199
    invoke-static {}, Lorg/ros/namespace/GraphName;->empty()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0

    .line 201
    :cond_d
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 202
    invoke-static {}, Lorg/ros/namespace/GraphName;->root()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0

    .line 204
    :cond_1c
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 205
    .local v0, "slashIdx":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_34

    .line 206
    new-instance v1, Lorg/ros/namespace/GraphName;

    iget-object v2, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 208
    :cond_34
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 209
    invoke-static {}, Lorg/ros/namespace/GraphName;->root()Lorg/ros/namespace/GraphName;

    move-result-object v1

    return-object v1

    .line 211
    :cond_3f
    invoke-static {}, Lorg/ros/namespace/GraphName;->empty()Lorg/ros/namespace/GraphName;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .line 294
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isGlobal()Z
    .registers 4

    .line 136
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_13

    const/4 v1, 0x1

    nop

    :cond_13
    return v1
.end method

.method public isPrivate()Z
    .registers 4

    .line 172
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_13

    const/4 v1, 0x1

    nop

    :cond_13
    return v1
.end method

.method public isRelative()Z
    .registers 2

    .line 190
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isRoot()Z
    .registers 3

    .line 144
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "other"    # Ljava/lang/String;

    .line 284
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/namespace/GraphName;->join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 5
    .param p1, "other"    # Lorg/ros/namespace/GraphName;

    .line 268
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_41

    .line 271
    :cond_d
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 272
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toGlobal()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0

    .line 274
    :cond_18
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 275
    return-object p0

    .line 277
    :cond_1f
    new-instance v0, Lorg/ros/namespace/GraphName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 269
    :cond_41
    :goto_41
    return-object p1
.end method

.method public toGlobal()Lorg/ros/namespace/GraphName;
    .registers 5

    .line 249
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 250
    return-object p0

    .line 252
    :cond_7
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 253
    new-instance v0, Lorg/ros/namespace/GraphName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 255
    :cond_2b
    new-instance v0, Lorg/ros/namespace/GraphName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toRelative()Lorg/ros/namespace/GraphName;
    .registers 4

    .line 236
    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    .line 239
    :cond_d
    return-object p0

    .line 237
    :cond_e
    :goto_e
    new-instance v0, Lorg/ros/namespace/GraphName;

    iget-object v1, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/namespace/GraphName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Lorg/ros/namespace/GraphName;->name:Ljava/lang/String;

    return-object v0
.end method
