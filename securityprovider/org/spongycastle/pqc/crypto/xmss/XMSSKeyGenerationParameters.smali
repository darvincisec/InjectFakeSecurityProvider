.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "XMSSKeyGenerationParameters.java"


# instance fields
.field private final xmssParameters:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "xmssParameters"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .param p2, "prng"    # Ljava/security/SecureRandom;

    .prologue
    .line 22
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;->xmssParameters:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 25
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;->xmssParameters:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method
