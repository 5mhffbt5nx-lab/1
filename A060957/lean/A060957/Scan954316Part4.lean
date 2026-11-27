import A060957.Scan954316

namespace A060957.Case954316
set_option maxHeartbeats 0
set_option maxRecDepth 100000

private lemma block_10_256 : scan 262144 10 = true := by decide +kernel
private lemma block_10_257 : scan 263168 10 = true := by decide +kernel
private lemma block_10_258 : scan 264192 10 = true := by decide +kernel
private lemma block_10_259 : scan 265216 10 = true := by decide +kernel
private lemma block_10_260 : scan 266240 10 = true := by decide +kernel
private lemma block_10_261 : scan 267264 10 = true := by decide +kernel
private lemma block_10_262 : scan 268288 10 = true := by decide +kernel
private lemma block_10_263 : scan 269312 10 = true := by decide +kernel
private lemma block_10_264 : scan 270336 10 = true := by decide +kernel
private lemma block_10_265 : scan 271360 10 = true := by decide +kernel
private lemma block_10_266 : scan 272384 10 = true := by decide +kernel
private lemma block_10_267 : scan 273408 10 = true := by decide +kernel
private lemma block_10_268 : scan 274432 10 = true := by decide +kernel
private lemma block_10_269 : scan 275456 10 = true := by decide +kernel
private lemma block_10_270 : scan 276480 10 = true := by decide +kernel
private lemma block_10_271 : scan 277504 10 = true := by decide +kernel
private lemma block_10_272 : scan 278528 10 = true := by decide +kernel
private lemma block_10_273 : scan 279552 10 = true := by decide +kernel
private lemma block_10_274 : scan 280576 10 = true := by decide +kernel
private lemma block_10_275 : scan 281600 10 = true := by decide +kernel
private lemma block_10_276 : scan 282624 10 = true := by decide +kernel
private lemma block_10_277 : scan 283648 10 = true := by decide +kernel
private lemma block_10_278 : scan 284672 10 = true := by decide +kernel
private lemma block_10_279 : scan 285696 10 = true := by decide +kernel
private lemma block_10_280 : scan 286720 10 = true := by decide +kernel
private lemma block_10_281 : scan 287744 10 = true := by decide +kernel
private lemma block_10_282 : scan 288768 10 = true := by decide +kernel
private lemma block_10_283 : scan 289792 10 = true := by decide +kernel
private lemma block_10_284 : scan 290816 10 = true := by decide +kernel
private lemma block_10_285 : scan 291840 10 = true := by decide +kernel
private lemma block_10_286 : scan 292864 10 = true := by decide +kernel
private lemma block_10_287 : scan 293888 10 = true := by decide +kernel
private lemma block_10_288 : scan 294912 10 = true := by decide +kernel
private lemma block_10_289 : scan 295936 10 = true := by decide +kernel
private lemma block_10_290 : scan 296960 10 = true := by decide +kernel
private lemma block_10_291 : scan 297984 10 = true := by decide +kernel
private lemma block_10_292 : scan 299008 10 = true := by decide +kernel
private lemma block_10_293 : scan 300032 10 = true := by decide +kernel
private lemma block_10_294 : scan 301056 10 = true := by decide +kernel
private lemma block_10_295 : scan 302080 10 = true := by decide +kernel
private lemma block_10_296 : scan 303104 10 = true := by decide +kernel
private lemma block_10_297 : scan 304128 10 = true := by decide +kernel
private lemma block_10_298 : scan 305152 10 = true := by decide +kernel
private lemma block_10_299 : scan 306176 10 = true := by decide +kernel
private lemma block_10_300 : scan 307200 10 = true := by decide +kernel
private lemma block_10_301 : scan 308224 10 = true := by decide +kernel
private lemma block_10_302 : scan 309248 10 = true := by decide +kernel
private lemma block_10_303 : scan 310272 10 = true := by decide +kernel
private lemma block_10_304 : scan 311296 10 = true := by decide +kernel
private lemma block_10_305 : scan 312320 10 = true := by decide +kernel
private lemma block_10_306 : scan 313344 10 = true := by decide +kernel
private lemma block_10_307 : scan 314368 10 = true := by decide +kernel
private lemma block_10_308 : scan 315392 10 = true := by decide +kernel
private lemma block_10_309 : scan 316416 10 = true := by decide +kernel
private lemma block_10_310 : scan 317440 10 = true := by decide +kernel
private lemma block_10_311 : scan 318464 10 = true := by decide +kernel
private lemma block_10_312 : scan 319488 10 = true := by decide +kernel
private lemma block_10_313 : scan 320512 10 = true := by decide +kernel
private lemma block_10_314 : scan 321536 10 = true := by decide +kernel
private lemma block_10_315 : scan 322560 10 = true := by decide +kernel
private lemma block_10_316 : scan 323584 10 = true := by decide +kernel
private lemma block_10_317 : scan 324608 10 = true := by decide +kernel
private lemma block_10_318 : scan 325632 10 = true := by decide +kernel
private lemma block_10_319 : scan 326656 10 = true := by decide +kernel
private lemma block_11_128 : scan 262144 11 = true :=
  scan_join 262144 10 block_10_256 block_10_257
private lemma block_11_129 : scan 264192 11 = true :=
  scan_join 264192 10 block_10_258 block_10_259
private lemma block_11_130 : scan 266240 11 = true :=
  scan_join 266240 10 block_10_260 block_10_261
private lemma block_11_131 : scan 268288 11 = true :=
  scan_join 268288 10 block_10_262 block_10_263
private lemma block_11_132 : scan 270336 11 = true :=
  scan_join 270336 10 block_10_264 block_10_265
private lemma block_11_133 : scan 272384 11 = true :=
  scan_join 272384 10 block_10_266 block_10_267
private lemma block_11_134 : scan 274432 11 = true :=
  scan_join 274432 10 block_10_268 block_10_269
private lemma block_11_135 : scan 276480 11 = true :=
  scan_join 276480 10 block_10_270 block_10_271
private lemma block_11_136 : scan 278528 11 = true :=
  scan_join 278528 10 block_10_272 block_10_273
private lemma block_11_137 : scan 280576 11 = true :=
  scan_join 280576 10 block_10_274 block_10_275
private lemma block_11_138 : scan 282624 11 = true :=
  scan_join 282624 10 block_10_276 block_10_277
private lemma block_11_139 : scan 284672 11 = true :=
  scan_join 284672 10 block_10_278 block_10_279
private lemma block_11_140 : scan 286720 11 = true :=
  scan_join 286720 10 block_10_280 block_10_281
private lemma block_11_141 : scan 288768 11 = true :=
  scan_join 288768 10 block_10_282 block_10_283
private lemma block_11_142 : scan 290816 11 = true :=
  scan_join 290816 10 block_10_284 block_10_285
private lemma block_11_143 : scan 292864 11 = true :=
  scan_join 292864 10 block_10_286 block_10_287
private lemma block_11_144 : scan 294912 11 = true :=
  scan_join 294912 10 block_10_288 block_10_289
private lemma block_11_145 : scan 296960 11 = true :=
  scan_join 296960 10 block_10_290 block_10_291
private lemma block_11_146 : scan 299008 11 = true :=
  scan_join 299008 10 block_10_292 block_10_293
private lemma block_11_147 : scan 301056 11 = true :=
  scan_join 301056 10 block_10_294 block_10_295
private lemma block_11_148 : scan 303104 11 = true :=
  scan_join 303104 10 block_10_296 block_10_297
private lemma block_11_149 : scan 305152 11 = true :=
  scan_join 305152 10 block_10_298 block_10_299
private lemma block_11_150 : scan 307200 11 = true :=
  scan_join 307200 10 block_10_300 block_10_301
private lemma block_11_151 : scan 309248 11 = true :=
  scan_join 309248 10 block_10_302 block_10_303
private lemma block_11_152 : scan 311296 11 = true :=
  scan_join 311296 10 block_10_304 block_10_305
private lemma block_11_153 : scan 313344 11 = true :=
  scan_join 313344 10 block_10_306 block_10_307
private lemma block_11_154 : scan 315392 11 = true :=
  scan_join 315392 10 block_10_308 block_10_309
private lemma block_11_155 : scan 317440 11 = true :=
  scan_join 317440 10 block_10_310 block_10_311
private lemma block_11_156 : scan 319488 11 = true :=
  scan_join 319488 10 block_10_312 block_10_313
private lemma block_11_157 : scan 321536 11 = true :=
  scan_join 321536 10 block_10_314 block_10_315
private lemma block_11_158 : scan 323584 11 = true :=
  scan_join 323584 10 block_10_316 block_10_317
private lemma block_11_159 : scan 325632 11 = true :=
  scan_join 325632 10 block_10_318 block_10_319
private lemma block_12_64 : scan 262144 12 = true :=
  scan_join 262144 11 block_11_128 block_11_129
private lemma block_12_65 : scan 266240 12 = true :=
  scan_join 266240 11 block_11_130 block_11_131
private lemma block_12_66 : scan 270336 12 = true :=
  scan_join 270336 11 block_11_132 block_11_133
private lemma block_12_67 : scan 274432 12 = true :=
  scan_join 274432 11 block_11_134 block_11_135
private lemma block_12_68 : scan 278528 12 = true :=
  scan_join 278528 11 block_11_136 block_11_137
private lemma block_12_69 : scan 282624 12 = true :=
  scan_join 282624 11 block_11_138 block_11_139
private lemma block_12_70 : scan 286720 12 = true :=
  scan_join 286720 11 block_11_140 block_11_141
private lemma block_12_71 : scan 290816 12 = true :=
  scan_join 290816 11 block_11_142 block_11_143
private lemma block_12_72 : scan 294912 12 = true :=
  scan_join 294912 11 block_11_144 block_11_145
private lemma block_12_73 : scan 299008 12 = true :=
  scan_join 299008 11 block_11_146 block_11_147
private lemma block_12_74 : scan 303104 12 = true :=
  scan_join 303104 11 block_11_148 block_11_149
private lemma block_12_75 : scan 307200 12 = true :=
  scan_join 307200 11 block_11_150 block_11_151
private lemma block_12_76 : scan 311296 12 = true :=
  scan_join 311296 11 block_11_152 block_11_153
private lemma block_12_77 : scan 315392 12 = true :=
  scan_join 315392 11 block_11_154 block_11_155
private lemma block_12_78 : scan 319488 12 = true :=
  scan_join 319488 11 block_11_156 block_11_157
private lemma block_12_79 : scan 323584 12 = true :=
  scan_join 323584 11 block_11_158 block_11_159
private lemma block_13_32 : scan 262144 13 = true :=
  scan_join 262144 12 block_12_64 block_12_65
private lemma block_13_33 : scan 270336 13 = true :=
  scan_join 270336 12 block_12_66 block_12_67
private lemma block_13_34 : scan 278528 13 = true :=
  scan_join 278528 12 block_12_68 block_12_69
private lemma block_13_35 : scan 286720 13 = true :=
  scan_join 286720 12 block_12_70 block_12_71
private lemma block_13_36 : scan 294912 13 = true :=
  scan_join 294912 12 block_12_72 block_12_73
private lemma block_13_37 : scan 303104 13 = true :=
  scan_join 303104 12 block_12_74 block_12_75
private lemma block_13_38 : scan 311296 13 = true :=
  scan_join 311296 12 block_12_76 block_12_77
private lemma block_13_39 : scan 319488 13 = true :=
  scan_join 319488 12 block_12_78 block_12_79
private lemma block_14_16 : scan 262144 14 = true :=
  scan_join 262144 13 block_13_32 block_13_33
private lemma block_14_17 : scan 278528 14 = true :=
  scan_join 278528 13 block_13_34 block_13_35
private lemma block_14_18 : scan 294912 14 = true :=
  scan_join 294912 13 block_13_36 block_13_37
private lemma block_14_19 : scan 311296 14 = true :=
  scan_join 311296 13 block_13_38 block_13_39
private lemma block_15_8 : scan 262144 15 = true :=
  scan_join 262144 14 block_14_16 block_14_17
private lemma block_15_9 : scan 294912 15 = true :=
  scan_join 294912 14 block_14_18 block_14_19
lemma block_16_4 : scan 262144 16 = true :=
  scan_join 262144 15 block_15_8 block_15_9

end A060957.Case954316
