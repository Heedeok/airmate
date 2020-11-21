.class public interface abstract Lorg/ros/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# static fields
.field public static final USE_SIM_TIME:Lorg/ros/namespace/GraphName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "/use_sim_time"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    sput-object v0, Lorg/ros/Parameters;->USE_SIM_TIME:Lorg/ros/namespace/GraphName;

    return-void
.end method
