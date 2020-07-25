.class public Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
.source "OTSHashAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder",
        "<",
        "Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private chainAddress:I

.field private hashAddress:I

.field private otsAddress:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;-><init>(I)V

    .line 31
    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->otsAddress:I

    .line 32
    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->chainAddress:I

    .line 33
    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->hashAddress:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .prologue
    .line 26
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->otsAddress:I

    return v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .prologue
    .line 26
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->chainAddress:I

    return v0
.end method

.method static synthetic access$200(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .prologue
    .line 26
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->hashAddress:I

    return v0
.end method


# virtual methods
.method protected build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$1;)V

    return-object v0
.end method

.method protected getThis()Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method protected bridge synthetic getThis()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->getThis()Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected withChainAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->chainAddress:I

    .line 49
    return-object p0
.end method

.method protected withHashAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->hashAddress:I

    .line 55
    return-object p0
.end method

.method protected withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->otsAddress:I

    .line 43
    return-object p0
.end method
