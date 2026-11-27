import A060957.Scan954316

namespace A060957.Case954316
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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
private lemma block_14_0 : scan 0 14 = true :=
  scan_join 0 13 block_13_0 block_13_1
private lemma block_14_1 : scan 16384 14 = true :=
  scan_join 16384 13 block_13_2 block_13_3
private lemma block_14_2 : scan 32768 14 = true :=
  scan_join 32768 13 block_13_4 block_13_5
private lemma block_14_3 : scan 49152 14 = true :=
  scan_join 49152 13 block_13_6 block_13_7
private lemma block_15_0 : scan 0 15 = true :=
  scan_join 0 14 block_14_0 block_14_1
private lemma block_15_1 : scan 32768 15 = true :=
  scan_join 32768 14 block_14_2 block_14_3
lemma block_16_0 : scan 0 16 = true :=
  scan_join 0 15 block_15_0 block_15_1

end A060957.Case954316
