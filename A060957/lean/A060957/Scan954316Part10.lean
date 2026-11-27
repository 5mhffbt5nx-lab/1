import A060957.Scan954316

namespace A060957.Case954316
set_option maxHeartbeats 0
set_option maxRecDepth 100000

private lemma block_10_640 : scan 655360 10 = true := by decide +kernel
private lemma block_10_641 : scan 656384 10 = true := by decide +kernel
private lemma block_10_642 : scan 657408 10 = true := by decide +kernel
private lemma block_10_643 : scan 658432 10 = true := by decide +kernel
private lemma block_10_644 : scan 659456 10 = true := by decide +kernel
private lemma block_10_645 : scan 660480 10 = true := by decide +kernel
private lemma block_10_646 : scan 661504 10 = true := by decide +kernel
private lemma block_10_647 : scan 662528 10 = true := by decide +kernel
private lemma block_10_648 : scan 663552 10 = true := by decide +kernel
private lemma block_10_649 : scan 664576 10 = true := by decide +kernel
private lemma block_10_650 : scan 665600 10 = true := by decide +kernel
private lemma block_10_651 : scan 666624 10 = true := by decide +kernel
private lemma block_10_652 : scan 667648 10 = true := by decide +kernel
private lemma block_10_653 : scan 668672 10 = true := by decide +kernel
private lemma block_10_654 : scan 669696 10 = true := by decide +kernel
private lemma block_10_655 : scan 670720 10 = true := by decide +kernel
private lemma block_10_656 : scan 671744 10 = true := by decide +kernel
private lemma block_10_657 : scan 672768 10 = true := by decide +kernel
private lemma block_10_658 : scan 673792 10 = true := by decide +kernel
private lemma block_10_659 : scan 674816 10 = true := by decide +kernel
private lemma block_10_660 : scan 675840 10 = true := by decide +kernel
private lemma block_10_661 : scan 676864 10 = true := by decide +kernel
private lemma block_10_662 : scan 677888 10 = true := by decide +kernel
private lemma block_10_663 : scan 678912 10 = true := by decide +kernel
private lemma block_10_664 : scan 679936 10 = true := by decide +kernel
private lemma block_10_665 : scan 680960 10 = true := by decide +kernel
private lemma block_10_666 : scan 681984 10 = true := by decide +kernel
private lemma block_10_667 : scan 683008 10 = true := by decide +kernel
private lemma block_10_668 : scan 684032 10 = true := by decide +kernel
private lemma block_10_669 : scan 685056 10 = true := by decide +kernel
private lemma block_10_670 : scan 686080 10 = true := by decide +kernel
private lemma block_10_671 : scan 687104 10 = true := by decide +kernel
private lemma block_10_672 : scan 688128 10 = true := by decide +kernel
private lemma block_10_673 : scan 689152 10 = true := by decide +kernel
private lemma block_10_674 : scan 690176 10 = true := by decide +kernel
private lemma block_10_675 : scan 691200 10 = true := by decide +kernel
private lemma block_10_676 : scan 692224 10 = true := by decide +kernel
private lemma block_10_677 : scan 693248 10 = true := by decide +kernel
private lemma block_10_678 : scan 694272 10 = true := by decide +kernel
private lemma block_10_679 : scan 695296 10 = true := by decide +kernel
private lemma block_10_680 : scan 696320 10 = true := by decide +kernel
private lemma block_10_681 : scan 697344 10 = true := by decide +kernel
private lemma block_10_682 : scan 698368 10 = true := by decide +kernel
private lemma block_10_683 : scan 699392 10 = true := by decide +kernel
private lemma block_10_684 : scan 700416 10 = true := by decide +kernel
private lemma block_10_685 : scan 701440 10 = true := by decide +kernel
private lemma block_10_686 : scan 702464 10 = true := by decide +kernel
private lemma block_10_687 : scan 703488 10 = true := by decide +kernel
private lemma block_10_688 : scan 704512 10 = true := by decide +kernel
private lemma block_10_689 : scan 705536 10 = true := by decide +kernel
private lemma block_10_690 : scan 706560 10 = true := by decide +kernel
private lemma block_10_691 : scan 707584 10 = true := by decide +kernel
private lemma block_10_692 : scan 708608 10 = true := by decide +kernel
private lemma block_10_693 : scan 709632 10 = true := by decide +kernel
private lemma block_10_694 : scan 710656 10 = true := by decide +kernel
private lemma block_10_695 : scan 711680 10 = true := by decide +kernel
private lemma block_10_696 : scan 712704 10 = true := by decide +kernel
private lemma block_10_697 : scan 713728 10 = true := by decide +kernel
private lemma block_10_698 : scan 714752 10 = true := by decide +kernel
private lemma block_10_699 : scan 715776 10 = true := by decide +kernel
private lemma block_10_700 : scan 716800 10 = true := by decide +kernel
private lemma block_10_701 : scan 717824 10 = true := by decide +kernel
private lemma block_10_702 : scan 718848 10 = true := by decide +kernel
private lemma block_10_703 : scan 719872 10 = true := by decide +kernel
private lemma block_11_320 : scan 655360 11 = true :=
  scan_join 655360 10 block_10_640 block_10_641
private lemma block_11_321 : scan 657408 11 = true :=
  scan_join 657408 10 block_10_642 block_10_643
private lemma block_11_322 : scan 659456 11 = true :=
  scan_join 659456 10 block_10_644 block_10_645
private lemma block_11_323 : scan 661504 11 = true :=
  scan_join 661504 10 block_10_646 block_10_647
private lemma block_11_324 : scan 663552 11 = true :=
  scan_join 663552 10 block_10_648 block_10_649
private lemma block_11_325 : scan 665600 11 = true :=
  scan_join 665600 10 block_10_650 block_10_651
private lemma block_11_326 : scan 667648 11 = true :=
  scan_join 667648 10 block_10_652 block_10_653
private lemma block_11_327 : scan 669696 11 = true :=
  scan_join 669696 10 block_10_654 block_10_655
private lemma block_11_328 : scan 671744 11 = true :=
  scan_join 671744 10 block_10_656 block_10_657
private lemma block_11_329 : scan 673792 11 = true :=
  scan_join 673792 10 block_10_658 block_10_659
private lemma block_11_330 : scan 675840 11 = true :=
  scan_join 675840 10 block_10_660 block_10_661
private lemma block_11_331 : scan 677888 11 = true :=
  scan_join 677888 10 block_10_662 block_10_663
private lemma block_11_332 : scan 679936 11 = true :=
  scan_join 679936 10 block_10_664 block_10_665
private lemma block_11_333 : scan 681984 11 = true :=
  scan_join 681984 10 block_10_666 block_10_667
private lemma block_11_334 : scan 684032 11 = true :=
  scan_join 684032 10 block_10_668 block_10_669
private lemma block_11_335 : scan 686080 11 = true :=
  scan_join 686080 10 block_10_670 block_10_671
private lemma block_11_336 : scan 688128 11 = true :=
  scan_join 688128 10 block_10_672 block_10_673
private lemma block_11_337 : scan 690176 11 = true :=
  scan_join 690176 10 block_10_674 block_10_675
private lemma block_11_338 : scan 692224 11 = true :=
  scan_join 692224 10 block_10_676 block_10_677
private lemma block_11_339 : scan 694272 11 = true :=
  scan_join 694272 10 block_10_678 block_10_679
private lemma block_11_340 : scan 696320 11 = true :=
  scan_join 696320 10 block_10_680 block_10_681
private lemma block_11_341 : scan 698368 11 = true :=
  scan_join 698368 10 block_10_682 block_10_683
private lemma block_11_342 : scan 700416 11 = true :=
  scan_join 700416 10 block_10_684 block_10_685
private lemma block_11_343 : scan 702464 11 = true :=
  scan_join 702464 10 block_10_686 block_10_687
private lemma block_11_344 : scan 704512 11 = true :=
  scan_join 704512 10 block_10_688 block_10_689
private lemma block_11_345 : scan 706560 11 = true :=
  scan_join 706560 10 block_10_690 block_10_691
private lemma block_11_346 : scan 708608 11 = true :=
  scan_join 708608 10 block_10_692 block_10_693
private lemma block_11_347 : scan 710656 11 = true :=
  scan_join 710656 10 block_10_694 block_10_695
private lemma block_11_348 : scan 712704 11 = true :=
  scan_join 712704 10 block_10_696 block_10_697
private lemma block_11_349 : scan 714752 11 = true :=
  scan_join 714752 10 block_10_698 block_10_699
private lemma block_11_350 : scan 716800 11 = true :=
  scan_join 716800 10 block_10_700 block_10_701
private lemma block_11_351 : scan 718848 11 = true :=
  scan_join 718848 10 block_10_702 block_10_703
private lemma block_12_160 : scan 655360 12 = true :=
  scan_join 655360 11 block_11_320 block_11_321
private lemma block_12_161 : scan 659456 12 = true :=
  scan_join 659456 11 block_11_322 block_11_323
private lemma block_12_162 : scan 663552 12 = true :=
  scan_join 663552 11 block_11_324 block_11_325
private lemma block_12_163 : scan 667648 12 = true :=
  scan_join 667648 11 block_11_326 block_11_327
private lemma block_12_164 : scan 671744 12 = true :=
  scan_join 671744 11 block_11_328 block_11_329
private lemma block_12_165 : scan 675840 12 = true :=
  scan_join 675840 11 block_11_330 block_11_331
private lemma block_12_166 : scan 679936 12 = true :=
  scan_join 679936 11 block_11_332 block_11_333
private lemma block_12_167 : scan 684032 12 = true :=
  scan_join 684032 11 block_11_334 block_11_335
private lemma block_12_168 : scan 688128 12 = true :=
  scan_join 688128 11 block_11_336 block_11_337
private lemma block_12_169 : scan 692224 12 = true :=
  scan_join 692224 11 block_11_338 block_11_339
private lemma block_12_170 : scan 696320 12 = true :=
  scan_join 696320 11 block_11_340 block_11_341
private lemma block_12_171 : scan 700416 12 = true :=
  scan_join 700416 11 block_11_342 block_11_343
private lemma block_12_172 : scan 704512 12 = true :=
  scan_join 704512 11 block_11_344 block_11_345
private lemma block_12_173 : scan 708608 12 = true :=
  scan_join 708608 11 block_11_346 block_11_347
private lemma block_12_174 : scan 712704 12 = true :=
  scan_join 712704 11 block_11_348 block_11_349
private lemma block_12_175 : scan 716800 12 = true :=
  scan_join 716800 11 block_11_350 block_11_351
private lemma block_13_80 : scan 655360 13 = true :=
  scan_join 655360 12 block_12_160 block_12_161
private lemma block_13_81 : scan 663552 13 = true :=
  scan_join 663552 12 block_12_162 block_12_163
private lemma block_13_82 : scan 671744 13 = true :=
  scan_join 671744 12 block_12_164 block_12_165
private lemma block_13_83 : scan 679936 13 = true :=
  scan_join 679936 12 block_12_166 block_12_167
private lemma block_13_84 : scan 688128 13 = true :=
  scan_join 688128 12 block_12_168 block_12_169
private lemma block_13_85 : scan 696320 13 = true :=
  scan_join 696320 12 block_12_170 block_12_171
private lemma block_13_86 : scan 704512 13 = true :=
  scan_join 704512 12 block_12_172 block_12_173
private lemma block_13_87 : scan 712704 13 = true :=
  scan_join 712704 12 block_12_174 block_12_175
private lemma block_14_40 : scan 655360 14 = true :=
  scan_join 655360 13 block_13_80 block_13_81
private lemma block_14_41 : scan 671744 14 = true :=
  scan_join 671744 13 block_13_82 block_13_83
private lemma block_14_42 : scan 688128 14 = true :=
  scan_join 688128 13 block_13_84 block_13_85
private lemma block_14_43 : scan 704512 14 = true :=
  scan_join 704512 13 block_13_86 block_13_87
private lemma block_15_20 : scan 655360 15 = true :=
  scan_join 655360 14 block_14_40 block_14_41
private lemma block_15_21 : scan 688128 15 = true :=
  scan_join 688128 14 block_14_42 block_14_43
lemma block_16_10 : scan 655360 16 = true :=
  scan_join 655360 15 block_15_20 block_15_21

end A060957.Case954316
