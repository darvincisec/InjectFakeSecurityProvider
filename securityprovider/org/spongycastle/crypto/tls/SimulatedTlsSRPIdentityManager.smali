.class public Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;
.super Ljava/lang/Object;
.source "SimulatedTlsSRPIdentityManager.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;


# static fields
.field private static final PREFIX_PASSWORD:[B

.field private static final PREFIX_SALT:[B


# instance fields
.field protected group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

.field protected mac:Lorg/spongycastle/crypto/Mac;

.field protected verifierGenerator:Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "password"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->PREFIX_PASSWORD:[B

    .line 20
    const-string v0, "salt"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->PREFIX_SALT:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;Lorg/spongycastle/crypto/Mac;)V
    .locals 0
    .param p1, "group"    # Lorg/spongycastle/crypto/params/SRP6GroupParameters;
    .param p2, "verifierGenerator"    # Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;
    .param p3, "mac"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->verifierGenerator:Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;

    .line 48
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    .line 49
    return-void
.end method

.method public static getRFC5054Default(Lorg/spongycastle/crypto/params/SRP6GroupParameters;[B)Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;
    .locals 4
    .param p0, "group"    # Lorg/spongycastle/crypto/params/SRP6GroupParameters;
    .param p1, "seedKey"    # [B

    .prologue
    const/4 v3, 0x2

    .line 31
    new-instance v1, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;-><init>()V

    .line 32
    .local v1, "verifierGenerator":Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->init(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Lorg/spongycastle/crypto/Digest;)V

    .line 34
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 35
    .local v0, "mac":Lorg/spongycastle/crypto/macs/HMac;
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 37
    new-instance v2, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;

    invoke-direct {v2, p0, v1, v0}, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;-><init>(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;Lorg/spongycastle/crypto/Mac;)V

    return-object v2
.end method


# virtual methods
.method public getLoginParameters([B)Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;
    .locals 7
    .param p1, "identity"    # [B

    .prologue
    const/4 v6, 0x0

    .line 53
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    sget-object v4, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->PREFIX_SALT:[B

    sget-object v5, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->PREFIX_SALT:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 54
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    array-length v4, p1

    invoke-interface {v3, p1, v6, v4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 56
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v3

    new-array v1, v3, [B

    .line 57
    .local v1, "salt":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3, v1, v6}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 59
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    sget-object v4, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->PREFIX_PASSWORD:[B

    sget-object v5, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->PREFIX_PASSWORD:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 60
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    array-length v4, p1

    invoke-interface {v3, p1, v6, v4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 62
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v3

    new-array v0, v3, [B

    .line 63
    .local v0, "password":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3, v0, v6}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 65
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->verifierGenerator:Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;

    invoke-virtual {v3, v1, p1, v0}, Lorg/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator;->generateVerifier([B[B[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 67
    .local v2, "verifier":Ljava/math/BigInteger;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager;->group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-direct {v3, v4, v2, v1}, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;-><init>(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;[B)V

    return-object v3
.end method
