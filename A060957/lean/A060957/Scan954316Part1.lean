import A060957.Scan954316

namespace A060957.Case954316
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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
private lemma block_14_4 : scan 65536 14 = true :=
  scan_join 65536 13 block_13_8 block_13_9
private lemma block_14_5 : scan 81920 14 = true :=
  scan_join 81920 13 block_13_10 block_13_11
private lemma block_14_6 : scan 98304 14 = true :=
  scan_join 98304 13 block_13_12 block_13_13
private lemma block_14_7 : scan 114688 14 = true :=
  scan_join 114688 13 block_13_14 block_13_15
private lemma block_15_2 : scan 65536 15 = true :=
  scan_join 65536 14 block_14_4 block_14_5
private lemma block_15_3 : scan 98304 15 = true :=
  scan_join 98304 14 block_14_6 block_14_7
lemma block_16_1 : scan 65536 16 = true :=
  scan_join 65536 15 block_15_2 block_15_3

end A060957.Case954316
