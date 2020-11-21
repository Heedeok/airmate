.class Lorg/ros/internal/message/context/MessageContextBuilder$3;
.super Ljava/lang/Object;
.source "MessageContextBuilder.java"

# interfaces
.implements Lorg/ros/internal/message/field/FieldFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/message/context/MessageContextBuilder;->constantValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/message/context/MessageContextBuilder;

.field final synthetic val$fieldType:Lorg/ros/internal/message/field/FieldType;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/ros/internal/message/context/MessageContextBuilder;Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lorg/ros/internal/message/context/MessageContextBuilder;

    .line 78
    iput-object p1, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->this$0:Lorg/ros/internal/message/context/MessageContextBuilder;

    iput-object p2, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->val$fieldType:Lorg/ros/internal/message/field/FieldType;

    iput-object p3, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lorg/ros/internal/message/field/Field;
    .registers 5

    .line 81
    iget-object v0, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->val$fieldType:Lorg/ros/internal/message/field/FieldType;

    iget-object v1, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->val$fieldType:Lorg/ros/internal/message/field/FieldType;

    iget-object v3, p0, Lorg/ros/internal/message/context/MessageContextBuilder$3;->val$value:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/ros/internal/message/field/FieldType;->parseFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/ros/internal/message/field/FieldType;->newConstantValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/message/field/Field;

    move-result-object v0

    return-object v0
.end method
