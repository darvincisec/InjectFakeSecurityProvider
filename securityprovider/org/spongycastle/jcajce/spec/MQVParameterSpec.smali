.class public Lorg/spongycastle/jcajce/spec/MQVParameterSpec;
.super Ljava/lang/Object;
.source "MQVParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final ephemeralPrivateKey:Ljava/security/PrivateKey;

.field private final ephemeralPublicKey:Ljava/security/PublicKey;

.field private final otherPartyEphemeralKey:Ljava/security/PublicKey;

.field private final userKeyingMaterial:[B


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "ephemeralKeyPair"    # Ljava/security/KeyPair;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/PublicKey;[B)V
    .locals 2
    .param p1, "ephemeralKeyPair"    # Ljava/security/KeyPair;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .param p3, "userKeyingMaterial"    # [B

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, p1, p2, v0}, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V
    .locals 1
    .param p1, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .param p3, "userKeyingMaterial"    # [B

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "ephemeralPublicKey"    # Ljava/security/PublicKey;
    .param p2, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p3, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V
    .locals 1
    .param p1, "ephemeralPublicKey"    # Ljava/security/PublicKey;
    .param p2, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p3, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .param p4, "userKeyingMaterial"    # [B

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    .line 21
    iput-object p2, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    .line 22
    iput-object p3, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->otherPartyEphemeralKey:Ljava/security/PublicKey;

    .line 23
    invoke-static {p4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->userKeyingMaterial:[B

    .line 24
    return-void
.end method


# virtual methods
.method public getEphemeralPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getEphemeralPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getOtherPartyEphemeralKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->otherPartyEphemeralKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUserKeyingMaterial()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/MQVParameterSpec;->userKeyingMaterial:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
