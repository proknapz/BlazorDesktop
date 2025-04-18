; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [400 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [794 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 225
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 306
	i64 54532244727808411, ; 2: Pomelo.EntityFrameworkCore.MySql.dll => 0xc1bcc9a3ce419b => 267
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 253
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 169
	i64 131669012237370309, ; 5: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 260
	i64 160518225272466977, ; 6: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 245
	i64 196720943101637631, ; 7: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 8: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 293
	i64 229794953483747371, ; 9: System.ValueTuple.dll => 0x330654aed93802b => 149
	i64 232391251801502327, ; 10: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 334
	i64 295915112840604065, ; 11: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 337
	i64 316157742385208084, ; 12: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 300
	i64 350667413455104241, ; 13: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 374214195677100225, ; 14: Microsoft.CodeAnalysis.Razor => 0x53179d40b3df8c1 => 224
	i64 422779754995088667, ; 15: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 16: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 336
	i64 482535784737928357, ; 17: Microsoft.AspNetCore.Diagnostics.Abstractions.dll => 0x6b24fbd58b7f4a5 => 191
	i64 486223428996552534, ; 18: ZstdSharp.dll => 0x6bf69a1eecfd756 => 361
	i64 535107122908063503, ; 19: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 251
	i64 545109961164950392, ; 20: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 369
	i64 560278790331054453, ; 21: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 595053104451889001, ; 22: MySql.Data => 0x8420da551592769 => 263
	i64 634256334200181332, ; 23: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 223
	i64 634308326490598313, ; 24: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 319
	i64 648449422406355874, ; 25: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 234
	i64 649145001856603771, ; 26: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 27: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 233
	i64 683390398661839228, ; 28: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 242
	i64 750875890346172408, ; 29: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 143
	i64 798450721097591769, ; 30: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 294
	i64 799765834175365804, ; 31: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 32: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 372
	i64 864641107619353643, ; 33: Microsoft.AspNetCore.Mvc.DataAnnotations => 0xbffd2819dda142b => 207
	i64 872800313462103108, ; 34: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 305
	i64 895210737996778430, ; 35: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 320
	i64 940822596282819491, ; 36: System.Transactions => 0xd0e792aa81923a3 => 148
	i64 960778385402502048, ; 37: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 982068613551266738, ; 38: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xda1023367c89bb2 => 218
	i64 1001381392624924420, ; 39: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 179
	i64 1010599046655515943, ; 40: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 41: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 349
	i64 1121665720830085036, ; 42: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 380
	i64 1268860745194512059, ; 43: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 44: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 289
	i64 1369545283391376210, ; 46: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 327
	i64 1404195534211153682, ; 47: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 48: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 49: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 50: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 257
	i64 1492954217099365037, ; 51: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 52: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 168
	i64 1537168428375924959, ; 53: System.Threading.Thread.dll => 0x15551e8a954ae0df => 143
	i64 1556147632182429976, ; 54: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 378
	i64 1576750169145655260, ; 55: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 348
	i64 1624659445732251991, ; 56: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 288
	i64 1628611045998245443, ; 57: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 323
	i64 1636321030536304333, ; 58: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 313
	i64 1639340239664632727, ; 59: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 188
	i64 1651782184287836205, ; 60: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 61: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 62: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 63: Newtonsoft.Json => 0x18071957e9b889d7 => 265
	i64 1735388228521408345, ; 64: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 65: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 66: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1769105627832031750, ; 67: Google.Protobuf => 0x188d203205129a06 => 172
	i64 1776954265264967804, ; 68: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 255
	i64 1795316252682057001, ; 69: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 287
	i64 1825687700144851180, ; 70: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 71: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 368
	i64 1836611346387731153, ; 72: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 334
	i64 1854145951182283680, ; 73: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 74: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 75: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 284
	i64 1881198190668717030, ; 76: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 390
	i64 1897575647115118287, ; 77: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 336
	i64 1920760634179481754, ; 78: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 258
	i64 1959996714666907089, ; 79: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 390
	i64 1972384582241139858, ; 80: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 223
	i64 1972385128188460614, ; 81: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 82: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 321
	i64 1983698669889758782, ; 83: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 364
	i64 2019660174692588140, ; 84: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 382
	i64 2040001226662520565, ; 85: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 140
	i64 2062890601515140263, ; 86: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 139
	i64 2064708342624596306, ; 87: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 357
	i64 2080945842184875448, ; 88: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 89: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 90: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 139
	i64 2133195048986300728, ; 91: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 265
	i64 2165310824878145998, ; 92: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 281
	i64 2165725771938924357, ; 93: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 291
	i64 2192948757939169934, ; 94: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 227
	i64 2200176636225660136, ; 95: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 250
	i64 2262844636196693701, ; 96: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 305
	i64 2269733267185212154, ; 97: Microsoft.AspNetCore.Html.Abstractions.dll => 0x1f7fb66185761afa => 194
	i64 2287834202362508563, ; 98: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 99: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 100: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 186
	i64 2302323944321350744, ; 101: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 386
	i64 2304837677853103545, ; 102: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 333
	i64 2315304989185124968, ; 103: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 316
	i64 2335503487726329082, ; 105: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 275
	i64 2337758774805907496, ; 106: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2414730492268170344, ; 107: Microsoft.AspNetCore.Mvc.Localization.dll => 0x2182d896c3f2cc68 => 209
	i64 2470498323731680442, ; 108: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 298
	i64 2479423007379663237, ; 109: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 343
	i64 2497223385847772520, ; 110: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 111: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 282
	i64 2592350477072141967, ; 112: System.Xml.dll => 0x23f9e10627330e8f => 161
	i64 2602673633151553063, ; 113: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 389
	i64 2624866290265602282, ; 114: mscorlib.dll => 0x246d65fbde2db8ea => 164
	i64 2632269733008246987, ; 115: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 116: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 236
	i64 2662981627730767622, ; 117: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 364
	i64 2706075432581334785, ; 118: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2781169761569919449, ; 119: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 255
	i64 2783046991838674048, ; 120: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 121: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 338
	i64 2815524396660695947, ; 122: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 123: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 268
	i64 2895129759130297543, ; 124: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 369
	i64 2923871038697555247, ; 125: Jsr305Binding => 0x2893ad37e69ec52f => 350
	i64 2974029546067041986, ; 126: Microsoft.AspNetCore.Mvc.Formatters.Json.dll => 0x2945e01d74d79ec2 => 208
	i64 3017136373564924869, ; 127: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 128: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 349
	i64 3021884968805928991, ; 129: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 181
	i64 3106852385031680087, ; 130: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 131: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 132: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3168817962471953758, ; 133: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 245
	i64 3168887168596639127, ; 134: Microsoft.AspNetCore.Mvc.Razor.Extensions.dll => 0x2bfa2617217efd97 => 211
	i64 3266690593535380875, ; 135: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 180
	i64 3281594302220646930, ; 136: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 137: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 314
	i64 3303437397778967116, ; 138: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 285
	i64 3311221304742556517, ; 139: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 140: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 141: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 142: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 360
	i64 3396143930648122816, ; 143: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 240
	i64 3429672777697402584, ; 144: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 260
	i64 3437845325506641314, ; 145: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 146: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 340
	i64 3494946837667399002, ; 147: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 231
	i64 3508450208084372758, ; 148: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 149: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 339
	i64 3523004241079211829, ; 150: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 230
	i64 3531994851595924923, ; 151: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 152: System.Private.CoreLib.dll => 0x31480e226177735f => 170
	i64 3567343442040498961, ; 153: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 384
	i64 3571415421602489686, ; 154: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 155: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 232
	i64 3647754201059316852, ; 156: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 154
	i64 3655542548057982301, ; 157: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 231
	i64 3659371656528649588, ; 158: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 279
	i64 3716579019761409177, ; 159: netstandard.dll => 0x3393f0ed5c8c5c99 => 165
	i64 3727469159507183293, ; 160: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 332
	i64 3753897248517198740, ; 161: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 185
	i64 3772598417116884899, ; 162: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 306
	i64 3794322307918838949, ; 163: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 201
	i64 3869221888984012293, ; 164: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 248
	i64 3869649043256705283, ; 165: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3889433610606858880, ; 166: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 243
	i64 3890352374528606784, ; 167: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 258
	i64 3919223565570527920, ; 168: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 169: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 170: System.Memory => 0x370b03412596249e => 62
	i64 4005135229510678782, ; 171: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 190
	i64 4006972109285359177, ; 172: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 159
	i64 4009997192427317104, ; 173: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4073500526318903918, ; 174: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 175: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 256
	i64 4120493066591692148, ; 176: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 395
	i64 4148881117810174540, ; 177: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 178: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 179: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 144
	i64 4168469861834746866, ; 180: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 181: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 182: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 300
	i64 4202567570116092282, ; 183: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 266
	i64 4205801962323029395, ; 184: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4225924121207573736, ; 185: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 178
	i64 4235503420553921860, ; 186: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4243591448627561453, ; 187: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 197
	i64 4250192876909962317, ; 188: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 192
	i64 4282138915307457788, ; 189: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4321865999928413850, ; 190: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 269
	i64 4356591372459378815, ; 191: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 392
	i64 4373617458794931033, ; 192: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4384840217421645357, ; 193: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 183
	i64 4397634830160618470, ; 194: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4431618353714093320, ; 195: Microsoft.AspNetCore.Antiforgery => 0x3d804569b93add08 => 177
	i64 4477672992252076438, ; 196: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 150
	i64 4484706122338676047, ; 197: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 198: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 228
	i64 4533124835995628778, ; 199: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4612482779465751747, ; 200: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 227
	i64 4636684751163556186, ; 201: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 344
	i64 4672453897036726049, ; 202: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 203: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 362
	i64 4716677666592453464, ; 204: System.Xml.XmlSerializer => 0x417501590542f358 => 160
	i64 4743821336939966868, ; 205: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 206: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 318
	i64 4794310189461587505, ; 207: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 282
	i64 4795410492532947900, ; 208: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 339
	i64 4809057822547766521, ; 209: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 210: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 211: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 5032256205035195147, ; 212: MySql.Data.dll => 0x45d62a5b3fe0cb0b => 263
	i64 5055365687667823624, ; 213: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 283
	i64 5081566143765835342, ; 214: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 215: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 216: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5112836352847824253, ; 217: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 221
	i64 5177565741364132164, ; 218: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 195
	i64 5182934613077526976, ; 219: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 220: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 184
	i64 5205316157927637098, ; 221: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 325
	i64 5223612245689175824, ; 222: Microsoft.AspNetCore.Mvc.Localization => 0x487dffa95caf0f10 => 209
	i64 5244375036463807528, ; 223: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 224: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 225: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 226: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 317
	i64 5290786973231294105, ; 227: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 228: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 343
	i64 5408338804355907810, ; 229: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 341
	i64 5423376490970181369, ; 230: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 231: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 232: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 233: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 296
	i64 5457765010617926378, ; 234: System.Xml.Serialization => 0x4bbde05c557002ea => 155
	i64 5471532531798518949, ; 235: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 388
	i64 5488847537322884930, ; 236: System.Windows.Extensions => 0x4c2c4dc108687f42 => 277
	i64 5507995362134886206, ; 237: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 238: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 391
	i64 5527431512186326818, ; 239: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 240: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 241: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 242: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 286
	i64 5591791169662171124, ; 243: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5593115988096097561, ; 244: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 219
	i64 5610815111739789596, ; 245: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 179
	i64 5650097808083101034, ; 246: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 247: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 346
	i64 5724799082821825042, ; 248: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 309
	i64 5741990095351817038, ; 249: Microsoft.Extensions.Localization.Abstractions.dll => 0x4fafa591c141a34e => 247
	i64 5757522595884336624, ; 250: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 295
	i64 5783556987928984683, ; 251: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5812387745074149618, ; 252: K4os.Compression.LZ4.dll => 0x50a9bfdbd9fa78f2 => 174
	i64 5896680224035167651, ; 253: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 315
	i64 5959344983920014087, ; 254: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 335
	i64 5979151488806146654, ; 255: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 256: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6068057819846744445, ; 257: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 385
	i64 6102788177522843259, ; 258: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 335
	i64 6200764641006662125, ; 259: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 385
	i64 6222399776351216807, ; 260: System.Text.Json.dll => 0x565a67a0ffe264a7 => 276
	i64 6251069312384999852, ; 261: System.Transactions.Local => 0x56c0426b870da1ac => 147
	i64 6278736998281604212, ; 262: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 263: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6319713645133255417, ; 264: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 319
	i64 6357457916754632952, ; 265: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 396
	i64 6401687960814735282, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 316
	i64 6459596646370694080, ; 267: Microsoft.AspNetCore.JsonPatch.dll => 0x59a518eceb3ad3c0 => 199
	i64 6478287442656530074, ; 268: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 373
	i64 6504860066809920875, ; 269: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 291
	i64 6548213210057960872, ; 270: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 302
	i64 6557084851308642443, ; 271: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 347
	i64 6560151584539558821, ; 272: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 252
	i64 6589202984700901502, ; 273: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 352
	i64 6591971792923354531, ; 274: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 317
	i64 6617685658146568858, ; 275: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6702137467294796250, ; 276: Microsoft.AspNetCore.Mvc.Razor => 0x5d02c6845df149da => 210
	i64 6713440830605852118, ; 277: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 278: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 279: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 381
	i64 6772837112740759457, ; 280: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 281: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 384
	i64 6786606130239981554, ; 282: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 283: System.Windows => 0x5e5884bd523ca188 => 152
	i64 6814185388980153342, ; 284: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 156
	i64 6876862101832370452, ; 285: System.Xml.Linq => 0x5f6f85a57d108914 => 153
	i64 6894844156784520562, ; 286: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911788284027924527, ; 287: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 193
	i64 6920570528939222495, ; 288: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 185
	i64 7011053663211085209, ; 289: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 311
	i64 7060448593242414269, ; 290: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 273
	i64 7060896174307865760, ; 291: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 141
	i64 7083547580668757502, ; 292: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 293: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 294: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 312
	i64 7105430439328552570, ; 295: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 271
	i64 7112547816752919026, ; 296: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7123594442286643413, ; 297: Microsoft.AspNetCore.Razor.Runtime => 0x62dc1767207138d5 => 217
	i64 7192745174564810625, ; 298: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 281
	i64 7220009545223068405, ; 299: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 388
	i64 7270811800166795866, ; 300: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 301: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 302: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7331765743953618630, ; 303: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 195
	i64 7338192458477945005, ; 304: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 305: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 280
	i64 7377312882064240630, ; 306: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7451202609009583483, ; 307: K4os.Hash.xxHash => 0x6767fd4b737ae57b => 176
	i64 7473077275758116397, ; 308: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 225
	i64 7488575175965059935, ; 309: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 153
	i64 7489048572193775167, ; 310: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7592577537120840276, ; 311: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 312: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 313: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 314: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7702918024138448955, ; 315: MySqlConnector => 0x6ae6432192b9e03b => 264
	i64 7708790323521193081, ; 316: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 379
	i64 7714652370974252055, ; 317: System.Private.CoreLib => 0x6b0ff375198b9c17 => 170
	i64 7725404731275645577, ; 318: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 320
	i64 7735176074855944702, ; 319: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 320: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 355
	i64 7791074099216502080, ; 321: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 322: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7824823231109474690, ; 323: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 181
	i64 7836164640616011524, ; 324: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 288
	i64 7919757340696389605, ; 325: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 239
	i64 7972383140441761405, ; 326: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 229
	i64 8014722069583580780, ; 327: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 183
	i64 8025517457475554965, ; 328: WindowsBase => 0x6f605d9b4786ce95 => 163
	i64 8031450141206250471, ; 329: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 330: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 331: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 314
	i64 8085230611270010360, ; 332: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 333: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 334: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 335: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8138277578025671259, ; 336: Microsoft.AspNetCore.Cors => 0x70f0f856b9bf1a5b => 187
	i64 8167236081217502503, ; 337: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 166
	i64 8185542183669246576, ; 338: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 339: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 359
	i64 8246048515196606205, ; 340: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 261
	i64 8264926008854159966, ; 341: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 342: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 343: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8342572048615572890, ; 344: Microsoft.AspNetCore.Cors.dll => 0x73c6c513ced5859a => 187
	i64 8368701292315763008, ; 345: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 346: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 297
	i64 8399132193771933415, ; 347: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 254
	i64 8400357532724379117, ; 348: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 329
	i64 8410671156615598628, ; 349: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 350: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 318
	i64 8476857680833348370, ; 351: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 274
	i64 8518412311883997971, ; 352: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8519205576476231015, ; 353: Microsoft.AspNetCore.Mvc.Core.dll => 0x763a4c55ca648567 => 205
	i64 8563666267364444763, ; 354: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 355: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 308
	i64 8601935802264776013, ; 356: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 341
	i64 8611142787134128904, ; 357: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 193
	i64 8614108721271900878, ; 358: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 383
	i64 8623059219396073920, ; 359: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 360: Java.Interop => 0x77b654e585b55834 => 166
	i64 8638972117149407195, ; 361: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 362: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 328
	i64 8648495978913578441, ; 363: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 364: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 383
	i64 8684531736582871431, ; 365: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 366: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 367: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 356
	i64 8886598895004054153, ; 368: Microsoft.AspNetCore.Mvc.Cors.dll => 0x7b538a9c9e187289 => 206
	i64 8893249077141143629, ; 369: Microsoft.AspNetCore.Mvc.ApiExplorer.dll => 0x7b6b2aeace11804d => 204
	i64 8941376889969657626, ; 370: System.Xml.XDocument => 0x7c1626e87187471a => 156
	i64 8951477988056063522, ; 371: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 331
	i64 8954753533646919997, ; 372: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9045785047181495996, ; 373: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 393
	i64 9111603110219107042, ; 374: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 230
	i64 9138683372487561558, ; 375: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 376: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 226
	i64 9286073997824813334, ; 377: BouncyCastle.Cryptography => 0x80dec319ee56e916 => 171
	i64 9312692141327339315, ; 378: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 346
	i64 9324707631942237306, ; 379: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 287
	i64 9413000421947348542, ; 380: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 192
	i64 9468215723722196442, ; 381: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 157
	i64 9554839972845591462, ; 382: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 383: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 351
	i64 9584643793929893533, ; 384: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9650158550865574924, ; 385: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 235
	i64 9659729154652888475, ; 386: System.Text.RegularExpressions => 0x860e407c9991dd9b => 136
	i64 9662334977499516867, ; 387: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 388: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 389: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 298
	i64 9702891218465930390, ; 390: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 391: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 348
	i64 9808709177481450983, ; 392: Mono.Android.dll => 0x881f890734e555e7 => 169
	i64 9825649861376906464, ; 393: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 295
	i64 9834056768316610435, ; 394: System.Transactions.dll => 0x8879968718899783 => 148
	i64 9836529246295212050, ; 395: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864374015518639636, ; 396: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 188
	i64 9907349773706910547, ; 397: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 308
	i64 9933555792566666578, ; 398: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9938556199016768930, ; 399: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 219
	i64 9956195530459977388, ; 400: Microsoft.Maui => 0x8a2b8315b36616ac => 259
	i64 9974604633896246661, ; 401: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 155
	i64 9991543690424095600, ; 402: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 368
	i64 9994308163963284983, ; 403: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 266
	i64 9998685624638532270, ; 404: K4os.Hash.xxHash.dll => 0x8ac27799ad626aae => 176
	i64 10010535536624903483, ; 405: BlazorDesktop.dll => 0x8aec91084ff3a53b => 0
	i64 10017511394021241210, ; 406: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 250
	i64 10038780035334861115, ; 407: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 408: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 409: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 410: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 411: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 257
	i64 10105485790837105934, ; 412: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 141
	i64 10143853363526200146, ; 413: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 365
	i64 10205853378024263619, ; 414: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 233
	i64 10226222362177979215, ; 415: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 357
	i64 10229024438826829339, ; 416: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 302
	i64 10236703004850800690, ; 417: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10243523786148452761, ; 418: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 196
	i64 10245369515835430794, ; 419: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 420: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 354
	i64 10357309525532190134, ; 421: Microsoft.AspNetCore.Mvc.RazorPages.dll => 0x8fbc8e235a1da5b6 => 212
	i64 10360651442923773544, ; 422: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 423: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 424: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 340
	i64 10406448008575299332, ; 425: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 360
	i64 10430153318873392755, ; 426: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 299
	i64 10458986597687352396, ; 427: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 220
	i64 10506226065143327199, ; 428: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 363
	i64 10521980565667308266, ; 429: Microsoft.AspNetCore.Razor.dll => 0x920595939e29e2ea => 215
	i64 10546663366131771576, ; 430: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 431: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 432: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 157
	i64 10670374202010151210, ; 433: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 434: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10734191584620811116, ; 435: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 242
	i64 10785150219063592792, ; 436: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10811915265162633087, ; 437: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 228
	i64 10822644899632537592, ; 438: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 439: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 440: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 289
	i64 10885087467875303060, ; 441: K4os.Compression.LZ4.Streams => 0x970f99615fc37e94 => 175
	i64 10899834349646441345, ; 442: System.Web => 0x9743fd975946eb81 => 151
	i64 10929237632997888614, ; 443: Microsoft.AspNetCore.Html.Abstractions => 0x97ac73b8bcab9266 => 194
	i64 10943875058216066601, ; 444: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 445: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10972388274974066310, ; 446: Microsoft.AspNetCore.Razor.Language => 0x9845c1007b7d8686 => 216
	i64 11002576679268595294, ; 447: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 249
	i64 11009005086950030778, ; 448: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 259
	i64 11019817191295005410, ; 449: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 286
	i64 11023048688141570732, ; 450: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 451: System.Xml => 0x992e31d0412bf7fc => 161
	i64 11050168729868392624, ; 452: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 198
	i64 11051904132540108364, ; 453: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 241
	i64 11071824625609515081, ; 454: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 352
	i64 11103970607964515343, ; 455: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 374
	i64 11136029745144976707, ; 456: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 350
	i64 11162124722117608902, ; 457: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 345
	i64 11188319605227840848, ; 458: System.Threading.Overlapped => 0x9b44e5671724e550 => 138
	i64 11218356222449480316, ; 459: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 182
	i64 11220793807500858938, ; 460: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 377
	i64 11226290749488709958, ; 461: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 252
	i64 11235648312900863002, ; 462: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 463: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 145
	i64 11340910727871153756, ; 464: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 301
	i64 11341245327015630248, ; 465: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 268
	i64 11347436699239206956, ; 466: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 160
	i64 11392833485892708388, ; 467: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 330
	i64 11432101114902388181, ; 468: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 469: Mono.Android.Export => 0x9edabf8623efc131 => 167
	i64 11448276831755070604, ; 470: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 471: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 472: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 311
	i64 11513602507638267977, ; 473: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 270
	i64 11518296021396496455, ; 474: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 375
	i64 11529969570048099689, ; 475: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 345
	i64 11530571088791430846, ; 476: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 248
	i64 11564861549255168062, ; 477: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 222
	i64 11580057168383206117, ; 478: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 284
	i64 11591352189662810718, ; 479: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 338
	i64 11597940890313164233, ; 480: netstandard => 0xa0f429ca8d1805c9 => 165
	i64 11672361001936329215, ; 481: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 312
	i64 11692977985522001935, ; 482: System.Threading.Overlapped.dll => 0xa245cd869980680f => 138
	i64 11705530742807338875, ; 483: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 371
	i64 11707554492040141440, ; 484: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 485: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 142
	i64 11868746509924019608, ; 486: Microsoft.AspNetCore.Mvc.ApiExplorer => 0xa4b64211452dad98 => 204
	i64 11991047634523762324, ; 487: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 488: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 272
	i64 12040886584167504988, ; 489: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12048689113179125827, ; 490: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 243
	i64 12058074296353848905, ; 491: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 244
	i64 12063623837170009990, ; 492: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 493: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 494: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 495: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 496: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 342
	i64 12145679461940342714, ; 497: System.Text.Json => 0xa88e1f1ebcb62fba => 276
	i64 12191646537372739477, ; 498: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 278
	i64 12201331334810686224, ; 499: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12257106757805319519, ; 500: BlazorDesktop => 0xaa19fda7c106a55f => 0
	i64 12269460666702402136, ; 501: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12310909314810916455, ; 502: Microsoft.Extensions.Localization.dll => 0xaad922cbbb5a2e67 => 246
	i64 12313367145828839434, ; 503: System.IO.Pipelines => 0xaae1de2e1c17f00a => 270
	i64 12332222936682028543, ; 504: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 505: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12441092376399691269, ; 506: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 178
	i64 12449521524599790614, ; 507: Microsoft.AspNetCore.Mvc.dll => 0xacc595ddc1599c16 => 202
	i64 12451044538927396471, ; 508: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 310
	i64 12466513435562512481, ; 509: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 324
	i64 12475113361194491050, ; 510: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 396
	i64 12487638416075308985, ; 511: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 304
	i64 12517810545449516888, ; 512: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 513: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 292
	i64 12550732019250633519, ; 514: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12551451704392164662, ; 515: MySqlConnector.dll => 0xae2fb6d31fc42536 => 264
	i64 12681088699309157496, ; 516: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 376
	i64 12699999919562409296, ; 517: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 518: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 293
	i64 12708238894395270091, ; 519: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 520: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 521: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12742166704152928552, ; 522: Microsoft.CodeAnalysis.Razor.dll => 0xb0d5451b45d86128 => 224
	i64 12753841065332862057, ; 523: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 347
	i64 12823819093633476069, ; 524: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 389
	i64 12828192437253469131, ; 525: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 358
	i64 12835242264250840079, ; 526: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 527: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 253
	i64 12843770487262409629, ; 528: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 529: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12982280885948128408, ; 530: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 303
	i64 12991459499837607210, ; 531: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 222
	i64 13003699287675270979, ; 532: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 186
	i64 13068258254871114833, ; 533: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13070736518021853291, ; 534: Microsoft.AspNetCore.JsonPatch => 0xb564959c856b306b => 199
	i64 13086625805112021739, ; 535: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 190
	i64 13122923747915422861, ; 536: Microsoft.AspNetCore.Localization => 0xb61dfd9ed9095c8d => 200
	i64 13129914918964716986, ; 537: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 307
	i64 13162471042547327635, ; 538: System.Security.Permissions => 0xb6aa7dace9662293 => 274
	i64 13173818576982874404, ; 539: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 540: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 363
	i64 13222659110913276082, ; 541: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 377
	i64 13308002692117796025, ; 542: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 220
	i64 13343850469010654401, ; 543: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 168
	i64 13370592475155966277, ; 544: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 545: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 371
	i64 13401370062847626945, ; 546: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 342
	i64 13404347523447273790, ; 547: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 297
	i64 13404984788036896679, ; 548: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 196
	i64 13431476299110033919, ; 549: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 550: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 353
	i64 13463706743370286408, ; 551: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 552: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 355
	i64 13467053111158216594, ; 553: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 391
	i64 13491513212026656886, ; 554: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 290
	i64 13540124433173649601, ; 555: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 392
	i64 13545416393490209236, ; 556: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 375
	i64 13550417756503177631, ; 557: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 240
	i64 13572454107664307259, ; 558: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 332
	i64 13578472628727169633, ; 559: System.Xml.XPath => 0xbc706ce9fba5c261 => 158
	i64 13580399111273692417, ; 560: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13618112415141049676, ; 561: Microsoft.AspNetCore.Mvc.Core => 0xbcfd4116f7d1b54c => 205
	i64 13621154251410165619, ; 562: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 303
	i64 13637569584472253285, ; 563: Microsoft.AspNetCore.Mvc => 0xbd4261483a23e365 => 202
	i64 13647894001087880694, ; 564: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 565: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 283
	i64 13702626353344114072, ; 566: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 567: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 568: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 569: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 570: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 370
	i64 13768883594457632599, ; 571: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13814445057219246765, ; 572: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 373
	i64 13828521679616088467, ; 573: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 356
	i64 13881769479078963060, ; 574: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 575: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 277
	i64 13911222732217019342, ; 576: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13921917134693230900, ; 577: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 221
	i64 13928444506500929300, ; 578: System.Windows.dll => 0xc14bc67b8bba9714 => 152
	i64 13939962644205322370, ; 579: Microsoft.AspNetCore.Razor.Language.dll => 0xc174b22af612c082 => 216
	i64 13955418299340266673, ; 580: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 238
	i64 13959074834287824816, ; 581: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 310
	i64 14075334701871371868, ; 582: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14082136096249122791, ; 583: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 201
	i64 14100563506285742564, ; 584: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 365
	i64 14124974489674258913, ; 585: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 292
	i64 14125464355221830302, ; 586: System.Threading.dll => 0xc407bafdbc707a9e => 146
	i64 14133832980772275001, ; 587: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 226
	i64 14178052285788134900, ; 588: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 279
	i64 14199657271608119382, ; 589: Microsoft.AspNetCore.Localization.dll => 0xc50f510e367e9056 => 200
	i64 14212104595480609394, ; 590: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 591: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 592: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 593: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 594: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 595: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 330
	i64 14261232074598307362, ; 596: Microsoft.AspNetCore.Mvc.Abstractions => 0xc5ea130339d6d622 => 203
	i64 14298246716367104064, ; 597: System.Web.dll => 0xc66d93a217f4e840 => 151
	i64 14327695147300244862, ; 598: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 599: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 600: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 280
	i64 14346402571976470310, ; 601: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14461014870687870182, ; 602: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 603: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 386
	i64 14486659737292545672, ; 604: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 315
	i64 14495724990987328804, ; 605: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 333
	i64 14522721392235705434, ; 606: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 367
	i64 14528548208938697926, ; 607: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0xc99fc59ed7edc4c6 => 203
	i64 14551742072151931844, ; 608: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 275
	i64 14561513370130550166, ; 609: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14569958227297576184, ; 610: Microsoft.AspNetCore.Mvc.Razor.Extensions => 0xca32e3d0125a24f8 => 211
	i64 14574160591280636898, ; 611: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 612: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 613: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 325
	i64 14669215534098758659, ; 614: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 236
	i64 14690985099581930927, ; 615: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 150
	i64 14705122255218365489, ; 616: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 378
	i64 14711489710198462279, ; 617: Microsoft.AspNetCore.Mvc.ViewFeatures.dll => 0xcc29b5f255319747 => 214
	i64 14744092281598614090, ; 618: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 394
	i64 14792063746108907174, ; 619: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 353
	i64 14832630590065248058, ; 620: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14835122486566269605, ; 621: Microsoft.AspNetCore.Mvc.TagHelpers.dll => 0xcde0f14d3b3132a5 => 213
	i64 14852515768018889994, ; 622: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 301
	i64 14889905118082851278, ; 623: GoogleGson.dll => 0xcea391d0969961ce => 173
	i64 14892012299694389861, ; 624: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 395
	i64 14904040806490515477, ; 625: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 362
	i64 14912225920358050525, ; 626: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 627: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 628: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 237
	i64 14984936317414011727, ; 629: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 630: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 631: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 304
	i64 14997925763760621062, ; 632: Microsoft.AspNetCore.Razor.Runtime.dll => 0xd02356050ca18606 => 217
	i64 15015154896917945444, ; 633: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 634: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15051741671811457419, ; 635: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 239
	i64 15071021337266399595, ; 636: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 637: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 638: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 379
	i64 15115185479366240210, ; 639: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 640: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 641: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 331
	i64 15188318564056798176, ; 642: Microsoft.AspNetCore.Mvc.TagHelpers => 0xd2c7bf434a1393e0 => 213
	i64 15227001540531775957, ; 643: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 232
	i64 15234786388537674379, ; 644: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 645: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 646: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 294
	i64 15279429628684179188, ; 647: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 359
	i64 15299439993936780255, ; 648: System.Xml.XPath.dll => 0xd452879d55019bdf => 158
	i64 15332518387094693223, ; 649: Microsoft.AspNetCore.Mvc.DataAnnotations.dll => 0xd4c80c3ce6eca567 => 207
	i64 15338463749992804988, ; 650: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370028218478381000, ; 651: Microsoft.Extensions.Localization.Abstractions => 0xd54d4f3b162247c8 => 247
	i64 15370334346939861994, ; 652: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 299
	i64 15391712275433856905, ; 653: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 237
	i64 15427448221306938193, ; 654: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 184
	i64 15475196252089753159, ; 655: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 269
	i64 15481710163200268842, ; 656: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 241
	i64 15526743539506359484, ; 657: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 658: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 659: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 660: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 366
	i64 15541854775306130054, ; 661: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 662: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15565247197164990907, ; 663: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 197
	i64 15582737692548360875, ; 664: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 323
	i64 15592226634512578529, ; 665: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 180
	i64 15609085926864131306, ; 666: System.dll => 0xd89e9cf3334914ea => 162
	i64 15620595871140898079, ; 667: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 238
	i64 15620612276725577442, ; 668: BouncyCastle.Cryptography.dll => 0xd8c7901aa85576e2 => 171
	i64 15637608551555227372, ; 669: Microsoft.AspNetCore.Mvc.Razor.dll => 0xd903f220440f5eec => 210
	i64 15661133872274321916, ; 670: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 154
	i64 15664356999916475676, ; 671: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 366
	i64 15710114879900314733, ; 672: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15735700225633954557, ; 673: Microsoft.Extensions.Localization => 0xda606ffbe0f22afd => 246
	i64 15743187114543869802, ; 674: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 374
	i64 15755368083429170162, ; 675: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 676: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 337
	i64 15783653065526199428, ; 677: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 367
	i64 15817206913877585035, ; 678: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 142
	i64 15827202283623377193, ; 679: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 235
	i64 15847085070278954535, ; 680: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 137
	i64 15852824340364052161, ; 681: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 198
	i64 15885744048853936810, ; 682: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 683: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 256
	i64 15934062614519587357, ; 684: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 685: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 686: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 140
	i64 15971679995444160383, ; 687: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 688: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16027684189145026053, ; 689: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 189
	i64 16046481083542319511, ; 690: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 251
	i64 16054465462676478687, ; 691: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16153500642854367575, ; 692: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 254
	i64 16154507427712707110, ; 693: System => 0xe03056ea4e39aa26 => 162
	i64 16219561732052121626, ; 694: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 695: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 380
	i64 16315482530584035869, ; 696: WindowsBase.dll => 0xe26c3ceb1e8d821d => 163
	i64 16321164108206115771, ; 697: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 249
	i64 16337011941688632206, ; 698: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16344871930018146979, ; 699: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0xe2d4a66be7fc2aa3 => 218
	i64 16361933716545543812, ; 700: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 309
	i64 16423015068819898779, ; 701: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 358
	i64 16454459195343277943, ; 702: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 703: Mono.Android.Export.dll => 0xe4f04b741db987ce => 167
	i64 16523284800709429098, ; 704: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 189
	i64 16586971685355653868, ; 705: Microsoft.AspNetCore.Mvc.RazorPages => 0xe630c2ddc5160aec => 212
	i64 16589693266713801121, ; 706: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 322
	i64 16621146507174665210, ; 707: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 296
	i64 16637862623548895820, ; 708: K4os.Compression.LZ4 => 0xe6e58fe7aa61724c => 174
	i64 16649148416072044166, ; 709: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 261
	i64 16677317093839702854, ; 710: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 329
	i64 16702652415771857902, ; 711: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 149
	i64 16709499819875633724, ; 712: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 713: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 714: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 715: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 716: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16793451114543296636, ; 717: Microsoft.AspNetCore.Mvc.ViewFeatures => 0xe90e52d02b3db07c => 214
	i64 16822611501064131242, ; 718: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 719: mscorlib => 0xe99c30c1484d7f4f => 164
	i64 16856067890322379635, ; 720: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16873478996345296124, ; 721: K4os.Compression.LZ4.Streams.dll => 0xea2aa3bf662d14fc => 175
	i64 16890310621557459193, ; 722: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 136
	i64 16933958494752847024, ; 723: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 724: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 387
	i64 16977952268158210142, ; 725: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 726: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 322
	i64 16998075588627545693, ; 727: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 327
	i64 17008137082415910100, ; 728: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 729: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 285
	i64 17031351772568316411, ; 730: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 326
	i64 17037200463775726619, ; 731: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 313
	i64 17047433665992082296, ; 732: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 234
	i64 17047637518392099970, ; 733: Microsoft.AspNetCore.Antiforgery.dll => 0xec9560002f620482 => 177
	i64 17062143951396181894, ; 734: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 735: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 182
	i64 17089008752050867324, ; 736: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 394
	i64 17118171214553292978, ; 737: System.Threading.Channels => 0xed8ff6060fc420b2 => 137
	i64 17126545051278881272, ; 738: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 262
	i64 17187273293601214786, ; 739: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 740: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 741: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17205988430934219272, ; 742: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 244
	i64 17230721278011714856, ; 743: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 744: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 147
	i64 17260702271250283638, ; 745: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17311256152179951039, ; 746: Microsoft.AspNetCore.Mvc.Formatters.Json => 0xf03defc05e7b45bf => 208
	i64 17333249706306540043, ; 747: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 748: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 749: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 372
	i64 17360349973592121190, ; 750: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 351
	i64 17438153253682247751, ; 751: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 387
	i64 17451281075798943988, ; 752: Pomelo.EntityFrameworkCore.MySql => 0xf22f67ad767e28f4 => 267
	i64 17470386307322966175, ; 753: System.Threading.Timer => 0xf27347c8d0d5709f => 145
	i64 17509662556995089465, ; 754: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 755: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 370
	i64 17522591619082469157, ; 756: GoogleGson => 0xf32cc03d27a5bf25 => 173
	i64 17523946658117960076, ; 757: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 272
	i64 17553799493972570483, ; 758: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 172
	i64 17590473451926037903, ; 759: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 278
	i64 17623389608345532001, ; 760: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 382
	i64 17627500474728259406, ; 761: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 762: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 763: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 393
	i64 17704177640604968747, ; 764: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 324
	i64 17710060891934109755, ; 765: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 321
	i64 17712670374920797664, ; 766: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17727630781806093631, ; 767: Microsoft.AspNetCore.Diagnostics.Abstractions => 0xf605324562d5253f => 191
	i64 17777860260071588075, ; 768: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17830780619298983968, ; 769: Microsoft.AspNetCore.Razor => 0xf773a880713c5020 => 215
	i64 17838668724098252521, ; 770: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 771: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 354
	i64 17911643751311784505, ; 772: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 262
	i64 17928294245072900555, ; 773: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17979120673405951447, ; 774: ZstdSharp => 0xf982aafeb83e5dd7 => 361
	i64 17992315986609351877, ; 775: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 159
	i64 18017743553296241350, ; 776: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 229
	i64 18025913125965088385, ; 777: System.Threading => 0xfa28e87b91334681 => 146
	i64 18099568558057551825, ; 778: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 381
	i64 18116111925905154859, ; 779: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 290
	i64 18121036031235206392, ; 780: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 326
	i64 18146411883821974900, ; 781: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 782: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 783: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 271
	i64 18225059387460068507, ; 784: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 144
	i64 18245806341561545090, ; 785: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 786: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 307
	i64 18305135509493619199, ; 787: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 328
	i64 18318849532986632368, ; 788: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 789: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 376
	i64 18380184030268848184, ; 790: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 344
	i64 18427086088365902170, ; 791: Microsoft.AspNetCore.Mvc.Cors => 0xffba292a9e97895a => 206
	i64 18428404840311395189, ; 792: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 273
	i64 18439108438687598470 ; 793: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [794 x i32] [
	i32 225, ; 0
	i32 306, ; 1
	i32 267, ; 2
	i32 253, ; 3
	i32 169, ; 4
	i32 260, ; 5
	i32 245, ; 6
	i32 58, ; 7
	i32 293, ; 8
	i32 149, ; 9
	i32 334, ; 10
	i32 337, ; 11
	i32 300, ; 12
	i32 132, ; 13
	i32 224, ; 14
	i32 56, ; 15
	i32 336, ; 16
	i32 191, ; 17
	i32 361, ; 18
	i32 251, ; 19
	i32 369, ; 20
	i32 95, ; 21
	i32 263, ; 22
	i32 223, ; 23
	i32 319, ; 24
	i32 234, ; 25
	i32 129, ; 26
	i32 233, ; 27
	i32 242, ; 28
	i32 143, ; 29
	i32 294, ; 30
	i32 18, ; 31
	i32 372, ; 32
	i32 207, ; 33
	i32 305, ; 34
	i32 320, ; 35
	i32 148, ; 36
	i32 104, ; 37
	i32 218, ; 38
	i32 179, ; 39
	i32 95, ; 40
	i32 349, ; 41
	i32 380, ; 42
	i32 36, ; 43
	i32 28, ; 44
	i32 289, ; 45
	i32 327, ; 46
	i32 50, ; 47
	i32 115, ; 48
	i32 70, ; 49
	i32 257, ; 50
	i32 65, ; 51
	i32 168, ; 52
	i32 143, ; 53
	i32 378, ; 54
	i32 348, ; 55
	i32 288, ; 56
	i32 323, ; 57
	i32 313, ; 58
	i32 188, ; 59
	i32 40, ; 60
	i32 89, ; 61
	i32 81, ; 62
	i32 265, ; 63
	i32 66, ; 64
	i32 62, ; 65
	i32 86, ; 66
	i32 172, ; 67
	i32 255, ; 68
	i32 287, ; 69
	i32 106, ; 70
	i32 368, ; 71
	i32 334, ; 72
	i32 102, ; 73
	i32 35, ; 74
	i32 284, ; 75
	i32 390, ; 76
	i32 336, ; 77
	i32 258, ; 78
	i32 390, ; 79
	i32 223, ; 80
	i32 119, ; 81
	i32 321, ; 82
	i32 364, ; 83
	i32 382, ; 84
	i32 140, ; 85
	i32 139, ; 86
	i32 357, ; 87
	i32 53, ; 88
	i32 35, ; 89
	i32 139, ; 90
	i32 265, ; 91
	i32 281, ; 92
	i32 291, ; 93
	i32 227, ; 94
	i32 250, ; 95
	i32 305, ; 96
	i32 194, ; 97
	i32 8, ; 98
	i32 14, ; 99
	i32 186, ; 100
	i32 386, ; 101
	i32 333, ; 102
	i32 51, ; 103
	i32 316, ; 104
	i32 275, ; 105
	i32 101, ; 106
	i32 209, ; 107
	i32 298, ; 108
	i32 343, ; 109
	i32 116, ; 110
	i32 282, ; 111
	i32 161, ; 112
	i32 389, ; 113
	i32 164, ; 114
	i32 67, ; 115
	i32 236, ; 116
	i32 364, ; 117
	i32 80, ; 118
	i32 255, ; 119
	i32 101, ; 120
	i32 338, ; 121
	i32 117, ; 122
	i32 268, ; 123
	i32 369, ; 124
	i32 350, ; 125
	i32 208, ; 126
	i32 78, ; 127
	i32 349, ; 128
	i32 181, ; 129
	i32 114, ; 130
	i32 121, ; 131
	i32 48, ; 132
	i32 245, ; 133
	i32 211, ; 134
	i32 180, ; 135
	i32 128, ; 136
	i32 314, ; 137
	i32 285, ; 138
	i32 82, ; 139
	i32 110, ; 140
	i32 75, ; 141
	i32 360, ; 142
	i32 240, ; 143
	i32 260, ; 144
	i32 53, ; 145
	i32 340, ; 146
	i32 231, ; 147
	i32 69, ; 148
	i32 339, ; 149
	i32 230, ; 150
	i32 83, ; 151
	i32 170, ; 152
	i32 384, ; 153
	i32 116, ; 154
	i32 232, ; 155
	i32 154, ; 156
	i32 231, ; 157
	i32 279, ; 158
	i32 165, ; 159
	i32 332, ; 160
	i32 185, ; 161
	i32 306, ; 162
	i32 201, ; 163
	i32 248, ; 164
	i32 32, ; 165
	i32 243, ; 166
	i32 258, ; 167
	i32 122, ; 168
	i32 72, ; 169
	i32 62, ; 170
	i32 190, ; 171
	i32 159, ; 172
	i32 113, ; 173
	i32 88, ; 174
	i32 256, ; 175
	i32 395, ; 176
	i32 105, ; 177
	i32 18, ; 178
	i32 144, ; 179
	i32 118, ; 180
	i32 58, ; 181
	i32 300, ; 182
	i32 266, ; 183
	i32 17, ; 184
	i32 178, ; 185
	i32 52, ; 186
	i32 197, ; 187
	i32 192, ; 188
	i32 92, ; 189
	i32 269, ; 190
	i32 392, ; 191
	i32 55, ; 192
	i32 183, ; 193
	i32 129, ; 194
	i32 177, ; 195
	i32 150, ; 196
	i32 41, ; 197
	i32 228, ; 198
	i32 92, ; 199
	i32 227, ; 200
	i32 344, ; 201
	i32 50, ; 202
	i32 362, ; 203
	i32 160, ; 204
	i32 13, ; 205
	i32 318, ; 206
	i32 282, ; 207
	i32 339, ; 208
	i32 36, ; 209
	i32 67, ; 210
	i32 109, ; 211
	i32 263, ; 212
	i32 283, ; 213
	i32 99, ; 214
	i32 99, ; 215
	i32 11, ; 216
	i32 221, ; 217
	i32 195, ; 218
	i32 11, ; 219
	i32 184, ; 220
	i32 325, ; 221
	i32 209, ; 222
	i32 25, ; 223
	i32 128, ; 224
	i32 76, ; 225
	i32 317, ; 226
	i32 109, ; 227
	i32 343, ; 228
	i32 341, ; 229
	i32 106, ; 230
	i32 2, ; 231
	i32 26, ; 232
	i32 296, ; 233
	i32 155, ; 234
	i32 388, ; 235
	i32 277, ; 236
	i32 21, ; 237
	i32 391, ; 238
	i32 49, ; 239
	i32 43, ; 240
	i32 126, ; 241
	i32 286, ; 242
	i32 59, ; 243
	i32 219, ; 244
	i32 179, ; 245
	i32 119, ; 246
	i32 346, ; 247
	i32 309, ; 248
	i32 247, ; 249
	i32 295, ; 250
	i32 3, ; 251
	i32 174, ; 252
	i32 315, ; 253
	i32 335, ; 254
	i32 38, ; 255
	i32 124, ; 256
	i32 385, ; 257
	i32 335, ; 258
	i32 385, ; 259
	i32 276, ; 260
	i32 147, ; 261
	i32 85, ; 262
	i32 90, ; 263
	i32 319, ; 264
	i32 396, ; 265
	i32 316, ; 266
	i32 199, ; 267
	i32 373, ; 268
	i32 291, ; 269
	i32 302, ; 270
	i32 347, ; 271
	i32 252, ; 272
	i32 352, ; 273
	i32 317, ; 274
	i32 133, ; 275
	i32 210, ; 276
	i32 96, ; 277
	i32 3, ; 278
	i32 381, ; 279
	i32 105, ; 280
	i32 384, ; 281
	i32 33, ; 282
	i32 152, ; 283
	i32 156, ; 284
	i32 153, ; 285
	i32 82, ; 286
	i32 193, ; 287
	i32 185, ; 288
	i32 311, ; 289
	i32 273, ; 290
	i32 141, ; 291
	i32 87, ; 292
	i32 19, ; 293
	i32 312, ; 294
	i32 271, ; 295
	i32 51, ; 296
	i32 217, ; 297
	i32 281, ; 298
	i32 388, ; 299
	i32 61, ; 300
	i32 54, ; 301
	i32 4, ; 302
	i32 195, ; 303
	i32 97, ; 304
	i32 280, ; 305
	i32 17, ; 306
	i32 176, ; 307
	i32 225, ; 308
	i32 153, ; 309
	i32 84, ; 310
	i32 29, ; 311
	i32 45, ; 312
	i32 64, ; 313
	i32 66, ; 314
	i32 264, ; 315
	i32 379, ; 316
	i32 170, ; 317
	i32 320, ; 318
	i32 1, ; 319
	i32 355, ; 320
	i32 47, ; 321
	i32 24, ; 322
	i32 181, ; 323
	i32 288, ; 324
	i32 239, ; 325
	i32 229, ; 326
	i32 183, ; 327
	i32 163, ; 328
	i32 108, ; 329
	i32 12, ; 330
	i32 314, ; 331
	i32 63, ; 332
	i32 27, ; 333
	i32 23, ; 334
	i32 93, ; 335
	i32 187, ; 336
	i32 166, ; 337
	i32 12, ; 338
	i32 359, ; 339
	i32 261, ; 340
	i32 29, ; 341
	i32 103, ; 342
	i32 14, ; 343
	i32 187, ; 344
	i32 126, ; 345
	i32 297, ; 346
	i32 254, ; 347
	i32 329, ; 348
	i32 91, ; 349
	i32 318, ; 350
	i32 274, ; 351
	i32 9, ; 352
	i32 205, ; 353
	i32 86, ; 354
	i32 308, ; 355
	i32 341, ; 356
	i32 193, ; 357
	i32 383, ; 358
	i32 71, ; 359
	i32 166, ; 360
	i32 1, ; 361
	i32 328, ; 362
	i32 5, ; 363
	i32 383, ; 364
	i32 44, ; 365
	i32 27, ; 366
	i32 356, ; 367
	i32 206, ; 368
	i32 204, ; 369
	i32 156, ; 370
	i32 331, ; 371
	i32 112, ; 372
	i32 393, ; 373
	i32 230, ; 374
	i32 121, ; 375
	i32 226, ; 376
	i32 171, ; 377
	i32 346, ; 378
	i32 287, ; 379
	i32 192, ; 380
	i32 157, ; 381
	i32 131, ; 382
	i32 351, ; 383
	i32 57, ; 384
	i32 235, ; 385
	i32 136, ; 386
	i32 83, ; 387
	i32 30, ; 388
	i32 298, ; 389
	i32 10, ; 390
	i32 348, ; 391
	i32 169, ; 392
	i32 295, ; 393
	i32 148, ; 394
	i32 94, ; 395
	i32 188, ; 396
	i32 308, ; 397
	i32 60, ; 398
	i32 219, ; 399
	i32 259, ; 400
	i32 155, ; 401
	i32 368, ; 402
	i32 266, ; 403
	i32 176, ; 404
	i32 0, ; 405
	i32 250, ; 406
	i32 64, ; 407
	i32 88, ; 408
	i32 79, ; 409
	i32 47, ; 410
	i32 257, ; 411
	i32 141, ; 412
	i32 365, ; 413
	i32 233, ; 414
	i32 357, ; 415
	i32 302, ; 416
	i32 74, ; 417
	i32 196, ; 418
	i32 91, ; 419
	i32 354, ; 420
	i32 212, ; 421
	i32 135, ; 422
	i32 90, ; 423
	i32 340, ; 424
	i32 360, ; 425
	i32 299, ; 426
	i32 220, ; 427
	i32 363, ; 428
	i32 215, ; 429
	i32 112, ; 430
	i32 42, ; 431
	i32 157, ; 432
	i32 4, ; 433
	i32 103, ; 434
	i32 242, ; 435
	i32 70, ; 436
	i32 228, ; 437
	i32 60, ; 438
	i32 39, ; 439
	i32 289, ; 440
	i32 175, ; 441
	i32 151, ; 442
	i32 194, ; 443
	i32 56, ; 444
	i32 34, ; 445
	i32 216, ; 446
	i32 249, ; 447
	i32 259, ; 448
	i32 286, ; 449
	i32 21, ; 450
	i32 161, ; 451
	i32 198, ; 452
	i32 241, ; 453
	i32 352, ; 454
	i32 374, ; 455
	i32 350, ; 456
	i32 345, ; 457
	i32 138, ; 458
	i32 182, ; 459
	i32 377, ; 460
	i32 252, ; 461
	i32 89, ; 462
	i32 145, ; 463
	i32 301, ; 464
	i32 268, ; 465
	i32 160, ; 466
	i32 330, ; 467
	i32 6, ; 468
	i32 167, ; 469
	i32 31, ; 470
	i32 107, ; 471
	i32 311, ; 472
	i32 270, ; 473
	i32 375, ; 474
	i32 345, ; 475
	i32 248, ; 476
	i32 222, ; 477
	i32 284, ; 478
	i32 338, ; 479
	i32 165, ; 480
	i32 312, ; 481
	i32 138, ; 482
	i32 371, ; 483
	i32 59, ; 484
	i32 142, ; 485
	i32 204, ; 486
	i32 81, ; 487
	i32 272, ; 488
	i32 74, ; 489
	i32 243, ; 490
	i32 244, ; 491
	i32 130, ; 492
	i32 25, ; 493
	i32 7, ; 494
	i32 93, ; 495
	i32 342, ; 496
	i32 276, ; 497
	i32 278, ; 498
	i32 113, ; 499
	i32 0, ; 500
	i32 9, ; 501
	i32 246, ; 502
	i32 270, ; 503
	i32 104, ; 504
	i32 19, ; 505
	i32 178, ; 506
	i32 202, ; 507
	i32 310, ; 508
	i32 324, ; 509
	i32 396, ; 510
	i32 304, ; 511
	i32 33, ; 512
	i32 292, ; 513
	i32 46, ; 514
	i32 264, ; 515
	i32 376, ; 516
	i32 30, ; 517
	i32 293, ; 518
	i32 57, ; 519
	i32 134, ; 520
	i32 114, ; 521
	i32 224, ; 522
	i32 347, ; 523
	i32 389, ; 524
	i32 358, ; 525
	i32 55, ; 526
	i32 253, ; 527
	i32 6, ; 528
	i32 77, ; 529
	i32 303, ; 530
	i32 222, ; 531
	i32 186, ; 532
	i32 111, ; 533
	i32 199, ; 534
	i32 190, ; 535
	i32 200, ; 536
	i32 307, ; 537
	i32 274, ; 538
	i32 102, ; 539
	i32 363, ; 540
	i32 377, ; 541
	i32 220, ; 542
	i32 168, ; 543
	i32 115, ; 544
	i32 371, ; 545
	i32 342, ; 546
	i32 297, ; 547
	i32 196, ; 548
	i32 76, ; 549
	i32 353, ; 550
	i32 85, ; 551
	i32 355, ; 552
	i32 391, ; 553
	i32 290, ; 554
	i32 392, ; 555
	i32 375, ; 556
	i32 240, ; 557
	i32 332, ; 558
	i32 158, ; 559
	i32 2, ; 560
	i32 205, ; 561
	i32 303, ; 562
	i32 202, ; 563
	i32 24, ; 564
	i32 283, ; 565
	i32 32, ; 566
	i32 117, ; 567
	i32 37, ; 568
	i32 16, ; 569
	i32 370, ; 570
	i32 52, ; 571
	i32 373, ; 572
	i32 356, ; 573
	i32 20, ; 574
	i32 277, ; 575
	i32 123, ; 576
	i32 221, ; 577
	i32 152, ; 578
	i32 216, ; 579
	i32 238, ; 580
	i32 310, ; 581
	i32 131, ; 582
	i32 201, ; 583
	i32 365, ; 584
	i32 292, ; 585
	i32 146, ; 586
	i32 226, ; 587
	i32 279, ; 588
	i32 200, ; 589
	i32 120, ; 590
	i32 28, ; 591
	i32 132, ; 592
	i32 100, ; 593
	i32 134, ; 594
	i32 330, ; 595
	i32 203, ; 596
	i32 151, ; 597
	i32 97, ; 598
	i32 125, ; 599
	i32 280, ; 600
	i32 69, ; 601
	i32 72, ; 602
	i32 386, ; 603
	i32 315, ; 604
	i32 333, ; 605
	i32 367, ; 606
	i32 203, ; 607
	i32 275, ; 608
	i32 124, ; 609
	i32 211, ; 610
	i32 71, ; 611
	i32 111, ; 612
	i32 325, ; 613
	i32 236, ; 614
	i32 150, ; 615
	i32 378, ; 616
	i32 214, ; 617
	i32 394, ; 618
	i32 353, ; 619
	i32 118, ; 620
	i32 213, ; 621
	i32 301, ; 622
	i32 173, ; 623
	i32 395, ; 624
	i32 362, ; 625
	i32 127, ; 626
	i32 133, ; 627
	i32 237, ; 628
	i32 77, ; 629
	i32 46, ; 630
	i32 304, ; 631
	i32 217, ; 632
	i32 73, ; 633
	i32 63, ; 634
	i32 239, ; 635
	i32 98, ; 636
	i32 84, ; 637
	i32 379, ; 638
	i32 43, ; 639
	i32 61, ; 640
	i32 331, ; 641
	i32 213, ; 642
	i32 232, ; 643
	i32 37, ; 644
	i32 40, ; 645
	i32 294, ; 646
	i32 359, ; 647
	i32 158, ; 648
	i32 207, ; 649
	i32 98, ; 650
	i32 247, ; 651
	i32 299, ; 652
	i32 237, ; 653
	i32 184, ; 654
	i32 269, ; 655
	i32 241, ; 656
	i32 135, ; 657
	i32 20, ; 658
	i32 65, ; 659
	i32 366, ; 660
	i32 125, ; 661
	i32 75, ; 662
	i32 197, ; 663
	i32 323, ; 664
	i32 180, ; 665
	i32 162, ; 666
	i32 238, ; 667
	i32 171, ; 668
	i32 210, ; 669
	i32 154, ; 670
	i32 366, ; 671
	i32 5, ; 672
	i32 246, ; 673
	i32 374, ; 674
	i32 49, ; 675
	i32 337, ; 676
	i32 367, ; 677
	i32 142, ; 678
	i32 235, ; 679
	i32 137, ; 680
	i32 198, ; 681
	i32 100, ; 682
	i32 256, ; 683
	i32 123, ; 684
	i32 120, ; 685
	i32 140, ; 686
	i32 39, ; 687
	i32 68, ; 688
	i32 189, ; 689
	i32 251, ; 690
	i32 41, ; 691
	i32 254, ; 692
	i32 162, ; 693
	i32 73, ; 694
	i32 380, ; 695
	i32 163, ; 696
	i32 249, ; 697
	i32 127, ; 698
	i32 218, ; 699
	i32 309, ; 700
	i32 358, ; 701
	i32 68, ; 702
	i32 167, ; 703
	i32 189, ; 704
	i32 212, ; 705
	i32 322, ; 706
	i32 296, ; 707
	i32 174, ; 708
	i32 261, ; 709
	i32 329, ; 710
	i32 149, ; 711
	i32 45, ; 712
	i32 108, ; 713
	i32 48, ; 714
	i32 96, ; 715
	i32 31, ; 716
	i32 214, ; 717
	i32 23, ; 718
	i32 164, ; 719
	i32 22, ; 720
	i32 175, ; 721
	i32 136, ; 722
	i32 78, ; 723
	i32 387, ; 724
	i32 54, ; 725
	i32 322, ; 726
	i32 327, ; 727
	i32 10, ; 728
	i32 285, ; 729
	i32 326, ; 730
	i32 313, ; 731
	i32 234, ; 732
	i32 177, ; 733
	i32 16, ; 734
	i32 182, ; 735
	i32 394, ; 736
	i32 137, ; 737
	i32 262, ; 738
	i32 13, ; 739
	i32 15, ; 740
	i32 122, ; 741
	i32 244, ; 742
	i32 87, ; 743
	i32 147, ; 744
	i32 22, ; 745
	i32 208, ; 746
	i32 34, ; 747
	i32 79, ; 748
	i32 372, ; 749
	i32 351, ; 750
	i32 387, ; 751
	i32 267, ; 752
	i32 145, ; 753
	i32 80, ; 754
	i32 370, ; 755
	i32 173, ; 756
	i32 272, ; 757
	i32 172, ; 758
	i32 278, ; 759
	i32 382, ; 760
	i32 42, ; 761
	i32 26, ; 762
	i32 393, ; 763
	i32 324, ; 764
	i32 321, ; 765
	i32 107, ; 766
	i32 191, ; 767
	i32 110, ; 768
	i32 215, ; 769
	i32 7, ; 770
	i32 354, ; 771
	i32 262, ; 772
	i32 44, ; 773
	i32 361, ; 774
	i32 159, ; 775
	i32 229, ; 776
	i32 146, ; 777
	i32 381, ; 778
	i32 290, ; 779
	i32 326, ; 780
	i32 38, ; 781
	i32 15, ; 782
	i32 271, ; 783
	i32 144, ; 784
	i32 8, ; 785
	i32 307, ; 786
	i32 328, ; 787
	i32 130, ; 788
	i32 376, ; 789
	i32 344, ; 790
	i32 206, ; 791
	i32 273, ; 792
	i32 94 ; 793
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
