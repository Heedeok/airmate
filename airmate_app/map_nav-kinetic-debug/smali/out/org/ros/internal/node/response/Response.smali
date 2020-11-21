.class public Lorg/ros/internal/node/response/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final statusCode:Lorg/ros/internal/node/response/StatusCode;

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lorg/ros/internal/node/response/StatusCode;->fromInt(I)Lorg/ros/internal/node/response/StatusCode;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "statusCode"    # Lorg/ros/internal/node/response/StatusCode;
    .param p2, "statusMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/response/StatusCode;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/ros/internal/node/response/Response;->statusCode:Lorg/ros/internal/node/response/StatusCode;

    .line 134
    iput-object p2, p0, Lorg/ros/internal/node/response/Response;->statusMessage:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lorg/ros/internal/node/response/Response;->result:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public static fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/ros/internal/node/response/ResultFactory<",
            "TT;>;)",
            "Lorg/ros/internal/node/response/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/RemoteException;
        }
    .end annotation

    .line 112
    .local p0, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p1, "resultFactory":Lorg/ros/internal/node/response/ResultFactory;, "Lorg/ros/internal/node/response/ResultFactory<TT;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/ros/internal/node/response/StatusCode;->fromInt(I)Lorg/ros/internal/node/response/StatusCode;

    move-result-object v0

    .line 113
    .local v0, "statusCode":Lorg/ros/internal/node/response/StatusCode;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_18} :catch_3a

    if-ne v0, v2, :cond_34

    .line 120
    nop

    .line 118
    nop

    .line 122
    :try_start_1c
    new-instance v2, Lorg/ros/internal/node/response/Response;

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/ros/internal/node/response/ResultFactory;->newFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_2a} :catch_2b

    return-object v2

    .line 123
    :catch_2b
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/ros/exception/RosRuntimeException;

    const-string v4, "Remote side did not return correct value type."

    invoke-direct {v3, v4, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 115
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_34
    :try_start_34
    new-instance v2, Lorg/ros/exception/RemoteException;

    invoke-direct {v2, v0, v1}, Lorg/ros/exception/RemoteException;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;)V

    throw v2
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_3a} :catch_3a

    .line 117
    .end local v0    # "statusCode":Lorg/ros/internal/node/response/StatusCode;
    .end local v1    # "message":Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    const-string v2, "Remote side did not return correct type (status code/message)."

    invoke-direct {v1, v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromListCheckedFailure(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/ros/internal/node/response/ResultFactory<",
            "TT;>;)",
            "Lorg/ros/internal/node/response/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/RemoteException;
        }
    .end annotation

    .line 73
    .local p0, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p1, "resultFactory":Lorg/ros/internal/node/response/ResultFactory;, "Lorg/ros/internal/node/response/ResultFactory<TT;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/ros/internal/node/response/StatusCode;->fromInt(I)Lorg/ros/internal/node/response/StatusCode;

    move-result-object v0

    .line 74
    .local v0, "statusCode":Lorg/ros/internal/node/response/StatusCode;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Lorg/ros/internal/node/response/StatusCode;->FAILURE:Lorg/ros/internal/node/response/StatusCode;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_18} :catch_3a

    if-eq v0, v2, :cond_34

    .line 82
    nop

    .line 80
    nop

    .line 84
    :try_start_1c
    new-instance v2, Lorg/ros/internal/node/response/Response;

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/ros/internal/node/response/ResultFactory;->newFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_2a} :catch_2b

    return-object v2

    .line 85
    :catch_2b
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/ros/exception/RosRuntimeException;

    const-string v4, "Remote side did not return correct value type."

    invoke-direct {v3, v4, v2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 76
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_34
    :try_start_34
    new-instance v2, Lorg/ros/exception/RemoteException;

    invoke-direct {v2, v0, v1}, Lorg/ros/exception/RemoteException;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;)V

    throw v2
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_3a} :catch_3a

    .line 79
    .end local v0    # "statusCode":Lorg/ros/internal/node/response/StatusCode;
    .end local v1    # "message":Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    const-string v2, "Remote side did not return correct type (status code/message)."

    invoke-direct {v1, v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/ros/internal/node/response/Response<",
            "TT;>;"
        }
    .end annotation

    .line 40
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/ros/internal/node/response/Response;

    sget-object v1, Lorg/ros/internal/node/response/StatusCode;->ERROR:Lorg/ros/internal/node/response/StatusCode;

    invoke-direct {v0, v1, p0, p1}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newFailure(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/ros/internal/node/response/Response<",
            "TT;>;"
        }
    .end annotation

    .line 44
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/ros/internal/node/response/Response;

    sget-object v1, Lorg/ros/internal/node/response/StatusCode;->FAILURE:Lorg/ros/internal/node/response/StatusCode;

    invoke-direct {v0, v1, p0, p1}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/ros/internal/node/response/Response<",
            "TT;>;"
        }
    .end annotation

    .line 48
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/ros/internal/node/response/Response;

    sget-object v1, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    invoke-direct {v0, v1, p0, p1}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/response/Response;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusCode()Lorg/ros/internal/node/response/StatusCode;
    .registers 2

    .line 143
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/response/Response;->statusCode:Lorg/ros/internal/node/response/StatusCode;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .registers 2

    .line 147
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/response/Response;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 3

    .line 160
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/response/Response;->statusCode:Lorg/ros/internal/node/response/StatusCode;

    sget-object v1, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/ros/internal/node/response/Response;->statusCode:Lorg/ros/internal/node/response/StatusCode;

    invoke-virtual {v1}, Lorg/ros/internal/node/response/StatusCode;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/ros/internal/node/response/Response;->statusMessage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/ros/internal/node/response/Response;->result:Ljava/lang/Object;

    if-nez v1, :cond_1c

    const-string v1, "null"

    goto :goto_1e

    :cond_1c
    iget-object v1, p0, Lorg/ros/internal/node/response/Response;->result:Ljava/lang/Object;

    :goto_1e
    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 156
    .local p0, "this":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/response/Response;->statusCode:Lorg/ros/internal/node/response/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/response/Response;->statusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/response/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
