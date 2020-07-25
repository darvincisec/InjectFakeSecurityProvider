.class public Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyPairGenerator;
.super Ljava/lang/Object;
.source "SPHINCS256KeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private treeDigest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v2, 0x400

    const/4 v7, 0x0

    .line 24
    new-instance v5, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    .line 26
    .local v5, "a":Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    const/16 v3, 0x440

    new-array v4, v3, [B

    .line 28
    .local v4, "sk":[B
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 30
    const/16 v3, 0x420

    new-array v1, v3, [B

    .line 32
    .local v1, "pk":[B
    const/16 v3, 0x20

    invoke-static {v4, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    const/16 v3, 0xb

    iput v3, v5, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 36
    iput-wide v8, v5, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 37
    iput-wide v8, v5, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 39
    new-instance v0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyPairGenerator;->treeDigest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v3}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 43
    .local v0, "hs":Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    const/4 v3, 0x5

    move-object v6, v1

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    .line 45
    new-instance v2, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    invoke-direct {v3, v1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;-><init>([B)V

    new-instance v6, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-direct {v6, v4}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;-><init>([B)V

    invoke-direct {v2, v3, v6}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 18
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 19
    check-cast p1, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyGenerationParameters;->getTreeDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256KeyPairGenerator;->treeDigest:Lorg/spongycastle/crypto/Digest;

    .line 20
    return-void
.end method
