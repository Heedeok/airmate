.class Lcom/github/rosjava/android_apps/map_nav/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/ros/android/MessageCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rosjava/android_apps/map_nav/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/android/MessageCallable<",
        "Ljava/lang/String;",
        "Lstd_msgs/Float32;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;


# direct methods
.method constructor <init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    .line 98
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$1;->this$0:Lcom/github/rosjava/android_apps/map_nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 98
    check-cast p1, Lstd_msgs/Float32;

    invoke-virtual {p0, p1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$1;->call(Lstd_msgs/Float32;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public call(Lstd_msgs/Float32;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Lstd_msgs/Float32;

    .line 102
    invoke-interface {p1}, Lstd_msgs/Float32;->getData()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
