.class public abstract Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "NumberSerializers.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Base"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# instance fields
.field protected final _isInt:Z

.field protected final _numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

.field protected final _schemaType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser$NumberType;Ljava/lang/String;)V
    .locals 1
    .param p2, "numberType"    # Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .param p3, "schemaType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fasterxml/jackson/core/JsonParser$NumberType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;, "Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 60
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 61
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->_schemaType:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->_isInt:Z

    .line 66
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;, "Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base<TT;>;"
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->_isInt:Z

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;

    move-result-object v0

    .line 78
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V

    .line 87
    .end local v0    # "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectNumberFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;

    move-result-object v0

    .line 83
    .local v0, "v2":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->_numberType:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V

    goto :goto_0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;, "Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base<TT;>;"
    if-eqz p2, :cond_0

    .line 94
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 95
    .local v1, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 97
    .local v0, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v0, :cond_0

    .line 98
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 106
    .end local v0    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v1    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;, "Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 100
    .restart local v0    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v1    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;, "Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base<TT;>;"
    :pswitch_0
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 70
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;, "Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->_schemaType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$Base;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method
