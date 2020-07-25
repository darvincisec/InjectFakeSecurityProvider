.class public Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TargetEtcChain.java"


# instance fields
.field private chain:Lorg/spongycastle/asn1/ASN1Sequence;

.field private pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

.field private target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 61
    .local v2, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-static {v2}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 65
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 66
    instance-of v3, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    .line 68
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 73
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 76
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1
    .param p1, "target"    # Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V
    .locals 1
    .param p1, "target"    # Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .param p2, "pathProcInput"    # Lorg/spongycastle/asn1/dvcs/PathProcInput;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1
    .param p1, "target"    # Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .param p2, "chain"    # [Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V
    .locals 1
    .param p1, "target"    # Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .param p2, "chain"    # [Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .param p3, "pathProcInput"    # Lorg/spongycastle/asn1/dvcs/PathProcInput;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    .line 49
    if-eqz p2, :cond_0

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 54
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    .line 55
    return-void
.end method

.method public static arrayFromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 3
    .param p0, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    .line 174
    .local v1, "tmp":[Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 176
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v2

    aput-object v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v1
.end method

.method private extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 84
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 85
    .local v0, "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/PathProcInput;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    .line 93
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 97
    instance-of v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    if-eqz v0, :cond_0

    .line 99
    check-cast p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    .line 106
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 101
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 106
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 113
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChain()[Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->arrayFromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPathProcInput()Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-object v0
.end method

.method public getTarget()Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, "s":Ljava/lang/StringBuffer;
    const-string v1, "TargetEtcChain {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pathProcInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_1
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
