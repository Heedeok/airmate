.class public interface abstract Lroscpp/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string name\nstring level\n"

.field public static final _TYPE:Ljava/lang/String; = "roscpp/Logger"


# virtual methods
.method public abstract getLevel()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setLevel(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
