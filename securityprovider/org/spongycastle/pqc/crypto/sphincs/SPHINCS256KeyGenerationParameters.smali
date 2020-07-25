.class public Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "SPHINCS256KeyGenerationParameters.java"


# instance fields
.field private final treeDigest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "treeDigest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 15
    const/16 v0, 0x2100

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 16
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;->treeDigest:Lorg/spongycastle/crypto/Digest;

    .line 17
    return-void
.end method


# virtual methods
.method public getTreeDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;->treeDigest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method
