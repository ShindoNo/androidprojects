.class public Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FactoryBasedDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _factory:Ljava/lang/reflect/Method;

.field protected final _inputType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 180
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;

    .line 181
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;

    .line 182
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/Class;)V
    .locals 1
    .param p2, "f"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "inputType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 172
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;

    .line 173
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 175
    return-void
.end method


# virtual methods
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    move-object p0, v0

    .line 194
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;
    :cond_0
    return-object p0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_valueClass:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 210
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 211
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "t":Ljava/lang/Throwable;
    throw v1

    .line 213
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
