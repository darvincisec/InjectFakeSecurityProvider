.class public Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
.source "LTreeAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder",
        "<",
        "Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private lTreeAddress:I

.field private treeHeight:I

.field private treeIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;-><init>(I)V

    .line 27
    iput v1, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    .line 28
    iput v1, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    .line 29
    iput v1, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    .line 33
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .prologue
    .line 24
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    return v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .prologue
    .line 24
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    return v0
.end method

.method static synthetic access$200(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .prologue
    .line 24
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    return v0
.end method


# virtual methods
.method protected build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$1;)V

    return-object v0
.end method

.method protected getThis()Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;
    .locals 0

    .prologue
    .line 57
    return-object p0
.end method

.method protected bridge synthetic getThis()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->getThis()Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 36
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    .line 37
    return-object p0
.end method

.method protected withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 41
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    .line 42
    return-object p0
.end method

.method protected withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 46
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    .line 47
    return-object p0
.end method
