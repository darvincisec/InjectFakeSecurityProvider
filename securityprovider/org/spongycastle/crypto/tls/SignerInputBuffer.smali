.class Lorg/spongycastle/crypto/tls/SignerInputBuffer;
.super Ljava/io/ByteArrayOutputStream;
.source "SignerInputBuffer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method updateSigner(Lorg/spongycastle/crypto/Signer;)V
    .locals 3
    .param p1, "s"    # Lorg/spongycastle/crypto/Signer;

    .prologue
    .line 11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->count:I

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 12
    return-void
.end method
