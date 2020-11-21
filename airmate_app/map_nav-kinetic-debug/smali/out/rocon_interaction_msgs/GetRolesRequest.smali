.class public interface abstract Lrocon_interaction_msgs/GetRolesRequest;
.super Ljava/lang/Object;
.source "GetRolesRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# For remocons who need to retrieve a filtered list of roles\n# appropriate to the role and platform they will run for/on. \n\n# Filter according to the rocon uri of the requesting device. T\n# If not specified, the manager will assume \'rocon://\' (wildcards)\nstring uri\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/GetRolesRequest"


# virtual methods
.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method
