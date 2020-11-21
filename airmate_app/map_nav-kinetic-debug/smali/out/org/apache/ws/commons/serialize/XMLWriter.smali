.class public interface abstract Lorg/apache/ws/commons/serialize/XMLWriter;
.super Ljava/lang/Object;
.source "XMLWriter.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# virtual methods
.method public abstract canEncode(C)Z
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getIndentString()Ljava/lang/String;
.end method

.method public abstract getLineFeed()Ljava/lang/String;
.end method

.method public abstract getWriter()Ljava/io/Writer;
.end method

.method public abstract isDeclarating()Z
.end method

.method public abstract isFlushing()Z
.end method

.method public abstract isIndenting()Z
.end method

.method public abstract setDeclarating(Z)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setFlushing(Z)V
.end method

.method public abstract setIndentString(Ljava/lang/String;)V
.end method

.method public abstract setIndenting(Z)V
.end method

.method public abstract setLineFeed(Ljava/lang/String;)V
.end method

.method public abstract setWriter(Ljava/io/Writer;)V
.end method
