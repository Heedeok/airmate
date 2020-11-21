.class Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;
.super Ljava/lang/Object;
.source "OrderedAttributeXMLWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic this$0:Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;

.field private final synthetic val$pAttrs:Lorg/xml/sax/Attributes;


# direct methods
.method constructor <init>(Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;Lorg/xml/sax/Attributes;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->this$0:Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;

    iput-object p2, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10
    .param p1, "pNum1"    # Ljava/lang/Object;
    .param p2, "pNum2"    # Ljava/lang/Object;

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 42
    .local v0, "i1":I
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 43
    .local v1, "i2":I
    iget-object v2, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "uri1":Ljava/lang/String;
    if-nez v2, :cond_18

    .line 45
    const-string v2, ""

    .line 47
    :cond_18
    iget-object v3, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v3, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "uri2":Ljava/lang/String;
    if-nez v3, :cond_22

    .line 49
    const-string v3, ""

    .line 51
    :cond_22
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 52
    .local v4, "result":I
    if-nez v4, :cond_38

    .line 53
    iget-object v5, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v5, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v6, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 55
    :cond_38
    return v4
.end method
