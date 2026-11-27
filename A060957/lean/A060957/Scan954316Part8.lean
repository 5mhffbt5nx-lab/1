import A060957.Scan954316

namespace A060957.Case954316
set_option maxHeartbeats 0
set_option maxRecDepth 100000

private lemma block_10_512 : scan 524288 10 = true := by decide +kernel
private lemma block_10_513 : scan 525312 10 = true := by decide +kernel
private lemma block_10_514 : scan 526336 10 = true := by decide +kernel
private lemma block_10_515 : scan 527360 10 = true := by decide +kernel
private lemma block_10_516 : scan 528384 10 = true := by decide +kernel
private lemma block_10_517 : scan 529408 10 = true := by decide +kernel
private lemma block_10_518 : scan 530432 10 = true := by decide +kernel
private lemma block_10_519 : scan 531456 10 = true := by decide +kernel
private lemma block_10_520 : scan 532480 10 = true := by decide +kernel
private lemma block_10_521 : scan 533504 10 = true := by decide +kernel
private lemma block_10_522 : scan 534528 10 = true := by decide +kernel
private lemma block_10_523 : scan 535552 10 = true := by decide +kernel
private lemma block_10_524 : scan 536576 10 = true := by decide +kernel
private lemma block_10_525 : scan 537600 10 = true := by decide +kernel
private lemma block_10_526 : scan 538624 10 = true := by decide +kernel
private lemma block_10_527 : scan 539648 10 = true := by decide +kernel
private lemma block_10_528 : scan 540672 10 = true := by decide +kernel
private lemma block_10_529 : scan 541696 10 = true := by decide +kernel
private lemma block_10_530 : scan 542720 10 = true := by decide +kernel
private lemma block_10_531 : scan 543744 10 = true := by decide +kernel
private lemma block_10_532 : scan 544768 10 = true := by decide +kernel
private lemma block_10_533 : scan 545792 10 = true := by decide +kernel
private lemma block_10_534 : scan 546816 10 = true := by decide +kernel
private lemma block_10_535 : scan 547840 10 = true := by decide +kernel
private lemma block_10_536 : scan 548864 10 = true := by decide +kernel
private lemma block_10_537 : scan 549888 10 = true := by decide +kernel
private lemma block_10_538 : scan 550912 10 = true := by decide +kernel
private lemma block_10_539 : scan 551936 10 = true := by decide +kernel
private lemma block_10_540 : scan 552960 10 = true := by decide +kernel
private lemma block_10_541 : scan 553984 10 = true := by decide +kernel
private lemma block_10_542 : scan 555008 10 = true := by decide +kernel
private lemma block_10_543 : scan 556032 10 = true := by decide +kernel
private lemma block_10_544 : scan 557056 10 = true := by decide +kernel
private lemma block_10_545 : scan 558080 10 = true := by decide +kernel
private lemma block_10_546 : scan 559104 10 = true := by decide +kernel
private lemma block_10_547 : scan 560128 10 = true := by decide +kernel
private lemma block_10_548 : scan 561152 10 = true := by decide +kernel
private lemma block_10_549 : scan 562176 10 = true := by decide +kernel
private lemma block_10_550 : scan 563200 10 = true := by decide +kernel
private lemma block_10_551 : scan 564224 10 = true := by decide +kernel
private lemma block_10_552 : scan 565248 10 = true := by decide +kernel
private lemma block_10_553 : scan 566272 10 = true := by decide +kernel
private lemma block_10_554 : scan 567296 10 = true := by decide +kernel
private lemma block_10_555 : scan 568320 10 = true := by decide +kernel
private lemma block_10_556 : scan 569344 10 = true := by decide +kernel
private lemma block_10_557 : scan 570368 10 = true := by decide +kernel
private lemma block_10_558 : scan 571392 10 = true := by decide +kernel
private lemma block_10_559 : scan 572416 10 = true := by decide +kernel
private lemma block_10_560 : scan 573440 10 = true := by decide +kernel
private lemma block_10_561 : scan 574464 10 = true := by decide +kernel
private lemma block_10_562 : scan 575488 10 = true := by decide +kernel
private lemma block_10_563 : scan 576512 10 = true := by decide +kernel
private lemma block_10_564 : scan 577536 10 = true := by decide +kernel
private lemma block_10_565 : scan 578560 10 = true := by decide +kernel
private lemma block_10_566 : scan 579584 10 = true := by decide +kernel
private lemma block_10_567 : scan 580608 10 = true := by decide +kernel
private lemma block_10_568 : scan 581632 10 = true := by decide +kernel
private lemma block_10_569 : scan 582656 10 = true := by decide +kernel
private lemma block_10_570 : scan 583680 10 = true := by decide +kernel
private lemma block_10_571 : scan 584704 10 = true := by decide +kernel
private lemma block_10_572 : scan 585728 10 = true := by decide +kernel
private lemma block_10_573 : scan 586752 10 = true := by decide +kernel
private lemma block_10_574 : scan 587776 10 = true := by decide +kernel
private lemma block_10_575 : scan 588800 10 = true := by decide +kernel
private lemma block_11_256 : scan 524288 11 = true :=
  scan_join 524288 10 block_10_512 block_10_513
private lemma block_11_257 : scan 526336 11 = true :=
  scan_join 526336 10 block_10_514 block_10_515
private lemma block_11_258 : scan 528384 11 = true :=
  scan_join 528384 10 block_10_516 block_10_517
private lemma block_11_259 : scan 530432 11 = true :=
  scan_join 530432 10 block_10_518 block_10_519
private lemma block_11_260 : scan 532480 11 = true :=
  scan_join 532480 10 block_10_520 block_10_521
private lemma block_11_261 : scan 534528 11 = true :=
  scan_join 534528 10 block_10_522 block_10_523
private lemma block_11_262 : scan 536576 11 = true :=
  scan_join 536576 10 block_10_524 block_10_525
private lemma block_11_263 : scan 538624 11 = true :=
  scan_join 538624 10 block_10_526 block_10_527
private lemma block_11_264 : scan 540672 11 = true :=
  scan_join 540672 10 block_10_528 block_10_529
private lemma block_11_265 : scan 542720 11 = true :=
  scan_join 542720 10 block_10_530 block_10_531
private lemma block_11_266 : scan 544768 11 = true :=
  scan_join 544768 10 block_10_532 block_10_533
private lemma block_11_267 : scan 546816 11 = true :=
  scan_join 546816 10 block_10_534 block_10_535
private lemma block_11_268 : scan 548864 11 = true :=
  scan_join 548864 10 block_10_536 block_10_537
private lemma block_11_269 : scan 550912 11 = true :=
  scan_join 550912 10 block_10_538 block_10_539
private lemma block_11_270 : scan 552960 11 = true :=
  scan_join 552960 10 block_10_540 block_10_541
private lemma block_11_271 : scan 555008 11 = true :=
  scan_join 555008 10 block_10_542 block_10_543
private lemma block_11_272 : scan 557056 11 = true :=
  scan_join 557056 10 block_10_544 block_10_545
private lemma block_11_273 : scan 559104 11 = true :=
  scan_join 559104 10 block_10_546 block_10_547
private lemma block_11_274 : scan 561152 11 = true :=
  scan_join 561152 10 block_10_548 block_10_549
private lemma block_11_275 : scan 563200 11 = true :=
  scan_join 563200 10 block_10_550 block_10_551
private lemma block_11_276 : scan 565248 11 = true :=
  scan_join 565248 10 block_10_552 block_10_553
private lemma block_11_277 : scan 567296 11 = true :=
  scan_join 567296 10 block_10_554 block_10_555
private lemma block_11_278 : scan 569344 11 = true :=
  scan_join 569344 10 block_10_556 block_10_557
private lemma block_11_279 : scan 571392 11 = true :=
  scan_join 571392 10 block_10_558 block_10_559
private lemma block_11_280 : scan 573440 11 = true :=
  scan_join 573440 10 block_10_560 block_10_561
private lemma block_11_281 : scan 575488 11 = true :=
  scan_join 575488 10 block_10_562 block_10_563
private lemma block_11_282 : scan 577536 11 = true :=
  scan_join 577536 10 block_10_564 block_10_565
private lemma block_11_283 : scan 579584 11 = true :=
  scan_join 579584 10 block_10_566 block_10_567
private lemma block_11_284 : scan 581632 11 = true :=
  scan_join 581632 10 block_10_568 block_10_569
private lemma block_11_285 : scan 583680 11 = true :=
  scan_join 583680 10 block_10_570 block_10_571
private lemma block_11_286 : scan 585728 11 = true :=
  scan_join 585728 10 block_10_572 block_10_573
private lemma block_11_287 : scan 587776 11 = true :=
  scan_join 587776 10 block_10_574 block_10_575
private lemma block_12_128 : scan 524288 12 = true :=
  scan_join 524288 11 block_11_256 block_11_257
private lemma block_12_129 : scan 528384 12 = true :=
  scan_join 528384 11 block_11_258 block_11_259
private lemma block_12_130 : scan 532480 12 = true :=
  scan_join 532480 11 block_11_260 block_11_261
private lemma block_12_131 : scan 536576 12 = true :=
  scan_join 536576 11 block_11_262 block_11_263
private lemma block_12_132 : scan 540672 12 = true :=
  scan_join 540672 11 block_11_264 block_11_265
private lemma block_12_133 : scan 544768 12 = true :=
  scan_join 544768 11 block_11_266 block_11_267
private lemma block_12_134 : scan 548864 12 = true :=
  scan_join 548864 11 block_11_268 block_11_269
private lemma block_12_135 : scan 552960 12 = true :=
  scan_join 552960 11 block_11_270 block_11_271
private lemma block_12_136 : scan 557056 12 = true :=
  scan_join 557056 11 block_11_272 block_11_273
private lemma block_12_137 : scan 561152 12 = true :=
  scan_join 561152 11 block_11_274 block_11_275
private lemma block_12_138 : scan 565248 12 = true :=
  scan_join 565248 11 block_11_276 block_11_277
private lemma block_12_139 : scan 569344 12 = true :=
  scan_join 569344 11 block_11_278 block_11_279
private lemma block_12_140 : scan 573440 12 = true :=
  scan_join 573440 11 block_11_280 block_11_281
private lemma block_12_141 : scan 577536 12 = true :=
  scan_join 577536 11 block_11_282 block_11_283
private lemma block_12_142 : scan 581632 12 = true :=
  scan_join 581632 11 block_11_284 block_11_285
private lemma block_12_143 : scan 585728 12 = true :=
  scan_join 585728 11 block_11_286 block_11_287
private lemma block_13_64 : scan 524288 13 = true :=
  scan_join 524288 12 block_12_128 block_12_129
private lemma block_13_65 : scan 532480 13 = true :=
  scan_join 532480 12 block_12_130 block_12_131
private lemma block_13_66 : scan 540672 13 = true :=
  scan_join 540672 12 block_12_132 block_12_133
private lemma block_13_67 : scan 548864 13 = true :=
  scan_join 548864 12 block_12_134 block_12_135
private lemma block_13_68 : scan 557056 13 = true :=
  scan_join 557056 12 block_12_136 block_12_137
private lemma block_13_69 : scan 565248 13 = true :=
  scan_join 565248 12 block_12_138 block_12_139
private lemma block_13_70 : scan 573440 13 = true :=
  scan_join 573440 12 block_12_140 block_12_141
private lemma block_13_71 : scan 581632 13 = true :=
  scan_join 581632 12 block_12_142 block_12_143
private lemma block_14_32 : scan 524288 14 = true :=
  scan_join 524288 13 block_13_64 block_13_65
private lemma block_14_33 : scan 540672 14 = true :=
  scan_join 540672 13 block_13_66 block_13_67
private lemma block_14_34 : scan 557056 14 = true :=
  scan_join 557056 13 block_13_68 block_13_69
private lemma block_14_35 : scan 573440 14 = true :=
  scan_join 573440 13 block_13_70 block_13_71
private lemma block_15_16 : scan 524288 15 = true :=
  scan_join 524288 14 block_14_32 block_14_33
private lemma block_15_17 : scan 557056 15 = true :=
  scan_join 557056 14 block_14_34 block_14_35
lemma block_16_8 : scan 524288 16 = true :=
  scan_join 524288 15 block_15_16 block_15_17

end A060957.Case954316
