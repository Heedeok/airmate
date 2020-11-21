.class synthetic Lcom/google/common/collect/BstMutationResult$1;
.super Ljava/lang/Object;
.source "BstMutationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/BstMutationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

.field static final synthetic $SwitchMap$com$google$common$collect$BstSide:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 124
    invoke-static {}, Lcom/google/common/collect/BstModificationResult$ModificationType;->values()[Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

    sget-object v2, Lcom/google/common/collect/BstModificationResult$ModificationType;->IDENTITY:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-virtual {v2}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

    sget-object v3, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-virtual {v3}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    :try_start_23
    sget-object v2, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

    sget-object v3, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBALANCING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-virtual {v3}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v2

    .line 133
    :goto_30
    invoke-static {}, Lcom/google/common/collect/BstSide;->values()[Lcom/google/common/collect/BstSide;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstSide:[I

    :try_start_39
    sget-object v2, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstSide:[I

    sget-object v3, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v3}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v0

    :goto_45
    :try_start_45
    sget-object v0, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstSide:[I

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v2}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    return-void
.end method
