.class public Lorg/spongycastle/crypto/io/SignerOutputStream;
.super Ljava/io/OutputStream;
.source "SignerOutputStream.java"


# instance fields
.field protected signer:Lorg/spongycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Signer;)V
    .locals 0
    .param p1, "Signer"    # Lorg/spongycastle/crypto/Signer;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    .line 17
    return-void
.end method


# virtual methods
.method public getSigner()Lorg/spongycastle/crypto/Signer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Signer;->update(B)V

    .line 23
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/io/SignerOutputStream;->signer:Lorg/spongycastle/crypto/Signer;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 32
    return-void
.end method
