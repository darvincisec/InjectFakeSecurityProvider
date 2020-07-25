.class public Lorg/spongycastle/math/ec/ECFieldElement$F2m;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field private x:Lorg/spongycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 5
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 560
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 561
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid in F2m field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 568
    iput v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 569
    new-array v0, v2, [I

    aput p2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 587
    :goto_0
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 588
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, p5}, Lorg/spongycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 589
    return-void

    .line 573
    :cond_2
    if-lt p3, p4, :cond_3

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_3
    if-gtz p3, :cond_4

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_4
    iput v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 584
    new-array v0, v4, [I

    aput p2, v0, v1

    aput p3, v0, v2

    aput p4, v0, v3

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    goto :goto_0
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 604
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 605
    return-void
.end method

.method private constructor <init>(I[ILorg/spongycastle/math/ec/LongArray;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lorg/spongycastle/math/ec/LongArray;

    .prologue
    .line 608
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 609
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 610
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 611
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 612
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 613
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 4
    .param p0, "a"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 665
    instance-of v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_1

    .line 667
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p0

    .line 671
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .local v0, "aF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    .line 672
    check-cast v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 674
    .local v1, "bF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v2, v3, :cond_2

    .line 677
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "One of the F2m field elements has incorrect representation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 680
    :cond_2
    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 682
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not elements of the same field F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 691
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/LongArray;

    .local v1, "iarrClone":Lorg/spongycastle/math/ec/LongArray;
    move-object v0, p1

    .line 692
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 693
    .local v0, "bF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 694
    new-instance v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .prologue
    .line 699
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/LongArray;->addOne()Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public bitLength()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 746
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 747
    .local v0, "bInv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 858
    if-ne p1, p0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v1

    .line 863
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v3, :cond_2

    move v1, v2

    .line 865
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 868
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 870
    .local v0, "b":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 872
    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 873
    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    const-string v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getK2()I
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getK3()I
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 791
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/math/ec/LongArray;->modInverse(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 717
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->modMultiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 722
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 727
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v1, "ax":Lorg/spongycastle/math/ec/LongArray;
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v2, "bx":Lorg/spongycastle/math/ec/LongArray;
    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p2    # "x":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v3, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v3, "xx":Lorg/spongycastle/math/ec/LongArray;
    check-cast p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p3    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v5, p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 729
    .local v5, "yx":Lorg/spongycastle/math/ec/LongArray;
    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v2, v6, v7}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    .line 730
    .local v0, "ab":Lorg/spongycastle/math/ec/LongArray;
    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v5, v6, v7}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v4

    .line 732
    .local v4, "xy":Lorg/spongycastle/math/ec/LongArray;
    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 734
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ab":Lorg/spongycastle/math/ec/LongArray;
    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    .line 737
    .restart local v0    # "ab":Lorg/spongycastle/math/ec/LongArray;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 738
    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v6, v7}, Lorg/spongycastle/math/ec/LongArray;->reduce(I[I)V

    .line 740
    new-instance v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v6, v7, v8, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v6
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .prologue
    .line 753
    return-object p0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    :cond_1
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto :goto_0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 758
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/math/ec/LongArray;->modSquare(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public squareMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 763
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 768
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v1, "ax":Lorg/spongycastle/math/ec/LongArray;
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "x":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v2, "xx":Lorg/spongycastle/math/ec/LongArray;
    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p2    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 770
    .local v4, "yx":Lorg/spongycastle/math/ec/LongArray;
    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->square(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    .line 771
    .local v0, "aa":Lorg/spongycastle/math/ec/LongArray;
    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v2, v4, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    .line 773
    .local v3, "xy":Lorg/spongycastle/math/ec/LongArray;
    if-ne v0, v1, :cond_0

    .line 775
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aa":Lorg/spongycastle/math/ec/LongArray;
    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    .line 778
    .restart local v0    # "aa":Lorg/spongycastle/math/ec/LongArray;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 779
    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->reduce(I[I)V

    .line 781
    new-instance v5, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v5, v6, v7, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v5
.end method

.method public squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "pow"    # I

    .prologue
    .line 786
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .end local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, p1, v4, v5}, Lorg/spongycastle/math/ec/LongArray;->modSquareN(II[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
