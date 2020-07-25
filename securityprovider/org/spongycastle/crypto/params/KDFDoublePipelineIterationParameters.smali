.class public final Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;
.super Ljava/lang/Object;
.source "KDFDoublePipelineIterationParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# static fields
.field private static final UNUSED_R:I = 0x20


# instance fields
.field private final fixedInputData:[B

.field private final ki:[B

.field private final r:I

.field private final useCounter:Z


# direct methods
.method private constructor <init>([B[BIZ)V
    .locals 2
    .param p1, "ki"    # [B
    .param p2, "fixedInputData"    # [B
    .param p3, "r"    # I
    .param p4, "useCounter"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A KDF requires Ki (a seed) as input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->ki:[B

    .line 31
    if-nez p2, :cond_1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->fixedInputData:[B

    .line 40
    :goto_0
    const/16 v0, 0x8

    if-eq p3, v0, :cond_2

    const/16 v0, 0x10

    if-eq p3, v0, :cond_2

    const/16 v0, 0x18

    if-eq p3, v0, :cond_2

    const/16 v0, 0x20

    if-eq p3, v0, :cond_2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->fixedInputData:[B

    goto :goto_0

    .line 44
    :cond_2
    iput p3, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->r:I

    .line 46
    iput-boolean p4, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->useCounter:Z

    .line 47
    return-void
.end method

.method public static createWithCounter([B[BI)Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;
    .locals 2
    .param p0, "ki"    # [B
    .param p1, "fixedInputData"    # [B
    .param p2, "r"    # I

    .prologue
    .line 52
    new-instance v0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;-><init>([B[BIZ)V

    return-object v0
.end method

.method public static createWithoutCounter([B[B)Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;
    .locals 3
    .param p0, "ki"    # [B
    .param p1, "fixedInputData"    # [B

    .prologue
    .line 58
    new-instance v0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;-><init>([B[BIZ)V

    return-object v0
.end method


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->fixedInputData:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->r:I

    return v0
.end method

.method public useCounter()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->useCounter:Z

    return v0
.end method
