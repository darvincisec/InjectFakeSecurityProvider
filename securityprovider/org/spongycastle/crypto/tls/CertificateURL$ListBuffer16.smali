.class Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;
.super Ljava/io/ByteArrayOutputStream;
.source "CertificateURL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/CertificateURL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListBuffer16"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/tls/CertificateURL;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/CertificateURL;)V
    .locals 1
    .param p1, "this$0"    # Lorg/spongycastle/crypto/tls/CertificateURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;->this$0:Lorg/spongycastle/crypto/tls/CertificateURL;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 121
    return-void
.end method


# virtual methods
.method encodeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v1, p0, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;->count:I

    add-int/lit8 v0, v1, -0x2

    .line 127
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 128
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;->buf:[B

    invoke-static {v0, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 129
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;->count:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;->buf:[B

    .line 131
    return-void
.end method
