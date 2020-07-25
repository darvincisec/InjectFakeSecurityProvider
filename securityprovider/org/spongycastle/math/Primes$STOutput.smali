.class public Lorg/spongycastle/math/Primes$STOutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STOutput"
.end annotation


# instance fields
.field private prime:Ljava/math/BigInteger;

.field private primeGenCounter:I

.field private primeSeed:[B


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[BI)V
    .locals 0
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeSeed"    # [B
    .param p3, "primeGenCounter"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/spongycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    .line 82
    iput-object p2, p0, Lorg/spongycastle/math/Primes$STOutput;->primeSeed:[B

    .line 83
    iput p3, p0, Lorg/spongycastle/math/Primes$STOutput;->primeGenCounter:I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[BILorg/spongycastle/math/Primes$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/math/BigInteger;
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/spongycastle/math/Primes$1;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public getPrime()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeGenCounter()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/spongycastle/math/Primes$STOutput;->primeGenCounter:I

    return v0
.end method

.method public getPrimeSeed()[B
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/math/Primes$STOutput;->primeSeed:[B

    return-object v0
.end method
