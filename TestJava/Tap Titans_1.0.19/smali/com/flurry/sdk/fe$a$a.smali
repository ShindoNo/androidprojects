.class Lcom/flurry/sdk/fe$a$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fe$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fe$a;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/fe$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/flurry/sdk/fe$a$a;->a:Lcom/flurry/sdk/fe$a;

    .line 838
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 839
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fe$a;Ljava/io/OutputStream;Lcom/flurry/sdk/fe$1;)V
    .locals 0

    .prologue
    .line 836
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/fe$a$a;-><init>(Lcom/flurry/sdk/fe$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->a:Lcom/flurry/sdk/fe$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fe$a;->a(Lcom/flurry/sdk/fe$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->a:Lcom/flurry/sdk/fe$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fe$a;->a(Lcom/flurry/sdk/fe$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->a:Lcom/flurry/sdk/fe$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fe$a;->a(Lcom/flurry/sdk/fe$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    iget-object v0, p0, Lcom/flurry/sdk/fe$a$a;->a:Lcom/flurry/sdk/fe$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fe$a;->a(Lcom/flurry/sdk/fe$a;Z)Z

    goto :goto_0
.end method
