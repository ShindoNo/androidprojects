.class final Lme/kiip/internal/c/e$b;
.super Ljava/lang/Object;
.source "KiipSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kiip/internal/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lme/kiip/internal/e/l;

.field private final c:Ljava/lang/String;

.field private final d:Lme/kiip/internal/e/l;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/security/cert/Certificate;

.field private final g:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    :try_start_0
    new-instance v2, Lme/kiip/internal/d/g;

    sget-object v1, Lme/kiip/internal/d/h;->d:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v1}, Lme/kiip/internal/d/g;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 514
    invoke-virtual {v2}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/c/e$b;->a:Ljava/lang/String;

    .line 515
    invoke-virtual {v2}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/c/e$b;->c:Ljava/lang/String;

    .line 516
    new-instance v1, Lme/kiip/internal/e/l;

    invoke-direct {v1}, Lme/kiip/internal/e/l;-><init>()V

    iput-object v1, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    .line 517
    invoke-virtual {v2}, Lme/kiip/internal/d/g;->b()I

    move-result v3

    move v1, v0

    .line 518
    :goto_0
    if-ge v1, v3, :cond_0

    .line 519
    iget-object v4, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    invoke-virtual {v2}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lme/kiip/internal/e/l;->c(Ljava/lang/String;)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_0
    new-instance v1, Lme/kiip/internal/e/l;

    invoke-direct {v1}, Lme/kiip/internal/e/l;-><init>()V

    iput-object v1, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    .line 523
    iget-object v1, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v2}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lme/kiip/internal/e/l;->b(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Lme/kiip/internal/d/g;->b()I

    move-result v1

    .line 525
    :goto_1
    if-ge v0, v1, :cond_1

    .line 526
    iget-object v3, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v2}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lme/kiip/internal/e/l;->c(Ljava/lang/String;)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    :cond_1
    invoke-direct {p0}, Lme/kiip/internal/c/e$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    invoke-virtual {v2}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 532
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 534
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e$b;->e:Ljava/lang/String;

    .line 535
    invoke-direct {p0, v2}, Lme/kiip/internal/c/e$b;->a(Lme/kiip/internal/d/g;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e$b;->f:[Ljava/security/cert/Certificate;

    .line 536
    invoke-direct {p0, v2}, Lme/kiip/internal/c/e$b;->a(Lme/kiip/internal/d/g;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e$b;->g:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 545
    return-void

    .line 538
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lme/kiip/internal/c/e$b;->e:Ljava/lang/String;

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/c/e$b;->f:[Ljava/security/cert/Certificate;

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kiip/internal/c/e$b;->g:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Lme/kiip/internal/e/l;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/c/e$b;->a:Ljava/lang/String;

    .line 550
    iput-object p2, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    .line 551
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/c/e$b;->c:Ljava/lang/String;

    .line 552
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lme/kiip/internal/e/l;->a(Ljava/util/Map;Z)Lme/kiip/internal/e/l;

    move-result-object v1

    iput-object v1, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    .line 554
    invoke-direct {p0, p3}, Lme/kiip/internal/c/e$b;->a(Ljava/net/HttpURLConnection;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lme/kiip/internal/c/e$b;->e:Ljava/lang/String;

    .line 559
    :try_start_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 562
    :goto_0
    iput-object v0, p0, Lme/kiip/internal/c/e$b;->f:[Ljava/security/cert/Certificate;

    .line 563
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lme/kiip/internal/c/e$b;->g:[Ljava/security/cert/Certificate;

    .line 569
    :goto_1
    return-void

    .line 565
    :cond_0
    iput-object v0, p0, Lme/kiip/internal/c/e$b;->e:Ljava/lang/String;

    .line 566
    iput-object v0, p0, Lme/kiip/internal/c/e$b;->f:[Ljava/security/cert/Certificate;

    .line 567
    iput-object v0, p0, Lme/kiip/internal/c/e$b;->g:[Ljava/security/cert/Certificate;

    goto :goto_1

    .line 560
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljavax/net/ssl/SSLSocket;
    .locals 2

    .prologue
    .line 579
    instance-of v0, p1, Lme/kiip/internal/e/i;

    if-eqz v0, :cond_0

    check-cast p1, Lme/kiip/internal/e/i;

    invoke-virtual {p1}, Lme/kiip/internal/e/i;->a()Lme/kiip/internal/e/e;

    move-result-object v0

    .line 582
    :goto_0
    instance-of v1, v0, Lme/kiip/internal/e/h;

    if-eqz v1, :cond_1

    check-cast v0, Lme/kiip/internal/e/h;

    invoke-virtual {v0}, Lme/kiip/internal/e/h;->u()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_1
    return-object v0

    .line 579
    :cond_0
    check-cast p1, Lme/kiip/internal/e/g;

    invoke-virtual {p1}, Lme/kiip/internal/e/g;->b()Lme/kiip/internal/e/e;

    move-result-object v0

    goto :goto_0

    .line 582
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    if-nez p2, :cond_1

    .line 638
    const-string v0, "-1\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 651
    :cond_0
    return-void

    .line 642
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 643
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 644
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 645
    invoke-static {v2}, Lme/kiip/internal/d/b;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lme/kiip/internal/c/e$b;)Z
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0}, Lme/kiip/internal/c/e$b;->a()Z

    move-result v0

    return v0
.end method

.method private a(Lme/kiip/internal/d/g;)[Ljava/security/cert/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p1}, Lme/kiip/internal/d/g;->b()I

    move-result v0

    .line 619
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 620
    const/4 v0, 0x0

    .line 630
    :cond_0
    return-object v0

    .line 623
    :cond_1
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 624
    new-array v0, v0, [Ljava/security/cert/Certificate;

    .line 625
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 626
    invoke-virtual {p1}, Lme/kiip/internal/d/g;->a()Ljava/lang/String;

    move-result-object v3

    .line 627
    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lme/kiip/internal/d/b;->a([B)[B

    move-result-object v3

    .line 628
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic b(Lme/kiip/internal/c/e$b;)Lme/kiip/internal/e/l;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    return-object v0
.end method

.method static synthetic c(Lme/kiip/internal/c/e$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->f:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic e(Lme/kiip/internal/c/e$b;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->g:[Ljava/security/cert/Certificate;

    return-object v0
.end method


# virtual methods
.method public a(Lme/kiip/internal/d/c$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 588
    invoke-virtual {p1, v1}, Lme/kiip/internal/d/c$a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    .line 589
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lme/kiip/internal/d/h;->e:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/c/e$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/c/e$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    invoke-virtual {v3}, Lme/kiip/internal/e/l;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    .line 594
    :goto_0
    iget-object v3, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    invoke-virtual {v3}, Lme/kiip/internal/e/l;->e()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    invoke-virtual {v4, v0}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    invoke-virtual {v4, v0}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v3}, Lme/kiip/internal/e/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v3}, Lme/kiip/internal/e/l;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    :goto_1
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v0}, Lme/kiip/internal/e/l;->e()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v3, v1}, Lme/kiip/internal/e/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-virtual {v3, v1}, Lme/kiip/internal/e/l;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    :cond_1
    invoke-direct {p0}, Lme/kiip/internal/c/e$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lme/kiip/internal/c/e$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->f:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lme/kiip/internal/c/e$b;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 608
    iget-object v0, p0, Lme/kiip/internal/c/e$b;->g:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lme/kiip/internal/c/e$b;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 610
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 611
    return-void
.end method

.method public a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 655
    iget-object v1, p0, Lme/kiip/internal/c/e$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/kiip/internal/c/e$b;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lme/kiip/internal/e/n;

    iget-object v2, p0, Lme/kiip/internal/c/e$b;->d:Lme/kiip/internal/e/l;

    invoke-direct {v1, p1, v2}, Lme/kiip/internal/e/n;-><init>(Ljava/net/URI;Lme/kiip/internal/e/l;)V

    iget-object v2, p0, Lme/kiip/internal/c/e$b;->b:Lme/kiip/internal/e/l;

    invoke-virtual {v2, v0}, Lme/kiip/internal/e/l;->a(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lme/kiip/internal/e/n;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
