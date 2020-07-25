.class public Lorg/spongycastle/asn1/eac/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/asn1/eac/Flags$StringJoiner;
    }
.end annotation


# instance fields
.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    .line 19
    iput p1, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    .line 20
    return-void
.end method


# virtual methods
.method decode(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 4
    .param p1, "decodeMap"    # Ljava/util/Hashtable;

    .prologue
    .line 52
    new-instance v2, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;

    const-string v3, " "

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;-><init>(Lorg/spongycastle/asn1/eac/Flags;Ljava/lang/String;)V

    .line 53
    .local v2, "joiner":Lorg/spongycastle/asn1/eac/Flags$StringJoiner;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 54
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 57
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/asn1/eac/Flags;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1    # "i":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    return v0
.end method

.method public isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 29
    iget v0, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 24
    iget v0, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    .line 25
    return-void
.end method
