.class public interface abstract Lrocon_interaction_msgs/GetRolesResponse;
.super Ljava/lang/Object;
.source "GetRolesResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string[] roles"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/GetRolesResponse"


# virtual methods
.method public abstract getRoles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setRoles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
