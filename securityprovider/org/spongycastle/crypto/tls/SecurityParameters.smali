.class public Lorg/spongycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source "SecurityParameters.java"


# instance fields
.field cipherSuite:I

.field clientRandom:[B

.field compressionAlgorithm:S

.field encryptThenMAC:Z

.field entity:I

.field extendedMasterSecret:Z

.field masterSecret:[B

.field maxFragmentLength:S

.field prfAlgorithm:I

.field pskIdentity:[B

.field serverRandom:[B

.field sessionHash:[B

.field srpIdentity:[B

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 8
    iput v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 9
    iput-short v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 10
    iput v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 11
    iput v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 12
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 13
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 14
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 15
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    .line 16
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    .line 17
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    .line 20
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 21
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 22
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 23
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 32
    :cond_0
    return-void
.end method

.method public getCipherSuite()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    .prologue
    .line 55
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getEntity()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getPskIdentity()[B
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getSRPIdentity()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-object v0
.end method

.method public getServerRandom()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getSessionHash()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    return-object v0
.end method

.method public getVerifyDataLength()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method
