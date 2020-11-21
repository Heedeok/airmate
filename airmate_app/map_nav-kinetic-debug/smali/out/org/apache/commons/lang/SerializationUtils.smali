.class public Lorg/apache/commons/lang/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/lang/Object;
    .registers 2
    .param p0, "object"    # Ljava/io/Serializable;

    .line 80
    invoke-static {p0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 155
    if-eqz p0, :cond_32

    .line 158
    const/4 v0, 0x0

    .line 161
    .local v0, "in":Ljava/io/ObjectInputStream;
    :try_start_3
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 162
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_18
    .catchall {:try_start_3 .. :try_end_d} :catchall_16

    .line 169
    nop

    .line 170
    nop

    .line 171
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 175
    goto :goto_14

    .line 173
    :catch_13
    move-exception v2

    .line 175
    :goto_14
    nop

    .line 162
    return-object v1

    .line 169
    :catchall_16
    move-exception v1

    goto :goto_26

    .line 166
    :catch_18
    move-exception v1

    .line 167
    .local v1, "ex":Ljava/io/IOException;
    :try_start_19
    new-instance v2, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 164
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1f
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_16

    .line 169
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_26
    nop

    .line 175
    nop

    .line 170
    if-eqz v0, :cond_30

    .line 171
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_30

    .line 173
    :catch_2e
    move-exception v2

    goto :goto_31

    .line 175
    :cond_30
    :goto_30
    nop

    .line 169
    :goto_31
    throw v1

    .line 156
    .end local v0    # "in":Ljava/io/ObjectInputStream;
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The InputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .registers 3
    .param p0, "objectData"    # [B

    .line 188
    if-eqz p0, :cond_c

    .line 191
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 189
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The byte[] must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "obj"    # Ljava/io/Serializable;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 101
    if-eqz p1, :cond_2c

    .line 104
    const/4 v0, 0x0

    .line 107
    .local v0, "out":Ljava/io/ObjectOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 108
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_19
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    .line 110
    nop

    .line 121
    nop

    .line 114
    nop

    .line 115
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    .line 119
    goto :goto_14

    .line 117
    :catch_13
    move-exception v1

    .line 119
    :goto_14
    nop

    .line 120
    nop

    .line 121
    return-void

    .line 113
    :catchall_17
    move-exception v1

    goto :goto_20

    .line 110
    :catch_19
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1a
    new-instance v2, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_17

    .line 113
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_20
    nop

    .line 119
    nop

    .line 114
    if-eqz v0, :cond_2a

    .line 115
    :try_start_24
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2a

    .line 117
    :catch_28
    move-exception v2

    goto :goto_2b

    .line 119
    :cond_2a
    :goto_2a
    nop

    .line 113
    :goto_2b
    throw v1

    .line 102
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The OutputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .registers 3
    .param p0, "obj"    # Ljava/io/Serializable;

    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 133
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
