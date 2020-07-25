.class public Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ObjectStoreIntegrityCheck.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field public static final PBKD_MAC_CHECK:I


# instance fields
.field private final integrityCheck:Lorg/spongycastle/asn1/ASN1Object;

.field private final type:I


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    .line 37
    invoke-static {p1}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/spongycastle/asn1/ASN1Object;

    .line 43
    return-void

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown check object in integrity check."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;)V
    .locals 0
    .param p1, "macIntegrityCheck"    # Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v1, p0, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    if-eqz v1, :cond_0

    .line 49
    check-cast p0, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .line 67
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 51
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    .line 55
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to parse integrity check details."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_2

    .line 64
    new-instance v1, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object p0, v1

    goto :goto_0

    .line 67
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIntegrityCheck()Lorg/spongycastle/asn1/ASN1Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/spongycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/spongycastle/asn1/ASN1Object;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
