.class public Lorg/spongycastle/crypto/params/HKDFParameters;
.super Ljava/lang/Object;
.source "HKDFParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final ikm:[B

.field private final info:[B

.field private final salt:[B

.field private final skipExpand:Z


# direct methods
.method private constructor <init>([BZ[B[B)V
    .locals 2
    .param p1, "ikm"    # [B
    .param p2, "skip"    # Z
    .param p3, "salt"    # [B
    .param p4, "info"    # [B

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IKM (input keying material) should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->ikm:[B

    .line 28
    iput-boolean p2, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->skipExpand:Z

    .line 30
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_2

    .line 32
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->salt:[B

    .line 39
    :goto_0
    if-nez p4, :cond_3

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->info:[B

    .line 47
    :goto_1
    return-void

    .line 36
    :cond_2
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->salt:[B

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {p4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->info:[B

    goto :goto_1
.end method

.method public constructor <init>([B[B[B)V
    .locals 1
    .param p1, "ikm"    # [B
    .param p2, "salt"    # [B
    .param p3, "info"    # [B

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/spongycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    .line 60
    return-void
.end method

.method public static defaultParameters([B)Lorg/spongycastle/crypto/params/HKDFParameters;
    .locals 3
    .param p0, "ikm"    # [B

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Lorg/spongycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/spongycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method

.method public static skipExtractParameters([B[B)Lorg/spongycastle/crypto/params/HKDFParameters;
    .locals 3
    .param p0, "ikm"    # [B
    .param p1, "info"    # [B

    .prologue
    .line 75
    new-instance v0, Lorg/spongycastle/crypto/params/HKDFParameters;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/spongycastle/crypto/params/HKDFParameters;-><init>([BZ[B[B)V

    return-object v0
.end method


# virtual methods
.method public getIKM()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->ikm:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getInfo()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->info:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->salt:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public skipExtract()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/HKDFParameters;->skipExpand:Z

    return v0
.end method
