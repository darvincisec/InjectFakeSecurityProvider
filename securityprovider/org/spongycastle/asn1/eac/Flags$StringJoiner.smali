.class Lorg/spongycastle/asn1/eac/Flags$StringJoiner;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/eac/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringJoiner"
.end annotation


# instance fields
.field First:Z

.field b:Ljava/lang/StringBuffer;

.field mSeparator:Ljava/lang/String;

.field final synthetic this$0:Lorg/spongycastle/asn1/eac/Flags;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/eac/Flags;Ljava/lang/String;)V
    .locals 1
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->this$0:Lorg/spongycastle/asn1/eac/Flags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->First:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    .line 74
    iput-object p2, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->mSeparator:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->First:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->First:Z

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/Flags$StringJoiner;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
