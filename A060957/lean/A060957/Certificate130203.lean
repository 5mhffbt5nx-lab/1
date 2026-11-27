import A060957.Data130203

namespace A060957.Case130203
open Finset
set_option maxHeartbeats 0
set_option maxRecDepth 100000

def zeroTest (t : ℕ) : Bool :=
  if N < t then true
  else if t ∣ Z*p^4 then
    if wt t = 0 then decide (t ∈ zeroList.toFinset) else true
  else true

def scan (lo : ℕ) : ℕ → Bool
  | 0 => zeroTest lo
  | k+1 => scan lo k && scan (lo + 2^k) k

lemma scan_sound (k lo t : ℕ) (hlo : lo ≤ t) (hhi : t < lo+2^k)
    (h : scan lo k = true) : zeroTest t = true := by
  induction k generalizing lo with
  | zero =>
    have he : t = lo := by simp at hhi; omega
    subst t
    exact h
  | succ k ih =>
    simp only [scan, Bool.and_eq_true] at h
    by_cases ht : t < lo+2^k
    · exact ih lo hlo ht h.1
    · apply ih (lo+2^k) (by omega) _ h.2
      rw [pow_succ] at hhi
      omega

lemma scan_join (lo k : ℕ) (h1 : scan lo k = true)
    (h2 : scan (lo+2^k) k = true) : scan lo (k+1) = true := by
  simp [scan,h1,h2]

private lemma block_10_0 : scan 0 10 = true := by decide +kernel
private lemma block_10_1 : scan 1024 10 = true := by decide +kernel
private lemma block_10_2 : scan 2048 10 = true := by decide +kernel
private lemma block_10_3 : scan 3072 10 = true := by decide +kernel
private lemma block_10_4 : scan 4096 10 = true := by decide +kernel
private lemma block_10_5 : scan 5120 10 = true := by decide +kernel
private lemma block_10_6 : scan 6144 10 = true := by decide +kernel
private lemma block_10_7 : scan 7168 10 = true := by decide +kernel
private lemma block_10_8 : scan 8192 10 = true := by decide +kernel
private lemma block_10_9 : scan 9216 10 = true := by decide +kernel
private lemma block_10_10 : scan 10240 10 = true := by decide +kernel
private lemma block_10_11 : scan 11264 10 = true := by decide +kernel
private lemma block_10_12 : scan 12288 10 = true := by decide +kernel
private lemma block_10_13 : scan 13312 10 = true := by decide +kernel
private lemma block_10_14 : scan 14336 10 = true := by decide +kernel
private lemma block_10_15 : scan 15360 10 = true := by decide +kernel
private lemma block_10_16 : scan 16384 10 = true := by decide +kernel
private lemma block_10_17 : scan 17408 10 = true := by decide +kernel
private lemma block_10_18 : scan 18432 10 = true := by decide +kernel
private lemma block_10_19 : scan 19456 10 = true := by decide +kernel
private lemma block_10_20 : scan 20480 10 = true := by decide +kernel
private lemma block_10_21 : scan 21504 10 = true := by decide +kernel
private lemma block_10_22 : scan 22528 10 = true := by decide +kernel
private lemma block_10_23 : scan 23552 10 = true := by decide +kernel
private lemma block_10_24 : scan 24576 10 = true := by decide +kernel
private lemma block_10_25 : scan 25600 10 = true := by decide +kernel
private lemma block_10_26 : scan 26624 10 = true := by decide +kernel
private lemma block_10_27 : scan 27648 10 = true := by decide +kernel
private lemma block_10_28 : scan 28672 10 = true := by decide +kernel
private lemma block_10_29 : scan 29696 10 = true := by decide +kernel
private lemma block_10_30 : scan 30720 10 = true := by decide +kernel
private lemma block_10_31 : scan 31744 10 = true := by decide +kernel
private lemma block_10_32 : scan 32768 10 = true := by decide +kernel
private lemma block_10_33 : scan 33792 10 = true := by decide +kernel
private lemma block_10_34 : scan 34816 10 = true := by decide +kernel
private lemma block_10_35 : scan 35840 10 = true := by decide +kernel
private lemma block_10_36 : scan 36864 10 = true := by decide +kernel
private lemma block_10_37 : scan 37888 10 = true := by decide +kernel
private lemma block_10_38 : scan 38912 10 = true := by decide +kernel
private lemma block_10_39 : scan 39936 10 = true := by decide +kernel
private lemma block_10_40 : scan 40960 10 = true := by decide +kernel
private lemma block_10_41 : scan 41984 10 = true := by decide +kernel
private lemma block_10_42 : scan 43008 10 = true := by decide +kernel
private lemma block_10_43 : scan 44032 10 = true := by decide +kernel
private lemma block_10_44 : scan 45056 10 = true := by decide +kernel
private lemma block_10_45 : scan 46080 10 = true := by decide +kernel
private lemma block_10_46 : scan 47104 10 = true := by decide +kernel
private lemma block_10_47 : scan 48128 10 = true := by decide +kernel
private lemma block_10_48 : scan 49152 10 = true := by decide +kernel
private lemma block_10_49 : scan 50176 10 = true := by decide +kernel
private lemma block_10_50 : scan 51200 10 = true := by decide +kernel
private lemma block_10_51 : scan 52224 10 = true := by decide +kernel
private lemma block_10_52 : scan 53248 10 = true := by decide +kernel
private lemma block_10_53 : scan 54272 10 = true := by decide +kernel
private lemma block_10_54 : scan 55296 10 = true := by decide +kernel
private lemma block_10_55 : scan 56320 10 = true := by decide +kernel
private lemma block_10_56 : scan 57344 10 = true := by decide +kernel
private lemma block_10_57 : scan 58368 10 = true := by decide +kernel
private lemma block_10_58 : scan 59392 10 = true := by decide +kernel
private lemma block_10_59 : scan 60416 10 = true := by decide +kernel
private lemma block_10_60 : scan 61440 10 = true := by decide +kernel
private lemma block_10_61 : scan 62464 10 = true := by decide +kernel
private lemma block_10_62 : scan 63488 10 = true := by decide +kernel
private lemma block_10_63 : scan 64512 10 = true := by decide +kernel
private lemma block_10_64 : scan 65536 10 = true := by decide +kernel
private lemma block_10_65 : scan 66560 10 = true := by decide +kernel
private lemma block_10_66 : scan 67584 10 = true := by decide +kernel
private lemma block_10_67 : scan 68608 10 = true := by decide +kernel
private lemma block_10_68 : scan 69632 10 = true := by decide +kernel
private lemma block_10_69 : scan 70656 10 = true := by decide +kernel
private lemma block_10_70 : scan 71680 10 = true := by decide +kernel
private lemma block_10_71 : scan 72704 10 = true := by decide +kernel
private lemma block_10_72 : scan 73728 10 = true := by decide +kernel
private lemma block_10_73 : scan 74752 10 = true := by decide +kernel
private lemma block_10_74 : scan 75776 10 = true := by decide +kernel
private lemma block_10_75 : scan 76800 10 = true := by decide +kernel
private lemma block_10_76 : scan 77824 10 = true := by decide +kernel
private lemma block_10_77 : scan 78848 10 = true := by decide +kernel
private lemma block_10_78 : scan 79872 10 = true := by decide +kernel
private lemma block_10_79 : scan 80896 10 = true := by decide +kernel
private lemma block_10_80 : scan 81920 10 = true := by decide +kernel
private lemma block_10_81 : scan 82944 10 = true := by decide +kernel
private lemma block_10_82 : scan 83968 10 = true := by decide +kernel
private lemma block_10_83 : scan 84992 10 = true := by decide +kernel
private lemma block_10_84 : scan 86016 10 = true := by decide +kernel
private lemma block_10_85 : scan 87040 10 = true := by decide +kernel
private lemma block_10_86 : scan 88064 10 = true := by decide +kernel
private lemma block_10_87 : scan 89088 10 = true := by decide +kernel
private lemma block_10_88 : scan 90112 10 = true := by decide +kernel
private lemma block_10_89 : scan 91136 10 = true := by decide +kernel
private lemma block_10_90 : scan 92160 10 = true := by decide +kernel
private lemma block_10_91 : scan 93184 10 = true := by decide +kernel
private lemma block_10_92 : scan 94208 10 = true := by decide +kernel
private lemma block_10_93 : scan 95232 10 = true := by decide +kernel
private lemma block_10_94 : scan 96256 10 = true := by decide +kernel
private lemma block_10_95 : scan 97280 10 = true := by decide +kernel
private lemma block_10_96 : scan 98304 10 = true := by decide +kernel
private lemma block_10_97 : scan 99328 10 = true := by decide +kernel
private lemma block_10_98 : scan 100352 10 = true := by decide +kernel
private lemma block_10_99 : scan 101376 10 = true := by decide +kernel
private lemma block_10_100 : scan 102400 10 = true := by decide +kernel
private lemma block_10_101 : scan 103424 10 = true := by decide +kernel
private lemma block_10_102 : scan 104448 10 = true := by decide +kernel
private lemma block_10_103 : scan 105472 10 = true := by decide +kernel
private lemma block_10_104 : scan 106496 10 = true := by decide +kernel
private lemma block_10_105 : scan 107520 10 = true := by decide +kernel
private lemma block_10_106 : scan 108544 10 = true := by decide +kernel
private lemma block_10_107 : scan 109568 10 = true := by decide +kernel
private lemma block_10_108 : scan 110592 10 = true := by decide +kernel
private lemma block_10_109 : scan 111616 10 = true := by decide +kernel
private lemma block_10_110 : scan 112640 10 = true := by decide +kernel
private lemma block_10_111 : scan 113664 10 = true := by decide +kernel
private lemma block_10_112 : scan 114688 10 = true := by decide +kernel
private lemma block_10_113 : scan 115712 10 = true := by decide +kernel
private lemma block_10_114 : scan 116736 10 = true := by decide +kernel
private lemma block_10_115 : scan 117760 10 = true := by decide +kernel
private lemma block_10_116 : scan 118784 10 = true := by decide +kernel
private lemma block_10_117 : scan 119808 10 = true := by decide +kernel
private lemma block_10_118 : scan 120832 10 = true := by decide +kernel
private lemma block_10_119 : scan 121856 10 = true := by decide +kernel
private lemma block_10_120 : scan 122880 10 = true := by decide +kernel
private lemma block_10_121 : scan 123904 10 = true := by decide +kernel
private lemma block_10_122 : scan 124928 10 = true := by decide +kernel
private lemma block_10_123 : scan 125952 10 = true := by decide +kernel
private lemma block_10_124 : scan 126976 10 = true := by decide +kernel
private lemma block_10_125 : scan 128000 10 = true := by decide +kernel
private lemma block_10_126 : scan 129024 10 = true := by decide +kernel
private lemma block_10_127 : scan 130048 10 = true := by decide +kernel
private lemma block_11_0 : scan 0 11 = true :=
  scan_join 0 10 block_10_0 block_10_1
private lemma block_11_1 : scan 2048 11 = true :=
  scan_join 2048 10 block_10_2 block_10_3
private lemma block_11_2 : scan 4096 11 = true :=
  scan_join 4096 10 block_10_4 block_10_5
private lemma block_11_3 : scan 6144 11 = true :=
  scan_join 6144 10 block_10_6 block_10_7
private lemma block_11_4 : scan 8192 11 = true :=
  scan_join 8192 10 block_10_8 block_10_9
private lemma block_11_5 : scan 10240 11 = true :=
  scan_join 10240 10 block_10_10 block_10_11
private lemma block_11_6 : scan 12288 11 = true :=
  scan_join 12288 10 block_10_12 block_10_13
private lemma block_11_7 : scan 14336 11 = true :=
  scan_join 14336 10 block_10_14 block_10_15
private lemma block_11_8 : scan 16384 11 = true :=
  scan_join 16384 10 block_10_16 block_10_17
private lemma block_11_9 : scan 18432 11 = true :=
  scan_join 18432 10 block_10_18 block_10_19
private lemma block_11_10 : scan 20480 11 = true :=
  scan_join 20480 10 block_10_20 block_10_21
private lemma block_11_11 : scan 22528 11 = true :=
  scan_join 22528 10 block_10_22 block_10_23
private lemma block_11_12 : scan 24576 11 = true :=
  scan_join 24576 10 block_10_24 block_10_25
private lemma block_11_13 : scan 26624 11 = true :=
  scan_join 26624 10 block_10_26 block_10_27
private lemma block_11_14 : scan 28672 11 = true :=
  scan_join 28672 10 block_10_28 block_10_29
private lemma block_11_15 : scan 30720 11 = true :=
  scan_join 30720 10 block_10_30 block_10_31
private lemma block_11_16 : scan 32768 11 = true :=
  scan_join 32768 10 block_10_32 block_10_33
private lemma block_11_17 : scan 34816 11 = true :=
  scan_join 34816 10 block_10_34 block_10_35
private lemma block_11_18 : scan 36864 11 = true :=
  scan_join 36864 10 block_10_36 block_10_37
private lemma block_11_19 : scan 38912 11 = true :=
  scan_join 38912 10 block_10_38 block_10_39
private lemma block_11_20 : scan 40960 11 = true :=
  scan_join 40960 10 block_10_40 block_10_41
private lemma block_11_21 : scan 43008 11 = true :=
  scan_join 43008 10 block_10_42 block_10_43
private lemma block_11_22 : scan 45056 11 = true :=
  scan_join 45056 10 block_10_44 block_10_45
private lemma block_11_23 : scan 47104 11 = true :=
  scan_join 47104 10 block_10_46 block_10_47
private lemma block_11_24 : scan 49152 11 = true :=
  scan_join 49152 10 block_10_48 block_10_49
private lemma block_11_25 : scan 51200 11 = true :=
  scan_join 51200 10 block_10_50 block_10_51
private lemma block_11_26 : scan 53248 11 = true :=
  scan_join 53248 10 block_10_52 block_10_53
private lemma block_11_27 : scan 55296 11 = true :=
  scan_join 55296 10 block_10_54 block_10_55
private lemma block_11_28 : scan 57344 11 = true :=
  scan_join 57344 10 block_10_56 block_10_57
private lemma block_11_29 : scan 59392 11 = true :=
  scan_join 59392 10 block_10_58 block_10_59
private lemma block_11_30 : scan 61440 11 = true :=
  scan_join 61440 10 block_10_60 block_10_61
private lemma block_11_31 : scan 63488 11 = true :=
  scan_join 63488 10 block_10_62 block_10_63
private lemma block_11_32 : scan 65536 11 = true :=
  scan_join 65536 10 block_10_64 block_10_65
private lemma block_11_33 : scan 67584 11 = true :=
  scan_join 67584 10 block_10_66 block_10_67
private lemma block_11_34 : scan 69632 11 = true :=
  scan_join 69632 10 block_10_68 block_10_69
private lemma block_11_35 : scan 71680 11 = true :=
  scan_join 71680 10 block_10_70 block_10_71
private lemma block_11_36 : scan 73728 11 = true :=
  scan_join 73728 10 block_10_72 block_10_73
private lemma block_11_37 : scan 75776 11 = true :=
  scan_join 75776 10 block_10_74 block_10_75
private lemma block_11_38 : scan 77824 11 = true :=
  scan_join 77824 10 block_10_76 block_10_77
private lemma block_11_39 : scan 79872 11 = true :=
  scan_join 79872 10 block_10_78 block_10_79
private lemma block_11_40 : scan 81920 11 = true :=
  scan_join 81920 10 block_10_80 block_10_81
private lemma block_11_41 : scan 83968 11 = true :=
  scan_join 83968 10 block_10_82 block_10_83
private lemma block_11_42 : scan 86016 11 = true :=
  scan_join 86016 10 block_10_84 block_10_85
private lemma block_11_43 : scan 88064 11 = true :=
  scan_join 88064 10 block_10_86 block_10_87
private lemma block_11_44 : scan 90112 11 = true :=
  scan_join 90112 10 block_10_88 block_10_89
private lemma block_11_45 : scan 92160 11 = true :=
  scan_join 92160 10 block_10_90 block_10_91
private lemma block_11_46 : scan 94208 11 = true :=
  scan_join 94208 10 block_10_92 block_10_93
private lemma block_11_47 : scan 96256 11 = true :=
  scan_join 96256 10 block_10_94 block_10_95
private lemma block_11_48 : scan 98304 11 = true :=
  scan_join 98304 10 block_10_96 block_10_97
private lemma block_11_49 : scan 100352 11 = true :=
  scan_join 100352 10 block_10_98 block_10_99
private lemma block_11_50 : scan 102400 11 = true :=
  scan_join 102400 10 block_10_100 block_10_101
private lemma block_11_51 : scan 104448 11 = true :=
  scan_join 104448 10 block_10_102 block_10_103
private lemma block_11_52 : scan 106496 11 = true :=
  scan_join 106496 10 block_10_104 block_10_105
private lemma block_11_53 : scan 108544 11 = true :=
  scan_join 108544 10 block_10_106 block_10_107
private lemma block_11_54 : scan 110592 11 = true :=
  scan_join 110592 10 block_10_108 block_10_109
private lemma block_11_55 : scan 112640 11 = true :=
  scan_join 112640 10 block_10_110 block_10_111
private lemma block_11_56 : scan 114688 11 = true :=
  scan_join 114688 10 block_10_112 block_10_113
private lemma block_11_57 : scan 116736 11 = true :=
  scan_join 116736 10 block_10_114 block_10_115
private lemma block_11_58 : scan 118784 11 = true :=
  scan_join 118784 10 block_10_116 block_10_117
private lemma block_11_59 : scan 120832 11 = true :=
  scan_join 120832 10 block_10_118 block_10_119
private lemma block_11_60 : scan 122880 11 = true :=
  scan_join 122880 10 block_10_120 block_10_121
private lemma block_11_61 : scan 124928 11 = true :=
  scan_join 124928 10 block_10_122 block_10_123
private lemma block_11_62 : scan 126976 11 = true :=
  scan_join 126976 10 block_10_124 block_10_125
private lemma block_11_63 : scan 129024 11 = true :=
  scan_join 129024 10 block_10_126 block_10_127
private lemma block_12_0 : scan 0 12 = true :=
  scan_join 0 11 block_11_0 block_11_1
private lemma block_12_1 : scan 4096 12 = true :=
  scan_join 4096 11 block_11_2 block_11_3
private lemma block_12_2 : scan 8192 12 = true :=
  scan_join 8192 11 block_11_4 block_11_5
private lemma block_12_3 : scan 12288 12 = true :=
  scan_join 12288 11 block_11_6 block_11_7
private lemma block_12_4 : scan 16384 12 = true :=
  scan_join 16384 11 block_11_8 block_11_9
private lemma block_12_5 : scan 20480 12 = true :=
  scan_join 20480 11 block_11_10 block_11_11
private lemma block_12_6 : scan 24576 12 = true :=
  scan_join 24576 11 block_11_12 block_11_13
private lemma block_12_7 : scan 28672 12 = true :=
  scan_join 28672 11 block_11_14 block_11_15
private lemma block_12_8 : scan 32768 12 = true :=
  scan_join 32768 11 block_11_16 block_11_17
private lemma block_12_9 : scan 36864 12 = true :=
  scan_join 36864 11 block_11_18 block_11_19
private lemma block_12_10 : scan 40960 12 = true :=
  scan_join 40960 11 block_11_20 block_11_21
private lemma block_12_11 : scan 45056 12 = true :=
  scan_join 45056 11 block_11_22 block_11_23
private lemma block_12_12 : scan 49152 12 = true :=
  scan_join 49152 11 block_11_24 block_11_25
private lemma block_12_13 : scan 53248 12 = true :=
  scan_join 53248 11 block_11_26 block_11_27
private lemma block_12_14 : scan 57344 12 = true :=
  scan_join 57344 11 block_11_28 block_11_29
private lemma block_12_15 : scan 61440 12 = true :=
  scan_join 61440 11 block_11_30 block_11_31
private lemma block_12_16 : scan 65536 12 = true :=
  scan_join 65536 11 block_11_32 block_11_33
private lemma block_12_17 : scan 69632 12 = true :=
  scan_join 69632 11 block_11_34 block_11_35
private lemma block_12_18 : scan 73728 12 = true :=
  scan_join 73728 11 block_11_36 block_11_37
private lemma block_12_19 : scan 77824 12 = true :=
  scan_join 77824 11 block_11_38 block_11_39
private lemma block_12_20 : scan 81920 12 = true :=
  scan_join 81920 11 block_11_40 block_11_41
private lemma block_12_21 : scan 86016 12 = true :=
  scan_join 86016 11 block_11_42 block_11_43
private lemma block_12_22 : scan 90112 12 = true :=
  scan_join 90112 11 block_11_44 block_11_45
private lemma block_12_23 : scan 94208 12 = true :=
  scan_join 94208 11 block_11_46 block_11_47
private lemma block_12_24 : scan 98304 12 = true :=
  scan_join 98304 11 block_11_48 block_11_49
private lemma block_12_25 : scan 102400 12 = true :=
  scan_join 102400 11 block_11_50 block_11_51
private lemma block_12_26 : scan 106496 12 = true :=
  scan_join 106496 11 block_11_52 block_11_53
private lemma block_12_27 : scan 110592 12 = true :=
  scan_join 110592 11 block_11_54 block_11_55
private lemma block_12_28 : scan 114688 12 = true :=
  scan_join 114688 11 block_11_56 block_11_57
private lemma block_12_29 : scan 118784 12 = true :=
  scan_join 118784 11 block_11_58 block_11_59
private lemma block_12_30 : scan 122880 12 = true :=
  scan_join 122880 11 block_11_60 block_11_61
private lemma block_12_31 : scan 126976 12 = true :=
  scan_join 126976 11 block_11_62 block_11_63
private lemma block_13_0 : scan 0 13 = true :=
  scan_join 0 12 block_12_0 block_12_1
private lemma block_13_1 : scan 8192 13 = true :=
  scan_join 8192 12 block_12_2 block_12_3
private lemma block_13_2 : scan 16384 13 = true :=
  scan_join 16384 12 block_12_4 block_12_5
private lemma block_13_3 : scan 24576 13 = true :=
  scan_join 24576 12 block_12_6 block_12_7
private lemma block_13_4 : scan 32768 13 = true :=
  scan_join 32768 12 block_12_8 block_12_9
private lemma block_13_5 : scan 40960 13 = true :=
  scan_join 40960 12 block_12_10 block_12_11
private lemma block_13_6 : scan 49152 13 = true :=
  scan_join 49152 12 block_12_12 block_12_13
private lemma block_13_7 : scan 57344 13 = true :=
  scan_join 57344 12 block_12_14 block_12_15
private lemma block_13_8 : scan 65536 13 = true :=
  scan_join 65536 12 block_12_16 block_12_17
private lemma block_13_9 : scan 73728 13 = true :=
  scan_join 73728 12 block_12_18 block_12_19
private lemma block_13_10 : scan 81920 13 = true :=
  scan_join 81920 12 block_12_20 block_12_21
private lemma block_13_11 : scan 90112 13 = true :=
  scan_join 90112 12 block_12_22 block_12_23
private lemma block_13_12 : scan 98304 13 = true :=
  scan_join 98304 12 block_12_24 block_12_25
private lemma block_13_13 : scan 106496 13 = true :=
  scan_join 106496 12 block_12_26 block_12_27
private lemma block_13_14 : scan 114688 13 = true :=
  scan_join 114688 12 block_12_28 block_12_29
private lemma block_13_15 : scan 122880 13 = true :=
  scan_join 122880 12 block_12_30 block_12_31
private lemma block_14_0 : scan 0 14 = true :=
  scan_join 0 13 block_13_0 block_13_1
private lemma block_14_1 : scan 16384 14 = true :=
  scan_join 16384 13 block_13_2 block_13_3
private lemma block_14_2 : scan 32768 14 = true :=
  scan_join 32768 13 block_13_4 block_13_5
private lemma block_14_3 : scan 49152 14 = true :=
  scan_join 49152 13 block_13_6 block_13_7
private lemma block_14_4 : scan 65536 14 = true :=
  scan_join 65536 13 block_13_8 block_13_9
private lemma block_14_5 : scan 81920 14 = true :=
  scan_join 81920 13 block_13_10 block_13_11
private lemma block_14_6 : scan 98304 14 = true :=
  scan_join 98304 13 block_13_12 block_13_13
private lemma block_14_7 : scan 114688 14 = true :=
  scan_join 114688 13 block_13_14 block_13_15
private lemma block_15_0 : scan 0 15 = true :=
  scan_join 0 14 block_14_0 block_14_1
private lemma block_15_1 : scan 32768 15 = true :=
  scan_join 32768 14 block_14_2 block_14_3
private lemma block_15_2 : scan 65536 15 = true :=
  scan_join 65536 14 block_14_4 block_14_5
private lemma block_15_3 : scan 98304 15 = true :=
  scan_join 98304 14 block_14_6 block_14_7
private lemma block_16_0 : scan 0 16 = true :=
  scan_join 0 15 block_15_0 block_15_1
private lemma block_16_1 : scan 65536 16 = true :=
  scan_join 65536 15 block_15_2 block_15_3
private lemma block_17_0 : scan 0 17 = true :=
  scan_join 0 16 block_16_0 block_16_1
lemma scan_all : scan 0 17 = true := block_17_0

lemma zero_certificate : ∀ t : Fin 130204,
    ((t : ℕ) ∣ Z*p^4) → wt (t : ℕ) = 0 → (t : ℕ) ∈ zeroList.toFinset := by
  intro t hd hw
  have ht : (t : ℕ) ≤ N := by unfold N; omega
  have ht' : (t : ℕ) < 0+2^17 := by omega
  have hb := scan_sound 17 0 (t : ℕ) (Nat.zero_le _) ht' scan_all
  simpa [zeroTest, not_lt_of_ge ht, hd, hw] using hb

lemma no_mid_remainder : canProd zeroList (Z*p^4) = false := by decide +kernel
lemma zeroList_pos : ∀ a ∈ zeroList, 0 < a := by
  intro a ha
  simp only [zeroList, List.mem_cons, List.not_mem_nil, or_false] at ha
  rcases ha with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  all_goals subst a
  all_goals decide

end A060957.Case130203
