.class Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
.super Ljava/lang/Object;
.source "HashFunctions.java"


# static fields
.field private static final hashc:[B


# instance fields
.field private final dig256:Lorg/spongycastle/crypto/Digest;

.field private final dig512:Lorg/spongycastle/crypto/Digest;

.field private final perm:Lorg/spongycastle/pqc/crypto/sphincs/Permute;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "expand 32-byte to 64-byte state!"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hashc:[B

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "dig256"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V

    .line 20
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "dig256"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "dig512"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/spongycastle/pqc/crypto/sphincs/Permute;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->perm:Lorg/spongycastle/pqc/crypto/sphincs/Permute;

    .line 24
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->dig256:Lorg/spongycastle/crypto/Digest;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->dig512:Lorg/spongycastle/crypto/Digest;

    .line 26
    return-void
.end method


# virtual methods
.method getMessageHash()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->dig512:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method hash_2n_n([BI[BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "in"    # [B
    .param p4, "inOff"    # I

    .prologue
    const/16 v4, 0x20

    .line 44
    const/16 v2, 0x40

    new-array v1, v2, [B

    .line 46
    .local v1, "x":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 48
    add-int v2, p4, v0

    aget-byte v2, p3, v2

    aput-byte v2, v1, v0

    .line 49
    add-int/lit8 v2, v0, 0x20

    sget-object v3, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hashc:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->perm:Lorg/spongycastle/pqc/crypto/sphincs/Permute;

    invoke-virtual {v2, v1, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->chacha_permute([B[B)V

    .line 52
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 54
    aget-byte v2, v1, v0

    add-int v3, p4, v0

    add-int/lit8 v3, v3, 0x20

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->perm:Lorg/spongycastle/pqc/crypto/sphincs/Permute;

    invoke-virtual {v2, v1, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->chacha_permute([B[B)V

    .line 57
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 59
    add-int v2, p2, v0

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 62
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method hash_2n_n_mask([BI[BI[BI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "in"    # [B
    .param p4, "inOff"    # I
    .param p5, "mask"    # [B
    .param p6, "maskOff"    # I

    .prologue
    const/16 v5, 0x40

    .line 67
    new-array v0, v5, [B

    .line 69
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 71
    add-int v3, p4, v1

    aget-byte v3, p3, v3

    add-int v4, p6, v1

    aget-byte v4, p5, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n([BI[BI)I

    move-result v2

    .line 76
    .local v2, "rv":I
    return v2
.end method

.method hash_n_n([BI[BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "in"    # [B
    .param p4, "inOff"    # I

    .prologue
    const/16 v4, 0x20

    .line 82
    const/16 v2, 0x40

    new-array v1, v2, [B

    .line 85
    .local v1, "x":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 87
    add-int v2, p4, v0

    aget-byte v2, p3, v2

    aput-byte v2, v1, v0

    .line 88
    add-int/lit8 v2, v0, 0x20

    sget-object v3, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hashc:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->perm:Lorg/spongycastle/pqc/crypto/sphincs/Permute;

    invoke-virtual {v2, v1, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->chacha_permute([B[B)V

    .line 91
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 93
    add-int v2, p2, v0

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method hash_n_n_mask([BI[BI[BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "in"    # [B
    .param p4, "inOff"    # I
    .param p5, "mask"    # [B
    .param p6, "maskOff"    # I

    .prologue
    const/16 v4, 0x20

    .line 101
    new-array v0, v4, [B

    .line 103
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 105
    add-int v2, p4, v1

    aget-byte v2, p3, v2

    add-int v3, p6, v1

    aget-byte v3, p5, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    move-result v2

    return v2
.end method

.method varlen_hash([BI[BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "in"    # [B
    .param p4, "inLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->dig256:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p3, v1, p4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 32
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->dig256:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 34
    return v1
.end method
