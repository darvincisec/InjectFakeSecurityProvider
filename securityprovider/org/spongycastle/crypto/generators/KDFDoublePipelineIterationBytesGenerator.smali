.class public Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;
.super Ljava/lang/Object;
.source "KDFDoublePipelineIterationBytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private a:[B

.field private fixedInputData:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/spongycastle/crypto/Mac;

.field private useCounter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 1
    .param p1, "prf"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    .line 46
    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    .line 47
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->a:[B

    .line 48
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->k:[B

    .line 49
    return-void
.end method

.method private generateNext()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->fixedInputData:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->fixedInputData:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 141
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->a:[B

    invoke-interface {v1, v2, v4}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 151
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->a:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->a:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 153
    iget-boolean v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->useCounter:Z

    if-eqz v1, :cond_1

    .line 155
    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 158
    .local v0, "i":I
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    array-length v1, v1

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported size of counter i"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->a:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->a:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 147
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->a:[B

    invoke-interface {v1, v2, v4}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    goto :goto_0

    .line 161
    .restart local v0    # "i":I
    :pswitch_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 164
    :pswitch_1
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 167
    :pswitch_2
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 170
    :pswitch_3
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 175
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 178
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->fixedInputData:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->fixedInputData:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 179
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->k:[B

    invoke-interface {v1, v2, v4}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 180
    return-void

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 8
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    add-int v0, v5, p3

    .line 100
    .local v0, "generatedBytesAfter":I
    if-ltz v0, :cond_0

    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->maxSizeExcl:I

    if-lt v0, v5, :cond_1

    .line 102
    :cond_0
    new-instance v5, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current KDFCTR may only be used for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->maxSizeExcl:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :cond_1
    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    iget v6, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_2

    .line 108
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generateNext()V

    .line 112
    :cond_2
    move v4, p3

    .line 113
    .local v4, "toGenerate":I
    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    iget v6, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    rem-int v2, v5, v6

    .line 114
    .local v2, "posInK":I
    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    iget v6, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    iget v7, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    rem-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 115
    .local v1, "leftInK":I
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 116
    .local v3, "toCopy":I
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->k:[B

    invoke-static {v5, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    .line 118
    sub-int/2addr v4, v3

    .line 119
    add-int/2addr p2, v3

    .line 121
    :goto_0
    if-lez v4, :cond_3

    .line 123
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generateNext()V

    .line 124
    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 125
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->k:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    .line 127
    sub-int/2addr v4, v3

    .line 128
    add-int/2addr p2, v3

    goto :goto_0

    .line 131
    :cond_3
    return p3
.end method

.method public getMac()Lorg/spongycastle/crypto/Mac;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 8
    .param p1, "params"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    const v3, 0x7fffffff

    .line 53
    instance-of v4, p1, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;

    if-nez v4, :cond_0

    .line 55
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong type of arguments given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 58
    check-cast v0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;

    .line 62
    .local v0, "dpiParams":Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->getKI()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 66
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->getFixedInputData()[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->fixedInputData:[B

    .line 68
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->getR()I

    move-result v2

    .line 69
    .local v2, "r":I
    div-int/lit8 v4, v2, 0x8

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->ios:[B

    .line 71
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->useCounter()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    sget-object v4, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    iget v5, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->h:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 75
    .local v1, "maxSize":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 76
    :goto_0
    iput v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->maxSizeExcl:I

    .line 83
    .end local v1    # "maxSize":Ljava/math/BigInteger;
    :goto_1
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->useCounter()Z

    move-result v3

    iput-boolean v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->useCounter:Z

    .line 87
    const/4 v3, 0x0

    iput v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->generatedBytes:I

    .line 88
    return-void

    .line 76
    .restart local v1    # "maxSize":Ljava/math/BigInteger;
    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    goto :goto_0

    .line 80
    .end local v1    # "maxSize":Ljava/math/BigInteger;
    :cond_2
    iput v3, p0, Lorg/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator;->maxSizeExcl:I

    goto :goto_1
.end method
