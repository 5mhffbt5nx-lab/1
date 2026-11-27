import A060957.Scan954316

namespace A060957.Case954316
set_option maxHeartbeats 0
set_option maxRecDepth 100000

private lemma block_10_128 : scan 131072 10 = true := by decide +kernel
private lemma block_10_129 : scan 132096 10 = true := by decide +kernel
private lemma block_10_130 : scan 133120 10 = true := by decide +kernel
private lemma block_10_131 : scan 134144 10 = true := by decide +kernel
private lemma block_10_132 : scan 135168 10 = true := by decide +kernel
private lemma block_10_133 : scan 136192 10 = true := by decide +kernel
private lemma block_10_134 : scan 137216 10 = true := by decide +kernel
private lemma block_10_135 : scan 138240 10 = true := by decide +kernel
private lemma block_10_136 : scan 139264 10 = true := by decide +kernel
private lemma block_10_137 : scan 140288 10 = true := by decide +kernel
private lemma block_10_138 : scan 141312 10 = true := by decide +kernel
private lemma block_10_139 : scan 142336 10 = true := by decide +kernel
private lemma block_10_140 : scan 143360 10 = true := by decide +kernel
private lemma block_10_141 : scan 144384 10 = true := by decide +kernel
private lemma block_10_142 : scan 145408 10 = true := by decide +kernel
private lemma block_10_143 : scan 146432 10 = true := by decide +kernel
private lemma block_10_144 : scan 147456 10 = true := by decide +kernel
private lemma block_10_145 : scan 148480 10 = true := by decide +kernel
private lemma block_10_146 : scan 149504 10 = true := by decide +kernel
private lemma block_10_147 : scan 150528 10 = true := by decide +kernel
private lemma block_10_148 : scan 151552 10 = true := by decide +kernel
private lemma block_10_149 : scan 152576 10 = true := by decide +kernel
private lemma block_10_150 : scan 153600 10 = true := by decide +kernel
private lemma block_10_151 : scan 154624 10 = true := by decide +kernel
private lemma block_10_152 : scan 155648 10 = true := by decide +kernel
private lemma block_10_153 : scan 156672 10 = true := by decide +kernel
private lemma block_10_154 : scan 157696 10 = true := by decide +kernel
private lemma block_10_155 : scan 158720 10 = true := by decide +kernel
private lemma block_10_156 : scan 159744 10 = true := by decide +kernel
private lemma block_10_157 : scan 160768 10 = true := by decide +kernel
private lemma block_10_158 : scan 161792 10 = true := by decide +kernel
private lemma block_10_159 : scan 162816 10 = true := by decide +kernel
private lemma block_10_160 : scan 163840 10 = true := by decide +kernel
private lemma block_10_161 : scan 164864 10 = true := by decide +kernel
private lemma block_10_162 : scan 165888 10 = true := by decide +kernel
private lemma block_10_163 : scan 166912 10 = true := by decide +kernel
private lemma block_10_164 : scan 167936 10 = true := by decide +kernel
private lemma block_10_165 : scan 168960 10 = true := by decide +kernel
private lemma block_10_166 : scan 169984 10 = true := by decide +kernel
private lemma block_10_167 : scan 171008 10 = true := by decide +kernel
private lemma block_10_168 : scan 172032 10 = true := by decide +kernel
private lemma block_10_169 : scan 173056 10 = true := by decide +kernel
private lemma block_10_170 : scan 174080 10 = true := by decide +kernel
private lemma block_10_171 : scan 175104 10 = true := by decide +kernel
private lemma block_10_172 : scan 176128 10 = true := by decide +kernel
private lemma block_10_173 : scan 177152 10 = true := by decide +kernel
private lemma block_10_174 : scan 178176 10 = true := by decide +kernel
private lemma block_10_175 : scan 179200 10 = true := by decide +kernel
private lemma block_10_176 : scan 180224 10 = true := by decide +kernel
private lemma block_10_177 : scan 181248 10 = true := by decide +kernel
private lemma block_10_178 : scan 182272 10 = true := by decide +kernel
private lemma block_10_179 : scan 183296 10 = true := by decide +kernel
private lemma block_10_180 : scan 184320 10 = true := by decide +kernel
private lemma block_10_181 : scan 185344 10 = true := by decide +kernel
private lemma block_10_182 : scan 186368 10 = true := by decide +kernel
private lemma block_10_183 : scan 187392 10 = true := by decide +kernel
private lemma block_10_184 : scan 188416 10 = true := by decide +kernel
private lemma block_10_185 : scan 189440 10 = true := by decide +kernel
private lemma block_10_186 : scan 190464 10 = true := by decide +kernel
private lemma block_10_187 : scan 191488 10 = true := by decide +kernel
private lemma block_10_188 : scan 192512 10 = true := by decide +kernel
private lemma block_10_189 : scan 193536 10 = true := by decide +kernel
private lemma block_10_190 : scan 194560 10 = true := by decide +kernel
private lemma block_10_191 : scan 195584 10 = true := by decide +kernel
private lemma block_11_64 : scan 131072 11 = true :=
  scan_join 131072 10 block_10_128 block_10_129
private lemma block_11_65 : scan 133120 11 = true :=
  scan_join 133120 10 block_10_130 block_10_131
private lemma block_11_66 : scan 135168 11 = true :=
  scan_join 135168 10 block_10_132 block_10_133
private lemma block_11_67 : scan 137216 11 = true :=
  scan_join 137216 10 block_10_134 block_10_135
private lemma block_11_68 : scan 139264 11 = true :=
  scan_join 139264 10 block_10_136 block_10_137
private lemma block_11_69 : scan 141312 11 = true :=
  scan_join 141312 10 block_10_138 block_10_139
private lemma block_11_70 : scan 143360 11 = true :=
  scan_join 143360 10 block_10_140 block_10_141
private lemma block_11_71 : scan 145408 11 = true :=
  scan_join 145408 10 block_10_142 block_10_143
private lemma block_11_72 : scan 147456 11 = true :=
  scan_join 147456 10 block_10_144 block_10_145
private lemma block_11_73 : scan 149504 11 = true :=
  scan_join 149504 10 block_10_146 block_10_147
private lemma block_11_74 : scan 151552 11 = true :=
  scan_join 151552 10 block_10_148 block_10_149
private lemma block_11_75 : scan 153600 11 = true :=
  scan_join 153600 10 block_10_150 block_10_151
private lemma block_11_76 : scan 155648 11 = true :=
  scan_join 155648 10 block_10_152 block_10_153
private lemma block_11_77 : scan 157696 11 = true :=
  scan_join 157696 10 block_10_154 block_10_155
private lemma block_11_78 : scan 159744 11 = true :=
  scan_join 159744 10 block_10_156 block_10_157
private lemma block_11_79 : scan 161792 11 = true :=
  scan_join 161792 10 block_10_158 block_10_159
private lemma block_11_80 : scan 163840 11 = true :=
  scan_join 163840 10 block_10_160 block_10_161
private lemma block_11_81 : scan 165888 11 = true :=
  scan_join 165888 10 block_10_162 block_10_163
private lemma block_11_82 : scan 167936 11 = true :=
  scan_join 167936 10 block_10_164 block_10_165
private lemma block_11_83 : scan 169984 11 = true :=
  scan_join 169984 10 block_10_166 block_10_167
private lemma block_11_84 : scan 172032 11 = true :=
  scan_join 172032 10 block_10_168 block_10_169
private lemma block_11_85 : scan 174080 11 = true :=
  scan_join 174080 10 block_10_170 block_10_171
private lemma block_11_86 : scan 176128 11 = true :=
  scan_join 176128 10 block_10_172 block_10_173
private lemma block_11_87 : scan 178176 11 = true :=
  scan_join 178176 10 block_10_174 block_10_175
private lemma block_11_88 : scan 180224 11 = true :=
  scan_join 180224 10 block_10_176 block_10_177
private lemma block_11_89 : scan 182272 11 = true :=
  scan_join 182272 10 block_10_178 block_10_179
private lemma block_11_90 : scan 184320 11 = true :=
  scan_join 184320 10 block_10_180 block_10_181
private lemma block_11_91 : scan 186368 11 = true :=
  scan_join 186368 10 block_10_182 block_10_183
private lemma block_11_92 : scan 188416 11 = true :=
  scan_join 188416 10 block_10_184 block_10_185
private lemma block_11_93 : scan 190464 11 = true :=
  scan_join 190464 10 block_10_186 block_10_187
private lemma block_11_94 : scan 192512 11 = true :=
  scan_join 192512 10 block_10_188 block_10_189
private lemma block_11_95 : scan 194560 11 = true :=
  scan_join 194560 10 block_10_190 block_10_191
private lemma block_12_32 : scan 131072 12 = true :=
  scan_join 131072 11 block_11_64 block_11_65
private lemma block_12_33 : scan 135168 12 = true :=
  scan_join 135168 11 block_11_66 block_11_67
private lemma block_12_34 : scan 139264 12 = true :=
  scan_join 139264 11 block_11_68 block_11_69
private lemma block_12_35 : scan 143360 12 = true :=
  scan_join 143360 11 block_11_70 block_11_71
private lemma block_12_36 : scan 147456 12 = true :=
  scan_join 147456 11 block_11_72 block_11_73
private lemma block_12_37 : scan 151552 12 = true :=
  scan_join 151552 11 block_11_74 block_11_75
private lemma block_12_38 : scan 155648 12 = true :=
  scan_join 155648 11 block_11_76 block_11_77
private lemma block_12_39 : scan 159744 12 = true :=
  scan_join 159744 11 block_11_78 block_11_79
private lemma block_12_40 : scan 163840 12 = true :=
  scan_join 163840 11 block_11_80 block_11_81
private lemma block_12_41 : scan 167936 12 = true :=
  scan_join 167936 11 block_11_82 block_11_83
private lemma block_12_42 : scan 172032 12 = true :=
  scan_join 172032 11 block_11_84 block_11_85
private lemma block_12_43 : scan 176128 12 = true :=
  scan_join 176128 11 block_11_86 block_11_87
private lemma block_12_44 : scan 180224 12 = true :=
  scan_join 180224 11 block_11_88 block_11_89
private lemma block_12_45 : scan 184320 12 = true :=
  scan_join 184320 11 block_11_90 block_11_91
private lemma block_12_46 : scan 188416 12 = true :=
  scan_join 188416 11 block_11_92 block_11_93
private lemma block_12_47 : scan 192512 12 = true :=
  scan_join 192512 11 block_11_94 block_11_95
private lemma block_13_16 : scan 131072 13 = true :=
  scan_join 131072 12 block_12_32 block_12_33
private lemma block_13_17 : scan 139264 13 = true :=
  scan_join 139264 12 block_12_34 block_12_35
private lemma block_13_18 : scan 147456 13 = true :=
  scan_join 147456 12 block_12_36 block_12_37
private lemma block_13_19 : scan 155648 13 = true :=
  scan_join 155648 12 block_12_38 block_12_39
private lemma block_13_20 : scan 163840 13 = true :=
  scan_join 163840 12 block_12_40 block_12_41
private lemma block_13_21 : scan 172032 13 = true :=
  scan_join 172032 12 block_12_42 block_12_43
private lemma block_13_22 : scan 180224 13 = true :=
  scan_join 180224 12 block_12_44 block_12_45
private lemma block_13_23 : scan 188416 13 = true :=
  scan_join 188416 12 block_12_46 block_12_47
private lemma block_14_8 : scan 131072 14 = true :=
  scan_join 131072 13 block_13_16 block_13_17
private lemma block_14_9 : scan 147456 14 = true :=
  scan_join 147456 13 block_13_18 block_13_19
private lemma block_14_10 : scan 163840 14 = true :=
  scan_join 163840 13 block_13_20 block_13_21
private lemma block_14_11 : scan 180224 14 = true :=
  scan_join 180224 13 block_13_22 block_13_23
private lemma block_15_4 : scan 131072 15 = true :=
  scan_join 131072 14 block_14_8 block_14_9
private lemma block_15_5 : scan 163840 15 = true :=
  scan_join 163840 14 block_14_10 block_14_11
lemma block_16_2 : scan 131072 16 = true :=
  scan_join 131072 15 block_15_4 block_15_5

end A060957.Case954316
