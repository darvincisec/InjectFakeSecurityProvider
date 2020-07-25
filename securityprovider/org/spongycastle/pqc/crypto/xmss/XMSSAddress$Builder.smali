.class public abstract Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
.super Ljava/lang/Object;
.source "XMSSAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private keyAndMask:I

.field private layerAddress:I

.field private treeAddress:J

.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .local p0, "this":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->layerAddress:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->treeAddress:J

    .line 32
    iput v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->keyAndMask:I

    .line 37
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->type:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    .prologue
    .line 24
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->layerAddress:I

    return v0
.end method

.method static synthetic access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)J
    .locals 2
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->treeAddress:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    .prologue
    .line 24
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->type:I

    return v0
.end method

.method static synthetic access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    .prologue
    .line 24
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->keyAndMask:I

    return v0
.end method


# virtual methods
.method protected abstract build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
.end method

.method protected abstract getThis()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->keyAndMask:I

    .line 55
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->getThis()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->layerAddress:I

    .line 43
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->getThis()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;, "Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder<TT;>;"
    iput-wide p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->treeAddress:J

    .line 49
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;->getThis()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    return-object v0
.end method
