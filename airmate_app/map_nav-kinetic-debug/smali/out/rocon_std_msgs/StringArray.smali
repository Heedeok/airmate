.class public interface abstract Lrocon_std_msgs/StringArray;
.super Ljava/lang/Object;
.source "StringArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string[] strings\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_std_msgs/StringArray"


# virtual methods
.method public abstract getStrings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setStrings(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
