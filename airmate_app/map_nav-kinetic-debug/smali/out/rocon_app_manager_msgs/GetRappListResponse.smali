.class public interface abstract Lrocon_app_manager_msgs/GetRappListResponse;
.super Ljava/lang/Object;
.source "GetRappListResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "Rapp[] available_rapps\nRapp[] running_rapps"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/GetRappListResponse"


# virtual methods
.method public abstract getAvailableRapps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_app_manager_msgs/Rapp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningRapps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrocon_app_manager_msgs/Rapp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAvailableRapps(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_app_manager_msgs/Rapp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRunningRapps(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrocon_app_manager_msgs/Rapp;",
            ">;)V"
        }
    .end annotation
.end method
