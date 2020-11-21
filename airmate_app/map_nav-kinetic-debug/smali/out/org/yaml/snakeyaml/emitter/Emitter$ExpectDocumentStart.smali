.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;
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
    name = "ExpectDocumentStart"
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Z)V
    .registers 3
    .param p2, "first"    # Z

    .line 303
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->first:Z

    .line 305
    return-void
.end method


# virtual methods
.method public expect()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_f9

    .line 309
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    .line 310
    .local v0, "ev":Lorg/yaml/snakeyaml/events/DocumentStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()[Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_21

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_35

    :cond_21
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 311
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v5, "..."

    invoke-virtual {v2, v5, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 312
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 314
    :cond_35
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()[Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 315
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()[Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$500(Lorg/yaml/snakeyaml/emitter/Emitter;[Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "versionText":Ljava/lang/String;
    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v5, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeVersionDirective(Ljava/lang/String;)V

    .line 318
    .end local v2    # "versionText":Ljava/lang/String;
    :cond_4a
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$700()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2, v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$602(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/util/Map;)Ljava/util/Map;

    .line 319
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 320
    new-instance v2, Ljava/util/TreeSet;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 321
    .local v2, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 322
    .local v6, "handle":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 323
    .local v7, "prefix":Ljava/lang/String;
    iget-object v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v8}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$600(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v8, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$800(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "handleText":Ljava/lang/String;
    iget-object v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v9, v7}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$900(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "prefixText":Ljava/lang/String;
    iget-object v10, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v10, v8, v9}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeTagDirective(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v6    # "handle":Ljava/lang/String;
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "handleText":Ljava/lang/String;
    .end local v9    # "prefixText":Ljava/lang/String;
    goto :goto_6f

    .line 329
    .end local v2    # "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_a0
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->first:Z

    if-eqz v2, :cond_cc

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getExplicit()Z

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_cc

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()[Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_cc

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1100(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    move-result v2

    if-nez v2, :cond_cc

    const/4 v2, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v2, 0x0

    .line 331
    .local v2, "implicit":Z
    :goto_cd
    if-nez v2, :cond_ec

    .line 332
    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 333
    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v6, "---"

    invoke-virtual {v5, v6, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 334
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 335
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 338
    :cond_ec
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    new-instance v4, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;

    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {v4, v5, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    invoke-static {v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 339
    .end local v0    # "ev":Lorg/yaml/snakeyaml/events/DocumentStartEvent;
    .end local v2    # "implicit":Z
    goto :goto_114

    :cond_f9
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    if-eqz v0, :cond_115

    .line 345
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeStreamEnd()V

    .line 346
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    new-instance v2, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {v2, v3, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    invoke-static {v0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 350
    :goto_114
    return-void

    .line 348
    :cond_115
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected DocumentStartEvent, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
