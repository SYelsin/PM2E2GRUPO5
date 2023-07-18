; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [206 x i32] [
	i32 2281695, ; 0: ImageButton.Android => 0x22d0df => 9
	i32 14013194, ; 1: Plugin.AudioRecorder.dll => 0xd5d30a => 15
	i32 32687329, ; 2: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 56
	i32 34715100, ; 3: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 87
	i32 39109920, ; 4: Newtonsoft.Json.dll => 0x254c520 => 14
	i32 57263871, ; 5: Xamarin.Forms.Core.dll => 0x369c6ff => 80
	i32 88799905, ; 6: Acr.UserDialogs => 0x54afaa1 => 5
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 70
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 70
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 37
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 71
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 35
	i32 212497893, ; 12: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 81
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 51
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 101
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 40
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 55
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 49
	i32 296238795, ; 18: PM2E2GRUPO5.Android => 0x11a83ecb => 0
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 27
	i32 319314094, ; 20: Xamarin.Forms.Maps => 0x130858ae => 82
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 22
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 53
	i32 367216257, ; 23: Plugin.AudioRecorder => 0x15e34681 => 15
	i32 441335492, ; 24: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 39
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 79
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 48
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 13
	i32 469710990, ; 28: System.dll => 0x1bff388e => 21
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 49
	i32 486703764, ; 30: Material.Icons => 0x1d028294 => 11
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 60
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 96
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 99
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 44
	i32 663517072, ; 35: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 76
	i32 666292255, ; 36: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 32
	i32 690569205, ; 37: System.Xml.Linq.dll => 0x29293ff5 => 26
	i32 691439157, ; 38: Acr.UserDialogs.dll => 0x29368635 => 5
	i32 775507847, ; 39: System.IO.Compression => 0x2e394f87 => 98
	i32 802720955, ; 40: SignaturePad => 0x2fd88cbb => 18
	i32 809851609, ; 41: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 42: Xamarin.AndroidX.Print => 0x3246f6cd => 67
	i32 903406257, ; 43: SignaturePad.dll => 0x35d8e2b1 => 18
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 87
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 14
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 53
	i32 974778368, ; 47: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 1012816738, ; 48: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 69
	i32 1035644815, ; 49: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 31
	i32 1042160112, ; 50: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 84
	i32 1052210849, ; 51: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 57
	i32 1098259244, ; 52: System => 0x41761b2c => 21
	i32 1104002344, ; 53: Plugin.Media => 0x41cdbd28 => 16
	i32 1175144683, ; 54: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 74
	i32 1178241025, ; 55: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 64
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 32
	i32 1267360935, ; 57: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 75
	i32 1293217323, ; 58: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 46
	i32 1365406463, ; 59: System.ServiceModel.Internals.dll => 0x516272ff => 92
	i32 1376866003, ; 60: Xamarin.AndroidX.SavedState => 0x52114ed3 => 69
	i32 1379779777, ; 61: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 62: Xamarin.AndroidX.Media.dll => 0x5333188f => 61
	i32 1406073936, ; 63: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 41
	i32 1460219004, ; 64: Xamarin.Forms.Xaml => 0x57092c7c => 85
	i32 1462112819, ; 65: System.IO.Compression.dll => 0x57261233 => 98
	i32 1469204771, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 30
	i32 1530663695, ; 67: Xamarin.Forms.Maps.dll => 0x5b3c130f => 82
	i32 1539122808, ; 68: ImageButton.Abstractions => 0x5bbd2678 => 8
	i32 1582372066, ; 69: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 45
	i32 1592978981, ; 70: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1620241717, ; 71: PM2E2GRUPO5.Android.dll => 0x6092ed35 => 0
	i32 1622152042, ; 72: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 59
	i32 1624863272, ; 73: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 78
	i32 1636350590, ; 74: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 43
	i32 1639515021, ; 75: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 76: System.Runtime => 0x62c6282e => 24
	i32 1658241508, ; 77: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 72
	i32 1658251792, ; 78: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 86
	i32 1670060433, ; 79: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 40
	i32 1729485958, ; 80: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 36
	i32 1766324549, ; 81: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 71
	i32 1776026572, ; 82: System.Core.dll => 0x69dc03cc => 20
	i32 1788241197, ; 83: Xamarin.AndroidX.Fragment => 0x6a96652d => 48
	i32 1808609942, ; 84: Xamarin.AndroidX.Loader => 0x6bcd3296 => 59
	i32 1813201214, ; 85: Xamarin.Google.Android.Material => 0x6c13413e => 86
	i32 1818569960, ; 86: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 65
	i32 1853917385, ; 87: PM2E2GRUPO5 => 0x6e8088c9 => 17
	i32 1867746548, ; 88: Xamarin.Essentials.dll => 0x6f538cf4 => 79
	i32 1878053835, ; 89: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 85
	i32 1881862856, ; 90: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 81
	i32 1885316902, ; 91: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 33
	i32 1900610850, ; 92: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1908813208, ; 93: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 89
	i32 1919157823, ; 94: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 62
	i32 1991544456, ; 95: SignaturePad.Forms.dll => 0x76b48e88 => 19
	i32 2019465201, ; 96: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 57
	i32 2048185678, ; 97: Plugin.Media.dll => 0x7a14d54e => 16
	i32 2055257422, ; 98: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 54
	i32 2079903147, ; 99: System.Runtime.dll => 0x7bf8cdab => 24
	i32 2090596640, ; 100: System.Numerics.Vectors => 0x7c9bf920 => 23
	i32 2097448633, ; 101: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 50
	i32 2126786730, ; 102: Xamarin.Forms.Platform.Android => 0x7ec430aa => 83
	i32 2129483829, ; 103: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 88
	i32 2201231467, ; 104: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 105: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 74
	i32 2244775296, ; 106: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 60
	i32 2256548716, ; 107: Xamarin.AndroidX.MultiDex => 0x8680336c => 62
	i32 2261435625, ; 108: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 52
	i32 2279755925, ; 109: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 68
	i32 2289062441, ; 110: PM2E2GRUPO5.dll => 0x88705229 => 17
	i32 2315684594, ; 111: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 28
	i32 2409053734, ; 112: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 66
	i32 2465532216, ; 113: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 39
	i32 2471841756, ; 114: netstandard.dll => 0x93554fdc => 94
	i32 2475788418, ; 115: Java.Interop.dll => 0x93918882 => 10
	i32 2501346920, ; 116: System.Data.DataSetExtensions => 0x95178668 => 97
	i32 2505896520, ; 117: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 56
	i32 2563143864, ; 118: AndHUD.dll => 0x98c678b8 => 6
	i32 2581819634, ; 119: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 75
	i32 2620871830, ; 120: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 43
	i32 2624644809, ; 121: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 47
	i32 2633051222, ; 122: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 55
	i32 2701096212, ; 123: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 72
	i32 2732626843, ; 124: Xamarin.AndroidX.Activity => 0xa2e0939b => 27
	i32 2737747696, ; 125: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 30
	i32 2766581644, ; 126: Xamarin.Forms.Core => 0xa4e6af8c => 80
	i32 2778768386, ; 127: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 77
	i32 2810250172, ; 128: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 41
	i32 2819470561, ; 129: System.Xml.dll => 0xa80db4e1 => 25
	i32 2847418871, ; 130: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 88
	i32 2853208004, ; 131: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 77
	i32 2855708567, ; 132: Xamarin.AndroidX.Transition => 0xaa36a797 => 73
	i32 2903344695, ; 133: System.ComponentModel.Composition => 0xad0d8637 => 100
	i32 2905242038, ; 134: mscorlib.dll => 0xad2a79b6 => 13
	i32 2916838712, ; 135: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 78
	i32 2919462931, ; 136: System.Numerics.Vectors.dll => 0xae037813 => 23
	i32 2921128767, ; 137: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 29
	i32 2978675010, ; 138: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 46
	i32 3017076677, ; 139: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 90
	i32 3024354802, ; 140: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 51
	i32 3044182254, ; 141: FormsViewGroup => 0xb57288ee => 7
	i32 3057625584, ; 142: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 63
	i32 3058099980, ; 143: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 91
	i32 3111772706, ; 144: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3145787395, ; 145: ImageButton.Abstractions.dll => 0xbb80e803 => 8
	i32 3204380047, ; 146: System.Data.dll => 0xbefef58f => 95
	i32 3211777861, ; 147: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 45
	i32 3220365878, ; 148: System.Threading => 0xbff2e236 => 93
	i32 3230466174, ; 149: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 89
	i32 3247949154, ; 150: Mono.Security => 0xc197c562 => 102
	i32 3258312781, ; 151: Xamarin.AndroidX.CardView => 0xc235e84d => 36
	i32 3266548221, ; 152: Material.Icons.dll => 0xc2b391fd => 11
	i32 3267021929, ; 153: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 34
	i32 3317135071, ; 154: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 44
	i32 3317144872, ; 155: System.Data => 0xc5b79d28 => 95
	i32 3340431453, ; 156: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 33
	i32 3346324047, ; 157: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 64
	i32 3353484488, ; 158: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 50
	i32 3362522851, ; 159: Xamarin.AndroidX.Core => 0xc86c06e3 => 42
	i32 3366347497, ; 160: Java.Interop => 0xc8a662e9 => 10
	i32 3374999561, ; 161: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 68
	i32 3389855599, ; 162: ImageButton.Android.dll => 0xca0d176f => 9
	i32 3404865022, ; 163: System.ServiceModel.Internals => 0xcaf21dfe => 92
	i32 3429136800, ; 164: System.Xml => 0xcc6479a0 => 25
	i32 3430777524, ; 165: netstandard => 0xcc7d82b4 => 94
	i32 3441283291, ; 166: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 47
	i32 3442543374, ; 167: AndHUD => 0xcd310b0e => 6
	i32 3476120550, ; 168: Mono.Android => 0xcf3163e6 => 12
	i32 3486566296, ; 169: System.Transactions => 0xcfd0c798 => 96
	i32 3493954962, ; 170: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 38
	i32 3501239056, ; 171: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 34
	i32 3509114376, ; 172: System.Xml.Linq => 0xd128d608 => 26
	i32 3536029504, ; 173: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 83
	i32 3567349600, ; 174: System.ComponentModel.Composition.dll => 0xd4a16f60 => 100
	i32 3618140916, ; 175: Xamarin.AndroidX.Preference => 0xd7a872f4 => 66
	i32 3627220390, ; 176: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 67
	i32 3632359727, ; 177: Xamarin.Forms.Platform => 0xd881692f => 84
	i32 3633644679, ; 178: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 29
	i32 3641597786, ; 179: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 54
	i32 3672681054, ; 180: Mono.Android.dll => 0xdae8aa5e => 12
	i32 3676310014, ; 181: System.Web.Services.dll => 0xdb2009fe => 101
	i32 3682565725, ; 182: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 35
	i32 3684561358, ; 183: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 38
	i32 3689375977, ; 184: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3718780102, ; 185: Xamarin.AndroidX.Annotation => 0xdda814c6 => 28
	i32 3724971120, ; 186: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 63
	i32 3758932259, ; 187: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 52
	i32 3786282454, ; 188: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 37
	i32 3822602673, ; 189: Xamarin.AndroidX.Media => 0xe3d849b1 => 61
	i32 3829621856, ; 190: System.Numerics.dll => 0xe4436460 => 22
	i32 3885922214, ; 191: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 73
	i32 3896760992, ; 192: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 42
	i32 3920810846, ; 193: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 99
	i32 3921031405, ; 194: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 76
	i32 3931092270, ; 195: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 65
	i32 3945713374, ; 196: System.Data.DataSetExtensions.dll => 0xeb2ecede => 97
	i32 3955647286, ; 197: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 31
	i32 3970018735, ; 198: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 91
	i32 4071430779, ; 199: SignaturePad.Forms => 0xf2ad1a7b => 19
	i32 4073602200, ; 200: System.Threading.dll => 0xf2ce3c98 => 93
	i32 4105002889, ; 201: Mono.Security.dll => 0xf4ad5f89 => 102
	i32 4151237749, ; 202: System.Core => 0xf76edc75 => 20
	i32 4182413190, ; 203: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 58
	i32 4278134329, ; 204: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 90
	i32 4292120959 ; 205: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 58
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [206 x i32] [
	i32 9, i32 15, i32 56, i32 87, i32 14, i32 80, i32 5, i32 70, ; 0..7
	i32 70, i32 37, i32 71, i32 35, i32 81, i32 51, i32 101, i32 40, ; 8..15
	i32 55, i32 49, i32 0, i32 27, i32 82, i32 22, i32 53, i32 15, ; 16..23
	i32 39, i32 79, i32 48, i32 13, i32 21, i32 49, i32 11, i32 60, ; 24..31
	i32 96, i32 99, i32 44, i32 76, i32 32, i32 26, i32 5, i32 98, ; 32..39
	i32 18, i32 1, i32 67, i32 18, i32 87, i32 14, i32 53, i32 7, ; 40..47
	i32 69, i32 31, i32 84, i32 57, i32 21, i32 16, i32 74, i32 64, ; 48..55
	i32 32, i32 75, i32 46, i32 92, i32 69, i32 2, i32 61, i32 41, ; 56..63
	i32 85, i32 98, i32 30, i32 82, i32 8, i32 45, i32 4, i32 0, ; 64..71
	i32 59, i32 78, i32 43, i32 3, i32 24, i32 72, i32 86, i32 40, ; 72..79
	i32 36, i32 71, i32 20, i32 48, i32 59, i32 86, i32 65, i32 17, ; 80..87
	i32 79, i32 85, i32 81, i32 33, i32 2, i32 89, i32 62, i32 19, ; 88..95
	i32 57, i32 16, i32 54, i32 24, i32 23, i32 50, i32 83, i32 88, ; 96..103
	i32 3, i32 74, i32 60, i32 62, i32 52, i32 68, i32 17, i32 28, ; 104..111
	i32 66, i32 39, i32 94, i32 10, i32 97, i32 56, i32 6, i32 75, ; 112..119
	i32 43, i32 47, i32 55, i32 72, i32 27, i32 30, i32 80, i32 77, ; 120..127
	i32 41, i32 25, i32 88, i32 77, i32 73, i32 100, i32 13, i32 78, ; 128..135
	i32 23, i32 29, i32 46, i32 90, i32 51, i32 7, i32 63, i32 91, ; 136..143
	i32 4, i32 8, i32 95, i32 45, i32 93, i32 89, i32 102, i32 36, ; 144..151
	i32 11, i32 34, i32 44, i32 95, i32 33, i32 64, i32 50, i32 42, ; 152..159
	i32 10, i32 68, i32 9, i32 92, i32 25, i32 94, i32 47, i32 6, ; 160..167
	i32 12, i32 96, i32 38, i32 34, i32 26, i32 83, i32 100, i32 66, ; 168..175
	i32 67, i32 84, i32 29, i32 54, i32 12, i32 101, i32 35, i32 38, ; 176..183
	i32 1, i32 28, i32 63, i32 52, i32 37, i32 61, i32 22, i32 73, ; 184..191
	i32 42, i32 99, i32 76, i32 65, i32 97, i32 31, i32 91, i32 19, ; 192..199
	i32 93, i32 102, i32 20, i32 58, i32 90, i32 58 ; 200..205
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
