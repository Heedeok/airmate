.class Lorg/ros/internal/message/Md5Generator$1;
.super Ljava/lang/Object;
.source "Md5Generator.java"

# interfaces
.implements Lorg/ros/internal/message/definition/MessageDefinitionParser$MessageDefinitionVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/message/Md5Generator;->generateText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/message/Md5Generator;

.field final synthetic val$constants:Ljava/util/List;

.field final synthetic val$variables:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/ros/internal/message/Md5Generator;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/message/Md5Generator;

    .line 57
    iput-object p1, p0, Lorg/ros/internal/message/Md5Generator$1;->this$0:Lorg/ros/internal/message/Md5Generator;

    iput-object p2, p0, Lorg/ros/internal/message/Md5Generator$1;->val$variables:Ljava/util/List;

    iput-object p3, p0, Lorg/ros/internal/message/Md5Generator$1;->val$constants:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public constantValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lorg/ros/internal/message/Md5Generator$1;->val$constants:Ljava/util/List;

    const-string v1, "%s %s=%s\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public variableList(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lorg/ros/internal/message/field/PrimitiveFieldType;->existsFor(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_21

    .line 69
    iget-object v0, p0, Lorg/ros/internal/message/Md5Generator$1;->this$0:Lorg/ros/internal/message/Md5Generator;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/Md5Generator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "md5Checksum":Ljava/lang/String;
    iget-object v4, p0, Lorg/ros/internal/message/Md5Generator$1;->val$variables:Ljava/util/List;

    const-string v5, "%s %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p3, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v0    # "md5Checksum":Ljava/lang/String;
    goto :goto_4e

    .line 72
    :cond_21
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3d

    .line 73
    iget-object v0, p0, Lorg/ros/internal/message/Md5Generator$1;->val$variables:Ljava/util/List;

    const-string v4, "%s[%d] %s\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    aput-object p3, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 75
    :cond_3d
    iget-object v0, p0, Lorg/ros/internal/message/Md5Generator$1;->val$variables:Ljava/util/List;

    const-string v4, "%s[] %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p3, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_4e
    return-void
.end method

.method public variableValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lorg/ros/internal/message/field/PrimitiveFieldType;->existsFor(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 61
    iget-object v0, p0, Lorg/ros/internal/message/Md5Generator$1;->this$0:Lorg/ros/internal/message/Md5Generator;

    invoke-virtual {v0, p1}, Lorg/ros/internal/message/Md5Generator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_c
    iget-object v0, p0, Lorg/ros/internal/message/Md5Generator$1;->val$variables:Ljava/util/List;

    const-string v1, "%s %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
