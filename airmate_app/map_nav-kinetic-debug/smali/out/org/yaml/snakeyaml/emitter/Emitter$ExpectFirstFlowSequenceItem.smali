.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/EmitterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectFirstFlowSequenceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/emitter/Emitter$1;

    .line 436
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    return-void
.end method


# virtual methods
.method public expect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 439
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1900(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1802(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 440
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2010(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    .line 441
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v2, "]"

    invoke-virtual {v0, v2, v1, v1, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 442
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/emitter/EmitterState;

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    goto :goto_7b

    .line 444
    :cond_3a
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v0

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2200(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v2

    if-gt v0, v2, :cond_60

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 445
    :cond_60
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 447
    :cond_65
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v0

    new-instance v2, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0, v1, v1, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V

    .line 450
    :goto_7b
    return-void
.end method
