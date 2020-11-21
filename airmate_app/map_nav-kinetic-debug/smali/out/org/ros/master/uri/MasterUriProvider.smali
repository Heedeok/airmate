.class public interface abstract Lorg/ros/master/uri/MasterUriProvider;
.super Ljava/lang/Object;
.source "MasterUriProvider.java"


# virtual methods
.method public abstract getMasterUri()Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/RosRuntimeException;
        }
    .end annotation
.end method

.method public abstract getMasterUri(JLjava/util/concurrent/TimeUnit;)Ljava/net/URI;
.end method
