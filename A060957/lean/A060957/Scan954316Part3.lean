import A060957.Scan954316

namespace A060957.Case954316
set_option maxHeartbeats 0
set_option maxRecDepth 100000

private lemma block_10_192 : scan 196608 10 = true := by decide +kernel
private lemma block_10_193 : scan 197632 10 = true := by decide +kernel
private lemma block_10_194 : scan 198656 10 = true := by decide +kernel
private lemma block_10_195 : scan 199680 10 = true := by decide +kernel
private lemma block_10_196 : scan 200704 10 = true := by decide +kernel
private lemma block_10_197 : scan 201728 10 = true := by decide +kernel
private lemma block_10_198 : scan 202752 10 = true := by decide +kernel
private lemma block_10_199 : scan 203776 10 = true := by decide +kernel
private lemma block_10_200 : scan 204800 10 = true := by decide +kernel
private lemma block_10_201 : scan 205824 10 = true := by decide +kernel
private lemma block_10_202 : scan 206848 10 = true := by decide +kernel
private lemma block_10_203 : scan 207872 10 = true := by decide +kernel
private lemma block_10_204 : scan 208896 10 = true := by decide +kernel
private lemma block_10_205 : scan 209920 10 = true := by decide +kernel
private lemma block_10_206 : scan 210944 10 = true := by decide +kernel
private lemma block_10_207 : scan 211968 10 = true := by decide +kernel
private lemma block_10_208 : scan 212992 10 = true := by decide +kernel
private lemma block_10_209 : scan 214016 10 = true := by decide +kernel
private lemma block_10_210 : scan 215040 10 = true := by decide +kernel
private lemma block_10_211 : scan 216064 10 = true := by decide +kernel
private lemma block_10_212 : scan 217088 10 = true := by decide +kernel
private lemma block_10_213 : scan 218112 10 = true := by decide +kernel
private lemma block_10_214 : scan 219136 10 = true := by decide +kernel
private lemma block_10_215 : scan 220160 10 = true := by decide +kernel
private lemma block_10_216 : scan 221184 10 = true := by decide +kernel
private lemma block_10_217 : scan 222208 10 = true := by decide +kernel
private lemma block_10_218 : scan 223232 10 = true := by decide +kernel
private lemma block_10_219 : scan 224256 10 = true := by decide +kernel
private lemma block_10_220 : scan 225280 10 = true := by decide +kernel
private lemma block_10_221 : scan 226304 10 = true := by decide +kernel
private lemma block_10_222 : scan 227328 10 = true := by decide +kernel
private lemma block_10_223 : scan 228352 10 = true := by decide +kernel
private lemma block_10_224 : scan 229376 10 = true := by decide +kernel
private lemma block_10_225 : scan 230400 10 = true := by decide +kernel
private lemma block_10_226 : scan 231424 10 = true := by decide +kernel
private lemma block_10_227 : scan 232448 10 = true := by decide +kernel
private lemma block_10_228 : scan 233472 10 = true := by decide +kernel
private lemma block_10_229 : scan 234496 10 = true := by decide +kernel
private lemma block_10_230 : scan 235520 10 = true := by decide +kernel
private lemma block_10_231 : scan 236544 10 = true := by decide +kernel
private lemma block_10_232 : scan 237568 10 = true := by decide +kernel
private lemma block_10_233 : scan 238592 10 = true := by decide +kernel
private lemma block_10_234 : scan 239616 10 = true := by decide +kernel
private lemma block_10_235 : scan 240640 10 = true := by decide +kernel
private lemma block_10_236 : scan 241664 10 = true := by decide +kernel
private lemma block_10_237 : scan 242688 10 = true := by decide +kernel
private lemma block_10_238 : scan 243712 10 = true := by decide +kernel
private lemma block_10_239 : scan 244736 10 = true := by decide +kernel
private lemma block_10_240 : scan 245760 10 = true := by decide +kernel
private lemma block_10_241 : scan 246784 10 = true := by decide +kernel
private lemma block_10_242 : scan 247808 10 = true := by decide +kernel
private lemma block_10_243 : scan 248832 10 = true := by decide +kernel
private lemma block_10_244 : scan 249856 10 = true := by decide +kernel
private lemma block_10_245 : scan 250880 10 = true := by decide +kernel
private lemma block_10_246 : scan 251904 10 = true := by decide +kernel
private lemma block_10_247 : scan 252928 10 = true := by decide +kernel
private lemma block_10_248 : scan 253952 10 = true := by decide +kernel
private lemma block_10_249 : scan 254976 10 = true := by decide +kernel
private lemma block_10_250 : scan 256000 10 = true := by decide +kernel
private lemma block_10_251 : scan 257024 10 = true := by decide +kernel
private lemma block_10_252 : scan 258048 10 = true := by decide +kernel
private lemma block_10_253 : scan 259072 10 = true := by decide +kernel
private lemma block_10_254 : scan 260096 10 = true := by decide +kernel
private lemma block_10_255 : scan 261120 10 = true := by decide +kernel
private lemma block_11_96 : scan 196608 11 = true :=
  scan_join 196608 10 block_10_192 block_10_193
private lemma block_11_97 : scan 198656 11 = true :=
  scan_join 198656 10 block_10_194 block_10_195
private lemma block_11_98 : scan 200704 11 = true :=
  scan_join 200704 10 block_10_196 block_10_197
private lemma block_11_99 : scan 202752 11 = true :=
  scan_join 202752 10 block_10_198 block_10_199
private lemma block_11_100 : scan 204800 11 = true :=
  scan_join 204800 10 block_10_200 block_10_201
private lemma block_11_101 : scan 206848 11 = true :=
  scan_join 206848 10 block_10_202 block_10_203
private lemma block_11_102 : scan 208896 11 = true :=
  scan_join 208896 10 block_10_204 block_10_205
private lemma block_11_103 : scan 210944 11 = true :=
  scan_join 210944 10 block_10_206 block_10_207
private lemma block_11_104 : scan 212992 11 = true :=
  scan_join 212992 10 block_10_208 block_10_209
private lemma block_11_105 : scan 215040 11 = true :=
  scan_join 215040 10 block_10_210 block_10_211
private lemma block_11_106 : scan 217088 11 = true :=
  scan_join 217088 10 block_10_212 block_10_213
private lemma block_11_107 : scan 219136 11 = true :=
  scan_join 219136 10 block_10_214 block_10_215
private lemma block_11_108 : scan 221184 11 = true :=
  scan_join 221184 10 block_10_216 block_10_217
private lemma block_11_109 : scan 223232 11 = true :=
  scan_join 223232 10 block_10_218 block_10_219
private lemma block_11_110 : scan 225280 11 = true :=
  scan_join 225280 10 block_10_220 block_10_221
private lemma block_11_111 : scan 227328 11 = true :=
  scan_join 227328 10 block_10_222 block_10_223
private lemma block_11_112 : scan 229376 11 = true :=
  scan_join 229376 10 block_10_224 block_10_225
private lemma block_11_113 : scan 231424 11 = true :=
  scan_join 231424 10 block_10_226 block_10_227
private lemma block_11_114 : scan 233472 11 = true :=
  scan_join 233472 10 block_10_228 block_10_229
private lemma block_11_115 : scan 235520 11 = true :=
  scan_join 235520 10 block_10_230 block_10_231
private lemma block_11_116 : scan 237568 11 = true :=
  scan_join 237568 10 block_10_232 block_10_233
private lemma block_11_117 : scan 239616 11 = true :=
  scan_join 239616 10 block_10_234 block_10_235
private lemma block_11_118 : scan 241664 11 = true :=
  scan_join 241664 10 block_10_236 block_10_237
private lemma block_11_119 : scan 243712 11 = true :=
  scan_join 243712 10 block_10_238 block_10_239
private lemma block_11_120 : scan 245760 11 = true :=
  scan_join 245760 10 block_10_240 block_10_241
private lemma block_11_121 : scan 247808 11 = true :=
  scan_join 247808 10 block_10_242 block_10_243
private lemma block_11_122 : scan 249856 11 = true :=
  scan_join 249856 10 block_10_244 block_10_245
private lemma block_11_123 : scan 251904 11 = true :=
  scan_join 251904 10 block_10_246 block_10_247
private lemma block_11_124 : scan 253952 11 = true :=
  scan_join 253952 10 block_10_248 block_10_249
private lemma block_11_125 : scan 256000 11 = true :=
  scan_join 256000 10 block_10_250 block_10_251
private lemma block_11_126 : scan 258048 11 = true :=
  scan_join 258048 10 block_10_252 block_10_253
private lemma block_11_127 : scan 260096 11 = true :=
  scan_join 260096 10 block_10_254 block_10_255
private lemma block_12_48 : scan 196608 12 = true :=
  scan_join 196608 11 block_11_96 block_11_97
private lemma block_12_49 : scan 200704 12 = true :=
  scan_join 200704 11 block_11_98 block_11_99
private lemma block_12_50 : scan 204800 12 = true :=
  scan_join 204800 11 block_11_100 block_11_101
private lemma block_12_51 : scan 208896 12 = true :=
  scan_join 208896 11 block_11_102 block_11_103
private lemma block_12_52 : scan 212992 12 = true :=
  scan_join 212992 11 block_11_104 block_11_105
private lemma block_12_53 : scan 217088 12 = true :=
  scan_join 217088 11 block_11_106 block_11_107
private lemma block_12_54 : scan 221184 12 = true :=
  scan_join 221184 11 block_11_108 block_11_109
private lemma block_12_55 : scan 225280 12 = true :=
  scan_join 225280 11 block_11_110 block_11_111
private lemma block_12_56 : scan 229376 12 = true :=
  scan_join 229376 11 block_11_112 block_11_113
private lemma block_12_57 : scan 233472 12 = true :=
  scan_join 233472 11 block_11_114 block_11_115
private lemma block_12_58 : scan 237568 12 = true :=
  scan_join 237568 11 block_11_116 block_11_117
private lemma block_12_59 : scan 241664 12 = true :=
  scan_join 241664 11 block_11_118 block_11_119
private lemma block_12_60 : scan 245760 12 = true :=
  scan_join 245760 11 block_11_120 block_11_121
private lemma block_12_61 : scan 249856 12 = true :=
  scan_join 249856 11 block_11_122 block_11_123
private lemma block_12_62 : scan 253952 12 = true :=
  scan_join 253952 11 block_11_124 block_11_125
private lemma block_12_63 : scan 258048 12 = true :=
  scan_join 258048 11 block_11_126 block_11_127
private lemma block_13_24 : scan 196608 13 = true :=
  scan_join 196608 12 block_12_48 block_12_49
private lemma block_13_25 : scan 204800 13 = true :=
  scan_join 204800 12 block_12_50 block_12_51
private lemma block_13_26 : scan 212992 13 = true :=
  scan_join 212992 12 block_12_52 block_12_53
private lemma block_13_27 : scan 221184 13 = true :=
  scan_join 221184 12 block_12_54 block_12_55
private lemma block_13_28 : scan 229376 13 = true :=
  scan_join 229376 12 block_12_56 block_12_57
private lemma block_13_29 : scan 237568 13 = true :=
  scan_join 237568 12 block_12_58 block_12_59
private lemma block_13_30 : scan 245760 13 = true :=
  scan_join 245760 12 block_12_60 block_12_61
private lemma block_13_31 : scan 253952 13 = true :=
  scan_join 253952 12 block_12_62 block_12_63
private lemma block_14_12 : scan 196608 14 = true :=
  scan_join 196608 13 block_13_24 block_13_25
private lemma block_14_13 : scan 212992 14 = true :=
  scan_join 212992 13 block_13_26 block_13_27
private lemma block_14_14 : scan 229376 14 = true :=
  scan_join 229376 13 block_13_28 block_13_29
private lemma block_14_15 : scan 245760 14 = true :=
  scan_join 245760 13 block_13_30 block_13_31
private lemma block_15_6 : scan 196608 15 = true :=
  scan_join 196608 14 block_14_12 block_14_13
private lemma block_15_7 : scan 229376 15 = true :=
  scan_join 229376 14 block_14_14 block_14_15
lemma block_16_3 : scan 196608 16 = true :=
  scan_join 196608 15 block_15_6 block_15_7

end A060957.Case954316
