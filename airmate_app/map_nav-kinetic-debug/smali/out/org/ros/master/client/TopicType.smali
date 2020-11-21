.class public Lorg/ros/master/client/TopicType;
.super Ljava/lang/Object;
.source "TopicType.java"


# instance fields
.field private final messageType:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/ros/master/client/TopicType;->name:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/ros/master/client/TopicType;->messageType:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getMessageType()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/ros/master/client/TopicType;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/ros/master/client/TopicType;->name:Ljava/lang/String;

    return-object v0
.end method
