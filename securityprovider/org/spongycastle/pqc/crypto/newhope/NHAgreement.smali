.class public Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;
.super Ljava/lang/Object;
.source "NHAgreement.java"


# instance fields
.field private privKey:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)[B
    .locals 4
    .param p1, "otherPublicKey"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 16
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    .line 18
    .local v0, "pubKey":Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 20
    .local v1, "sharedValue":[B
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;->privKey:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->pubData:[B

    invoke-static {v1, v2, v3}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->sharedA([B[S[B)V

    .line 22
    return-object v1
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 11
    check-cast p1, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/newhope/NHAgreement;->privKey:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    .line 12
    return-void
.end method
