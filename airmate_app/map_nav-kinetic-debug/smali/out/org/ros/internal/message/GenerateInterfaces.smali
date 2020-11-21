.class public Lorg/ros/internal/message/GenerateInterfaces;
.super Ljava/lang/Object;
.source "GenerateInterfaces.java"


# static fields
.field private static final ROS_PACKAGE_PATH:Ljava/lang/String; = "ROS_PACKAGE_PATH"


# instance fields
.field private final actionDefinitionFileProvider:Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

.field private final actionGenerationTemplateActionFeedback:Lorg/ros/internal/message/MessageGenerationTemplate;

.field private final actionGenerationTemplateActionGoal:Lorg/ros/internal/message/MessageGenerationTemplate;

.field private final actionGenerationTemplateActionResult:Lorg/ros/internal/message/MessageGenerationTemplate;

.field private final actionGenerationTemplateFeedback:Lorg/ros/internal/message/MessageGenerationTemplate;

.field private final actionGenerationTemplateGoal:Lorg/ros/internal/message/MessageGenerationTemplate;

.field private final actionGenerationTemplateResult:Lorg/ros/internal/message/MessageGenerationTemplate;

.field private final messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final serviceDefinitionFileProvider:Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

.field private final topicDefinitionFileProvider:Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/ros/internal/message/action/ActionGenerationTemplateGoal;

    invoke-direct {v0}, Lorg/ros/internal/message/action/ActionGenerationTemplateGoal;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateGoal:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 57
    new-instance v0, Lorg/ros/internal/message/action/ActionGenerationTemplateResult;

    invoke-direct {v0}, Lorg/ros/internal/message/action/ActionGenerationTemplateResult;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateResult:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 58
    new-instance v0, Lorg/ros/internal/message/action/ActionGenerationTemplateFeedback;

    invoke-direct {v0}, Lorg/ros/internal/message/action/ActionGenerationTemplateFeedback;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateFeedback:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 60
    new-instance v0, Lorg/ros/internal/message/action/ActionGenerationTemplateActionGoal;

    invoke-direct {v0}, Lorg/ros/internal/message/action/ActionGenerationTemplateActionGoal;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateActionGoal:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 61
    new-instance v0, Lorg/ros/internal/message/action/ActionGenerationTemplateActionResult;

    invoke-direct {v0}, Lorg/ros/internal/message/action/ActionGenerationTemplateActionResult;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateActionResult:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 62
    new-instance v0, Lorg/ros/internal/message/action/ActionGenerationTemplateActionFeedback;

    invoke-direct {v0}, Lorg/ros/internal/message/action/ActionGenerationTemplateActionFeedback;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateActionFeedback:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 67
    new-instance v0, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    invoke-direct {v0}, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    .line 68
    new-instance v0, Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->topicDefinitionFileProvider:Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;

    .line 69
    iget-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    iget-object v1, p0, Lorg/ros/internal/message/GenerateInterfaces;->topicDefinitionFileProvider:Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->addMessageDefinitionProvider(Lorg/ros/message/MessageDefinitionProvider;)V

    .line 70
    new-instance v0, Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->serviceDefinitionFileProvider:Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

    .line 71
    iget-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    iget-object v1, p0, Lorg/ros/internal/message/GenerateInterfaces;->serviceDefinitionFileProvider:Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->addMessageDefinitionProvider(Lorg/ros/message/MessageDefinitionProvider;)V

    .line 72
    new-instance v0, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

    invoke-direct {v0}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionDefinitionFileProvider:Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

    .line 73
    iget-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    iget-object v1, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionDefinitionFileProvider:Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->addMessageDefinitionProvider(Lorg/ros/message/MessageDefinitionProvider;)V

    .line 74
    new-instance v0, Lorg/ros/internal/message/DefaultMessageFactory;

    iget-object v1, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    invoke-direct {v0, v1}, Lorg/ros/internal/message/DefaultMessageFactory;-><init>(Lorg/ros/message/MessageDefinitionProvider;)V

    iput-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 75
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 245
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 247
    const-string v1, "."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_f
    const-string v1, "ROS_PACKAGE_PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "rosPackagePath":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_19
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 253
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 254
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "--package-path="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 255
    const-string v4, "--package-path="

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 257
    goto :goto_3a

    .line 259
    .end local v3    # "arg":Ljava/lang/String;
    :cond_39
    goto :goto_19

    .line 261
    .end local v2    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    .local v2, "packagePath":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_47
    if-ge v6, v4, :cond_5c

    aget-object v7, v3, v6

    .line 263
    .local v7, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v8, "packageDirectory":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 265
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "packageDirectory":Ljava/io/File;
    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 269
    :cond_5c
    new-instance v3, Lorg/ros/internal/message/GenerateInterfaces;

    invoke-direct {v3}, Lorg/ros/internal/message/GenerateInterfaces;-><init>()V

    .line 270
    .local v3, "generateInterfaces":Lorg/ros/internal/message/GenerateInterfaces;
    new-instance v4, Ljava/io/File;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v4, "outputDirectory":Ljava/io/File;
    invoke-virtual {v3, v4, v0, v2}, Lorg/ros/internal/message/GenerateInterfaces;->generate(Ljava/io/File;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 272
    return-void
.end method

.method private writeActionInterfaces(Ljava/io/File;Ljava/util/Collection;)V
    .registers 20
    .param p1, "outputDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 154
    .local v2, "actionTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_15

    .line 155
    iget-object v3, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionDefinitionFileProvider:Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

    invoke-virtual {v3}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;->getPackages()Ljava/util/Collection;

    move-result-object v3

    goto :goto_17

    .line 157
    :cond_15
    move-object/from16 v3, p2

    .end local p2    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v3, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionDefinitionFileProvider:Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

    .line 159
    invoke-virtual {v6, v5}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;->getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v6

    .line 160
    .local v6, "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    if-eqz v6, :cond_32

    .line 161
    invoke-interface {v2, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 163
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    :cond_32
    goto :goto_1b

    .line 164
    :cond_33
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_153

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ros/message/MessageIdentifier;

    .line 165
    .local v5, "actionType":Lorg/ros/message/MessageIdentifier;
    iget-object v6, v0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "definition":Ljava/lang/String;
    nop

    .line 167
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v7

    .line 168
    .local v7, "actionDeclaration":Lorg/ros/message/MessageDeclaration;
    const/4 v8, 0x0

    invoke-direct {v0, v7, v1, v8}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 169
    const/4 v9, 0x3

    invoke-static {v6, v9}, Lorg/ros/internal/message/definition/MessageDefinitionTupleParser;->parse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 171
    .local v9, "goalResultAndFeedback":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Goal"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateGoal:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 173
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v11, v8}, Lorg/ros/internal/message/MessageGenerationTemplate;->applyTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-static {v10, v8}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v8

    .line 175
    .local v8, "goalDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Result"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateResult:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 177
    const/4 v12, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11, v13}, Lorg/ros/internal/message/MessageGenerationTemplate;->applyTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 175
    invoke-static {v10, v11}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v10

    .line 179
    .local v10, "resultDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "Feedback"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateFeedback:Lorg/ros/internal/message/MessageGenerationTemplate;

    const/4 v14, 0x2

    .line 181
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13, v14}, Lorg/ros/internal/message/MessageGenerationTemplate;->applyTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 179
    invoke-static {v11, v13}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v11

    .line 184
    .local v11, "feedbackDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "ActionGoal"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateActionGoal:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 186
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/ros/internal/message/MessageGenerationTemplate;->applyTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 184
    invoke-static {v13, v14}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v13

    .line 188
    .local v13, "actionGoalDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "ActionResult"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateActionResult:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 190
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v15, v12}, Lorg/ros/internal/message/MessageGenerationTemplate;->applyTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 188
    invoke-static {v14, v12}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v12

    .line 192
    .local v12, "actionResultDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "ActionFeedback"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lorg/ros/internal/message/GenerateInterfaces;->actionGenerationTemplateActionFeedback:Lorg/ros/internal/message/MessageGenerationTemplate;

    .line 194
    move-object/from16 v16, v2

    .end local v2    # "actionTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    .local v16, "actionTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    invoke-virtual {v5}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Lorg/ros/internal/message/MessageGenerationTemplate;->applyTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v14, v2}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v2

    .line 197
    .local v2, "actionFeedbackDeclaration":Lorg/ros/message/MessageDeclaration;
    const/4 v14, 0x1

    invoke-direct {v0, v8, v1, v14}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 198
    invoke-direct {v0, v10, v1, v14}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 199
    invoke-direct {v0, v11, v1, v14}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 201
    invoke-direct {v0, v13, v1, v14}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 202
    invoke-direct {v0, v12, v1, v14}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 203
    invoke-direct {v0, v2, v1, v14}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 204
    .end local v2    # "actionFeedbackDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v5    # "actionType":Lorg/ros/message/MessageIdentifier;
    .end local v6    # "definition":Ljava/lang/String;
    .end local v7    # "actionDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v8    # "goalDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v9    # "goalResultAndFeedback":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "resultDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v11    # "feedbackDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v12    # "actionResultDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v13    # "actionGoalDeclaration":Lorg/ros/message/MessageDeclaration;
    nop

    .line 164
    move-object/from16 v2, v16

    goto/16 :goto_37

    .line 205
    .end local v16    # "actionTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    .local v2, "actionTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    :cond_153
    move-object/from16 v16, v2

    .end local v2    # "actionTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    .restart local v16    # "actionTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    return-void
.end method

.method private writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V
    .registers 11
    .param p1, "messageDeclaration"    # Lorg/ros/message/MessageDeclaration;
    .param p2, "outputDirectory"    # Ljava/io/File;
    .param p3, "addConstantsAndMethods"    # Z

    .line 209
    new-instance v0, Lorg/ros/internal/message/MessageInterfaceBuilder;

    invoke-direct {v0}, Lorg/ros/internal/message/MessageInterfaceBuilder;-><init>()V

    .line 210
    .local v0, "builder":Lorg/ros/internal/message/MessageInterfaceBuilder;
    invoke-virtual {p1}, Lorg/ros/message/MessageDeclaration;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setPackageName(Ljava/lang/String;)Lorg/ros/internal/message/MessageInterfaceBuilder;

    .line 211
    invoke-virtual {p1}, Lorg/ros/message/MessageDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setInterfaceName(Ljava/lang/String;)Lorg/ros/internal/message/MessageInterfaceBuilder;

    .line 212
    invoke-virtual {v0, p1}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setMessageDeclaration(Lorg/ros/message/MessageDeclaration;)Lorg/ros/internal/message/MessageInterfaceBuilder;

    .line 213
    invoke-virtual {v0, p3}, Lorg/ros/internal/message/MessageInterfaceBuilder;->setAddConstantsAndMethods(Z)V

    .line 216
    :try_start_19
    iget-object v1, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageFactory:Lorg/ros/message/MessageFactory;

    invoke-virtual {v0, v1}, Lorg/ros/internal/message/MessageInterfaceBuilder;->build(Lorg/ros/message/MessageFactory;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "content":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v2, "file":Ljava/io/File;
    invoke-static {v2, v1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3c} :catch_3d

    .line 222
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    goto :goto_52

    .line 219
    :catch_3d
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Failed to generate interface for %s.\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/ros/message/MessageDeclaration;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_52
    return-void
.end method

.method private writeServiceInterfaces(Ljava/io/File;Ljava/util/Collection;)V
    .registers 13
    .param p1, "outputDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 116
    .local v0, "serviceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 117
    iget-object v1, p0, Lorg/ros/internal/message/GenerateInterfaces;->serviceDefinitionFileProvider:Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

    invoke-virtual {v1}, Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;->getPackages()Ljava/util/Collection;

    move-result-object p2

    .line 119
    :cond_10
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lorg/ros/internal/message/GenerateInterfaces;->serviceDefinitionFileProvider:Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

    .line 121
    invoke-virtual {v3, v2}, Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;->getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 122
    .local v3, "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    if-eqz v3, :cond_2b

    .line 123
    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 125
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    :cond_2b
    goto :goto_14

    .line 126
    :cond_2c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/message/MessageIdentifier;

    .line 127
    .local v2, "serviceType":Lorg/ros/message/MessageIdentifier;
    iget-object v3, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "definition":Ljava/lang/String;
    nop

    .line 129
    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v4

    .line 130
    .local v4, "serviceDeclaration":Lorg/ros/message/MessageDeclaration;
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 131
    const/4 v6, 0x2

    invoke-static {v3, v6}, Lorg/ros/internal/message/definition/MessageDefinitionTupleParser;->parse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 133
    .local v6, "requestAndResponse":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v5

    .line 135
    .local v5, "requestDeclaration":Lorg/ros/message/MessageDeclaration;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lorg/ros/message/MessageDeclaration;->of(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/message/MessageDeclaration;

    move-result-object v7

    .line 138
    .local v7, "responseDeclaration":Lorg/ros/message/MessageDeclaration;
    invoke-direct {p0, v5, p1, v8}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 139
    invoke-direct {p0, v7, p1, v8}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 140
    .end local v2    # "serviceType":Lorg/ros/message/MessageIdentifier;
    .end local v3    # "definition":Ljava/lang/String;
    .end local v4    # "serviceDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v5    # "requestDeclaration":Lorg/ros/message/MessageDeclaration;
    .end local v6    # "requestAndResponse":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "responseDeclaration":Lorg/ros/message/MessageDeclaration;
    goto :goto_30

    .line 141
    :cond_9e
    return-void
.end method

.method private writeTopicInterfaces(Ljava/io/File;Ljava/util/Collection;)V
    .registers 9
    .param p1, "outputDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 88
    .local v0, "topicTypes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 89
    iget-object v1, p0, Lorg/ros/internal/message/GenerateInterfaces;->topicDefinitionFileProvider:Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;

    invoke-virtual {v1}, Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;->getPackages()Ljava/util/Collection;

    move-result-object p2

    .line 91
    :cond_10
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lorg/ros/internal/message/GenerateInterfaces;->topicDefinitionFileProvider:Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;

    .line 93
    invoke-virtual {v3, v2}, Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;->getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 94
    .local v3, "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    if-eqz v3, :cond_2b

    .line 95
    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 97
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "messageIdentifiers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/message/MessageIdentifier;>;"
    :cond_2b
    goto :goto_14

    .line 98
    :cond_2c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/message/MessageIdentifier;

    .line 99
    .local v2, "topicType":Lorg/ros/message/MessageIdentifier;
    iget-object v3, p0, Lorg/ros/internal/message/GenerateInterfaces;->messageDefinitionProviderChain:Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;

    invoke-virtual {v2}, Lorg/ros/message/MessageIdentifier;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ros/internal/message/definition/MessageDefinitionProviderChain;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "definition":Ljava/lang/String;
    new-instance v4, Lorg/ros/message/MessageDeclaration;

    invoke-direct {v4, v2, v3}, Lorg/ros/message/MessageDeclaration;-><init>(Lorg/ros/message/MessageIdentifier;Ljava/lang/String;)V

    .line 101
    .local v4, "messageDeclaration":Lorg/ros/message/MessageDeclaration;
    const/4 v5, 0x1

    invoke-direct {p0, v4, p1, v5}, Lorg/ros/internal/message/GenerateInterfaces;->writeInterface(Lorg/ros/message/MessageDeclaration;Ljava/io/File;Z)V

    .line 102
    .end local v2    # "topicType":Lorg/ros/message/MessageIdentifier;
    .end local v3    # "definition":Ljava/lang/String;
    .end local v4    # "messageDeclaration":Lorg/ros/message/MessageDeclaration;
    goto :goto_30

    .line 103
    :cond_50
    return-void
.end method


# virtual methods
.method public generate(Ljava/io/File;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 7
    .param p1, "outputDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "packagePath":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 228
    .local v1, "directory":Ljava/io/File;
    iget-object v2, p0, Lorg/ros/internal/message/GenerateInterfaces;->topicDefinitionFileProvider:Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;

    invoke-virtual {v2, v1}, Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;->addDirectory(Ljava/io/File;)V

    .line 229
    iget-object v2, p0, Lorg/ros/internal/message/GenerateInterfaces;->serviceDefinitionFileProvider:Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

    invoke-virtual {v2, v1}, Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;->addDirectory(Ljava/io/File;)V

    .line 230
    iget-object v2, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionDefinitionFileProvider:Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

    invoke-virtual {v2, v1}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;->addDirectory(Ljava/io/File;)V

    .line 231
    .end local v1    # "directory":Ljava/io/File;
    goto :goto_4

    .line 232
    :cond_20
    iget-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->topicDefinitionFileProvider:Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;

    invoke-virtual {v0}, Lorg/ros/internal/message/topic/TopicDefinitionFileProvider;->update()V

    .line 233
    iget-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->serviceDefinitionFileProvider:Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;

    invoke-virtual {v0}, Lorg/ros/internal/message/service/ServiceDefinitionFileProvider;->update()V

    .line 234
    iget-object v0, p0, Lorg/ros/internal/message/GenerateInterfaces;->actionDefinitionFileProvider:Lorg/ros/internal/message/action/ActionDefinitionFileProvider;

    invoke-virtual {v0}, Lorg/ros/internal/message/action/ActionDefinitionFileProvider;->update()V

    .line 236
    :try_start_2f
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/message/GenerateInterfaces;->writeTopicInterfaces(Ljava/io/File;Ljava/util/Collection;)V

    .line 237
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/message/GenerateInterfaces;->writeServiceInterfaces(Ljava/io/File;Ljava/util/Collection;)V

    .line 238
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/message/GenerateInterfaces;->writeActionInterfaces(Ljava/io/File;Ljava/util/Collection;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_3a

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catch_3a
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
