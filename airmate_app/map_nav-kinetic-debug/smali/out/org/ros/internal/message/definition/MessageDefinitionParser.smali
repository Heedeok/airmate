.class public Lorg/ros/internal/message/definition/MessageDefinitionParser;
.super Ljava/lang/Object;
.source "MessageDefinitionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;
    }
.end annotation


# instance fields
.field private final visitor:Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;


# direct methods
.method public constructor <init>(Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;)V
    .registers 2
    .param p1, "visitor"    # Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/ros/internal/message/definition/MessageDefinitionParser;->visitor:Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;

    .line 81
    return-void
.end method

.method private parseField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "fieldDefinition"    # Ljava/lang/String;

    .line 117
    const-string v0, "\\s+"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "typeAndName":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v1, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const-string v5, "Invalid field definition: \"%s\""

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p2, v6, v3

    .line 119
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 120
    aget-object v2, v0, v3

    .line 121
    .local v2, "type":Ljava/lang/String;
    aget-object v5, v0, v4

    .line 122
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 123
    .local v6, "value":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x23

    if-eqz v7, :cond_52

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/16 v9, 0x3d

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-le v7, v9, :cond_52

    .line 124
    :cond_3f
    const-string v7, "="

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "nameAndValue":[Ljava/lang/String;
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 126
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 127
    .end local v1    # "nameAndValue":[Ljava/lang/String;
    goto :goto_7c

    :cond_52
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 130
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v4

    const-string v9, "Fields must define a name. Field definition in %s was: \"%s\""

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 133
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 134
    .end local v5    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 136
    .end local v1    # "name":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_7c
    :goto_7c
    const/4 v1, 0x0

    .line 137
    .local v1, "array":Z
    const/4 v7, -0x1

    .line 138
    .local v7, "size":I
    const-string v9, "]"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 139
    const/16 v9, 0x5b

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 140
    .local v9, "leftBracketIndex":I
    const/16 v10, 0x5d

    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 141
    .local v10, "rightBracketIndex":I
    const/4 v1, 0x1

    .line 142
    sub-int v11, v10, v9

    if-le v11, v4, :cond_a1

    .line 143
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 145
    :cond_a1
    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 147
    .end local v9    # "leftBracketIndex":I
    .end local v10    # "rightBracketIndex":I
    :cond_a5
    const-string v9, "Header"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 150
    const-string v9, "header"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Header field must be named \"header.\""

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 151
    const-string v2, "std_msgs/Header"

    goto :goto_e3

    .line 152
    :cond_bb
    invoke-static {v2}, Lorg/ros/internal/message/field/PrimitiveFieldType;->existsFor(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e3

    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e3

    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {p1, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_e3
    :goto_e3
    if-eqz v6, :cond_122

    .line 157
    if-nez v1, :cond_11a

    .line 162
    sget-object v9, Lorg/ros/internal/message/field/PrimitiveFieldType;->STRING:Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v9}, Lorg/ros/internal/message/field/PrimitiveFieldType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_114

    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_114

    .line 163
    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v4, v9

    const-string v9, "Constants must define a value."

    invoke-static {v4, v9}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 164
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 165
    .end local v6    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 167
    move-object v6, v3

    .end local v3    # "value":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_114
    iget-object v3, p0, Lorg/ros/internal/message/definition/MessageDefinitionParser;->visitor:Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;

    invoke-interface {v3, v2, v5, v6}, Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;->constantValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12f

    .line 159
    :cond_11a
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Array constants are not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_122
    if-eqz v1, :cond_12a

    .line 170
    iget-object v3, p0, Lorg/ros/internal/message/definition/MessageDefinitionParser;->visitor:Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;

    invoke-interface {v3, v2, v7, v5}, Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;->variableList(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_12f

    .line 172
    :cond_12a
    iget-object v3, p0, Lorg/ros/internal/message/definition/MessageDefinitionParser;->visitor:Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;

    invoke-interface {v3, v2, v5}, Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;->variableValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_12f
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "messageDefinition"    # Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v0, "reader":Ljava/io/BufferedReader;
    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1a

    .line 100
    nop

    .line 112
    nop

    .line 111
    nop

    .line 113
    return-void

    .line 102
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 103
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 104
    goto :goto_10

    .line 106
    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 107
    invoke-direct {p0, p1, v1}, Lorg/ros/internal/message/definition/MessageDefinitionParser;->parseField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_31} :catch_32

    goto :goto_10

    .line 110
    .end local v1    # "line":Ljava/lang/String;
    :catch_32
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
