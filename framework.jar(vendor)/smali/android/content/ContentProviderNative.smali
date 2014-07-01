.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProviderEx;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 62
    .local v0, in:Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/ContentProviderProxy;

    .end local v0           #in:Landroid/content/IContentProvider;
    invoke-direct {v0, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 372
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 46
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 367
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 83
    :pswitch_1
    :try_start_0
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 88
    .local v6, url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 89
    .local v27, num:I
    const/4 v7, 0x0

    .line 90
    .local v7, projection:[Ljava/lang/String;
    if-lez v27, :cond_0

    .line 91
    move/from16 v0, v27

    new-array v7, v0, [Ljava/lang/String;

    .line 92
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v18

    .line 92
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 98
    .end local v18           #i:I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 100
    const/4 v9, 0x0

    .line 101
    .local v9, selectionArgs:[Ljava/lang/String;
    if-lez v27, :cond_1

    .line 102
    move/from16 v0, v27

    new-array v9, v0, [Ljava/lang/String;

    .line 103
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v18

    .line 103
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 108
    .end local v18           #i:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, sortOrder:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v29

    .local v29, observer:Landroid/database/IContentObserver;
    move-object/from16 v5, p0

    .line 112
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderNative;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 113
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 114
    new-instance v11, Landroid/database/CursorToBulkCursorAdaptor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-direct {v11, v15, v0, v5}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V

    .line 116
    .local v11, adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    invoke-virtual {v11}, Landroid/database/CursorToBulkCursorAdaptor;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 117
    .local v13, binder:Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/database/CursorToBulkCursorAdaptor;->count()I

    move-result v14

    .line 118
    .local v14, count:I
    invoke-virtual {v11}, Landroid/database/CursorToBulkCursorAdaptor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/database/BulkCursorToCursorAdaptor;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v19

    .line 120
    .local v19, index:I
    invoke-virtual {v11}, Landroid/database/CursorToBulkCursorAdaptor;->getWantsAllOnMoveCalls()Z

    move-result v43

    .line 122
    .local v43, wantsAllOnMoveCalls:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    if-eqz v43, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .end local v11           #adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    .end local v13           #binder:Landroid/os/IBinder;
    .end local v14           #count:I
    .end local v19           #index:I
    .end local v43           #wantsAllOnMoveCalls:Z
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 126
    .restart local v11       #adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v13       #binder:Landroid/os/IBinder;
    .restart local v14       #count:I
    .restart local v19       #index:I
    .restart local v43       #wantsAllOnMoveCalls:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 128
    .end local v11           #adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    .end local v13           #binder:Landroid/os/IBinder;
    .end local v14           #count:I
    .end local v19           #index:I
    .end local v43           #wantsAllOnMoveCalls:Z
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 361
    .end local v6           #url:Landroid/net/Uri;
    .end local v7           #projection:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v10           #sortOrder:Ljava/lang/String;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v27           #num:I
    .end local v29           #observer:Landroid/database/IContentObserver;
    :catch_0
    move-exception v16

    .line 362
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 364
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 137
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 139
    .restart local v6       #url:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v38

    .line 140
    .local v38, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 148
    .end local v6           #url:Landroid/net/Uri;
    .end local v38           #type:Ljava/lang/String;
    :pswitch_3
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 150
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/ContentValues;

    .line 152
    .local v42, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v32

    .line 153
    .local v32, out:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 155
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 160
    .end local v6           #url:Landroid/net/Uri;
    .end local v32           #out:Landroid/net/Uri;
    .end local v42           #values:Landroid/content/ContentValues;
    :pswitch_4
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 162
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [Landroid/content/ContentValues;

    .line 164
    .local v42, values:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v14

    .line 165
    .restart local v14       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 172
    .end local v6           #url:Landroid/net/Uri;
    .end local v14           #count:I
    .end local v42           #values:[Landroid/content/ContentValues;
    :pswitch_5
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v40

    check-cast v40, [Landroid/net/Uri;

    .line 175
    .local v40, uri:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 176
    .local v22, length:I
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 177
    .local v41, userWheres:[Ljava/lang/String;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v41, v18

    .line 177
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 180
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 181
    move/from16 v0, v22

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v44, v0

    .line 182
    .local v44, whereArgs:[[Ljava/lang/String;
    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 184
    .local v37, subLength:I
    move/from16 v0, v37

    new-array v5, v0, [Ljava/lang/String;

    aput-object v5, v44, v18

    .line 185
    const/16 v21, 0x0

    .local v21, j:I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_5

    .line 186
    aget-object v5, v44, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    aput-object v45, v5, v21

    .line 185
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 182
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 188
    .end local v21           #j:I
    .end local v37           #subLength:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->bulkDelete([Landroid/net/Uri;[Ljava/lang/String;[[Ljava/lang/String;)I

    move-result v14

    .line 189
    .restart local v14       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 196
    .end local v14           #count:I
    .end local v18           #i:I
    .end local v22           #length:I
    .end local v40           #uri:[Landroid/net/Uri;
    .end local v41           #userWheres:[Ljava/lang/String;
    .end local v44           #whereArgs:[[Ljava/lang/String;
    :pswitch_6
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v40

    check-cast v40, [Landroid/net/Uri;

    .line 199
    .restart local v40       #uri:[Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/ContentValues;

    .line 201
    .local v20, initialValues:[Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 202
    .restart local v22       #length:I
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 203
    .restart local v41       #userWheres:[Ljava/lang/String;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v41, v18

    .line 203
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 207
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 208
    move/from16 v0, v22

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v44, v0

    .line 209
    .restart local v44       #whereArgs:[[Ljava/lang/String;
    const/16 v18, 0x0

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 211
    .restart local v37       #subLength:I
    move/from16 v0, v37

    new-array v5, v0, [Ljava/lang/String;

    aput-object v5, v44, v18

    .line 212
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_a
    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_8

    .line 213
    aget-object v5, v44, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    aput-object v45, v5, v21

    .line 212
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 209
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 216
    .end local v21           #j:I
    .end local v37           #subLength:I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    move-object/from16 v3, v41

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->bulkUpdate([Landroid/net/Uri;[Landroid/content/ContentValues;[Ljava/lang/String;[[Ljava/lang/String;)I

    move-result v14

    .line 217
    .restart local v14       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 224
    .end local v14           #count:I
    .end local v18           #i:I
    .end local v20           #initialValues:[Landroid/content/ContentValues;
    .end local v22           #length:I
    .end local v40           #uri:[Landroid/net/Uri;
    .end local v41           #userWheres:[Ljava/lang/String;
    .end local v44           #whereArgs:[[Ljava/lang/String;
    :pswitch_7
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->resetSequence()I

    move-result v35

    .line 226
    .local v35, ret:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 233
    .end local v35           #ret:I
    :pswitch_8
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 235
    .local v28, numOperations:I
    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v30, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_b
    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 238
    sget-object v5, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 237
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 240
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v34

    .line 241
    .local v34, results:[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 243
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 248
    .end local v18           #i:I
    .end local v28           #numOperations:I
    .end local v30           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v34           #results:[Landroid/content/ContentProviderResult;
    :pswitch_9
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 250
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 251
    .restart local v8       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 253
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/ContentProviderNative;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 255
    .restart local v14       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 262
    .end local v6           #url:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v14           #count:I
    :pswitch_a
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 264
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/ContentValues;

    .line 265
    .local v42, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 266
    .restart local v8       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 268
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1, v8, v9}, Landroid/content/ContentProviderNative;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 270
    .restart local v14       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 277
    .end local v6           #url:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v14           #count:I
    .end local v42           #values:Landroid/content/ContentValues;
    :pswitch_b
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 279
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 282
    .local v26, mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 283
    .local v17, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v17, :cond_b

    .line 285
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 291
    :goto_c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 289
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 296
    .end local v6           #url:Landroid/net/Uri;
    .end local v17           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v26           #mode:Ljava/lang/String;
    :pswitch_c
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 298
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 301
    .restart local v26       #mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v17

    .line 302
    .local v17, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v17, :cond_c

    .line 304
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 310
    :goto_d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 308
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 315
    .end local v6           #url:Landroid/net/Uri;
    .end local v17           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v26           #mode:Ljava/lang/String;
    :pswitch_d
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 318
    .local v23, method:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 319
    .local v36, stringArg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 321
    .local v12, args:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v12}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v33

    .line 323
    .local v33, responseBundle:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 325
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 330
    .end local v12           #args:Landroid/os/Bundle;
    .end local v23           #method:Ljava/lang/String;
    .end local v33           #responseBundle:Landroid/os/Bundle;
    .end local v36           #stringArg:Ljava/lang/String;
    :pswitch_e
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 332
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 333
    .local v25, mimeTypeFilter:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 334
    .local v39, types:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 337
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 342
    .end local v6           #url:Landroid/net/Uri;
    .end local v25           #mimeTypeFilter:Ljava/lang/String;
    .end local v39           #types:[Ljava/lang/String;
    :pswitch_f
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 344
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 345
    .local v24, mimeType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v31

    .line 348
    .local v31, opts:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v17

    .line 349
    .restart local v17       #fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v17, :cond_d

    .line 351
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 358
    :goto_e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 356
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
