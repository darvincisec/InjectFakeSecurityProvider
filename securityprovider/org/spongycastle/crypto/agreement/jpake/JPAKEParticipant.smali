.class public Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;
.super Ljava/lang/Object;
.source "JPAKEParticipant.java"


# static fields
.field public static final STATE_INITIALIZED:I = 0x0

.field public static final STATE_KEY_CALCULATED:I = 0x32

.field public static final STATE_ROUND_1_CREATED:I = 0xa

.field public static final STATE_ROUND_1_VALIDATED:I = 0x14

.field public static final STATE_ROUND_2_CREATED:I = 0x1e

.field public static final STATE_ROUND_2_VALIDATED:I = 0x28

.field public static final STATE_ROUND_3_CREATED:I = 0x3c

.field public static final STATE_ROUND_3_VALIDATED:I = 0x46


# instance fields
.field private b:Ljava/math/BigInteger;

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final g:Ljava/math/BigInteger;

.field private gx1:Ljava/math/BigInteger;

.field private gx2:Ljava/math/BigInteger;

.field private gx3:Ljava/math/BigInteger;

.field private gx4:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;

.field private partnerParticipantId:Ljava/lang/String;

.field private password:[C

.field private final q:Ljava/math/BigInteger;

.field private final random:Ljava/security/SecureRandom;

.field private state:I

.field private x1:Ljava/math/BigInteger;

.field private x2:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    .line 163
    sget-object v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroups;->NIST_3072:Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;)V
    .locals 6
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "group"    # Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;

    .prologue
    .line 191
    new-instance v4, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "group"    # Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;
    .param p4, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p5, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const-string v0, "participantId"

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string v0, "password"

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string v0, "p"

    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    const-string v0, "digest"

    invoke-static {p4, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const-string v0, "random"

    invoke-static {p5, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    array-length v0, p2

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    .line 248
    array-length v0, p2

    invoke-static {p2, v0}, Lorg/spongycastle/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    .line 250
    invoke-virtual {p3}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    .line 251
    invoke-virtual {p3}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    .line 252
    invoke-virtual {p3}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    .line 254
    iput-object p4, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    .line 255
    iput-object p5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 258
    return-void
.end method


# virtual methods
.method public calculateKeyingMaterial()Ljava/math/BigInteger;
    .locals 9

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x0

    .line 420
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v8, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key already calculated for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round2 payload must be validated prior to creating key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    invoke-static {v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateS([C)Ljava/math/BigInteger;

    move-result-object v4

    .line 435
    .local v4, "s":Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([CC)V

    .line 436
    iput-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    .line 438
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateKeyingMaterial(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 448
    .local v6, "keyingMaterial":Ljava/math/BigInteger;
    iput-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    .line 449
    iput-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    .line 450
    iput-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    .line 456
    iput v8, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 458
    return-object v6
.end method

.method public createRound1PayloadToSend()Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;
    .locals 10

    .prologue
    const/16 v9, 0xa

    .line 276
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v9, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round1 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->generateX2(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    .line 284
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    .line 285
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    .line 286
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v8

    .line 287
    .local v8, "knowledgeProofForX1":[Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v5

    .line 289
    .local v5, "knowledgeProofForX2":[Ljava/math/BigInteger;
    iput v9, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 291
    new-instance v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public createRound2PayloadToSend()Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;
    .locals 11

    .prologue
    const/16 v10, 0x1e

    .line 337
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v10, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Round2 payload already created for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Round1 payload must be validated prior to creating Round2 payload for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-static {v0, v1, v5, v6}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 346
    .local v2, "gA":Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    invoke-static {v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateS([C)Ljava/math/BigInteger;

    move-result-object v9

    .line 347
    .local v9, "s":Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v0, v1, v9}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateX2s(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 348
    .local v4, "x2s":Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v4}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 349
    .local v3, "A":Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v8

    .line 351
    .local v8, "knowledgeProofForX2s":[Ljava/math/BigInteger;
    iput v10, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 353
    new-instance v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v8}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public createRound3PayloadToSend(Ljava/math/BigInteger;)Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;
    .locals 10
    .param p1, "keyingMaterial"    # Ljava/math/BigInteger;

    .prologue
    const/16 v9, 0x3c

    .line 474
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v9, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round3 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keying material must be calculated prior to creating Round3 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v8

    .line 493
    .local v8, "macTag":Ljava/math/BigInteger;
    iput v9, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 495
    new-instance v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return v0
.end method

.method public validateRound1PayloadReceived(Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;)V
    .locals 13
    .param p1, "round1PayloadReceived"    # Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x14

    .line 307
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v12, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation already attempted for round1 payload for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getGx1()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    .line 313
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getGx2()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    .line 315
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getKnowledgeProofForX1()[Ljava/math/BigInteger;

    move-result-object v4

    .line 316
    .local v4, "knowledgeProofForX3":[Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getKnowledgeProofForX2()[Ljava/math/BigInteger;

    move-result-object v9

    .line 318
    .local v9, "knowledgeProofForX4":[Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateGx4(Ljava/math/BigInteger;)V

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;)V

    .line 321
    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static/range {v5 .. v11}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;)V

    .line 323
    iput v12, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 324
    return-void
.end method

.method public validateRound2PayloadReceived(Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;)V
    .locals 8
    .param p1, "round2PayloadReceived"    # Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x28

    .line 373
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v7, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation already attempted for round2 payload for"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Round1 payload must be validated prior to validating Round2 payload for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    invoke-static {v0, v1, v3, v5}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 382
    .local v2, "gB":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->getA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    .line 383
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->getKnowledgeProofForX2s()[Ljava/math/BigInteger;

    move-result-object v4

    .line 385
    .local v4, "knowledgeProofForX4s":[Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {v2}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateGa(Ljava/math/BigInteger;)V

    .line 388
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/spongycastle/crypto/Digest;)V

    .line 390
    iput v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 391
    return-void
.end method

.method public validateRound3PayloadReceived(Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;Ljava/math/BigInteger;)V
    .locals 11
    .param p1, "round3PayloadReceived"    # Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;
    .param p2, "keyingMaterial"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x46

    const/4 v9, 0x0

    .line 513
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    if-lt v0, v10, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation already attempted for round3 payload for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keying material must be calculated validated prior to validating Round3 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/spongycastle/crypto/Digest;

    .line 533
    invoke-virtual {p1}, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object v8

    move-object v6, p2

    .line 524
    invoke-static/range {v0 .. v8}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;)V

    .line 539
    iput-object v9, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    .line 540
    iput-object v9, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    .line 541
    iput-object v9, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    .line 542
    iput-object v9, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    .line 544
    iput v10, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 545
    return-void
.end method
