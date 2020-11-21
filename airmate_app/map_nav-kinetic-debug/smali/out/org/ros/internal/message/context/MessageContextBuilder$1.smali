.class Lorg/ros/internal/message/context/MessageContextBuilder$1;
.super Ljava/lang/Object;
.source "MessageContextBuilder.java"

# interfaces
.implements Lorg/ros/internal/message/field/FieldFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/message/context/MessageContextBuilder;->variableValue(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/message/context/MessageContextBuilder;

.field final synthetic val$fieldType:Lorg/ros/internal/message/field/FieldType;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/ros/internal/message/context/MessageContextBuilder;Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/message/context/MessageContextBuilder;

    .line 56
    iput-object p1, p0, Lorg/ros/internal/message/context/MessageContextBuilder$1;->this$0:Lorg/ros/internal/message/context/MessageContextBuilder;

    iput-object p2, p0, Lorg/ros/internal/message/context/MessageContextBuilder$1;->val$fieldType:Lorg/ros/internal/message/field/FieldType;

    iput-object p3, p0, Lorg/ros/internal/message/context/MessageContextBuilder$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lorg/ros/internal/message/field/Field;
    .registers 3

    .line 59
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContextBuilder$1;->val$fieldType:Lorg/ros/internal/message/field/FieldType;

    iget-object v1, p0, Lorg/ros/internal/message/context/MessageContextBuilder$1;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/ros/internal/message/field/FieldType;->newVariableValue(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;

    move-result-object v0

    return-object v0
.end method
