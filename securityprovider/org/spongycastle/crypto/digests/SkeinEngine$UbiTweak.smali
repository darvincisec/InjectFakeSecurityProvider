.class Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;
.super Ljava/lang/Object;
.source "SkeinEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UbiTweak"
.end annotation


# static fields
.field private static final LOW_RANGE:J = 0x7fffffff80000000L

.field private static final T1_FINAL:J = -0x8000000000000000L

.field private static final T1_FIRST:J = 0x4000000000000000L


# instance fields
.field private extendedPosition:Z

.field private tweak:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    .line 256
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->reset()V

    .line 257
    return-void
.end method


# virtual methods
.method public advancePosition(I)V
    .locals 14
    .param p1, "advance"    # I

    .prologue
    .line 324
    iget-boolean v6, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    if-eqz v6, :cond_2

    .line 326
    const/4 v6, 0x3

    new-array v3, v6, [J

    .line 327
    .local v3, "parts":[J
    const/4 v6, 0x0

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    aput-wide v8, v3, v6

    .line 328
    const/4 v6, 0x1

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    const/16 v7, 0x20

    ushr-long/2addr v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    aput-wide v8, v3, v6

    .line 329
    const/4 v6, 0x2

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    aput-wide v8, v3, v6

    .line 331
    int-to-long v0, p1

    .line 332
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 334
    aget-wide v6, v3, v2

    add-long/2addr v0, v6

    .line 335
    aput-wide v0, v3, v2

    .line 336
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-wide v8, v3, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    const/4 v10, 0x0

    aget-wide v10, v3, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 339
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide v10, -0x100000000L

    and-long/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v3, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 351
    .end local v0    # "carry":J
    .end local v2    # "i":I
    .end local v3    # "parts":[J
    :cond_1
    :goto_1
    return-void

    .line 343
    :cond_2
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v7, 0x0

    aget-wide v4, v6, v7

    .line 344
    .local v4, "position":J
    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 345
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    .line 346
    const-wide v6, 0x7fffffff80000000L

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 348
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    goto :goto_1
.end method

.method public getType()I
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const/16 v2, 0x38

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getWords()[J
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    return-object v0
.end method

.method public isFinal()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 315
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 298
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aput-wide v4, v0, v1

    .line 268
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aput-wide v4, v0, v2

    .line 269
    iput-boolean v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    .line 270
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->setFirst(Z)V

    .line 271
    return-void
.end method

.method public reset(Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;)V
    .locals 2
    .param p1, "tweak"    # Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    .prologue
    .line 261
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->clone([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    .line 262
    iget-boolean v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->extendedPosition:Z

    .line 263
    return-void
.end method

.method public setFinal(Z)V
    .locals 6
    .param p1, "last"    # Z

    .prologue
    const/4 v1, 0x1

    .line 303
    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x8000000000000000L

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v0, v1

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public setFirst(Z)V
    .locals 6
    .param p1, "first"    # Z

    .prologue
    const/4 v1, 0x1

    .line 286
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v0, v1

    const-wide v4, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public setType(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x1

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->tweak:[J

    aget-wide v2, v1, v8

    const-wide v4, -0x4000000000L

    and-long/2addr v2, v4

    int-to-long v4, p1

    const-wide/16 v6, 0x3f

    and-long/2addr v4, v6

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aput-wide v2, v0, v8

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->isFirst()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", final: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->isFinal()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
