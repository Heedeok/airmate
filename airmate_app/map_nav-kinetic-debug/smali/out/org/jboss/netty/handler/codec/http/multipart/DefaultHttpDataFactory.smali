.class public Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;
.super Ljava/lang/Object;
.source "DefaultHttpDataFactory.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;


# static fields
.field public static MINSIZE:J


# instance fields
.field private final checkSize:Z

.field private minSize:J

.field private final requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/jboss/netty/handler/codec/http/HttpRequest;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/HttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useDisk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-wide/16 v0, 0x4000

    sput-wide v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->MINSIZE:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 58
    sget-wide v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->MINSIZE:J

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    .line 59
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "minSize"    # J

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 78
    iput-wide p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    .line 79
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "useDisk"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 68
    return-void
.end method

.method private getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;
    .registers 4
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpRequest;",
            ")",
            "Ljava/util/List<",
            "Lorg/jboss/netty/handler/codec/http/multipart/HttpData;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    if-nez v0, :cond_15

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 90
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_15
    return-object v0
.end method


# virtual methods
.method public cleanAllHttpDatas()V
    .registers 6

    .line 173
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 174
    .local v1, "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 175
    .local v2, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    if-eqz v2, :cond_37

    .line 176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    .line 177
    .local v4, "data":Lorg/jboss/netty/handler/codec/http/multipart/HttpData;
    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;->delete()V

    .line 178
    .end local v4    # "data":Lorg/jboss/netty/handler/codec/http/multipart/HttpData;
    goto :goto_24

    .line 179
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 181
    :cond_37
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v1    # "request":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .end local v2    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    goto :goto_a

    .line 183
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3d
    return-void
.end method

.method public cleanRequestHttpDatas(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .registers 5
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 163
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 164
    .local v0, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    if-eqz v0, :cond_21

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    .line 166
    .local v2, "data":Lorg/jboss/netty/handler/codec/http/multipart/HttpData;
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;->delete()V

    .line 167
    .end local v2    # "data":Lorg/jboss/netty/handler/codec/http/multipart/HttpData;
    goto :goto_e

    .line 168
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    :cond_21
    return-void
.end method

.method public createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .registers 6
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;

    .line 96
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_11

    .line 97
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v0

    .line 101
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_11
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_24

    .line 102
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    invoke-direct {v0, p2, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;J)V

    .line 103
    .restart local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 104
    .restart local v1    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0

    .line 107
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_24
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .registers 8
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 111
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_1b

    .line 114
    :try_start_4
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-direct {v0, p2, p3}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 118
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    goto :goto_13

    .line 115
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :catch_a
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    invoke-direct {v1, p2, p3, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, v1

    .line 119
    .local v0, "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :goto_13
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-object v0

    .line 122
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1b
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_2e

    .line 123
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    invoke-direct {v0, p2, p3, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 124
    .restart local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 125
    .restart local v1    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v0

    .line 129
    .end local v0    # "attribute":Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_2e
    :try_start_2e
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2, p3}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_34

    return-object v0

    .line 130
    :catch_34
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFileUpload(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    .registers 21
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "contentTransferEncoding"    # Ljava/lang/String;
    .param p6, "charset"    # Ljava/nio/charset/Charset;
    .param p7, "size"    # J

    .line 138
    move-object v0, p0

    iget-boolean v1, v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v1, :cond_1d

    .line 139
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 141
    .local v1, "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object v1

    .line 144
    .end local v1    # "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    .end local v2    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1d
    iget-boolean v1, v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v1, :cond_3b

    .line 145
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;

    iget-wide v10, v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v11}, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJ)V

    .line 147
    .restart local v1    # "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v2

    .line 148
    .restart local v2    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-object v1

    .line 151
    .end local v1    # "fileUpload":Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    .end local v2    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_3b
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v3 .. v10}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    return-object v1
.end method

.method public removeHttpDataFromClean(Lorg/jboss/netty/handler/codec/http/HttpRequest;Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .registers 4
    .param p1, "request"    # Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .param p2, "data"    # Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 156
    instance-of v0, p2, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    if-eqz v0, :cond_b

    .line 157
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    .end local v0    # "fileToDelete":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_b
    return-void
.end method
