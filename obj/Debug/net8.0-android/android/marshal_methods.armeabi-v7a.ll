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

@assembly_image_cache = dso_local local_unnamed_addr global [400 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [794 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 13991120, ; 2: BlazorDesktop.dll => 0xd57cd0 => 0
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 4: Microsoft.Extensions.DependencyModel => 0x1903f80 => 238
	i32 32687329, ; 5: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 319
	i32 34715100, ; 6: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 353
	i32 34839235, ; 7: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 8: Newtonsoft.Json.dll => 0x254c520 => 265
	i32 39485524, ; 9: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 143
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 395
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 261
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83768722, ; 16: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 188
	i32 98325684, ; 17: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 239
	i32 101534019, ; 18: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 337
	i32 117431740, ; 19: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 20: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 337
	i32 122350210, ; 21: System.Threading.Channels.dll => 0x74aea82 => 137
	i32 134690465, ; 22: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 357
	i32 140305987, ; 23: Pomelo.EntityFrameworkCore.MySql.dll => 0x85ce643 => 267
	i32 142721839, ; 24: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 25: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 26: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 27: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 293
	i32 176265551, ; 28: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 29: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 221
	i32 179062648, ; 30: Microsoft.AspNetCore.Mvc.Razor => 0xaac4778 => 210
	i32 182336117, ; 31: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 339
	i32 184328833, ; 32: System.ValueTuple.dll => 0xafca281 => 149
	i32 195452805, ; 33: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 392
	i32 199333315, ; 34: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 393
	i32 205061960, ; 35: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 36: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 291
	i32 220171995, ; 37: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 38: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 313
	i32 230752869, ; 39: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 40: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 41: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 42: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 252019042, ; 43: Microsoft.AspNetCore.Razor.Runtime => 0xf058162 => 217
	i32 254259026, ; 44: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 182
	i32 261689757, ; 45: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 296
	i32 276479776, ; 46: System.Threading.Timer.dll => 0x107abf20 => 145
	i32 278686392, ; 47: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 315
	i32 280482487, ; 48: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 312
	i32 280992041, ; 49: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 364
	i32 291076382, ; 50: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 51: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 52: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 178
	i32 310070955, ; 53: Microsoft.AspNetCore.Mvc => 0x127b4eab => 202
	i32 317674968, ; 54: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 392
	i32 318968648, ; 55: Xamarin.AndroidX.Activity.dll => 0x13031348 => 282
	i32 321597661, ; 56: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 57: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 377
	i32 336788001, ; 58: Microsoft.AspNetCore.Antiforgery => 0x1412fa21 => 177
	i32 338324308, ; 59: Microsoft.AspNetCore.Mvc.DataAnnotations.dll => 0x142a6b54 => 207
	i32 342366114, ; 60: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 314
	i32 344827588, ; 61: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0x148da6c4 => 218
	i32 356389973, ; 62: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 376
	i32 360082299, ; 63: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 64: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 65: System.Transactions.Local => 0x1658bf94 => 147
	i32 375677976, ; 66: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 67: System.Threading.Thread.dll => 0x16a510e1 => 143
	i32 384051609, ; 68: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 219
	i32 385762202, ; 69: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 70: System.Threading.ThreadPool.dll => 0x1766c1f7 => 144
	i32 395744057, ; 71: _Microsoft.Android.Resource.Designer => 0x17969339 => 396
	i32 403441872, ; 72: WindowsBase => 0x180c08d0 => 163
	i32 435591531, ; 73: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 388
	i32 441335492, ; 74: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 297
	i32 442565967, ; 75: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 76: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 310
	i32 451504562, ; 77: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 78: System.Web.HttpUtility.dll => 0x1b317bfd => 150
	i32 459347974, ; 79: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 80: mscorlib => 0x1bc4415d => 164
	i32 469710990, ; 81: System.dll => 0x1bff388e => 162
	i32 476646585, ; 82: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 312
	i32 486930444, ; 83: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 325
	i32 490002678, ; 84: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 193
	i32 498788369, ; 85: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 86: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 375
	i32 503918385, ; 87: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 369
	i32 513247710, ; 88: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 253
	i32 526420162, ; 89: System.Transactions.dll => 0x1f6088c2 => 148
	i32 527452488, ; 90: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 357
	i32 530272170, ; 91: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 92: Microsoft.Extensions.Logging => 0x20216150 => 248
	i32 540030774, ; 93: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 94: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 95: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 96: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 97: Jsr305Binding => 0x213954e7 => 350
	i32 559063233, ; 98: Microsoft.AspNetCore.Razor.Language.dll => 0x2152a0c1 => 216
	i32 569601784, ; 99: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 348
	i32 571435654, ; 100: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 242
	i32 577335427, ; 101: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 102: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 383
	i32 601371474, ; 103: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 104: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 105: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 618636221, ; 106: K4os.Compression.LZ4.Streams => 0x24dfa3bd => 175
	i32 627609679, ; 107: Xamarin.AndroidX.CustomView => 0x2568904f => 302
	i32 627931235, ; 108: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 381
	i32 639843206, ; 109: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 308
	i32 643868501, ; 110: System.Net => 0x2660a755 => 81
	i32 662205335, ; 111: System.Text.Encodings.Web.dll => 0x27787397 => 275
	i32 663517072, ; 112: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 344
	i32 666292255, ; 113: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 289
	i32 672442732, ; 114: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 115: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 116: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 363
	i32 690569205, ; 117: System.Xml.Linq.dll => 0x29293ff5 => 153
	i32 691348768, ; 118: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 359
	i32 693804605, ; 119: System.Windows => 0x295a9e3d => 152
	i32 699345723, ; 120: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 121: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 354
	i32 700358131, ; 122: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 123: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 378
	i32 709152836, ; 124: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 271
	i32 709557578, ; 125: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 366
	i32 715014644, ; 126: Pomelo.EntityFrameworkCore.MySql => 0x2a9e41f4 => 267
	i32 720511267, ; 127: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 358
	i32 722857257, ; 128: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 724146010, ; 129: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 181
	i32 730737221, ; 130: Microsoft.AspNetCore.Mvc.Razor.dll => 0x2b8e2a45 => 210
	i32 734129105, ; 131: Microsoft.AspNetCore.Razor => 0x2bc1ebd1 => 215
	i32 735137430, ; 132: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 133: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 134: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 279
	i32 759454413, ; 135: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 136: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 137: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 138: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 387
	i32 789151979, ; 139: Microsoft.Extensions.Options => 0x2f0980eb => 252
	i32 790371945, ; 140: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 303
	i32 804008546, ; 141: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 186
	i32 804715423, ; 142: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 143: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 317
	i32 809499826, ; 144: Microsoft.AspNetCore.Mvc.ViewFeatures => 0x303ffcb2 => 214
	i32 818807279, ; 145: Microsoft.AspNetCore.Mvc.Cors.dll => 0x30ce01ef => 206
	i32 823281589, ; 146: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 147: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 148: System.Xml.XPath.dll => 0x31a103c6 => 158
	i32 834051424, ; 149: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 150: Xamarin.AndroidX.Print => 0x3246f6cd => 330
	i32 872446091, ; 151: Microsoft.AspNetCore.Razor.dll => 0x3400788b => 215
	i32 873119928, ; 152: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 153: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 154: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 155: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 156: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 157: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 390
	i32 928116545, ; 158: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 353
	i32 940221205, ; 159: Microsoft.CodeAnalysis.Razor => 0x380aa315 => 224
	i32 952186615, ; 160: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 161: Newtonsoft.Json => 0x38f24a24 => 265
	i32 956575887, ; 162: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 358
	i32 966729478, ; 163: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 351
	i32 967690846, ; 164: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 314
	i32 972467304, ; 165: Microsoft.AspNetCore.Razor.Language => 0x39f6ac68 => 216
	i32 975236339, ; 166: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 167: System.Xml.XDocument => 0x3a2aaa1d => 156
	i32 983077409, ; 168: MySql.Data.dll => 0x3a989221 => 263
	i32 986514023, ; 169: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 170: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 171: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 172: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 173: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 244
	i32 1001831731, ; 174: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1009232667, ; 175: Microsoft.AspNetCore.Html.Abstractions.dll => 0x3c27ab1b => 194
	i32 1012816738, ; 176: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 334
	i32 1014195527, ; 177: BlazorDesktop => 0x3c736547 => 0
	i32 1019214401, ; 178: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 179: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 237
	i32 1029334545, ; 180: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 365
	i32 1031528504, ; 181: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 352
	i32 1035644815, ; 182: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 287
	i32 1036536393, ; 183: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 184: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 185: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 239
	i32 1052210849, ; 186: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 321
	i32 1054642859, ; 187: Microsoft.AspNetCore.Html.Abstractions => 0x3edc92ab => 194
	i32 1067306892, ; 188: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 189: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 190: Xamarin.Kotlin.StdLib => 0x409e66d8 => 355
	i32 1089913930, ; 191: System.Diagnostics.EventLog.dll => 0x40f6c44a => 269
	i32 1098259244, ; 192: System => 0x41761b2c => 162
	i32 1099692271, ; 193: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 225
	i32 1106973742, ; 194: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 234
	i32 1110309514, ; 195: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 245
	i32 1112354281, ; 196: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 178
	i32 1118262833, ; 197: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 378
	i32 1121599056, ; 198: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 320
	i32 1127624469, ; 199: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 250
	i32 1145483052, ; 200: System.Windows.Extensions.dll => 0x4446af2c => 277
	i32 1149092582, ; 201: Xamarin.AndroidX.Window => 0x447dc2e6 => 347
	i32 1157931901, ; 202: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 227
	i32 1168523401, ; 203: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 384
	i32 1170634674, ; 204: System.Web.dll => 0x45c677b2 => 151
	i32 1173126369, ; 205: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 240
	i32 1175144683, ; 206: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 343
	i32 1178241025, ; 207: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 328
	i32 1186231468, ; 208: Newtonsoft.Json.Bson.dll => 0x46b474ac => 266
	i32 1202000627, ; 209: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 227
	i32 1203215381, ; 210: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 382
	i32 1204270330, ; 211: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 289
	i32 1204575371, ; 212: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 230
	i32 1208641965, ; 213: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 214: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 215: Microsoft.Net.Http.Headers => 0x48baad61 => 262
	i32 1224544870, ; 216: Microsoft.AspNetCore.Mvc.RazorPages.dll => 0x48fd1266 => 212
	i32 1234928153, ; 217: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 380
	i32 1236289705, ; 218: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 193
	i32 1243150071, ; 219: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 348
	i32 1253011324, ; 220: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 221: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 364
	i32 1264511973, ; 222: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 338
	i32 1266143716, ; 223: Microsoft.AspNetCore.Mvc.TagHelpers.dll => 0x4b77d1e4 => 213
	i32 1267360935, ; 224: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 342
	i32 1267908789, ; 225: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 219
	i32 1273260888, ; 226: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 294
	i32 1275534314, ; 227: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 359
	i32 1278448581, ; 228: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 286
	i32 1293217323, ; 229: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 305
	i32 1309188875, ; 230: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 231: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 347
	i32 1324164729, ; 232: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 233: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 234: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 235: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 394
	i32 1376866003, ; 236: Xamarin.AndroidX.SavedState => 0x52114ed3 => 334
	i32 1379779777, ; 237: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 238: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 239: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 298
	i32 1408764838, ; 240: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 241: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 242: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 243: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 362
	i32 1434145427, ; 244: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 245: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 351
	i32 1439761251, ; 246: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 247: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 248: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 249: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 241
	i32 1457743152, ; 250: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 251: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 252: es\Microsoft.Maui.Controls.resources => 0x57152abe => 368
	i32 1461234159, ; 253: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 254: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 255: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 256: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 288
	i32 1470490898, ; 257: Microsoft.Extensions.Primitives => 0x57a5e912 => 253
	i32 1479771757, ; 258: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 259: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 260: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1487250139, ; 261: K4os.Hash.xxHash => 0x58a5a2db => 176
	i32 1490025113, ; 262: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 335
	i32 1493001747, ; 263: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 372
	i32 1511525525, ; 264: MySqlConnector => 0x5a180c95 => 264
	i32 1514721132, ; 265: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 367
	i32 1521091094, ; 266: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 244
	i32 1527852131, ; 267: Microsoft.AspNetCore.Mvc.Localization.dll => 0x5b112c63 => 209
	i32 1536373174, ; 268: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 269: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 136
	i32 1543355203, ; 270: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 271: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 186
	i32 1550322496, ; 272: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 273: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 387
	i32 1565862583, ; 274: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 275: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 139
	i32 1566350289, ; 276: Microsoft.AspNetCore.Mvc.Cors => 0x5d5c9bd1 => 206
	i32 1573704789, ; 277: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 278: System.Threading.Overlapped => 0x5e2d7514 => 138
	i32 1582372066, ; 279: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 304
	i32 1592978981, ; 280: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 281: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 352
	i32 1601112923, ; 282: System.Xml.Serialization => 0x5f6f0b5b => 155
	i32 1604827217, ; 283: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 284: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 285: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 324
	i32 1622358360, ; 286: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 287: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 346
	i32 1625077857, ; 288: Microsoft.AspNetCore.Antiforgery.dll => 0x60dcb861 => 177
	i32 1632842087, ; 289: Microsoft.Extensions.Configuration.Json => 0x61533167 => 235
	i32 1635184631, ; 290: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 308
	i32 1636350590, ; 291: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 301
	i32 1639515021, ; 292: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 293: System.Text.RegularExpressions => 0x61c036ca => 136
	i32 1641389582, ; 294: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 295: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 185
	i32 1657153582, ; 296: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 297: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 340
	i32 1658251792, ; 298: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 349
	i32 1670060433, ; 299: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 296
	i32 1675553242, ; 300: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 301: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 302: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 303: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 304: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 226
	i32 1691477237, ; 305: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 306: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 307: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 356
	i32 1701541528, ; 308: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 309: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 317
	i32 1726116996, ; 310: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 311: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 312: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 292
	i32 1736233607, ; 313: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 385
	i32 1743415430, ; 314: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 363
	i32 1744735666, ; 315: System.Transactions.Local.dll => 0x67fe8db2 => 147
	i32 1746115085, ; 316: System.IO.Pipelines.dll => 0x68139a0d => 270
	i32 1746316138, ; 317: Mono.Android.Export => 0x6816ab6a => 167
	i32 1750313021, ; 318: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 319: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 320: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 184
	i32 1763938596, ; 321: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 322: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 323: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 339
	i32 1770582343, ; 324: Microsoft.Extensions.Logging.dll => 0x6988f147 => 248
	i32 1776026572, ; 325: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 326: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 327: Mono.Android.Runtime.dll => 0x6a216153 => 168
	i32 1782862114, ; 328: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 379
	i32 1788241197, ; 329: Xamarin.AndroidX.Fragment => 0x6a96652d => 310
	i32 1793755602, ; 330: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 371
	i32 1808609942, ; 331: Xamarin.AndroidX.Loader => 0x6bcd3296 => 324
	i32 1813058853, ; 332: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 355
	i32 1813201214, ; 333: Xamarin.Google.Android.Material => 0x6c13413e => 349
	i32 1818569960, ; 334: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 329
	i32 1818787751, ; 335: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 336: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 198
	i32 1820883333, ; 337: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 188
	i32 1824175904, ; 338: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 339: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 340: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 249
	i32 1829150748, ; 341: System.Windows.Extensions => 0x6d06a01c => 277
	i32 1842015223, ; 342: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 391
	i32 1847515442, ; 343: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 279
	i32 1853025655, ; 344: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 388
	i32 1858542181, ; 345: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 346: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 347: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 370
	i32 1879696579, ; 348: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 349: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 290
	i32 1888955245, ; 350: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 351: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1894524299, ; 352: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 225
	i32 1898237753, ; 353: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 354: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 355: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1921968366, ; 356: Microsoft.AspNetCore.Mvc.Formatters.Json => 0x728ee8ee => 208
	i32 1925302748, ; 357: K4os.Compression.LZ4.dll => 0x72c1c9dc => 174
	i32 1928288591, ; 358: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 196
	i32 1939592360, ; 359: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953680223, ; 360: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 190
	i32 1956758971, ; 361: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 362: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 336
	i32 1967298789, ; 363: Microsoft.AspNetCore.Diagnostics.Abstractions.dll => 0x754298e5 => 191
	i32 1968388702, ; 364: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 231
	i32 1983156543, ; 365: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 356
	i32 1985761444, ; 366: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 281
	i32 2003115576, ; 367: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 367
	i32 2011961780, ; 368: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 369: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 321
	i32 2025202353, ; 370: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 362
	i32 2031763787, ; 371: Xamarin.Android.Glide => 0x791a414b => 278
	i32 2045470958, ; 372: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 373: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 233
	i32 2055257422, ; 374: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 316
	i32 2060060697, ; 375: System.Windows.dll => 0x7aca0819 => 152
	i32 2066184531, ; 376: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 366
	i32 2069514766, ; 377: Newtonsoft.Json.Bson => 0x7b5a4a0e => 266
	i32 2070888862, ; 378: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 379: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 243
	i32 2075706075, ; 380: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 196
	i32 2076659885, ; 381: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 254
	i32 2079903147, ; 382: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 383: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 273
	i32 2090596640, ; 384: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2092734687, ; 385: Microsoft.AspNetCore.JsonPatch => 0x7cbc98df => 199
	i32 2113455254, ; 386: Microsoft.AspNetCore.Mvc.ApiExplorer.dll => 0x7df8c496 => 204
	i32 2120057885, ; 387: Microsoft.AspNetCore.Mvc.Formatters.Json.dll => 0x7e5d841d => 208
	i32 2127167465, ; 388: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 389: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 390: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 160
	i32 2146852085, ; 391: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 392: Microsoft.Maui => 0x80bd55ad => 259
	i32 2169148018, ; 393: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 374
	i32 2181898931, ; 394: Microsoft.Extensions.Options.dll => 0x820d22b3 => 252
	i32 2182738860, ; 395: Microsoft.AspNetCore.Mvc.Core.dll => 0x8219f3ac => 205
	i32 2192057212, ; 396: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 249
	i32 2193016926, ; 397: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 398: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 238
	i32 2201107256, ; 399: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 360
	i32 2201231467, ; 400: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 401: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 251
	i32 2207618523, ; 402: it\Microsoft.Maui.Controls.resources => 0x839595db => 376
	i32 2217644978, ; 403: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 343
	i32 2222056684, ; 404: System.Threading.Tasks.Parallel => 0x8471e4ec => 141
	i32 2242871324, ; 405: Microsoft.AspNetCore.Http.dll => 0x85af801c => 195
	i32 2244775296, ; 406: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 325
	i32 2252106437, ; 407: System.Xml.Serialization.dll => 0x863c6ac5 => 155
	i32 2252897993, ; 408: Microsoft.EntityFrameworkCore => 0x86487ec9 => 226
	i32 2256313426, ; 409: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 410: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 411: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 232
	i32 2267999099, ; 412: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 280
	i32 2270573516, ; 413: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 370
	i32 2279755925, ; 414: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 332
	i32 2285293097, ; 415: Microsoft.AspNetCore.Mvc.Abstractions => 0x8836ce29 => 203
	i32 2291847450, ; 416: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 189
	i32 2293034957, ; 417: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 418: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 419: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 420: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 380
	i32 2305521784, ; 421: System.Private.CoreLib.dll => 0x896b7878 => 170
	i32 2315684594, ; 422: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 284
	i32 2320631194, ; 423: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 141
	i32 2321784778, ; 424: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0x8a639fca => 203
	i32 2336114998, ; 425: Microsoft.AspNetCore.Mvc.Localization => 0x8b3e4936 => 209
	i32 2340441535, ; 426: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 427: System.ValueTuple => 0x8bbaa2cd => 149
	i32 2353062107, ; 428: System.Net.Primitives => 0x8c40e0db => 70
	i32 2360546104, ; 429: Microsoft.AspNetCore.Localization.dll => 0x8cb31338 => 200
	i32 2368005991, ; 430: System.Xml.ReaderWriter.dll => 0x8d24e767 => 154
	i32 2371007202, ; 431: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 231
	i32 2378619854, ; 432: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 433: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 434: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 375
	i32 2401565422, ; 435: System.Web.HttpUtility => 0x8f24faee => 150
	i32 2403452196, ; 436: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 307
	i32 2411328690, ; 437: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 182
	i32 2421380589, ; 438: System.Threading.Tasks.Dataflow => 0x905355ed => 139
	i32 2423080555, ; 439: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 294
	i32 2427245696, ; 440: Microsoft.CodeAnalysis.Razor.dll => 0x90acd480 => 224
	i32 2427813419, ; 441: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 372
	i32 2435356389, ; 442: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 443: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 444: Microsoft.JSInterop.dll => 0x919672ca => 255
	i32 2451271121, ; 445: Microsoft.AspNetCore.Mvc.RazorPages => 0x921b6dd1 => 212
	i32 2454642406, ; 446: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458592288, ; 447: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 179
	i32 2458678730, ; 448: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 449: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 450: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 297
	i32 2471841756, ; 451: netstandard.dll => 0x93554fdc => 165
	i32 2475788418, ; 452: Java.Interop.dll => 0x93918882 => 166
	i32 2480646305, ; 453: Microsoft.Maui.Controls => 0x93dba8a1 => 257
	i32 2483903535, ; 454: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 455: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486824558, ; 456: K4os.Hash.xxHash.dll => 0x9439ee6e => 176
	i32 2490993605, ; 457: System.AppContext.dll => 0x94798bc5 => 6
	i32 2498657740, ; 458: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 171
	i32 2501346920, ; 459: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 460: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 319
	i32 2509217888, ; 461: System.Diagnostics.EventLog => 0x958fa060 => 269
	i32 2522472828, ; 462: Xamarin.Android.Glide.dll => 0x9659e17c => 278
	i32 2528662365, ; 463: Microsoft.AspNetCore.JsonPatch.dll => 0x96b8535d => 199
	i32 2537015816, ; 464: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 180
	i32 2538310050, ; 465: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 466: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 373
	i32 2562349572, ; 467: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 468: System.Text.Encodings.Web => 0x9930ee42 => 275
	i32 2581783588, ; 469: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 320
	i32 2581819634, ; 470: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 342
	i32 2585220780, ; 471: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 472: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 473: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 183
	i32 2589602615, ; 474: System.Threading.ThreadPool => 0x9a5a3337 => 144
	i32 2592341985, ; 475: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 240
	i32 2593268061, ; 476: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 220
	i32 2593496499, ; 477: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 382
	i32 2594125473, ; 478: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 192
	i32 2605712449, ; 479: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 360
	i32 2611359322, ; 480: ZstdSharp.dll => 0x9ba62e5a => 361
	i32 2611529777, ; 481: Microsoft.AspNetCore.Mvc.dll => 0x9ba8c831 => 202
	i32 2615233544, ; 482: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 311
	i32 2616218305, ; 483: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 250
	i32 2617129537, ; 484: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 485: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 486: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 301
	i32 2624644809, ; 487: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 306
	i32 2626831493, ; 488: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 377
	i32 2627185994, ; 489: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 490: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 491: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 315
	i32 2633959305, ; 492: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 197
	i32 2634653062, ; 493: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 228
	i32 2660759594, ; 494: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 272
	i32 2663391936, ; 495: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 280
	i32 2663698177, ; 496: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 497: System.Xml.XDocument.dll => 0x9ecf752a => 156
	i32 2665622720, ; 498: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 499: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 500: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 501: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 185
	i32 2693849962, ; 502: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 503: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 340
	i32 2715334215, ; 504: System.Threading.Tasks.dll => 0xa1d8b647 => 142
	i32 2717744543, ; 505: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 506: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2722434549, ; 507: Microsoft.CodeAnalysis.dll => 0xa2450df5 => 222
	i32 2724373263, ; 508: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 509: Xamarin.AndroidX.Activity => 0xa2e0939b => 282
	i32 2735172069, ; 510: System.Threading.Channels => 0xa30769e5 => 137
	i32 2735631878, ; 511: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 180
	i32 2737747696, ; 512: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 288
	i32 2740948882, ; 513: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 514: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 515: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 383
	i32 2758225723, ; 516: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 258
	i32 2764765095, ; 517: Microsoft.Maui.dll => 0xa4caf7a7 => 259
	i32 2765824710, ; 518: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 519: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 354
	i32 2778768386, ; 520: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 345
	i32 2779977773, ; 521: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 333
	i32 2785988530, ; 522: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 389
	i32 2788224221, ; 523: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 311
	i32 2801831435, ; 524: Microsoft.Maui.Graphics => 0xa7008e0b => 261
	i32 2803228030, ; 525: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 157
	i32 2806116107, ; 526: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 368
	i32 2810250172, ; 527: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 298
	i32 2819470561, ; 528: System.Xml.dll => 0xa80db4e1 => 161
	i32 2821205001, ; 529: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 530: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 333
	i32 2824502124, ; 531: System.Xml.XmlDocument => 0xa85a7b6c => 159
	i32 2831556043, ; 532: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 381
	i32 2833784645, ; 533: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 201
	i32 2838993487, ; 534: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 322
	i32 2841355853, ; 535: System.Security.Permissions => 0xa95ba64d => 274
	i32 2847789619, ; 536: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 228
	i32 2849599387, ; 537: System.Threading.Overlapped.dll => 0xa9d96f9b => 138
	i32 2850549256, ; 538: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 198
	i32 2853208004, ; 539: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 345
	i32 2855708567, ; 540: Xamarin.AndroidX.Transition => 0xaa36a797 => 341
	i32 2861098320, ; 541: Mono.Android.Export.dll => 0xaa88e550 => 167
	i32 2861189240, ; 542: Microsoft.Maui.Essentials => 0xaa8a4878 => 260
	i32 2867946736, ; 543: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 272
	i32 2870099610, ; 544: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 283
	i32 2875164099, ; 545: Jsr305Binding.dll => 0xab5f85c3 => 350
	i32 2875220617, ; 546: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 547: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 309
	i32 2887636118, ; 548: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 549: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 184
	i32 2899753641, ; 550: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 551: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 552: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 553: mscorlib.dll => 0xad2a79b6 => 164
	i32 2909740682, ; 554: System.Private.CoreLib => 0xad6f1e8a => 170
	i32 2911054922, ; 555: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 243
	i32 2916838712, ; 556: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 346
	i32 2919462931, ; 557: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 558: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 285
	i32 2921417940, ; 559: System.Security.Cryptography.Xml => 0xae214cd4 => 273
	i32 2930358886, ; 560: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 190
	i32 2936416060, ; 561: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 562: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 563: System.Xml.XPath.XDocument => 0xaf624531 => 157
	i32 2944313911, ; 564: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 268
	i32 2959614098, ; 565: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 566: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 567: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 568: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 192
	i32 2978675010, ; 569: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 305
	i32 2987532451, ; 570: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 336
	i32 2996646946, ; 571: Microsoft.AspNetCore.Http => 0xb29d3422 => 195
	i32 2996846495, ; 572: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 318
	i32 3012788804, ; 573: System.Configuration.ConfigurationManager => 0xb3938244 => 268
	i32 3016983068, ; 574: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 338
	i32 3023353419, ; 575: WindowsBase.dll => 0xb434b64b => 163
	i32 3024354802, ; 576: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 313
	i32 3025069135, ; 577: K4os.Compression.LZ4.Streams.dll => 0xb44ee44f => 175
	i32 3033331042, ; 578: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 179
	i32 3036999524, ; 579: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 197
	i32 3038032645, ; 580: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 396
	i32 3050706616, ; 581: Microsoft.AspNetCore.Mvc.Razor.Extensions => 0xb5d616b8 => 211
	i32 3056245963, ; 582: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 335
	i32 3057625584, ; 583: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 326
	i32 3059408633, ; 584: Mono.Android.Runtime => 0xb65adef9 => 168
	i32 3059793426, ; 585: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 586: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 229
	i32 3075834255, ; 587: System.Threading.Tasks => 0xb755818f => 142
	i32 3077302341, ; 588: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 374
	i32 3089219899, ; 589: ZstdSharp => 0xb821c13b => 361
	i32 3090735792, ; 590: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3093090641, ; 591: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 254
	i32 3099732863, ; 592: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 593: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 594: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3113762169, ; 595: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 220
	i32 3121463068, ; 596: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 597: System.Threading.Tasks.Extensions => 0xba4127cb => 140
	i32 3132293585, ; 598: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 599: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 600: GoogleGson.dll => 0xbba64c02 => 173
	i32 3151576809, ; 601: Microsoft.AspNetCore.Mvc.Core => 0xbbd93ee9 => 205
	i32 3155681111, ; 602: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 189
	i32 3159123045, ; 603: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 604: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3162781277, ; 605: Microsoft.AspNetCore.Cors.dll => 0xbc84365d => 187
	i32 3178803400, ; 606: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 327
	i32 3192346100, ; 607: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 608: System.Web => 0xbe592c0c => 151
	i32 3195844289, ; 609: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 229
	i32 3204380047, ; 610: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 611: System.Xml.XmlDocument.dll => 0xbf506931 => 159
	i32 3211777861, ; 612: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 304
	i32 3213246214, ; 613: System.Security.Permissions.dll => 0xbf863f06 => 274
	i32 3220365878, ; 614: System.Threading => 0xbff2e236 => 146
	i32 3226221578, ; 615: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3228018376, ; 616: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xc067a6c8 => 218
	i32 3251039220, ; 617: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 618: Xamarin.AndroidX.CardView => 0xc235e84d => 292
	i32 3265493905, ; 619: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 620: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 140
	i32 3277815716, ; 621: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 622: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 623: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 624: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 625: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 626: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 221
	i32 3303498502, ; 627: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 628: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 369
	i32 3316684772, ; 629: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 630: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 302
	i32 3317144872, ; 631: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 632: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 290
	i32 3345895724, ; 633: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 331
	i32 3346324047, ; 634: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 328
	i32 3357674450, ; 635: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 386
	i32 3358260929, ; 636: System.Text.Json => 0xc82afec1 => 276
	i32 3362336904, ; 637: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 283
	i32 3362522851, ; 638: Xamarin.AndroidX.Core => 0xc86c06e3 => 299
	i32 3366347497, ; 639: Java.Interop => 0xc8a662e9 => 166
	i32 3374999561, ; 640: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 332
	i32 3381016424, ; 641: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 365
	i32 3381033598, ; 642: K4os.Compression.LZ4 => 0xc9867a7e => 174
	i32 3395150330, ; 643: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 644: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 645: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 303
	i32 3406629867, ; 646: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 241
	i32 3421170118, ; 647: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 233
	i32 3428513518, ; 648: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 236
	i32 3429136800, ; 649: System.Xml => 0xcc6479a0 => 161
	i32 3430777524, ; 650: netstandard => 0xcc7d82b4 => 165
	i32 3441283291, ; 651: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 306
	i32 3445260447, ; 652: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 653: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 256
	i32 3463511458, ; 654: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 373
	i32 3464190856, ; 655: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 183
	i32 3467345667, ; 656: MySql.Data => 0xceab7f03 => 263
	i32 3471940407, ; 657: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 658: Mono.Android => 0xcf3163e6 => 169
	i32 3479583265, ; 659: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 386
	i32 3484440000, ; 660: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 385
	i32 3485117614, ; 661: System.Text.Json.dll => 0xcfbaacae => 276
	i32 3486566296, ; 662: System.Transactions => 0xcfd0c798 => 148
	i32 3493954962, ; 663: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 295
	i32 3499097210, ; 664: Google.Protobuf.dll => 0xd08ffc7a => 172
	i32 3500000672, ; 665: Microsoft.JSInterop => 0xd09dc5a0 => 255
	i32 3509114376, ; 666: System.Xml.Linq => 0xd128d608 => 153
	i32 3515174580, ; 667: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 668: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 669: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 670: System.Threading.Timer => 0xd432d20b => 145
	i32 3570554715, ; 671: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 672: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 393
	i32 3592435036, ; 673: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 247
	i32 3597029428, ; 674: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 281
	i32 3598340787, ; 675: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605570793, ; 676: BouncyCastle.Cryptography => 0xd6e8a4e9 => 171
	i32 3608519521, ; 677: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 678: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 679: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 330
	i32 3633644679, ; 680: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 285
	i32 3638274909, ; 681: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 682: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 316
	i32 3643446276, ; 683: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 390
	i32 3643854240, ; 684: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 327
	i32 3645089577, ; 685: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3645630983, ; 686: Google.Protobuf => 0xd94bea07 => 172
	i32 3657292374, ; 687: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 232
	i32 3660523487, ; 688: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 689: Mono.Android.dll => 0xdae8aa5e => 169
	i32 3682565725, ; 690: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 291
	i32 3684561358, ; 691: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 295
	i32 3687428684, ; 692: Microsoft.AspNetCore.Localization => 0xdbc9b24c => 200
	i32 3697841164, ; 693: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 395
	i32 3700866549, ; 694: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 695: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 300
	i32 3716563718, ; 696: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 697: Xamarin.AndroidX.Annotation => 0xdda814c6 => 284
	i32 3722202641, ; 698: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 235
	i32 3724971120, ; 699: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 326
	i32 3732100267, ; 700: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 701: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 201
	i32 3737834244, ; 702: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 703: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 704: System.Xml.XPath => 0xdf9a7f42 => 158
	i32 3758424670, ; 705: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 234
	i32 3765508441, ; 706: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 251
	i32 3776403777, ; 707: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 247
	i32 3786282454, ; 708: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 293
	i32 3792276235, ; 709: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 710: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 256
	i32 3802395368, ; 711: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 712: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 271
	i32 3819260425, ; 713: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 714: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829324472, ; 715: Microsoft.AspNetCore.Mvc.Razor.Extensions.dll => 0xe43edab8 => 211
	i32 3829621856, ; 716: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 717: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 237
	i32 3844307129, ; 718: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 719: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 720: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 721: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 722: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 723: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 724: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 341
	i32 3888767677, ; 725: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 331
	i32 3889960447, ; 726: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 394
	i32 3896106733, ; 727: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 728: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 299
	i32 3898971068, ; 729: Microsoft.Extensions.Localization.dll => 0xe86593bc => 246
	i32 3901907137, ; 730: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 731: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 732: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 344
	i32 3928044579, ; 733: System.Xml.ReaderWriter => 0xea213423 => 154
	i32 3930554604, ; 734: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 735: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 329
	i32 3945713374, ; 736: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 737: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3954195687, ; 738: Microsoft.Extensions.Localization => 0xebb03ce7 => 246
	i32 3955647286, ; 739: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 287
	i32 3959773229, ; 740: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 318
	i32 3980434154, ; 741: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 389
	i32 3987592930, ; 742: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 371
	i32 4003436829, ; 743: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 744: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 286
	i32 4023392905, ; 745: System.IO.Pipelines => 0xefd01a89 => 270
	i32 4025784931, ; 746: System.Memory => 0xeff49a63 => 62
	i32 4026527876, ; 747: Microsoft.CodeAnalysis.CSharp => 0xeffff084 => 223
	i32 4029710644, ; 748: Microsoft.AspNetCore.Razor.Runtime.dll => 0xf0308134 => 217
	i32 4044155772, ; 749: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 262
	i32 4046471985, ; 750: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 258
	i32 4054681211, ; 751: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 752: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 753: System.Threading.dll => 0xf2ce3c98 => 146
	i32 4078967171, ; 754: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 245
	i32 4079385022, ; 755: MySqlConnector.dll => 0xf32679be => 264
	i32 4094352644, ; 756: Microsoft.Maui.Essentials.dll => 0xf40add04 => 260
	i32 4099507663, ; 757: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 758: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 759: Xamarin.AndroidX.Emoji2 => 0xf479582c => 307
	i32 4101842092, ; 760: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 230
	i32 4102112229, ; 761: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 384
	i32 4116094207, ; 762: Microsoft.AspNetCore.Mvc.ApiExplorer => 0xf5569cff => 204
	i32 4125707920, ; 763: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 379
	i32 4126470640, ; 764: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 236
	i32 4127667938, ; 765: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 766: System.AppContext => 0xf6318da0 => 6
	i32 4141580284, ; 767: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 181
	i32 4147896353, ; 768: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 769: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 391
	i32 4151237749, ; 770: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 771: System.Xml.XmlSerializer => 0xf7e95c85 => 160
	i32 4161255271, ; 772: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 773: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4169285646, ; 774: Microsoft.AspNetCore.Mvc.ViewFeatures.dll => 0xf882400e => 214
	i32 4180982454, ; 775: Microsoft.AspNetCore.Diagnostics.Abstractions => 0xf934bab6 => 191
	i32 4181436372, ; 776: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 777: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 323
	i32 4185676441, ; 778: System.Security => 0xf97c5a99 => 130
	i32 4196171640, ; 779: Microsoft.CodeAnalysis => 0xfa1c7f78 => 222
	i32 4196529839, ; 780: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 781: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4217598431, ; 782: Microsoft.AspNetCore.Cors => 0xfb6371df => 187
	i32 4245218886, ; 783: Microsoft.CodeAnalysis.CSharp.dll => 0xfd08e646 => 223
	i32 4256097574, ; 784: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 300
	i32 4258378803, ; 785: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 322
	i32 4258913604, ; 786: Microsoft.AspNetCore.Mvc.DataAnnotations => 0xfdd9dd44 => 207
	i32 4260525087, ; 787: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 788: Microsoft.Maui.Controls.dll => 0xfea12dee => 257
	i32 4274976490, ; 789: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4277663213, ; 790: Microsoft.AspNetCore.Mvc.TagHelpers => 0xfef7f5ed => 213
	i32 4292120959, ; 791: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 323
	i32 4294648842, ; 792: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 242
	i32 4294763496 ; 793: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 309
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [794 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 0, ; 2
	i32 108, ; 3
	i32 238, ; 4
	i32 319, ; 5
	i32 353, ; 6
	i32 48, ; 7
	i32 265, ; 8
	i32 80, ; 9
	i32 143, ; 10
	i32 30, ; 11
	i32 395, ; 12
	i32 124, ; 13
	i32 261, ; 14
	i32 102, ; 15
	i32 188, ; 16
	i32 239, ; 17
	i32 337, ; 18
	i32 107, ; 19
	i32 337, ; 20
	i32 137, ; 21
	i32 357, ; 22
	i32 267, ; 23
	i32 77, ; 24
	i32 124, ; 25
	i32 13, ; 26
	i32 293, ; 27
	i32 132, ; 28
	i32 221, ; 29
	i32 210, ; 30
	i32 339, ; 31
	i32 149, ; 32
	i32 392, ; 33
	i32 393, ; 34
	i32 18, ; 35
	i32 291, ; 36
	i32 26, ; 37
	i32 313, ; 38
	i32 1, ; 39
	i32 59, ; 40
	i32 42, ; 41
	i32 91, ; 42
	i32 217, ; 43
	i32 182, ; 44
	i32 296, ; 45
	i32 145, ; 46
	i32 315, ; 47
	i32 312, ; 48
	i32 364, ; 49
	i32 54, ; 50
	i32 69, ; 51
	i32 178, ; 52
	i32 202, ; 53
	i32 392, ; 54
	i32 282, ; 55
	i32 83, ; 56
	i32 377, ; 57
	i32 177, ; 58
	i32 207, ; 59
	i32 314, ; 60
	i32 218, ; 61
	i32 376, ; 62
	i32 131, ; 63
	i32 55, ; 64
	i32 147, ; 65
	i32 74, ; 66
	i32 143, ; 67
	i32 219, ; 68
	i32 62, ; 69
	i32 144, ; 70
	i32 396, ; 71
	i32 163, ; 72
	i32 388, ; 73
	i32 297, ; 74
	i32 12, ; 75
	i32 310, ; 76
	i32 125, ; 77
	i32 150, ; 78
	i32 113, ; 79
	i32 164, ; 80
	i32 162, ; 81
	i32 312, ; 82
	i32 325, ; 83
	i32 193, ; 84
	i32 84, ; 85
	i32 375, ; 86
	i32 369, ; 87
	i32 253, ; 88
	i32 148, ; 89
	i32 357, ; 90
	i32 60, ; 91
	i32 248, ; 92
	i32 51, ; 93
	i32 103, ; 94
	i32 114, ; 95
	i32 40, ; 96
	i32 350, ; 97
	i32 216, ; 98
	i32 348, ; 99
	i32 242, ; 100
	i32 120, ; 101
	i32 383, ; 102
	i32 52, ; 103
	i32 44, ; 104
	i32 119, ; 105
	i32 175, ; 106
	i32 302, ; 107
	i32 381, ; 108
	i32 308, ; 109
	i32 81, ; 110
	i32 275, ; 111
	i32 344, ; 112
	i32 289, ; 113
	i32 8, ; 114
	i32 73, ; 115
	i32 363, ; 116
	i32 153, ; 117
	i32 359, ; 118
	i32 152, ; 119
	i32 92, ; 120
	i32 354, ; 121
	i32 45, ; 122
	i32 378, ; 123
	i32 271, ; 124
	i32 366, ; 125
	i32 267, ; 126
	i32 358, ; 127
	i32 109, ; 128
	i32 181, ; 129
	i32 210, ; 130
	i32 215, ; 131
	i32 129, ; 132
	i32 25, ; 133
	i32 279, ; 134
	i32 72, ; 135
	i32 55, ; 136
	i32 46, ; 137
	i32 387, ; 138
	i32 252, ; 139
	i32 303, ; 140
	i32 186, ; 141
	i32 22, ; 142
	i32 317, ; 143
	i32 214, ; 144
	i32 206, ; 145
	i32 86, ; 146
	i32 43, ; 147
	i32 158, ; 148
	i32 71, ; 149
	i32 330, ; 150
	i32 215, ; 151
	i32 3, ; 152
	i32 42, ; 153
	i32 63, ; 154
	i32 16, ; 155
	i32 53, ; 156
	i32 390, ; 157
	i32 353, ; 158
	i32 224, ; 159
	i32 105, ; 160
	i32 265, ; 161
	i32 358, ; 162
	i32 351, ; 163
	i32 314, ; 164
	i32 216, ; 165
	i32 34, ; 166
	i32 156, ; 167
	i32 263, ; 168
	i32 85, ; 169
	i32 32, ; 170
	i32 12, ; 171
	i32 51, ; 172
	i32 244, ; 173
	i32 56, ; 174
	i32 194, ; 175
	i32 334, ; 176
	i32 0, ; 177
	i32 36, ; 178
	i32 237, ; 179
	i32 365, ; 180
	i32 352, ; 181
	i32 287, ; 182
	i32 35, ; 183
	i32 58, ; 184
	i32 239, ; 185
	i32 321, ; 186
	i32 194, ; 187
	i32 173, ; 188
	i32 17, ; 189
	i32 355, ; 190
	i32 269, ; 191
	i32 162, ; 192
	i32 225, ; 193
	i32 234, ; 194
	i32 245, ; 195
	i32 178, ; 196
	i32 378, ; 197
	i32 320, ; 198
	i32 250, ; 199
	i32 277, ; 200
	i32 347, ; 201
	i32 227, ; 202
	i32 384, ; 203
	i32 151, ; 204
	i32 240, ; 205
	i32 343, ; 206
	i32 328, ; 207
	i32 266, ; 208
	i32 227, ; 209
	i32 382, ; 210
	i32 289, ; 211
	i32 230, ; 212
	i32 29, ; 213
	i32 52, ; 214
	i32 262, ; 215
	i32 212, ; 216
	i32 380, ; 217
	i32 193, ; 218
	i32 348, ; 219
	i32 5, ; 220
	i32 364, ; 221
	i32 338, ; 222
	i32 213, ; 223
	i32 342, ; 224
	i32 219, ; 225
	i32 294, ; 226
	i32 359, ; 227
	i32 286, ; 228
	i32 305, ; 229
	i32 85, ; 230
	i32 347, ; 231
	i32 61, ; 232
	i32 112, ; 233
	i32 57, ; 234
	i32 394, ; 235
	i32 334, ; 236
	i32 99, ; 237
	i32 19, ; 238
	i32 298, ; 239
	i32 111, ; 240
	i32 101, ; 241
	i32 102, ; 242
	i32 362, ; 243
	i32 104, ; 244
	i32 351, ; 245
	i32 71, ; 246
	i32 38, ; 247
	i32 32, ; 248
	i32 241, ; 249
	i32 103, ; 250
	i32 73, ; 251
	i32 368, ; 252
	i32 9, ; 253
	i32 123, ; 254
	i32 46, ; 255
	i32 288, ; 256
	i32 253, ; 257
	i32 9, ; 258
	i32 43, ; 259
	i32 4, ; 260
	i32 176, ; 261
	i32 335, ; 262
	i32 372, ; 263
	i32 264, ; 264
	i32 367, ; 265
	i32 244, ; 266
	i32 209, ; 267
	i32 31, ; 268
	i32 136, ; 269
	i32 92, ; 270
	i32 186, ; 271
	i32 93, ; 272
	i32 387, ; 273
	i32 49, ; 274
	i32 139, ; 275
	i32 206, ; 276
	i32 112, ; 277
	i32 138, ; 278
	i32 304, ; 279
	i32 115, ; 280
	i32 352, ; 281
	i32 155, ; 282
	i32 76, ; 283
	i32 79, ; 284
	i32 324, ; 285
	i32 37, ; 286
	i32 346, ; 287
	i32 177, ; 288
	i32 235, ; 289
	i32 308, ; 290
	i32 301, ; 291
	i32 64, ; 292
	i32 136, ; 293
	i32 15, ; 294
	i32 185, ; 295
	i32 116, ; 296
	i32 340, ; 297
	i32 349, ; 298
	i32 296, ; 299
	i32 48, ; 300
	i32 70, ; 301
	i32 80, ; 302
	i32 126, ; 303
	i32 226, ; 304
	i32 94, ; 305
	i32 121, ; 306
	i32 356, ; 307
	i32 26, ; 308
	i32 317, ; 309
	i32 97, ; 310
	i32 28, ; 311
	i32 292, ; 312
	i32 385, ; 313
	i32 363, ; 314
	i32 147, ; 315
	i32 270, ; 316
	i32 167, ; 317
	i32 4, ; 318
	i32 98, ; 319
	i32 184, ; 320
	i32 33, ; 321
	i32 93, ; 322
	i32 339, ; 323
	i32 248, ; 324
	i32 21, ; 325
	i32 41, ; 326
	i32 168, ; 327
	i32 379, ; 328
	i32 310, ; 329
	i32 371, ; 330
	i32 324, ; 331
	i32 355, ; 332
	i32 349, ; 333
	i32 329, ; 334
	i32 2, ; 335
	i32 198, ; 336
	i32 188, ; 337
	i32 134, ; 338
	i32 111, ; 339
	i32 249, ; 340
	i32 277, ; 341
	i32 391, ; 342
	i32 279, ; 343
	i32 388, ; 344
	i32 58, ; 345
	i32 95, ; 346
	i32 370, ; 347
	i32 39, ; 348
	i32 290, ; 349
	i32 25, ; 350
	i32 94, ; 351
	i32 225, ; 352
	i32 89, ; 353
	i32 99, ; 354
	i32 10, ; 355
	i32 208, ; 356
	i32 174, ; 357
	i32 196, ; 358
	i32 87, ; 359
	i32 190, ; 360
	i32 100, ; 361
	i32 336, ; 362
	i32 191, ; 363
	i32 231, ; 364
	i32 356, ; 365
	i32 281, ; 366
	i32 367, ; 367
	i32 7, ; 368
	i32 321, ; 369
	i32 362, ; 370
	i32 278, ; 371
	i32 88, ; 372
	i32 233, ; 373
	i32 316, ; 374
	i32 152, ; 375
	i32 366, ; 376
	i32 266, ; 377
	i32 33, ; 378
	i32 243, ; 379
	i32 196, ; 380
	i32 254, ; 381
	i32 116, ; 382
	i32 273, ; 383
	i32 82, ; 384
	i32 199, ; 385
	i32 204, ; 386
	i32 208, ; 387
	i32 20, ; 388
	i32 11, ; 389
	i32 160, ; 390
	i32 3, ; 391
	i32 259, ; 392
	i32 374, ; 393
	i32 252, ; 394
	i32 205, ; 395
	i32 249, ; 396
	i32 84, ; 397
	i32 238, ; 398
	i32 360, ; 399
	i32 64, ; 400
	i32 251, ; 401
	i32 376, ; 402
	i32 343, ; 403
	i32 141, ; 404
	i32 195, ; 405
	i32 325, ; 406
	i32 155, ; 407
	i32 226, ; 408
	i32 41, ; 409
	i32 117, ; 410
	i32 232, ; 411
	i32 280, ; 412
	i32 370, ; 413
	i32 332, ; 414
	i32 203, ; 415
	i32 189, ; 416
	i32 131, ; 417
	i32 75, ; 418
	i32 66, ; 419
	i32 380, ; 420
	i32 170, ; 421
	i32 284, ; 422
	i32 141, ; 423
	i32 203, ; 424
	i32 209, ; 425
	i32 106, ; 426
	i32 149, ; 427
	i32 70, ; 428
	i32 200, ; 429
	i32 154, ; 430
	i32 231, ; 431
	i32 121, ; 432
	i32 127, ; 433
	i32 375, ; 434
	i32 150, ; 435
	i32 307, ; 436
	i32 182, ; 437
	i32 139, ; 438
	i32 294, ; 439
	i32 224, ; 440
	i32 372, ; 441
	i32 20, ; 442
	i32 14, ; 443
	i32 255, ; 444
	i32 212, ; 445
	i32 135, ; 446
	i32 179, ; 447
	i32 75, ; 448
	i32 59, ; 449
	i32 297, ; 450
	i32 165, ; 451
	i32 166, ; 452
	i32 257, ; 453
	i32 15, ; 454
	i32 74, ; 455
	i32 176, ; 456
	i32 6, ; 457
	i32 171, ; 458
	i32 23, ; 459
	i32 319, ; 460
	i32 269, ; 461
	i32 278, ; 462
	i32 199, ; 463
	i32 180, ; 464
	i32 91, ; 465
	i32 373, ; 466
	i32 1, ; 467
	i32 275, ; 468
	i32 320, ; 469
	i32 342, ; 470
	i32 134, ; 471
	i32 69, ; 472
	i32 183, ; 473
	i32 144, ; 474
	i32 240, ; 475
	i32 220, ; 476
	i32 382, ; 477
	i32 192, ; 478
	i32 360, ; 479
	i32 361, ; 480
	i32 202, ; 481
	i32 311, ; 482
	i32 250, ; 483
	i32 88, ; 484
	i32 96, ; 485
	i32 301, ; 486
	i32 306, ; 487
	i32 377, ; 488
	i32 31, ; 489
	i32 45, ; 490
	i32 315, ; 491
	i32 197, ; 492
	i32 228, ; 493
	i32 272, ; 494
	i32 280, ; 495
	i32 109, ; 496
	i32 156, ; 497
	i32 35, ; 498
	i32 22, ; 499
	i32 114, ; 500
	i32 185, ; 501
	i32 57, ; 502
	i32 340, ; 503
	i32 142, ; 504
	i32 118, ; 505
	i32 120, ; 506
	i32 222, ; 507
	i32 110, ; 508
	i32 282, ; 509
	i32 137, ; 510
	i32 180, ; 511
	i32 288, ; 512
	i32 54, ; 513
	i32 105, ; 514
	i32 383, ; 515
	i32 258, ; 516
	i32 259, ; 517
	i32 133, ; 518
	i32 354, ; 519
	i32 345, ; 520
	i32 333, ; 521
	i32 389, ; 522
	i32 311, ; 523
	i32 261, ; 524
	i32 157, ; 525
	i32 368, ; 526
	i32 298, ; 527
	i32 161, ; 528
	i32 132, ; 529
	i32 333, ; 530
	i32 159, ; 531
	i32 381, ; 532
	i32 201, ; 533
	i32 322, ; 534
	i32 274, ; 535
	i32 228, ; 536
	i32 138, ; 537
	i32 198, ; 538
	i32 345, ; 539
	i32 341, ; 540
	i32 167, ; 541
	i32 260, ; 542
	i32 272, ; 543
	i32 283, ; 544
	i32 350, ; 545
	i32 40, ; 546
	i32 309, ; 547
	i32 81, ; 548
	i32 184, ; 549
	i32 56, ; 550
	i32 37, ; 551
	i32 97, ; 552
	i32 164, ; 553
	i32 170, ; 554
	i32 243, ; 555
	i32 346, ; 556
	i32 82, ; 557
	i32 285, ; 558
	i32 273, ; 559
	i32 190, ; 560
	i32 98, ; 561
	i32 30, ; 562
	i32 157, ; 563
	i32 268, ; 564
	i32 18, ; 565
	i32 127, ; 566
	i32 119, ; 567
	i32 192, ; 568
	i32 305, ; 569
	i32 336, ; 570
	i32 195, ; 571
	i32 318, ; 572
	i32 268, ; 573
	i32 338, ; 574
	i32 163, ; 575
	i32 313, ; 576
	i32 175, ; 577
	i32 179, ; 578
	i32 197, ; 579
	i32 396, ; 580
	i32 211, ; 581
	i32 335, ; 582
	i32 326, ; 583
	i32 168, ; 584
	i32 16, ; 585
	i32 229, ; 586
	i32 142, ; 587
	i32 374, ; 588
	i32 361, ; 589
	i32 125, ; 590
	i32 254, ; 591
	i32 118, ; 592
	i32 38, ; 593
	i32 115, ; 594
	i32 220, ; 595
	i32 47, ; 596
	i32 140, ; 597
	i32 117, ; 598
	i32 34, ; 599
	i32 173, ; 600
	i32 205, ; 601
	i32 189, ; 602
	i32 95, ; 603
	i32 53, ; 604
	i32 187, ; 605
	i32 327, ; 606
	i32 129, ; 607
	i32 151, ; 608
	i32 229, ; 609
	i32 24, ; 610
	i32 159, ; 611
	i32 304, ; 612
	i32 274, ; 613
	i32 146, ; 614
	i32 104, ; 615
	i32 218, ; 616
	i32 89, ; 617
	i32 292, ; 618
	i32 60, ; 619
	i32 140, ; 620
	i32 100, ; 621
	i32 5, ; 622
	i32 13, ; 623
	i32 122, ; 624
	i32 135, ; 625
	i32 221, ; 626
	i32 28, ; 627
	i32 369, ; 628
	i32 72, ; 629
	i32 302, ; 630
	i32 24, ; 631
	i32 290, ; 632
	i32 331, ; 633
	i32 328, ; 634
	i32 386, ; 635
	i32 276, ; 636
	i32 283, ; 637
	i32 299, ; 638
	i32 166, ; 639
	i32 332, ; 640
	i32 365, ; 641
	i32 174, ; 642
	i32 101, ; 643
	i32 123, ; 644
	i32 303, ; 645
	i32 241, ; 646
	i32 233, ; 647
	i32 236, ; 648
	i32 161, ; 649
	i32 165, ; 650
	i32 306, ; 651
	i32 39, ; 652
	i32 256, ; 653
	i32 373, ; 654
	i32 183, ; 655
	i32 263, ; 656
	i32 17, ; 657
	i32 169, ; 658
	i32 386, ; 659
	i32 385, ; 660
	i32 276, ; 661
	i32 148, ; 662
	i32 295, ; 663
	i32 172, ; 664
	i32 255, ; 665
	i32 153, ; 666
	i32 130, ; 667
	i32 19, ; 668
	i32 65, ; 669
	i32 145, ; 670
	i32 47, ; 671
	i32 393, ; 672
	i32 247, ; 673
	i32 281, ; 674
	i32 79, ; 675
	i32 171, ; 676
	i32 61, ; 677
	i32 106, ; 678
	i32 330, ; 679
	i32 285, ; 680
	i32 49, ; 681
	i32 316, ; 682
	i32 390, ; 683
	i32 327, ; 684
	i32 14, ; 685
	i32 172, ; 686
	i32 232, ; 687
	i32 68, ; 688
	i32 169, ; 689
	i32 291, ; 690
	i32 295, ; 691
	i32 200, ; 692
	i32 395, ; 693
	i32 78, ; 694
	i32 300, ; 695
	i32 108, ; 696
	i32 284, ; 697
	i32 235, ; 698
	i32 326, ; 699
	i32 67, ; 700
	i32 201, ; 701
	i32 63, ; 702
	i32 27, ; 703
	i32 158, ; 704
	i32 234, ; 705
	i32 251, ; 706
	i32 247, ; 707
	i32 293, ; 708
	i32 10, ; 709
	i32 256, ; 710
	i32 11, ; 711
	i32 271, ; 712
	i32 78, ; 713
	i32 126, ; 714
	i32 211, ; 715
	i32 83, ; 716
	i32 237, ; 717
	i32 66, ; 718
	i32 107, ; 719
	i32 65, ; 720
	i32 128, ; 721
	i32 122, ; 722
	i32 77, ; 723
	i32 341, ; 724
	i32 331, ; 725
	i32 394, ; 726
	i32 8, ; 727
	i32 299, ; 728
	i32 246, ; 729
	i32 2, ; 730
	i32 44, ; 731
	i32 344, ; 732
	i32 154, ; 733
	i32 128, ; 734
	i32 329, ; 735
	i32 23, ; 736
	i32 133, ; 737
	i32 246, ; 738
	i32 287, ; 739
	i32 318, ; 740
	i32 389, ; 741
	i32 371, ; 742
	i32 29, ; 743
	i32 286, ; 744
	i32 270, ; 745
	i32 62, ; 746
	i32 223, ; 747
	i32 217, ; 748
	i32 262, ; 749
	i32 258, ; 750
	i32 90, ; 751
	i32 87, ; 752
	i32 146, ; 753
	i32 245, ; 754
	i32 264, ; 755
	i32 260, ; 756
	i32 36, ; 757
	i32 86, ; 758
	i32 307, ; 759
	i32 230, ; 760
	i32 384, ; 761
	i32 204, ; 762
	i32 379, ; 763
	i32 236, ; 764
	i32 50, ; 765
	i32 6, ; 766
	i32 181, ; 767
	i32 90, ; 768
	i32 391, ; 769
	i32 21, ; 770
	i32 160, ; 771
	i32 96, ; 772
	i32 50, ; 773
	i32 214, ; 774
	i32 191, ; 775
	i32 113, ; 776
	i32 323, ; 777
	i32 130, ; 778
	i32 222, ; 779
	i32 76, ; 780
	i32 27, ; 781
	i32 187, ; 782
	i32 223, ; 783
	i32 300, ; 784
	i32 322, ; 785
	i32 207, ; 786
	i32 7, ; 787
	i32 257, ; 788
	i32 110, ; 789
	i32 213, ; 790
	i32 323, ; 791
	i32 242, ; 792
	i32 309 ; 793
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
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
