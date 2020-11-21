.class public final enum Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
.super Ljava/lang/Enum;
.source "HttpMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

.field public static final enum SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 118
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "SKIP_CONTROL_CHARS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 119
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_INITIAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 120
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_HEADER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 121
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 122
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 123
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_FIXED_LENGTH_CONTENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 124
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_FIXED_LENGTH_CONTENT_AS_CHUNKS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 125
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNK_SIZE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 126
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNKED_CONTENT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 127
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNKED_CONTENT_AS_CHUNKS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 128
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNK_DELIMITER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 129
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const-string v1, "READ_CHUNK_FOOTER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    .line 117
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    aput-object v1, v0, v13

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 117
    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .registers 1

    .line 117
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    return-object v0
.end method
