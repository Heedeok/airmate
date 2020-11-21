.class public interface abstract Lorg/ros/Topics;
.super Ljava/lang/Object;
.source "Topics.java"


# static fields
.field public static final CLOCK:Lorg/ros/namespace/GraphName;

.field public static final ROSOUT:Lorg/ros/namespace/GraphName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "/rosout"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    sput-object v0, Lorg/ros/Topics;->ROSOUT:Lorg/ros/namespace/GraphName;

    .line 29
    const-string v0, "/clock"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    sput-object v0, Lorg/ros/Topics;->CLOCK:Lorg/ros/namespace/GraphName;

    return-void
.end method
