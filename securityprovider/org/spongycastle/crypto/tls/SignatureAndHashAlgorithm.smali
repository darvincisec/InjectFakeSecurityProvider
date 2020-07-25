.class public Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;
.source "SignatureAndHashAlgorithm.java"


# instance fields
.field protected hash:S

.field protected signature:S


# direct methods
.method public constructor <init>(SS)V
    .locals 2
    .param p1, "hash"    # S
    .param p2, "signature"    # S

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signature\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    if-nez p2, :cond_2

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signature\' MUST NOT be \"anonymous\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->hash:S

    .line 35
    iput-short p2, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->signature:S

    .line 36
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 93
    .local v0, "hash":S
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    .line 94
    .local v1, "signature":S
    new-instance v2, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 79
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 80
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 56
    instance-of v2, p1, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    if-nez v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 60
    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 61
    .local v0, "other":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHash()S
    .locals 1

    .prologue
    .line 43
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->hash:S

    return v0
.end method

.method public getSignature()S
    .locals 1

    .prologue
    .line 51
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->signature:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
