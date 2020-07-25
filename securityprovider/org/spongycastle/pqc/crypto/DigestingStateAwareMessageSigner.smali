.class public Lorg/spongycastle/pqc/crypto/DigestingStateAwareMessageSigner;
.super Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;
.source "DigestingStateAwareMessageSigner.java"


# instance fields
.field private final signer:Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "messSigner"    # Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;
    .param p2, "messDigest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pqc/crypto/DigestingMessageSigner;-><init>(Lorg/spongycastle/pqc/crypto/MessageSigner;Lorg/spongycastle/crypto/Digest;)V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;

    .line 25
    return-void
.end method


# virtual methods
.method public getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/DigestingStateAwareMessageSigner;->signer:Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;

    invoke-interface {v0}, Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;->getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
