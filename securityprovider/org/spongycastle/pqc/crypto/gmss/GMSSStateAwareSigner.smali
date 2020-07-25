.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;
.super Ljava/lang/Object;
.source "GMSSStateAwareSigner.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private final gmssSigner:Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;

.field private key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    instance-of v1, p1, Lorg/spongycastle/util/Memoable;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "digest must implement Memoable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    check-cast p1, Lorg/spongycastle/util/Memoable;

    .end local p1    # "digest":Lorg/spongycastle/crypto/Digest;
    invoke-interface {p1}, Lorg/spongycastle/util/Memoable;->copy()Lorg/spongycastle/util/Memoable;

    move-result-object v0

    .line 31
    .local v0, "dig":Lorg/spongycastle/util/Memoable;
    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;

    new-instance v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner$1;

    invoke-direct {v2, p0, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner$1;-><init>(Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;Lorg/spongycastle/util/Memoable;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;-><init>(Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;

    .line 38
    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 3
    .param p1, "message"    # [B

    .prologue
    .line 61
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "signing key no longer usable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->generateSignature([B)[B

    move-result-object v0

    .line 68
    .local v0, "sig":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextKey()Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    .line 70
    return-object v0
.end method

.method public getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    .line 82
    .local v0, "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    .line 84
    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 44
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 46
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 48
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    .line 56
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 57
    return-void

    :cond_1
    move-object v1, p2

    .line 52
    check-cast v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 1
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->verifySignature([B[B)Z

    move-result v0

    return v0
.end method
