; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [347 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [688 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 13991120, ; 2: BlazorDesktop.dll => 0xd57cd0 => 0
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 265
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 299
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 143
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 341
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 212
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 283
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 283
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 137
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 303
	i32 137507131, ; 19: ShareData => 0x832313b => 342
	i32 140305987, ; 20: Pomelo.EntityFrameworkCore.MySql.dll => 0x85ce643 => 215
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 239
	i32 176265551, ; 25: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 26: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 285
	i32 184328833, ; 27: System.ValueTuple.dll => 0xafca281 => 149
	i32 195452805, ; 28: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 338
	i32 199333315, ; 29: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 339
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 237
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 259
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 38: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 178
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 242
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 145
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 261
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 258
	i32 280992041, ; 43: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 310
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 338
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 228
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 49: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 323
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 260
	i32 356389973, ; 51: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 322
	i32 360082299, ; 52: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 53: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 54: System.Transactions.Local => 0x1658bf94 => 147
	i32 375677976, ; 55: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 56: System.Threading.Thread.dll => 0x16a510e1 => 143
	i32 385762202, ; 57: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 58: System.Threading.ThreadPool.dll => 0x1766c1f7 => 144
	i32 395744057, ; 59: _Microsoft.Android.Resource.Designer => 0x17969339 => 343
	i32 403441872, ; 60: WindowsBase => 0x180c08d0 => 163
	i32 435591531, ; 61: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 334
	i32 441335492, ; 62: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 243
	i32 442565967, ; 63: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 64: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 256
	i32 451504562, ; 65: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 150
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 164
	i32 469710990, ; 69: System.dll => 0x1bff388e => 162
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 258
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 271
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 321
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 315
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 205
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 148
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 303
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 201
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 296
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 294
	i32 571435654, ; 86: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 198
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 329
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 618636221, ; 92: K4os.Compression.LZ4.Streams => 0x24dfa3bd => 175
	i32 627609679, ; 93: Xamarin.AndroidX.CustomView => 0x2568904f => 248
	i32 627931235, ; 94: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 327
	i32 639843206, ; 95: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 254
	i32 643868501, ; 96: System.Net => 0x2660a755 => 81
	i32 662205335, ; 97: System.Text.Encodings.Web.dll => 0x27787397 => 221
	i32 663517072, ; 98: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 290
	i32 666292255, ; 99: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 235
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 102: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 309
	i32 690569205, ; 103: System.Xml.Linq.dll => 0x29293ff5 => 153
	i32 691348768, ; 104: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 305
	i32 693804605, ; 105: System.Windows => 0x295a9e3d => 152
	i32 699345723, ; 106: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 107: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 300
	i32 700358131, ; 108: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 109: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 324
	i32 709557578, ; 110: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 312
	i32 715014644, ; 111: Pomelo.EntityFrameworkCore.MySql => 0x2a9e41f4 => 215
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 304
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 114: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 115: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 116: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 225
	i32 759454413, ; 117: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 118: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 119: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 120: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 333
	i32 789151979, ; 121: Microsoft.Extensions.Options => 0x2f0980eb => 204
	i32 790371945, ; 122: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 249
	i32 804008546, ; 123: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 182
	i32 804715423, ; 124: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 263
	i32 823281589, ; 126: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 127: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 128: System.Xml.XPath.dll => 0x31a103c6 => 158
	i32 834051424, ; 129: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 130: Xamarin.AndroidX.Print => 0x3246f6cd => 276
	i32 873119928, ; 131: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 132: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 133: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 134: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 135: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 136: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 336
	i32 928116545, ; 137: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 299
	i32 952186615, ; 138: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 139: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 304
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 297
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 260
	i32 975236339, ; 142: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 143: System.Xml.XDocument => 0x3a2aaa1d => 156
	i32 983077409, ; 144: MySql.Data.dll => 0x3a989221 => 213
	i32 986514023, ; 145: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 146: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 149: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 200
	i32 1001831731, ; 150: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 151: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 280
	i32 1014195527, ; 152: BlazorDesktop => 0x3c736547 => 0
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 154: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 195
	i32 1029334545, ; 155: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 311
	i32 1031528504, ; 156: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 298
	i32 1035644815, ; 157: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 233
	i32 1036536393, ; 158: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 159: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 160: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 267
	i32 1067306892, ; 161: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 162: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 163: Xamarin.Kotlin.StdLib => 0x409e66d8 => 301
	i32 1089913930, ; 164: System.Diagnostics.EventLog.dll => 0x40f6c44a => 217
	i32 1098259244, ; 165: System => 0x41761b2c => 162
	i32 1106973742, ; 166: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 192
	i32 1118262833, ; 167: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 324
	i32 1121599056, ; 168: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 266
	i32 1127624469, ; 169: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 203
	i32 1145483052, ; 170: System.Windows.Extensions.dll => 0x4446af2c => 223
	i32 1149092582, ; 171: Xamarin.AndroidX.Window => 0x447dc2e6 => 293
	i32 1157931901, ; 172: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 185
	i32 1168523401, ; 173: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 330
	i32 1170634674, ; 174: System.Web.dll => 0x45c677b2 => 151
	i32 1173126369, ; 175: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 196
	i32 1175144683, ; 176: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 289
	i32 1178241025, ; 177: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 274
	i32 1202000627, ; 178: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 185
	i32 1203215381, ; 179: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 328
	i32 1204270330, ; 180: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 235
	i32 1204575371, ; 181: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 188
	i32 1208641965, ; 182: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 183: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 184: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 326
	i32 1243150071, ; 185: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 294
	i32 1253011324, ; 186: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 187: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 310
	i32 1264511973, ; 188: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 284
	i32 1267360935, ; 189: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 288
	i32 1273260888, ; 190: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 240
	i32 1275534314, ; 191: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 305
	i32 1278448581, ; 192: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 232
	i32 1293217323, ; 193: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 251
	i32 1309188875, ; 194: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 195: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 293
	i32 1324164729, ; 196: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 197: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 198: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 199: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 340
	i32 1376866003, ; 200: Xamarin.AndroidX.SavedState => 0x52114ed3 => 280
	i32 1379779777, ; 201: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 202: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 203: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 244
	i32 1408764838, ; 204: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 205: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 206: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 207: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 308
	i32 1434145427, ; 208: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 209: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 297
	i32 1439761251, ; 210: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 211: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 212: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 213: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 197
	i32 1457743152, ; 214: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 215: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 216: es\Microsoft.Maui.Controls.resources => 0x57152abe => 314
	i32 1461234159, ; 217: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 218: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 219: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 220: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 234
	i32 1470490898, ; 221: Microsoft.Extensions.Primitives => 0x57a5e912 => 205
	i32 1479771757, ; 222: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 223: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 224: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1487250139, ; 225: K4os.Hash.xxHash => 0x58a5a2db => 176
	i32 1490025113, ; 226: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 281
	i32 1493001747, ; 227: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 318
	i32 1511525525, ; 228: MySqlConnector => 0x5a180c95 => 214
	i32 1514721132, ; 229: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 313
	i32 1521091094, ; 230: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 200
	i32 1536373174, ; 231: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 232: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 136
	i32 1543355203, ; 233: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 234: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 182
	i32 1550322496, ; 235: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 236: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 333
	i32 1565862583, ; 237: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 238: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 139
	i32 1573704789, ; 239: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 240: System.Threading.Overlapped => 0x5e2d7514 => 138
	i32 1582372066, ; 241: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 250
	i32 1592978981, ; 242: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 243: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 298
	i32 1601112923, ; 244: System.Xml.Serialization => 0x5f6f0b5b => 155
	i32 1604827217, ; 245: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 246: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 247: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 270
	i32 1622358360, ; 248: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 249: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 292
	i32 1632842087, ; 250: Microsoft.Extensions.Configuration.Json => 0x61533167 => 193
	i32 1635184631, ; 251: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 254
	i32 1636350590, ; 252: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 247
	i32 1639515021, ; 253: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 254: System.Text.RegularExpressions => 0x61c036ca => 136
	i32 1641389582, ; 255: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 256: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 181
	i32 1657153582, ; 257: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 258: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 286
	i32 1658251792, ; 259: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 295
	i32 1670060433, ; 260: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 242
	i32 1675553242, ; 261: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 262: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 263: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 264: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 265: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 184
	i32 1691477237, ; 266: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 267: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 268: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 302
	i32 1701541528, ; 269: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 270: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 263
	i32 1726116996, ; 271: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 272: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 273: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 238
	i32 1736233607, ; 274: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 331
	i32 1743415430, ; 275: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 309
	i32 1744735666, ; 276: System.Transactions.Local.dll => 0x67fe8db2 => 147
	i32 1746115085, ; 277: System.IO.Pipelines.dll => 0x68139a0d => 218
	i32 1746316138, ; 278: Mono.Android.Export => 0x6816ab6a => 167
	i32 1750313021, ; 279: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 280: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 281: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 180
	i32 1763938596, ; 282: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 283: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 284: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 285
	i32 1770582343, ; 285: Microsoft.Extensions.Logging.dll => 0x6988f147 => 201
	i32 1776026572, ; 286: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 287: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 288: Mono.Android.Runtime.dll => 0x6a216153 => 168
	i32 1782862114, ; 289: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 325
	i32 1788241197, ; 290: Xamarin.AndroidX.Fragment => 0x6a96652d => 256
	i32 1793755602, ; 291: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 317
	i32 1808609942, ; 292: Xamarin.AndroidX.Loader => 0x6bcd3296 => 270
	i32 1813058853, ; 293: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 301
	i32 1813201214, ; 294: Xamarin.Google.Android.Material => 0x6c13413e => 295
	i32 1818569960, ; 295: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 275
	i32 1818787751, ; 296: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 297: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 298: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 299: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 202
	i32 1829150748, ; 300: System.Windows.Extensions => 0x6d06a01c => 223
	i32 1842015223, ; 301: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 337
	i32 1847515442, ; 302: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 225
	i32 1853025655, ; 303: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 334
	i32 1858542181, ; 304: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 305: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 306: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 316
	i32 1879696579, ; 307: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 308: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 236
	i32 1888955245, ; 309: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 310: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 311: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 312: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 313: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1925302748, ; 314: K4os.Compression.LZ4.dll => 0x72c1c9dc => 174
	i32 1939592360, ; 315: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 316: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 317: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 282
	i32 1968388702, ; 318: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 189
	i32 1983156543, ; 319: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 302
	i32 1985761444, ; 320: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 227
	i32 2003115576, ; 321: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 313
	i32 2011961780, ; 322: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 323: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 267
	i32 2025202353, ; 324: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 308
	i32 2031763787, ; 325: Xamarin.Android.Glide => 0x791a414b => 224
	i32 2045470958, ; 326: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 327: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 191
	i32 2055257422, ; 328: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 262
	i32 2060060697, ; 329: System.Windows.dll => 0x7aca0819 => 152
	i32 2066184531, ; 330: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 312
	i32 2070888862, ; 331: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 332: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 199
	i32 2079903147, ; 333: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 334: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 335: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 336: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 337: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 160
	i32 2146852085, ; 338: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 339: Microsoft.Maui => 0x80bd55ad => 210
	i32 2169148018, ; 340: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 320
	i32 2181898931, ; 341: Microsoft.Extensions.Options.dll => 0x820d22b3 => 204
	i32 2192057212, ; 342: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 202
	i32 2193016926, ; 343: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 344: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 306
	i32 2201231467, ; 345: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 346: it\Microsoft.Maui.Controls.resources => 0x839595db => 322
	i32 2217644978, ; 347: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 289
	i32 2222056684, ; 348: System.Threading.Tasks.Parallel => 0x8471e4ec => 141
	i32 2244775296, ; 349: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 271
	i32 2252106437, ; 350: System.Xml.Serialization.dll => 0x863c6ac5 => 155
	i32 2252897993, ; 351: Microsoft.EntityFrameworkCore => 0x86487ec9 => 184
	i32 2256313426, ; 352: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 353: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 354: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 190
	i32 2267999099, ; 355: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 226
	i32 2270573516, ; 356: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 316
	i32 2279755925, ; 357: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 278
	i32 2293034957, ; 358: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 359: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 360: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 361: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 326
	i32 2305521784, ; 362: System.Private.CoreLib.dll => 0x896b7878 => 170
	i32 2315684594, ; 363: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 230
	i32 2320631194, ; 364: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 141
	i32 2340441535, ; 365: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 366: System.ValueTuple => 0x8bbaa2cd => 149
	i32 2353062107, ; 367: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 368: System.Xml.ReaderWriter.dll => 0x8d24e767 => 154
	i32 2371007202, ; 369: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 189
	i32 2378619854, ; 370: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 371: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 372: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 321
	i32 2401565422, ; 373: System.Web.HttpUtility => 0x8f24faee => 150
	i32 2403452196, ; 374: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 253
	i32 2411328690, ; 375: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 178
	i32 2421380589, ; 376: System.Threading.Tasks.Dataflow => 0x905355ed => 139
	i32 2423080555, ; 377: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 240
	i32 2427813419, ; 378: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 318
	i32 2435356389, ; 379: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 380: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 381: Microsoft.JSInterop.dll => 0x919672ca => 206
	i32 2454642406, ; 382: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 383: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 384: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 385: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 243
	i32 2471841756, ; 386: netstandard.dll => 0x93554fdc => 165
	i32 2475788418, ; 387: Java.Interop.dll => 0x93918882 => 166
	i32 2480646305, ; 388: Microsoft.Maui.Controls => 0x93dba8a1 => 208
	i32 2483903535, ; 389: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 390: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486824558, ; 391: K4os.Hash.xxHash.dll => 0x9439ee6e => 176
	i32 2490993605, ; 392: System.AppContext.dll => 0x94798bc5 => 6
	i32 2498657740, ; 393: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 171
	i32 2501346920, ; 394: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 395: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 265
	i32 2509217888, ; 396: System.Diagnostics.EventLog => 0x958fa060 => 217
	i32 2522472828, ; 397: Xamarin.Android.Glide.dll => 0x9659e17c => 224
	i32 2537015816, ; 398: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 177
	i32 2538310050, ; 399: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 400: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 319
	i32 2560495639, ; 401: ShareData.dll => 0x989e1017 => 342
	i32 2562349572, ; 402: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 403: System.Text.Encodings.Web => 0x9930ee42 => 221
	i32 2581783588, ; 404: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 266
	i32 2581819634, ; 405: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 288
	i32 2585220780, ; 406: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 407: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 408: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 179
	i32 2589602615, ; 409: System.Threading.ThreadPool => 0x9a5a3337 => 144
	i32 2592341985, ; 410: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 196
	i32 2593496499, ; 411: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 328
	i32 2605712449, ; 412: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 306
	i32 2611359322, ; 413: ZstdSharp.dll => 0x9ba62e5a => 307
	i32 2615233544, ; 414: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 257
	i32 2616218305, ; 415: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 203
	i32 2617129537, ; 416: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 417: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 418: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 247
	i32 2624644809, ; 419: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 252
	i32 2626831493, ; 420: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 323
	i32 2627185994, ; 421: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 422: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 423: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 261
	i32 2634653062, ; 424: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 186
	i32 2660759594, ; 425: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 219
	i32 2663391936, ; 426: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 226
	i32 2663698177, ; 427: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 428: System.Xml.XDocument.dll => 0x9ecf752a => 156
	i32 2665622720, ; 429: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 430: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 431: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 432: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 181
	i32 2693849962, ; 433: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 434: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 286
	i32 2715334215, ; 435: System.Threading.Tasks.dll => 0xa1d8b647 => 142
	i32 2717744543, ; 436: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 437: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 438: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 439: Xamarin.AndroidX.Activity => 0xa2e0939b => 228
	i32 2735172069, ; 440: System.Threading.Channels => 0xa30769e5 => 137
	i32 2735631878, ; 441: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 177
	i32 2737747696, ; 442: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 234
	i32 2740948882, ; 443: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 444: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 445: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 329
	i32 2758225723, ; 446: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 209
	i32 2764765095, ; 447: Microsoft.Maui.dll => 0xa4caf7a7 => 210
	i32 2765824710, ; 448: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 449: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 300
	i32 2778768386, ; 450: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 291
	i32 2779977773, ; 451: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 279
	i32 2785988530, ; 452: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 335
	i32 2788224221, ; 453: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 257
	i32 2801831435, ; 454: Microsoft.Maui.Graphics => 0xa7008e0b => 212
	i32 2803228030, ; 455: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 157
	i32 2806116107, ; 456: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 314
	i32 2810250172, ; 457: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 244
	i32 2819470561, ; 458: System.Xml.dll => 0xa80db4e1 => 161
	i32 2821205001, ; 459: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 460: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 279
	i32 2824502124, ; 461: System.Xml.XmlDocument => 0xa85a7b6c => 159
	i32 2831556043, ; 462: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 327
	i32 2833784645, ; 463: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 183
	i32 2838993487, ; 464: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 268
	i32 2841355853, ; 465: System.Security.Permissions => 0xa95ba64d => 220
	i32 2847789619, ; 466: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 186
	i32 2849599387, ; 467: System.Threading.Overlapped.dll => 0xa9d96f9b => 138
	i32 2853208004, ; 468: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 291
	i32 2855708567, ; 469: Xamarin.AndroidX.Transition => 0xaa36a797 => 287
	i32 2861098320, ; 470: Mono.Android.Export.dll => 0xaa88e550 => 167
	i32 2861189240, ; 471: Microsoft.Maui.Essentials => 0xaa8a4878 => 211
	i32 2867946736, ; 472: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 219
	i32 2870099610, ; 473: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 229
	i32 2875164099, ; 474: Jsr305Binding.dll => 0xab5f85c3 => 296
	i32 2875220617, ; 475: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 476: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 255
	i32 2887636118, ; 477: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 478: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 180
	i32 2899753641, ; 479: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 480: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 481: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 482: mscorlib.dll => 0xad2a79b6 => 164
	i32 2909740682, ; 483: System.Private.CoreLib => 0xad6f1e8a => 170
	i32 2911054922, ; 484: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 199
	i32 2916838712, ; 485: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 292
	i32 2919462931, ; 486: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 487: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 231
	i32 2936416060, ; 488: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 489: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 490: System.Xml.XPath.XDocument => 0xaf624531 => 157
	i32 2944313911, ; 491: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 216
	i32 2959614098, ; 492: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 493: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 494: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 495: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 251
	i32 2987532451, ; 496: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 282
	i32 2996846495, ; 497: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 264
	i32 3012788804, ; 498: System.Configuration.ConfigurationManager => 0xb3938244 => 216
	i32 3016983068, ; 499: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 284
	i32 3023353419, ; 500: WindowsBase.dll => 0xb434b64b => 163
	i32 3024354802, ; 501: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 259
	i32 3025069135, ; 502: K4os.Compression.LZ4.Streams.dll => 0xb44ee44f => 175
	i32 3038032645, ; 503: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 343
	i32 3056245963, ; 504: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 281
	i32 3057625584, ; 505: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 272
	i32 3059408633, ; 506: Mono.Android.Runtime => 0xb65adef9 => 168
	i32 3059793426, ; 507: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 508: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 187
	i32 3075834255, ; 509: System.Threading.Tasks => 0xb755818f => 142
	i32 3077302341, ; 510: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 320
	i32 3089219899, ; 511: ZstdSharp => 0xb821c13b => 307
	i32 3090735792, ; 512: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 513: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 514: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 515: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 516: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 517: System.Threading.Tasks.Extensions => 0xba4127cb => 140
	i32 3132293585, ; 518: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 519: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 520: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 521: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 522: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 523: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 273
	i32 3192346100, ; 524: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 525: System.Web => 0xbe592c0c => 151
	i32 3195844289, ; 526: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 187
	i32 3204380047, ; 527: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 528: System.Xml.XmlDocument.dll => 0xbf506931 => 159
	i32 3211777861, ; 529: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 250
	i32 3213246214, ; 530: System.Security.Permissions.dll => 0xbf863f06 => 220
	i32 3220365878, ; 531: System.Threading => 0xbff2e236 => 146
	i32 3226221578, ; 532: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 533: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 534: Xamarin.AndroidX.CardView => 0xc235e84d => 238
	i32 3265493905, ; 535: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 536: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 140
	i32 3277815716, ; 537: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 538: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 539: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 540: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 541: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 542: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 543: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 315
	i32 3316684772, ; 544: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 545: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 248
	i32 3317144872, ; 546: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 547: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 236
	i32 3345895724, ; 548: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 277
	i32 3346324047, ; 549: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 274
	i32 3357674450, ; 550: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 332
	i32 3358260929, ; 551: System.Text.Json => 0xc82afec1 => 222
	i32 3362336904, ; 552: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 229
	i32 3362522851, ; 553: Xamarin.AndroidX.Core => 0xc86c06e3 => 245
	i32 3366347497, ; 554: Java.Interop => 0xc8a662e9 => 166
	i32 3374999561, ; 555: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 278
	i32 3381016424, ; 556: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 311
	i32 3381033598, ; 557: K4os.Compression.LZ4 => 0xc9867a7e => 174
	i32 3395150330, ; 558: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 559: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 560: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 249
	i32 3406629867, ; 561: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 197
	i32 3421170118, ; 562: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 191
	i32 3428513518, ; 563: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 194
	i32 3429136800, ; 564: System.Xml => 0xcc6479a0 => 161
	i32 3430777524, ; 565: netstandard => 0xcc7d82b4 => 165
	i32 3441283291, ; 566: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 252
	i32 3445260447, ; 567: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 568: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 207
	i32 3463511458, ; 569: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 319
	i32 3464190856, ; 570: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 179
	i32 3467345667, ; 571: MySql.Data => 0xceab7f03 => 213
	i32 3471940407, ; 572: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 573: Mono.Android => 0xcf3163e6 => 169
	i32 3479583265, ; 574: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 332
	i32 3484440000, ; 575: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 331
	i32 3485117614, ; 576: System.Text.Json.dll => 0xcfbaacae => 222
	i32 3486566296, ; 577: System.Transactions => 0xcfd0c798 => 148
	i32 3493954962, ; 578: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 241
	i32 3499097210, ; 579: Google.Protobuf.dll => 0xd08ffc7a => 172
	i32 3500000672, ; 580: Microsoft.JSInterop => 0xd09dc5a0 => 206
	i32 3509114376, ; 581: System.Xml.Linq => 0xd128d608 => 153
	i32 3515174580, ; 582: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 583: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 584: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 585: System.Threading.Timer => 0xd432d20b => 145
	i32 3570554715, ; 586: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 587: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 339
	i32 3597029428, ; 588: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 227
	i32 3598340787, ; 589: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605570793, ; 590: BouncyCastle.Cryptography => 0xd6e8a4e9 => 171
	i32 3608519521, ; 591: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 592: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 593: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 276
	i32 3633644679, ; 594: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 231
	i32 3638274909, ; 595: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 596: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 262
	i32 3643446276, ; 597: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 336
	i32 3643854240, ; 598: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 273
	i32 3645089577, ; 599: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3645630983, ; 600: Google.Protobuf => 0xd94bea07 => 172
	i32 3657292374, ; 601: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 190
	i32 3660523487, ; 602: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 603: Mono.Android.dll => 0xdae8aa5e => 169
	i32 3682565725, ; 604: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 237
	i32 3684561358, ; 605: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 241
	i32 3697841164, ; 606: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 341
	i32 3700866549, ; 607: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 608: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 246
	i32 3716563718, ; 609: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 610: Xamarin.AndroidX.Annotation => 0xdda814c6 => 230
	i32 3722202641, ; 611: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 193
	i32 3724971120, ; 612: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 272
	i32 3732100267, ; 613: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 614: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 183
	i32 3737834244, ; 615: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 616: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 617: System.Xml.XPath => 0xdf9a7f42 => 158
	i32 3758424670, ; 618: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 192
	i32 3786282454, ; 619: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 239
	i32 3792276235, ; 620: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 621: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 207
	i32 3802395368, ; 622: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 623: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 624: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 625: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 626: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 195
	i32 3844307129, ; 627: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 628: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 629: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 630: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 631: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 632: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 633: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 287
	i32 3888767677, ; 634: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 277
	i32 3889960447, ; 635: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 340
	i32 3896106733, ; 636: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 637: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 245
	i32 3901907137, ; 638: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 639: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 640: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 290
	i32 3928044579, ; 641: System.Xml.ReaderWriter => 0xea213423 => 154
	i32 3930554604, ; 642: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 643: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 275
	i32 3945713374, ; 644: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 645: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 646: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 233
	i32 3959773229, ; 647: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 264
	i32 3980434154, ; 648: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 335
	i32 3987592930, ; 649: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 317
	i32 4003436829, ; 650: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 651: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 232
	i32 4023392905, ; 652: System.IO.Pipelines => 0xefd01a89 => 218
	i32 4025784931, ; 653: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 654: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 209
	i32 4054681211, ; 655: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 656: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 657: System.Threading.dll => 0xf2ce3c98 => 146
	i32 4079385022, ; 658: MySqlConnector.dll => 0xf32679be => 214
	i32 4094352644, ; 659: Microsoft.Maui.Essentials.dll => 0xf40add04 => 211
	i32 4099507663, ; 660: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 661: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 662: Xamarin.AndroidX.Emoji2 => 0xf479582c => 253
	i32 4101842092, ; 663: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 188
	i32 4102112229, ; 664: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 330
	i32 4125707920, ; 665: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 325
	i32 4126470640, ; 666: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 194
	i32 4127667938, ; 667: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 668: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 669: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 670: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 337
	i32 4151237749, ; 671: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 672: System.Xml.XmlSerializer => 0xf7e95c85 => 160
	i32 4161255271, ; 673: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 674: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 675: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 676: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 269
	i32 4185676441, ; 677: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 678: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 679: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 680: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 246
	i32 4258378803, ; 681: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 268
	i32 4260525087, ; 682: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 683: Microsoft.Maui.Controls.dll => 0xfea12dee => 208
	i32 4274976490, ; 684: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 685: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 269
	i32 4294648842, ; 686: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 198
	i32 4294763496 ; 687: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 255
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [688 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 0, ; 2
	i32 108, ; 3
	i32 265, ; 4
	i32 299, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 143, ; 8
	i32 30, ; 9
	i32 341, ; 10
	i32 124, ; 11
	i32 212, ; 12
	i32 102, ; 13
	i32 283, ; 14
	i32 107, ; 15
	i32 283, ; 16
	i32 137, ; 17
	i32 303, ; 18
	i32 342, ; 19
	i32 215, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 239, ; 24
	i32 132, ; 25
	i32 285, ; 26
	i32 149, ; 27
	i32 338, ; 28
	i32 339, ; 29
	i32 18, ; 30
	i32 237, ; 31
	i32 26, ; 32
	i32 259, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 178, ; 38
	i32 242, ; 39
	i32 145, ; 40
	i32 261, ; 41
	i32 258, ; 42
	i32 310, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 338, ; 46
	i32 228, ; 47
	i32 83, ; 48
	i32 323, ; 49
	i32 260, ; 50
	i32 322, ; 51
	i32 131, ; 52
	i32 55, ; 53
	i32 147, ; 54
	i32 74, ; 55
	i32 143, ; 56
	i32 62, ; 57
	i32 144, ; 58
	i32 343, ; 59
	i32 163, ; 60
	i32 334, ; 61
	i32 243, ; 62
	i32 12, ; 63
	i32 256, ; 64
	i32 125, ; 65
	i32 150, ; 66
	i32 113, ; 67
	i32 164, ; 68
	i32 162, ; 69
	i32 258, ; 70
	i32 271, ; 71
	i32 84, ; 72
	i32 321, ; 73
	i32 315, ; 74
	i32 205, ; 75
	i32 148, ; 76
	i32 303, ; 77
	i32 60, ; 78
	i32 201, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 40, ; 83
	i32 296, ; 84
	i32 294, ; 85
	i32 198, ; 86
	i32 120, ; 87
	i32 329, ; 88
	i32 52, ; 89
	i32 44, ; 90
	i32 119, ; 91
	i32 175, ; 92
	i32 248, ; 93
	i32 327, ; 94
	i32 254, ; 95
	i32 81, ; 96
	i32 221, ; 97
	i32 290, ; 98
	i32 235, ; 99
	i32 8, ; 100
	i32 73, ; 101
	i32 309, ; 102
	i32 153, ; 103
	i32 305, ; 104
	i32 152, ; 105
	i32 92, ; 106
	i32 300, ; 107
	i32 45, ; 108
	i32 324, ; 109
	i32 312, ; 110
	i32 215, ; 111
	i32 304, ; 112
	i32 109, ; 113
	i32 129, ; 114
	i32 25, ; 115
	i32 225, ; 116
	i32 72, ; 117
	i32 55, ; 118
	i32 46, ; 119
	i32 333, ; 120
	i32 204, ; 121
	i32 249, ; 122
	i32 182, ; 123
	i32 22, ; 124
	i32 263, ; 125
	i32 86, ; 126
	i32 43, ; 127
	i32 158, ; 128
	i32 71, ; 129
	i32 276, ; 130
	i32 3, ; 131
	i32 42, ; 132
	i32 63, ; 133
	i32 16, ; 134
	i32 53, ; 135
	i32 336, ; 136
	i32 299, ; 137
	i32 105, ; 138
	i32 304, ; 139
	i32 297, ; 140
	i32 260, ; 141
	i32 34, ; 142
	i32 156, ; 143
	i32 213, ; 144
	i32 85, ; 145
	i32 32, ; 146
	i32 12, ; 147
	i32 51, ; 148
	i32 200, ; 149
	i32 56, ; 150
	i32 280, ; 151
	i32 0, ; 152
	i32 36, ; 153
	i32 195, ; 154
	i32 311, ; 155
	i32 298, ; 156
	i32 233, ; 157
	i32 35, ; 158
	i32 58, ; 159
	i32 267, ; 160
	i32 173, ; 161
	i32 17, ; 162
	i32 301, ; 163
	i32 217, ; 164
	i32 162, ; 165
	i32 192, ; 166
	i32 324, ; 167
	i32 266, ; 168
	i32 203, ; 169
	i32 223, ; 170
	i32 293, ; 171
	i32 185, ; 172
	i32 330, ; 173
	i32 151, ; 174
	i32 196, ; 175
	i32 289, ; 176
	i32 274, ; 177
	i32 185, ; 178
	i32 328, ; 179
	i32 235, ; 180
	i32 188, ; 181
	i32 29, ; 182
	i32 52, ; 183
	i32 326, ; 184
	i32 294, ; 185
	i32 5, ; 186
	i32 310, ; 187
	i32 284, ; 188
	i32 288, ; 189
	i32 240, ; 190
	i32 305, ; 191
	i32 232, ; 192
	i32 251, ; 193
	i32 85, ; 194
	i32 293, ; 195
	i32 61, ; 196
	i32 112, ; 197
	i32 57, ; 198
	i32 340, ; 199
	i32 280, ; 200
	i32 99, ; 201
	i32 19, ; 202
	i32 244, ; 203
	i32 111, ; 204
	i32 101, ; 205
	i32 102, ; 206
	i32 308, ; 207
	i32 104, ; 208
	i32 297, ; 209
	i32 71, ; 210
	i32 38, ; 211
	i32 32, ; 212
	i32 197, ; 213
	i32 103, ; 214
	i32 73, ; 215
	i32 314, ; 216
	i32 9, ; 217
	i32 123, ; 218
	i32 46, ; 219
	i32 234, ; 220
	i32 205, ; 221
	i32 9, ; 222
	i32 43, ; 223
	i32 4, ; 224
	i32 176, ; 225
	i32 281, ; 226
	i32 318, ; 227
	i32 214, ; 228
	i32 313, ; 229
	i32 200, ; 230
	i32 31, ; 231
	i32 136, ; 232
	i32 92, ; 233
	i32 182, ; 234
	i32 93, ; 235
	i32 333, ; 236
	i32 49, ; 237
	i32 139, ; 238
	i32 112, ; 239
	i32 138, ; 240
	i32 250, ; 241
	i32 115, ; 242
	i32 298, ; 243
	i32 155, ; 244
	i32 76, ; 245
	i32 79, ; 246
	i32 270, ; 247
	i32 37, ; 248
	i32 292, ; 249
	i32 193, ; 250
	i32 254, ; 251
	i32 247, ; 252
	i32 64, ; 253
	i32 136, ; 254
	i32 15, ; 255
	i32 181, ; 256
	i32 116, ; 257
	i32 286, ; 258
	i32 295, ; 259
	i32 242, ; 260
	i32 48, ; 261
	i32 70, ; 262
	i32 80, ; 263
	i32 126, ; 264
	i32 184, ; 265
	i32 94, ; 266
	i32 121, ; 267
	i32 302, ; 268
	i32 26, ; 269
	i32 263, ; 270
	i32 97, ; 271
	i32 28, ; 272
	i32 238, ; 273
	i32 331, ; 274
	i32 309, ; 275
	i32 147, ; 276
	i32 218, ; 277
	i32 167, ; 278
	i32 4, ; 279
	i32 98, ; 280
	i32 180, ; 281
	i32 33, ; 282
	i32 93, ; 283
	i32 285, ; 284
	i32 201, ; 285
	i32 21, ; 286
	i32 41, ; 287
	i32 168, ; 288
	i32 325, ; 289
	i32 256, ; 290
	i32 317, ; 291
	i32 270, ; 292
	i32 301, ; 293
	i32 295, ; 294
	i32 275, ; 295
	i32 2, ; 296
	i32 134, ; 297
	i32 111, ; 298
	i32 202, ; 299
	i32 223, ; 300
	i32 337, ; 301
	i32 225, ; 302
	i32 334, ; 303
	i32 58, ; 304
	i32 95, ; 305
	i32 316, ; 306
	i32 39, ; 307
	i32 236, ; 308
	i32 25, ; 309
	i32 94, ; 310
	i32 89, ; 311
	i32 99, ; 312
	i32 10, ; 313
	i32 174, ; 314
	i32 87, ; 315
	i32 100, ; 316
	i32 282, ; 317
	i32 189, ; 318
	i32 302, ; 319
	i32 227, ; 320
	i32 313, ; 321
	i32 7, ; 322
	i32 267, ; 323
	i32 308, ; 324
	i32 224, ; 325
	i32 88, ; 326
	i32 191, ; 327
	i32 262, ; 328
	i32 152, ; 329
	i32 312, ; 330
	i32 33, ; 331
	i32 199, ; 332
	i32 116, ; 333
	i32 82, ; 334
	i32 20, ; 335
	i32 11, ; 336
	i32 160, ; 337
	i32 3, ; 338
	i32 210, ; 339
	i32 320, ; 340
	i32 204, ; 341
	i32 202, ; 342
	i32 84, ; 343
	i32 306, ; 344
	i32 64, ; 345
	i32 322, ; 346
	i32 289, ; 347
	i32 141, ; 348
	i32 271, ; 349
	i32 155, ; 350
	i32 184, ; 351
	i32 41, ; 352
	i32 117, ; 353
	i32 190, ; 354
	i32 226, ; 355
	i32 316, ; 356
	i32 278, ; 357
	i32 131, ; 358
	i32 75, ; 359
	i32 66, ; 360
	i32 326, ; 361
	i32 170, ; 362
	i32 230, ; 363
	i32 141, ; 364
	i32 106, ; 365
	i32 149, ; 366
	i32 70, ; 367
	i32 154, ; 368
	i32 189, ; 369
	i32 121, ; 370
	i32 127, ; 371
	i32 321, ; 372
	i32 150, ; 373
	i32 253, ; 374
	i32 178, ; 375
	i32 139, ; 376
	i32 240, ; 377
	i32 318, ; 378
	i32 20, ; 379
	i32 14, ; 380
	i32 206, ; 381
	i32 135, ; 382
	i32 75, ; 383
	i32 59, ; 384
	i32 243, ; 385
	i32 165, ; 386
	i32 166, ; 387
	i32 208, ; 388
	i32 15, ; 389
	i32 74, ; 390
	i32 176, ; 391
	i32 6, ; 392
	i32 171, ; 393
	i32 23, ; 394
	i32 265, ; 395
	i32 217, ; 396
	i32 224, ; 397
	i32 177, ; 398
	i32 91, ; 399
	i32 319, ; 400
	i32 342, ; 401
	i32 1, ; 402
	i32 221, ; 403
	i32 266, ; 404
	i32 288, ; 405
	i32 134, ; 406
	i32 69, ; 407
	i32 179, ; 408
	i32 144, ; 409
	i32 196, ; 410
	i32 328, ; 411
	i32 306, ; 412
	i32 307, ; 413
	i32 257, ; 414
	i32 203, ; 415
	i32 88, ; 416
	i32 96, ; 417
	i32 247, ; 418
	i32 252, ; 419
	i32 323, ; 420
	i32 31, ; 421
	i32 45, ; 422
	i32 261, ; 423
	i32 186, ; 424
	i32 219, ; 425
	i32 226, ; 426
	i32 109, ; 427
	i32 156, ; 428
	i32 35, ; 429
	i32 22, ; 430
	i32 114, ; 431
	i32 181, ; 432
	i32 57, ; 433
	i32 286, ; 434
	i32 142, ; 435
	i32 118, ; 436
	i32 120, ; 437
	i32 110, ; 438
	i32 228, ; 439
	i32 137, ; 440
	i32 177, ; 441
	i32 234, ; 442
	i32 54, ; 443
	i32 105, ; 444
	i32 329, ; 445
	i32 209, ; 446
	i32 210, ; 447
	i32 133, ; 448
	i32 300, ; 449
	i32 291, ; 450
	i32 279, ; 451
	i32 335, ; 452
	i32 257, ; 453
	i32 212, ; 454
	i32 157, ; 455
	i32 314, ; 456
	i32 244, ; 457
	i32 161, ; 458
	i32 132, ; 459
	i32 279, ; 460
	i32 159, ; 461
	i32 327, ; 462
	i32 183, ; 463
	i32 268, ; 464
	i32 220, ; 465
	i32 186, ; 466
	i32 138, ; 467
	i32 291, ; 468
	i32 287, ; 469
	i32 167, ; 470
	i32 211, ; 471
	i32 219, ; 472
	i32 229, ; 473
	i32 296, ; 474
	i32 40, ; 475
	i32 255, ; 476
	i32 81, ; 477
	i32 180, ; 478
	i32 56, ; 479
	i32 37, ; 480
	i32 97, ; 481
	i32 164, ; 482
	i32 170, ; 483
	i32 199, ; 484
	i32 292, ; 485
	i32 82, ; 486
	i32 231, ; 487
	i32 98, ; 488
	i32 30, ; 489
	i32 157, ; 490
	i32 216, ; 491
	i32 18, ; 492
	i32 127, ; 493
	i32 119, ; 494
	i32 251, ; 495
	i32 282, ; 496
	i32 264, ; 497
	i32 216, ; 498
	i32 284, ; 499
	i32 163, ; 500
	i32 259, ; 501
	i32 175, ; 502
	i32 343, ; 503
	i32 281, ; 504
	i32 272, ; 505
	i32 168, ; 506
	i32 16, ; 507
	i32 187, ; 508
	i32 142, ; 509
	i32 320, ; 510
	i32 307, ; 511
	i32 125, ; 512
	i32 118, ; 513
	i32 38, ; 514
	i32 115, ; 515
	i32 47, ; 516
	i32 140, ; 517
	i32 117, ; 518
	i32 34, ; 519
	i32 173, ; 520
	i32 95, ; 521
	i32 53, ; 522
	i32 273, ; 523
	i32 129, ; 524
	i32 151, ; 525
	i32 187, ; 526
	i32 24, ; 527
	i32 159, ; 528
	i32 250, ; 529
	i32 220, ; 530
	i32 146, ; 531
	i32 104, ; 532
	i32 89, ; 533
	i32 238, ; 534
	i32 60, ; 535
	i32 140, ; 536
	i32 100, ; 537
	i32 5, ; 538
	i32 13, ; 539
	i32 122, ; 540
	i32 135, ; 541
	i32 28, ; 542
	i32 315, ; 543
	i32 72, ; 544
	i32 248, ; 545
	i32 24, ; 546
	i32 236, ; 547
	i32 277, ; 548
	i32 274, ; 549
	i32 332, ; 550
	i32 222, ; 551
	i32 229, ; 552
	i32 245, ; 553
	i32 166, ; 554
	i32 278, ; 555
	i32 311, ; 556
	i32 174, ; 557
	i32 101, ; 558
	i32 123, ; 559
	i32 249, ; 560
	i32 197, ; 561
	i32 191, ; 562
	i32 194, ; 563
	i32 161, ; 564
	i32 165, ; 565
	i32 252, ; 566
	i32 39, ; 567
	i32 207, ; 568
	i32 319, ; 569
	i32 179, ; 570
	i32 213, ; 571
	i32 17, ; 572
	i32 169, ; 573
	i32 332, ; 574
	i32 331, ; 575
	i32 222, ; 576
	i32 148, ; 577
	i32 241, ; 578
	i32 172, ; 579
	i32 206, ; 580
	i32 153, ; 581
	i32 130, ; 582
	i32 19, ; 583
	i32 65, ; 584
	i32 145, ; 585
	i32 47, ; 586
	i32 339, ; 587
	i32 227, ; 588
	i32 79, ; 589
	i32 171, ; 590
	i32 61, ; 591
	i32 106, ; 592
	i32 276, ; 593
	i32 231, ; 594
	i32 49, ; 595
	i32 262, ; 596
	i32 336, ; 597
	i32 273, ; 598
	i32 14, ; 599
	i32 172, ; 600
	i32 190, ; 601
	i32 68, ; 602
	i32 169, ; 603
	i32 237, ; 604
	i32 241, ; 605
	i32 341, ; 606
	i32 78, ; 607
	i32 246, ; 608
	i32 108, ; 609
	i32 230, ; 610
	i32 193, ; 611
	i32 272, ; 612
	i32 67, ; 613
	i32 183, ; 614
	i32 63, ; 615
	i32 27, ; 616
	i32 158, ; 617
	i32 192, ; 618
	i32 239, ; 619
	i32 10, ; 620
	i32 207, ; 621
	i32 11, ; 622
	i32 78, ; 623
	i32 126, ; 624
	i32 83, ; 625
	i32 195, ; 626
	i32 66, ; 627
	i32 107, ; 628
	i32 65, ; 629
	i32 128, ; 630
	i32 122, ; 631
	i32 77, ; 632
	i32 287, ; 633
	i32 277, ; 634
	i32 340, ; 635
	i32 8, ; 636
	i32 245, ; 637
	i32 2, ; 638
	i32 44, ; 639
	i32 290, ; 640
	i32 154, ; 641
	i32 128, ; 642
	i32 275, ; 643
	i32 23, ; 644
	i32 133, ; 645
	i32 233, ; 646
	i32 264, ; 647
	i32 335, ; 648
	i32 317, ; 649
	i32 29, ; 650
	i32 232, ; 651
	i32 218, ; 652
	i32 62, ; 653
	i32 209, ; 654
	i32 90, ; 655
	i32 87, ; 656
	i32 146, ; 657
	i32 214, ; 658
	i32 211, ; 659
	i32 36, ; 660
	i32 86, ; 661
	i32 253, ; 662
	i32 188, ; 663
	i32 330, ; 664
	i32 325, ; 665
	i32 194, ; 666
	i32 50, ; 667
	i32 6, ; 668
	i32 90, ; 669
	i32 337, ; 670
	i32 21, ; 671
	i32 160, ; 672
	i32 96, ; 673
	i32 50, ; 674
	i32 113, ; 675
	i32 269, ; 676
	i32 130, ; 677
	i32 76, ; 678
	i32 27, ; 679
	i32 246, ; 680
	i32 268, ; 681
	i32 7, ; 682
	i32 208, ; 683
	i32 110, ; 684
	i32 269, ; 685
	i32 198, ; 686
	i32 255 ; 687
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ cdb777a0c306e3e0668f847433f82144d7ca745f"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
