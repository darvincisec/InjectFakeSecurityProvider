.class public final Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
.super Ljava/lang/Object;
.source "SessionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/SessionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuite:I

.field private compressionAlgorithm:S

.field private encodedServerExtensions:[B

.field private masterSecret:[B

.field private peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

.field private pskIdentity:[B

.field private srpIdentity:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    .line 15
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    .line 16
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    .line 17
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 18
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->pskIdentity:[B

    .line 19
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->srpIdentity:[B

    .line 20
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    .line 24
    return-void
.end method

.method private validate(ZLjava/lang/String;)V
    .locals 3
    .param p1, "condition"    # Z
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required session parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not configured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/spongycastle/crypto/tls/SessionParameters;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    iget v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "cipherSuite"

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->validate(ZLjava/lang/String;)V

    .line 29
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "compressionAlgorithm"

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->validate(ZLjava/lang/String;)V

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    if-eqz v0, :cond_2

    :goto_2
    const-string v0, "masterSecret"

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->validate(ZLjava/lang/String;)V

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/tls/SessionParameters;

    iget v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    iget-short v2, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->pskIdentity:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->srpIdentity:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/spongycastle/crypto/tls/Certificate;[B[B[BLorg/spongycastle/crypto/tls/SessionParameters$1;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 28
    goto :goto_0

    :cond_1
    move v0, v2

    .line 29
    goto :goto_1

    :cond_2
    move v1, v2

    .line 30
    goto :goto_2
.end method

.method public setCipherSuite(I)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0
    .param p1, "cipherSuite"    # I

    .prologue
    .line 37
    iput p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    .line 38
    return-object p0
.end method

.method public setCompressionAlgorithm(S)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0
    .param p1, "compressionAlgorithm"    # S

    .prologue
    .line 43
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    .line 44
    return-object p0
.end method

.method public setMasterSecret([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0
    .param p1, "masterSecret"    # [B

    .prologue
    .line 49
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    .line 50
    return-object p0
.end method

.method public setPSKIdentity([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0
    .param p1, "pskIdentity"    # [B

    .prologue
    .line 70
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->pskIdentity:[B

    .line 71
    return-object p0
.end method

.method public setPeerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0
    .param p1, "peerCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 56
    return-object p0
.end method

.method public setPskIdentity([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0
    .param p1, "pskIdentity"    # [B

    .prologue
    .line 64
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->pskIdentity:[B

    .line 65
    return-object p0
.end method

.method public setSRPIdentity([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0
    .param p1, "srpIdentity"    # [B

    .prologue
    .line 76
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->srpIdentity:[B

    .line 77
    return-object p0
.end method

.method public setServerExtensions(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 2
    .param p1, "serverExtensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    .line 92
    :goto_0
    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    goto :goto_0
.end method
