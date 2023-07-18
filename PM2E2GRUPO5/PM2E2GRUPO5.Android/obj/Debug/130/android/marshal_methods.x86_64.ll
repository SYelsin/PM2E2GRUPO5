; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [206 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 47
	i64 36566780792416732, ; 1: ImageButton.Android.dll => 0x81e94b1bb629dc => 9
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 12
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 37
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 69
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 70
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 56
	i64 687654259221141486, ; 7: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 88
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 50
	i64 752551065888543710, ; 10: Plugin.AudioRecorder => 0xa7199350da0d3de => 15
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 46
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 96
	i64 996343623809489702, ; 13: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 84
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 102
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 86
	i64 1315114680217950157, ; 16: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 32
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1451832606041849089, ; 18: SignaturePad.Forms.dll => 0x1425f21024743d01 => 19
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 30
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 58
	i64 1636321030536304333, ; 21: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 51
	i64 1731380447121279447, ; 22: Newtonsoft.Json => 0x18071957e9b889d7 => 14
	i64 1795316252682057001, ; 23: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 31
	i64 1836611346387731153, ; 24: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 69
	i64 1875917498431009007, ; 25: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 28
	i64 1981742497975770890, ; 26: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 57
	i64 2133195048986300728, ; 27: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 14
	i64 2136356949452311481, ; 28: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 62
	i64 2165725771938924357, ; 29: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 35
	i64 2262844636196693701, ; 30: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 46
	i64 2284400282711631002, ; 31: System.Web.Services => 0x1fb3d1f42fd4249a => 101
	i64 2329709569556905518, ; 32: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 54
	i64 2470498323731680442, ; 33: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 41
	i64 2479423007379663237, ; 34: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 74
	i64 2489738558632930771, ; 35: Acr.UserDialogs.dll => 0x228d540722e8add3 => 5
	i64 2497223385847772520, ; 36: System.Runtime => 0x22a7eb7046413568 => 24
	i64 2547086958574651984, ; 37: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 27
	i64 2592350477072141967, ; 38: System.Xml.dll => 0x23f9e10627330e8f => 25
	i64 2617202498442894551, ; 39: PM2E2GRUPO5.Android.dll => 0x24522bce48f41cd7 => 0
	i64 2624866290265602282, ; 40: mscorlib.dll => 0x246d65fbde2db8ea => 13
	i64 2694427813909235223, ; 41: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 66
	i64 2960931600190307745, ; 42: Xamarin.Forms.Core => 0x2917579a49927da1 => 80
	i64 3017704767998173186, ; 43: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 86
	i64 3289520064315143713, ; 44: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 53
	i64 3303437397778967116, ; 45: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 29
	i64 3311221304742556517, ; 46: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 23
	i64 3411255996856937470, ; 47: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 89
	i64 3429608235731008177, ; 48: PM2E2GRUPO5 => 0x2f986a8501803ab1 => 17
	i64 3493805808809882663, ; 49: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 72
	i64 3522470458906976663, ; 50: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 71
	i64 3531994851595924923, ; 51: System.Numerics => 0x31042a9aade235bb => 22
	i64 3571415421602489686, ; 52: System.Runtime.dll => 0x319037675df7e556 => 24
	i64 3716579019761409177, ; 53: netstandard.dll => 0x3393f0ed5c8c5c99 => 94
	i64 3727469159507183293, ; 54: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 68
	i64 3772598417116884899, ; 55: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 47
	i64 4247996603072512073, ; 56: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 91
	i64 4525561845656915374, ; 57: System.ServiceModel.Internals => 0x3ece06856b710dae => 92
	i64 4636684751163556186, ; 58: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 76
	i64 4782108999019072045, ; 59: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 34
	i64 4794310189461587505, ; 60: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 27
	i64 4795410492532947900, ; 61: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 71
	i64 5081566143765835342, ; 62: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 63: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5142919913060024034, ; 64: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 83
	i64 5162147942777817236, ; 65: PM2E2GRUPO5.dll => 0x47a3a23427490894 => 17
	i64 5202753749449073649, ; 66: Plugin.Media => 0x4833e4f841be63f1 => 16
	i64 5203618020066742981, ; 67: Xamarin.Essentials => 0x4836f704f0e652c5 => 79
	i64 5205316157927637098, ; 68: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 60
	i64 5256995213548036366, ; 69: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 81
	i64 5348796042099802469, ; 70: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 61
	i64 5376510917114486089, ; 71: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 74
	i64 5408338804355907810, ; 72: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 73
	i64 5451019430259338467, ; 73: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 40
	i64 5507995362134886206, ; 74: System.Core.dll => 0x4c705499688c873e => 20
	i64 5692067934154308417, ; 75: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 78
	i64 5757522595884336624, ; 76: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 38
	i64 5814345312393086621, ; 77: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 66
	i64 5819465594466874502, ; 78: SignaturePad.Forms => 0x50c2e52014ce3486 => 19
	i64 5896680224035167651, ; 79: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 55
	i64 6085203216496545422, ; 80: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 84
	i64 6086316965293125504, ; 81: FormsViewGroup.dll => 0x5476f10882baef80 => 7
	i64 6319713645133255417, ; 82: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 56
	i64 6401687960814735282, ; 83: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 54
	i64 6504860066809920875, ; 84: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 35
	i64 6548213210057960872, ; 85: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 44
	i64 6591024623626361694, ; 86: System.Web.Services.dll => 0x5b7805f9751a1b5e => 101
	i64 6659513131007730089, ; 87: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 50
	i64 6876862101832370452, ; 88: System.Xml.Linq => 0x5f6f85a57d108914 => 26
	i64 6894844156784520562, ; 89: System.Numerics.Vectors => 0x5faf683aead1ad72 => 23
	i64 7036436454368433159, ; 90: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 52
	i64 7103753931438454322, ; 91: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 49
	i64 7141281584637745974, ; 92: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 90
	i64 7488575175965059935, ; 93: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 26
	i64 7635363394907363464, ; 94: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 80
	i64 7637365915383206639, ; 95: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 79
	i64 7654504624184590948, ; 96: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7820441508502274321, ; 97: System.Data => 0x6c87ca1e14ff8111 => 95
	i64 7836164640616011524, ; 98: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 30
	i64 7875371864198757046, ; 99: AndHUD.dll => 0x6d4af0fc27ac3ab6 => 6
	i64 8044118961405839122, ; 100: System.ComponentModel.Composition => 0x6fa2739369944712 => 100
	i64 8083354569033831015, ; 101: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 53
	i64 8100625105355350061, ; 102: ImageButton.Abstractions => 0x706b339d4751202d => 8
	i64 8103644804370223335, ; 103: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 97
	i64 8167236081217502503, ; 104: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 10
	i64 8398329775253868912, ; 105: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 39
	i64 8400357532724379117, ; 106: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 65
	i64 8601935802264776013, ; 107: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 73
	i64 8626175481042262068, ; 108: Java.Interop => 0x77b654e585b55834 => 10
	i64 8639588376636138208, ; 109: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 64
	i64 8684531736582871431, ; 110: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 99
	i64 9204985915777225577, ; 111: PM2E2GRUPO5.Android => 0x7fbeadeb98601369 => 0
	i64 9312692141327339315, ; 112: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 78
	i64 9324707631942237306, ; 113: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 31
	i64 9662334977499516867, ; 114: System.Numerics.dll => 0x8617827802b0cfc3 => 22
	i64 9678050649315576968, ; 115: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 41
	i64 9711637524876806384, ; 116: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 61
	i64 9780723996889434231, ; 117: AndHUD => 0x87bc1ca798bbc877 => 6
	i64 9808709177481450983, ; 118: Mono.Android.dll => 0x881f890734e555e7 => 12
	i64 9825649861376906464, ; 119: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 38
	i64 9834056768316610435, ; 120: System.Transactions.dll => 0x8879968718899783 => 96
	i64 9875200773399460291, ; 121: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 88
	i64 9998632235833408227, ; 122: Mono.Security => 0x8ac2470b209ebae3 => 102
	i64 10038780035334861115, ; 123: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10229024438826829339, ; 124: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 44
	i64 10376576884623852283, ; 125: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 72
	i64 10430153318873392755, ; 126: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 42
	i64 10711253087367462082, ; 127: ImageButton.Abstractions.dll => 0x94a603eeabd7fcc2 => 8
	i64 10775409704848971057, ; 128: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 82
	i64 10847732767863316357, ; 129: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 32
	i64 11023048688141570732, ; 130: System.Core => 0x98f9bc61168392ac => 20
	i64 11037814507248023548, ; 131: System.Xml => 0x992e31d0412bf7fc => 25
	i64 11162124722117608902, ; 132: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 77
	i64 11340910727871153756, ; 133: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 43
	i64 11392833485892708388, ; 134: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 67
	i64 11444370155346000636, ; 135: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 81
	i64 11529969570048099689, ; 136: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 77
	i64 11578238080964724296, ; 137: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 52
	i64 11580057168383206117, ; 138: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 28
	i64 11597940890313164233, ; 139: netstandard => 0xa0f429ca8d1805c9 => 94
	i64 11672361001936329215, ; 140: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 49
	i64 11999166035137088330, ; 141: Plugin.AudioRecorder.dll => 0xa68599ef45474b4a => 15
	i64 12006736334756399793, ; 142: SignaturePad => 0xa6a07f1500ee4ab1 => 18
	i64 12137774235383566651, ; 143: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 75
	i64 12450197211230333945, ; 144: SignaturePad.dll => 0xacc7fc664ef16bf9 => 18
	i64 12451044538927396471, ; 145: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 48
	i64 12466513435562512481, ; 146: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 59
	i64 12487638416075308985, ; 147: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 45
	i64 12538491095302438457, ; 148: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 36
	i64 12550732019250633519, ; 149: System.IO.Compression => 0xae2d28465e8e1b2f => 98
	i64 12700543734426720211, ; 150: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 37
	i64 12963446364377008305, ; 151: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13370592475155966277, ; 152: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13401370062847626945, ; 153: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 75
	i64 13404347523447273790, ; 154: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 39
	i64 13454009404024712428, ; 155: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 87
	i64 13491513212026656886, ; 156: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 33
	i64 13572454107664307259, ; 157: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 68
	i64 13643785327914841093, ; 158: Plugin.Media.dll => 0xbd587677c60cf405 => 16
	i64 13647894001087880694, ; 159: System.Data.dll => 0xbd670f48cb071df6 => 95
	i64 13959074834287824816, ; 160: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 48
	i64 13967638549803255703, ; 161: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 83
	i64 14124974489674258913, ; 162: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 36
	i64 14125464355221830302, ; 163: System.Threading.dll => 0xc407bafdbc707a9e => 93
	i64 14161076099266624234, ; 164: Acr.UserDialogs => 0xc4863faf060fbaea => 5
	i64 14172845254133543601, ; 165: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 62
	i64 14261073672896646636, ; 166: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 67
	i64 14486659737292545672, ; 167: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 55
	i64 14644440854989303794, ; 168: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 60
	i64 14792063746108907174, ; 169: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 87
	i64 14852515768018889994, ; 170: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 43
	i64 14987728460634540364, ; 171: System.IO.Compression.dll => 0xcfff1ba06622494c => 98
	i64 14988210264188246988, ; 172: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 45
	i64 15370334346939861994, ; 173: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 42
	i64 15582737692548360875, ; 174: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 58
	i64 15609085926864131306, ; 175: System.dll => 0xd89e9cf3334914ea => 21
	i64 15755130415872203602, ; 176: ImageButton.Android => 0xdaa577a39403db52 => 9
	i64 15777549416145007739, ; 177: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 70
	i64 15810740023422282496, ; 178: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 85
	i64 15930129725311349754, ; 179: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 91
	i64 16154507427712707110, ; 180: System => 0xe03056ea4e39aa26 => 21
	i64 16154700047849151294, ; 181: Material.Icons => 0xe031061a2d08db3e => 11
	i64 16565028646146589191, ; 182: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 100
	i64 16621146507174665210, ; 183: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 40
	i64 16677317093839702854, ; 184: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 65
	i64 16822611501064131242, ; 185: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 97
	i64 16833383113903931215, ; 186: mscorlib => 0xe99c30c1484d7f4f => 13
	i64 17024911836938395553, ; 187: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 29
	i64 17031351772568316411, ; 188: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 63
	i64 17037200463775726619, ; 189: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 51
	i64 17544493274320527064, ; 190: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 34
	i64 17704177640604968747, ; 191: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 59
	i64 17710060891934109755, ; 192: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 57
	i64 17816041456001989629, ; 193: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 82
	i64 17882897186074144999, ; 194: FormsViewGroup => 0xf82cd03e3ac830e7 => 7
	i64 17892495832318972303, ; 195: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 85
	i64 17928294245072900555, ; 196: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 99
	i64 17969331831154222830, ; 197: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 90
	i64 17986907704309214542, ; 198: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 89
	i64 18025913125965088385, ; 199: System.Threading => 0xfa28e87b91334681 => 93
	i64 18116111925905154859, ; 200: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 33
	i64 18121036031235206392, ; 201: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 63
	i64 18129453464017766560, ; 202: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 92
	i64 18264580318985419235, ; 203: Material.Icons.dll => 0xfd78d307bcb779e3 => 11
	i64 18305135509493619199, ; 204: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 64
	i64 18380184030268848184 ; 205: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 76
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [206 x i32] [
	i32 47, i32 9, i32 12, i32 37, i32 69, i32 70, i32 56, i32 88, ; 0..7
	i32 1, i32 50, i32 15, i32 46, i32 96, i32 84, i32 102, i32 86, ; 8..15
	i32 32, i32 4, i32 19, i32 30, i32 58, i32 51, i32 14, i32 31, ; 16..23
	i32 69, i32 28, i32 57, i32 14, i32 62, i32 35, i32 46, i32 101, ; 24..31
	i32 54, i32 41, i32 74, i32 5, i32 24, i32 27, i32 25, i32 0, ; 32..39
	i32 13, i32 66, i32 80, i32 86, i32 53, i32 29, i32 23, i32 89, ; 40..47
	i32 17, i32 72, i32 71, i32 22, i32 24, i32 94, i32 68, i32 47, ; 48..55
	i32 91, i32 92, i32 76, i32 34, i32 27, i32 71, i32 2, i32 2, ; 56..63
	i32 83, i32 17, i32 16, i32 79, i32 60, i32 81, i32 61, i32 74, ; 64..71
	i32 73, i32 40, i32 20, i32 78, i32 38, i32 66, i32 19, i32 55, ; 72..79
	i32 84, i32 7, i32 56, i32 54, i32 35, i32 44, i32 101, i32 50, ; 80..87
	i32 26, i32 23, i32 52, i32 49, i32 90, i32 26, i32 80, i32 79, ; 88..95
	i32 3, i32 95, i32 30, i32 6, i32 100, i32 53, i32 8, i32 97, ; 96..103
	i32 10, i32 39, i32 65, i32 73, i32 10, i32 64, i32 99, i32 0, ; 104..111
	i32 78, i32 31, i32 22, i32 41, i32 61, i32 6, i32 12, i32 38, ; 112..119
	i32 96, i32 88, i32 102, i32 3, i32 44, i32 72, i32 42, i32 8, ; 120..127
	i32 82, i32 32, i32 20, i32 25, i32 77, i32 43, i32 67, i32 81, ; 128..135
	i32 77, i32 52, i32 28, i32 94, i32 49, i32 15, i32 18, i32 75, ; 136..143
	i32 18, i32 48, i32 59, i32 45, i32 36, i32 98, i32 37, i32 1, ; 144..151
	i32 4, i32 75, i32 39, i32 87, i32 33, i32 68, i32 16, i32 95, ; 152..159
	i32 48, i32 83, i32 36, i32 93, i32 5, i32 62, i32 67, i32 55, ; 160..167
	i32 60, i32 87, i32 43, i32 98, i32 45, i32 42, i32 58, i32 21, ; 168..175
	i32 9, i32 70, i32 85, i32 91, i32 21, i32 11, i32 100, i32 40, ; 176..183
	i32 65, i32 97, i32 13, i32 29, i32 63, i32 51, i32 34, i32 59, ; 184..191
	i32 57, i32 82, i32 7, i32 85, i32 99, i32 90, i32 89, i32 93, ; 192..199
	i32 33, i32 63, i32 92, i32 11, i32 64, i32 76 ; 200..205
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
