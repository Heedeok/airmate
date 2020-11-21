.class public final Lcom/google/common/base/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private omitNullValues:Z

.field private final valueHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->valueHolders:Ljava/util/List;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 208
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/common/base/Objects$1;

    .line 198
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    .registers 3

    .line 424
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/google/common/base/Objects$1;)V

    .line 425
    .local v0, "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->valueHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 430
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 431
    .local v0, "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->isNull:Z

    .line 432
    return-object v0
.end method

.method private checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 302
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 253
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    return-object p0
.end method

.method public add(Ljava/lang/String;D)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 264
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 265
    return-object p0
.end method

.method public add(Ljava/lang/String;F)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 275
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 276
    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 286
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 297
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-direct {p0, p2}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 242
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    return-object p0
.end method

.method public addValue(C)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .param p1, "value"    # C

    .line 339
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    return-object p0
.end method

.method public addValue(D)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .param p1, "value"    # D

    .line 352
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 353
    return-object p0
.end method

.method public addValue(F)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .param p1, "value"    # F

    .line 365
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 366
    return-object p0
.end method

.method public addValue(I)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .param p1, "value"    # I

    .line 378
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    return-object p0
.end method

.method public addValue(J)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 4
    .param p1, "value"    # J

    .line 391
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 392
    return-object p0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 313
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    return-object p0
.end method

.method public addValue(Z)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .param p1, "value"    # Z

    .line 326
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->addHolder()Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    return-object p0
.end method

.method public omitNullValues()Lcom/google/common/base/Objects$ToStringHelper;
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 220
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 401
    iget-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->omitNullValues:Z

    .line 402
    .local v0, "omitNullValuesSnapshot":Z
    const/4 v1, 0x0

    .line 403
    .local v1, "needsSeparator":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/common/base/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/common/base/Objects$ToStringHelper;->valueHolders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;

    .line 406
    .local v4, "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    if-eqz v0, :cond_2d

    iget-boolean v5, v4, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->isNull:Z

    if-nez v5, :cond_3b

    .line 407
    :cond_2d
    if-eqz v1, :cond_35

    .line 408
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 410
    :cond_35
    const/4 v1, 0x1

    .line 416
    :goto_36
    iget-object v5, v4, Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;->builder:Ljava/lang/StringBuilder;

    .line 417
    .local v5, "sequence":Ljava/lang/CharSequence;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 418
    .end local v4    # "valueHolder":Lcom/google/common/base/Objects$ToStringHelper$ValueHolder;
    .end local v5    # "sequence":Ljava/lang/CharSequence;
    :cond_3b
    goto :goto_1b

    .line 420
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3c
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
