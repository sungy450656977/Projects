local record_daily_mission_info = {}

record_daily_mission_info.id = 0 --任务编号
record_daily_mission_info.name = "" --功能名称
record_daily_mission_info.function_id = 0 --功能接口
record_daily_mission_info.icon = "" --功能icon
record_daily_mission_info.require_type = 0 --完成条件
record_daily_mission_info.require_times = 0 --完成次数
record_daily_mission_info.level_min = 0 --等级下限（闭区间）
record_daily_mission_info.level_max = 0 --等级上限（闭区间）
record_daily_mission_info.award1_type = 0 --奖励1类型
record_daily_mission_info.award1_value = 0 --奖励1类型值
record_daily_mission_info.award1_size = 0 --奖励1数量
record_daily_mission_info.points = 0 --奖励积分


daily_mission_info = {
    _data = {
    [1] = {1001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,71,80,3,5,1,10,},
    [2] = {1002,"挑战5次传说副本",2,"icon/basic/103.png",2,5,71,80,13,0,30,5,},
    [3] = {1003,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,71,80,3,40,1,5,},
    [4] = {1004,"挑战5次竞技场",5,"icon/basic/117.png",4,5,71,80,3,4,1,5,},
    [5] = {1005,"进行3次徽章合成",7,"icon/basic/109.png",17,3,71,80,3,4,1,5,},
    [6] = {1006,"装备强化1次",16,"icon/basic/106.png",13,1,71,80,1,0,50000,5,},
    [7] = {1007,"徽章强化3次",17,"icon/basic/109.png",15,3,71,80,1,0,50000,5,},
    [8] = {1008,"英雄培养2次",15,"icon/basic/105.png",10,2,71,80,3,9,10,5,},
    [9] = {1009,"装备精炼5次",16,"icon/basic/106.png",14,5,71,80,3,13,5,5,},
    [10] = {1010,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,71,80,1,0,50000,5,},
    [11] = {1011,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,71,80,3,7,5,5,},
    [12] = {1012,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,71,80,13,0,50,20,},
    [13] = {1013,"进行10次灾害平息",10,"icon/basic/115.png",6,10,71,80,3,36,2,10,},
    [14] = {1014,"分享3次灾害",10,"icon/basic/115.png",23,3,71,80,3,36,2,10,},
    [15] = {1015,"购买5个精力可乐",3,"icon/item/40002.png",19,5,71,80,2,0,30,10,},
    [16] = {1016,"购买5个体力可乐",3,"icon/item/40004.png",20,5,71,80,2,0,30,10,},
    [17] = {1017,"帮助好友解决5次暴动",18,"icon/basic/117.png",21,5,71,80,3,4,1,5,},
    [18] = {1018,"城市守护巡逻12小时",18,"icon/basic/117.png",22,12,71,80,3,4,1,5,},
    [19] = {1019,"挑战10次精英副本",19,"icon/basic/110.png",24,10,71,80,3,15,1,10,},
    [20] = {1020,"挑战3次日常副本",20,"icon/basic/110.png",25,3,71,80,3,5,1,5,},
    [21] = {1021,"击杀精英外敌3个",19,"icon/basic/110.png",27,3,71,80,23,0,50,5,},
    [22] = {1022,"幸运手机召唤1次",21,"icon/basic/121.png",26,1,200,999,13,0,30,5,},
    [23] = {2001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,61,64,3,5,1,10,},
    [24] = {2002,"挑战5次传说副本",2,"icon/basic/103.png",2,5,61,64,13,0,30,5,},
    [25] = {2003,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,61,64,3,40,1,5,},
    [26] = {2004,"挑战5次竞技场",5,"icon/basic/117.png",4,5,61,64,3,4,1,5,},
    [27] = {2005,"进行3次徽章合成",7,"icon/basic/109.png",17,3,61,64,3,4,1,5,},
    [28] = {2006,"装备强化2次",16,"icon/basic/106.png",13,2,61,64,1,0,45000,5,},
    [29] = {2007,"徽章强化3次",17,"icon/basic/109.png",15,3,61,64,1,0,45000,5,},
    [30] = {2008,"英雄培养2次",15,"icon/basic/105.png",10,2,61,64,3,9,10,5,},
    [31] = {2009,"装备精炼5次",16,"icon/basic/106.png",14,5,61,64,3,12,5,5,},
    [32] = {2010,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,61,64,1,0,45000,5,},
    [33] = {2011,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,61,64,3,7,4,5,},
    [34] = {2012,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,61,64,13,0,50,20,},
    [35] = {2013,"进行10次灾害平息",10,"icon/basic/115.png",6,10,61,64,3,36,2,10,},
    [36] = {2014,"分享3次灾害",10,"icon/basic/115.png",23,3,61,64,3,36,2,10,},
    [37] = {2015,"购买5个精力可乐",3,"icon/item/40002.png",19,5,61,64,2,0,30,10,},
    [38] = {2016,"购买5个体力可乐",3,"icon/item/40004.png",20,5,61,64,2,0,30,10,},
    [39] = {2017,"帮助好友解决5次暴动",18,"icon/basic/117.png",21,5,61,64,3,4,1,5,},
    [40] = {2018,"城市守护巡逻12小时",18,"icon/basic/117.png",22,12,61,64,3,4,1,5,},
    [41] = {2019,"挑战10次精英副本",19,"icon/basic/110.png",24,10,61,64,3,15,1,10,},
    [42] = {2020,"挑战3次日常副本",20,"icon/basic/110.png",25,3,61,64,3,5,1,5,},
    [43] = {2021,"击杀精英外敌3个",19,"icon/basic/110.png",27,3,61,64,23,0,50,5,},
    [44] = {2501,"挑战10次主线副本",1,"icon/basic/110.png",1,10,65,70,3,5,1,10,},
    [45] = {2502,"挑战5次传说副本",2,"icon/basic/103.png",2,5,65,70,13,0,30,5,},
    [46] = {2503,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,65,70,3,40,1,5,},
    [47] = {2504,"挑战5次竞技场",5,"icon/basic/117.png",4,5,65,70,3,4,1,5,},
    [48] = {2505,"进行3次徽章合成",7,"icon/basic/109.png",17,3,65,70,3,4,1,5,},
    [49] = {2506,"装备强化2次",16,"icon/basic/106.png",13,2,65,70,1,0,45000,5,},
    [50] = {2507,"徽章强化3次",17,"icon/basic/109.png",15,3,65,70,1,0,45000,5,},
    [51] = {2508,"英雄培养2次",15,"icon/basic/105.png",10,2,65,70,3,9,10,5,},
    [52] = {2509,"装备精炼5次",16,"icon/basic/106.png",14,5,65,70,3,12,5,5,},
    [53] = {2510,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,65,70,1,0,45000,5,},
    [54] = {2511,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,65,70,3,7,4,5,},
    [55] = {2512,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,65,70,13,0,50,20,},
    [56] = {2513,"进行10次灾害平息",10,"icon/basic/115.png",6,10,65,70,3,36,2,10,},
    [57] = {2514,"分享3次灾害",10,"icon/basic/115.png",23,3,65,70,3,36,2,10,},
    [58] = {2515,"购买5个精力可乐",3,"icon/item/40002.png",19,5,65,70,2,0,30,10,},
    [59] = {2516,"购买5个体力可乐",3,"icon/item/40004.png",20,5,65,70,2,0,30,10,},
    [60] = {2517,"帮助好友解决5次暴动",18,"icon/basic/117.png",21,5,65,70,3,4,1,5,},
    [61] = {2518,"城市守护巡逻12小时",18,"icon/basic/117.png",22,12,65,70,3,4,1,5,},
    [62] = {2519,"挑战10次精英副本",19,"icon/basic/110.png",24,10,65,70,3,15,1,10,},
    [63] = {2520,"挑战3次日常副本",20,"icon/basic/110.png",25,3,65,70,3,5,1,5,},
    [64] = {2521,"击杀精英外敌3个",19,"icon/basic/110.png",27,3,65,70,23,0,50,5,},
    [65] = {3001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,51,54,3,5,1,10,},
    [66] = {3002,"挑战5次传说副本",2,"icon/basic/103.png",2,5,51,54,13,0,30,5,},
    [67] = {3003,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,51,54,3,39,1,5,},
    [68] = {3004,"挑战5次竞技场",5,"icon/basic/117.png",4,5,51,54,3,4,1,5,},
    [69] = {3005,"进行3次徽章合成",7,"icon/basic/109.png",17,3,51,54,3,4,1,5,},
    [70] = {3006,"装备强化3次",16,"icon/basic/106.png",13,3,51,54,1,0,40000,5,},
    [71] = {3007,"徽章强化3次",17,"icon/basic/109.png",15,3,51,54,1,0,40000,5,},
    [72] = {3008,"英雄培养2次",15,"icon/basic/105.png",10,2,51,54,3,9,10,5,},
    [73] = {3009,"装备精炼5次",16,"icon/basic/106.png",14,5,51,54,3,12,5,5,},
    [74] = {3010,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,51,54,1,0,40000,5,},
    [75] = {3011,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,51,54,3,7,3,5,},
    [76] = {3012,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,51,54,13,0,50,20,},
    [77] = {3013,"进行10次灾害平息",10,"icon/basic/115.png",6,10,51,54,3,36,2,10,},
    [78] = {3014,"分享3次灾害",10,"icon/basic/115.png",23,3,51,54,3,36,2,10,},
    [79] = {3015,"购买5个精力可乐",3,"icon/item/40002.png",19,5,51,54,2,0,30,10,},
    [80] = {3016,"购买5个体力可乐",3,"icon/item/40004.png",20,5,51,54,2,0,30,10,},
    [81] = {3017,"帮助好友解决5次暴动",18,"icon/basic/117.png",21,5,51,54,3,4,1,5,},
    [82] = {3018,"城市守护巡逻12小时",18,"icon/basic/117.png",22,12,51,54,3,4,1,5,},
    [83] = {3019,"挑战10次精英副本",19,"icon/basic/110.png",24,10,51,54,3,15,1,10,},
    [84] = {3020,"挑战3次日常副本",20,"icon/basic/110.png",25,3,51,54,3,5,1,5,},
    [85] = {3021,"击杀精英外敌3个",19,"icon/basic/110.png",27,3,51,54,23,0,50,5,},
    [86] = {3501,"挑战10次主线副本",1,"icon/basic/110.png",1,10,55,60,3,5,1,10,},
    [87] = {3502,"挑战5次传说副本",2,"icon/basic/103.png",2,5,55,60,13,0,30,5,},
    [88] = {3503,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,55,60,3,39,1,5,},
    [89] = {3504,"挑战5次竞技场",5,"icon/basic/117.png",4,5,55,60,3,4,1,5,},
    [90] = {3505,"进行3次徽章合成",7,"icon/basic/109.png",17,3,55,60,3,4,1,5,},
    [91] = {3506,"装备强化3次",16,"icon/basic/106.png",13,3,55,60,1,0,40000,5,},
    [92] = {3507,"徽章强化3次",17,"icon/basic/109.png",15,3,55,60,1,0,40000,5,},
    [93] = {3508,"英雄培养2次",15,"icon/basic/105.png",10,2,55,60,3,9,10,5,},
    [94] = {3509,"装备精炼5次",16,"icon/basic/106.png",14,5,55,60,3,12,5,5,},
    [95] = {3510,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,55,60,1,0,40000,5,},
    [96] = {3511,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,55,60,3,7,3,5,},
    [97] = {3512,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,55,60,13,0,50,20,},
    [98] = {3513,"进行10次灾害平息",10,"icon/basic/115.png",6,10,55,60,3,36,2,10,},
    [99] = {3514,"分享3次灾害",10,"icon/basic/115.png",23,3,55,60,3,36,2,10,},
    [100] = {3515,"购买5个精力可乐",3,"icon/item/40002.png",19,5,55,60,2,0,30,10,},
    [101] = {3516,"购买5个体力可乐",3,"icon/item/40004.png",20,5,55,60,2,0,30,10,},
    [102] = {3517,"帮助好友解决5次暴动",18,"icon/basic/117.png",21,5,55,60,3,4,1,5,},
    [103] = {3518,"城市守护巡逻12小时",18,"icon/basic/117.png",22,12,55,60,3,4,1,5,},
    [104] = {3519,"挑战10次精英副本",19,"icon/basic/110.png",24,10,55,60,3,15,1,10,},
    [105] = {3520,"挑战3次日常副本",20,"icon/basic/110.png",25,3,55,60,3,5,1,5,},
    [106] = {3521,"击杀精英外敌3个",19,"icon/basic/110.png",27,3,55,60,23,0,50,5,},
    [107] = {4001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,35,50,3,5,1,10,},
    [108] = {4002,"挑战5次传说副本",2,"icon/basic/103.png",2,5,35,50,13,0,30,10,},
    [109] = {4003,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,35,50,3,39,1,10,},
    [110] = {4004,"挑战5次竞技场",5,"icon/basic/117.png",4,5,35,50,3,4,1,5,},
    [111] = {4005,"进行3次徽章合成",7,"icon/basic/109.png",17,3,35,50,3,4,1,5,},
    [112] = {4006,"装备强化5次",16,"icon/basic/106.png",13,5,35,50,1,0,30000,5,},
    [113] = {4007,"徽章强化3次",17,"icon/basic/109.png",15,3,35,50,1,0,30000,5,},
    [114] = {4008,"英雄培养2次",15,"icon/basic/105.png",10,2,35,50,3,9,10,5,},
    [115] = {4009,"装备精炼5次",16,"icon/basic/106.png",14,5,35,50,3,11,10,5,},
    [116] = {4010,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,35,50,1,0,30000,5,},
    [117] = {4011,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,35,50,3,7,2,5,},
    [118] = {4012,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,35,50,13,0,50,20,},
    [119] = {4013,"进行10次灾害平息",10,"icon/basic/115.png",6,10,35,50,3,36,2,10,},
    [120] = {4014,"分享3次灾害",10,"icon/basic/115.png",23,3,35,50,3,36,2,10,},
    [121] = {4015,"购买5个精力可乐",3,"icon/item/40002.png",19,5,35,50,2,0,30,10,},
    [122] = {4016,"购买5个体力可乐",3,"icon/item/40004.png",20,5,35,50,2,0,30,10,},
    [123] = {4017,"帮助好友解决3次暴动",18,"icon/basic/117.png",21,3,35,50,3,4,1,5,},
    [124] = {4018,"城市守护巡逻8小时",18,"icon/basic/117.png",22,8,35,50,3,4,1,5,},
    [125] = {4019,"挑战2次日常副本",20,"icon/basic/110.png",25,2,35,50,3,5,1,5,},
    [126] = {5001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,21,34,3,5,1,10,},
    [127] = {5002,"挑战5次传说副本",2,"icon/basic/103.png",2,5,21,34,13,0,30,10,},
    [128] = {5003,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,21,34,3,38,1,10,},
    [129] = {5004,"挑战5次竞技场",5,"icon/basic/117.png",4,5,21,34,3,4,1,10,},
    [130] = {5005,"进行3次徽章合成",7,"icon/basic/109.png",17,3,21,34,3,4,1,10,},
    [131] = {5006,"装备强化5次",16,"icon/basic/106.png",13,5,21,34,1,0,20000,10,},
    [132] = {5007,"徽章强化3次",17,"icon/basic/109.png",15,3,21,34,1,0,20000,10,},
    [133] = {5008,"英雄培养2次",15,"icon/basic/105.png",10,2,21,34,3,9,10,10,},
    [134] = {5009,"装备精炼5次",16,"icon/basic/106.png",14,5,21,34,3,10,10,10,},
    [135] = {5010,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,21,34,1,0,20000,5,},
    [136] = {5011,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,21,34,3,7,1,5,},
    [137] = {5012,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,21,34,13,0,50,20,},
    [138] = {5013,"购买3个精力可乐",3,"icon/item/40002.png",19,3,21,34,2,0,15,10,},
    [139] = {5014,"购买3个体力可乐",3,"icon/item/40004.png",20,3,21,34,2,0,15,10,},
    [140] = {5015,"挑战1次日常副本",20,"icon/basic/110.png",25,1,21,34,3,5,1,5,},
    [141] = {6001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,1,20,3,5,1,20,},
    [142] = {6002,"挑战5次竞技场",5,"icon/basic/117.png",4,5,1,20,3,4,1,15,},
    [143] = {6003,"夺宝5次",7,"icon/basic/117.png",5,5,1,20,3,4,1,15,},
    [144] = {6004,"装备强化5次",16,"icon/basic/106.png",13,5,1,20,1,0,20000,10,},
    [145] = {6005,"徽章强化3次",17,"icon/basic/109.png",15,3,1,20,1,0,20000,10,},
    [146] = {6006,"英雄培养2次",15,"icon/basic/105.png",10,2,1,20,3,9,10,10,},
    [147] = {6007,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,1,20,1,0,20000,10,},
    [148] = {6008,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,1,20,3,7,1,10,},
    [149] = {6009,"购买1个精力可乐",3,"icon/item/40002.png",19,1,1,20,2,0,5,20,},
    [150] = {6010,"购买1个体力可乐",3,"icon/item/40004.png",20,1,1,20,2,0,5,20,},
    [151] = {7001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,81,100,3,5,1,10,},
    [152] = {7002,"挑战5次传说副本",2,"icon/basic/103.png",2,5,81,100,13,0,30,5,},
    [153] = {7003,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,81,100,3,40,1,5,},
    [154] = {7004,"挑战5次竞技场",5,"icon/basic/117.png",4,5,81,100,3,4,1,5,},
    [155] = {7005,"进行3次徽章合成",7,"icon/basic/109.png",17,3,81,100,3,4,1,5,},
    [156] = {7006,"装备强化1次",16,"icon/basic/106.png",13,1,81,100,1,0,50000,5,},
    [157] = {7007,"徽章强化3次",17,"icon/basic/109.png",15,3,81,100,1,0,50000,5,},
    [158] = {7008,"英雄培养2次",15,"icon/basic/105.png",10,2,81,100,3,9,10,5,},
    [159] = {7009,"装备精炼5次",16,"icon/basic/106.png",14,5,81,100,3,13,5,5,},
    [160] = {7010,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,81,100,1,0,50000,5,},
    [161] = {7011,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,81,100,3,7,5,5,},
    [162] = {7012,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,81,100,13,0,50,20,},
    [163] = {7013,"进行10次灾害平息",10,"icon/basic/115.png",6,10,81,100,3,36,2,10,},
    [164] = {7014,"分享3次灾害",10,"icon/basic/115.png",23,3,81,100,3,36,2,10,},
    [165] = {7015,"购买5个精力可乐",3,"icon/item/40002.png",19,5,81,100,2,0,30,10,},
    [166] = {7016,"购买5个体力可乐",3,"icon/item/40004.png",20,5,81,100,2,0,30,10,},
    [167] = {7017,"帮助好友解决5次暴动",18,"icon/basic/117.png",21,5,81,100,3,4,1,5,},
    [168] = {7018,"城市守护巡逻12小时",18,"icon/basic/117.png",22,12,81,100,3,4,1,5,},
    [169] = {7019,"挑战10次精英副本",19,"icon/basic/110.png",24,10,81,100,3,15,1,10,},
    [170] = {7020,"挑战3次日常副本",20,"icon/basic/110.png",25,3,81,100,3,5,1,5,},
    [171] = {7021,"击杀精英外敌3个",19,"icon/basic/110.png",27,3,81,100,23,0,50,5,},
    [172] = {8001,"挑战10次主线副本",1,"icon/basic/110.png",1,10,101,999,3,5,1,10,},
    [173] = {8002,"挑战5次传说副本",2,"icon/basic/103.png",2,5,101,999,13,0,30,5,},
    [174] = {8003,"挑战3次试炼塔",6,"icon/basic/117.png",3,3,101,999,3,40,1,5,},
    [175] = {8004,"挑战5次竞技场",5,"icon/basic/117.png",4,5,101,999,3,4,1,5,},
    [176] = {8005,"进行3次徽章合成",7,"icon/basic/109.png",17,3,101,999,3,4,1,5,},
    [177] = {8006,"装备强化1次",16,"icon/basic/106.png",13,1,101,999,1,0,50000,5,},
    [178] = {8007,"徽章强化3次",17,"icon/basic/109.png",15,3,101,999,1,0,50000,5,},
    [179] = {8008,"英雄培养2次",15,"icon/basic/105.png",10,2,101,999,3,9,10,5,},
    [180] = {8009,"装备精炼5次",16,"icon/basic/106.png",14,5,101,999,3,13,5,5,},
    [181] = {8010,"为10名好友赠送精力",14,"icon/basic/114.png",9,10,101,999,1,0,50000,5,},
    [182] = {8011,"前往商城进行3次手机召唤",8,"icon/basic/121.png",8,3,101,999,3,7,5,5,},
    [183] = {8012,"进行1次智能手机召唤",9,"icon/basic/121.png",18,1,101,999,13,0,50,20,},
    [184] = {8013,"进行10次灾害平息",10,"icon/basic/115.png",6,10,101,999,3,36,2,10,},
    [185] = {8014,"分享3次灾害",10,"icon/basic/115.png",23,3,101,999,3,36,2,10,},
    [186] = {8015,"购买5个精力可乐",3,"icon/item/40002.png",19,5,101,999,2,0,30,10,},
    [187] = {8016,"购买5个体力可乐",3,"icon/item/40004.png",20,5,101,999,2,0,30,10,},
    [188] = {8017,"帮助好友解决5次暴动",18,"icon/basic/117.png",21,5,101,999,3,4,1,5,},
    [189] = {8018,"城市守护巡逻12小时",18,"icon/basic/117.png",22,12,101,999,3,4,1,5,},
    [190] = {8019,"挑战10次精英副本",19,"icon/basic/110.png",24,10,101,999,3,15,1,10,},
    [191] = {8020,"挑战3次日常副本",20,"icon/basic/110.png",25,3,101,999,3,5,1,5,},
    [192] = {8021,"击杀精英外敌3个",19,"icon/basic/110.png",27,3,101,999,23,0,50,5,},
    }
}

local __index_id = {
    [1001] = 1,
    [1002] = 2,
    [1003] = 3,
    [1004] = 4,
    [1005] = 5,
    [1006] = 6,
    [1007] = 7,
    [1008] = 8,
    [1009] = 9,
    [1010] = 10,
    [1011] = 11,
    [1012] = 12,
    [1013] = 13,
    [1014] = 14,
    [1015] = 15,
    [1016] = 16,
    [1017] = 17,
    [1018] = 18,
    [1019] = 19,
    [1020] = 20,
    [1021] = 21,
    [1022] = 22,
    [2001] = 23,
    [2002] = 24,
    [2003] = 25,
    [2004] = 26,
    [2005] = 27,
    [2006] = 28,
    [2007] = 29,
    [2008] = 30,
    [2009] = 31,
    [2010] = 32,
    [2011] = 33,
    [2012] = 34,
    [2013] = 35,
    [2014] = 36,
    [2015] = 37,
    [2016] = 38,
    [2017] = 39,
    [2018] = 40,
    [2019] = 41,
    [2020] = 42,
    [2021] = 43,
    [2501] = 44,
    [2502] = 45,
    [2503] = 46,
    [2504] = 47,
    [2505] = 48,
    [2506] = 49,
    [2507] = 50,
    [2508] = 51,
    [2509] = 52,
    [2510] = 53,
    [2511] = 54,
    [2512] = 55,
    [2513] = 56,
    [2514] = 57,
    [2515] = 58,
    [2516] = 59,
    [2517] = 60,
    [2518] = 61,
    [2519] = 62,
    [2520] = 63,
    [2521] = 64,
    [3001] = 65,
    [3002] = 66,
    [3003] = 67,
    [3004] = 68,
    [3005] = 69,
    [3006] = 70,
    [3007] = 71,
    [3008] = 72,
    [3009] = 73,
    [3010] = 74,
    [3011] = 75,
    [3012] = 76,
    [3013] = 77,
    [3014] = 78,
    [3015] = 79,
    [3016] = 80,
    [3017] = 81,
    [3018] = 82,
    [3019] = 83,
    [3020] = 84,
    [3021] = 85,
    [3501] = 86,
    [3502] = 87,
    [3503] = 88,
    [3504] = 89,
    [3505] = 90,
    [3506] = 91,
    [3507] = 92,
    [3508] = 93,
    [3509] = 94,
    [3510] = 95,
    [3511] = 96,
    [3512] = 97,
    [3513] = 98,
    [3514] = 99,
    [3515] = 100,
    [3516] = 101,
    [3517] = 102,
    [3518] = 103,
    [3519] = 104,
    [3520] = 105,
    [3521] = 106,
    [4001] = 107,
    [4002] = 108,
    [4003] = 109,
    [4004] = 110,
    [4005] = 111,
    [4006] = 112,
    [4007] = 113,
    [4008] = 114,
    [4009] = 115,
    [4010] = 116,
    [4011] = 117,
    [4012] = 118,
    [4013] = 119,
    [4014] = 120,
    [4015] = 121,
    [4016] = 122,
    [4017] = 123,
    [4018] = 124,
    [4019] = 125,
    [5001] = 126,
    [5002] = 127,
    [5003] = 128,
    [5004] = 129,
    [5005] = 130,
    [5006] = 131,
    [5007] = 132,
    [5008] = 133,
    [5009] = 134,
    [5010] = 135,
    [5011] = 136,
    [5012] = 137,
    [5013] = 138,
    [5014] = 139,
    [5015] = 140,
    [6001] = 141,
    [6002] = 142,
    [6003] = 143,
    [6004] = 144,
    [6005] = 145,
    [6006] = 146,
    [6007] = 147,
    [6008] = 148,
    [6009] = 149,
    [6010] = 150,
    [7001] = 151,
    [7002] = 152,
    [7003] = 153,
    [7004] = 154,
    [7005] = 155,
    [7006] = 156,
    [7007] = 157,
    [7008] = 158,
    [7009] = 159,
    [7010] = 160,
    [7011] = 161,
    [7012] = 162,
    [7013] = 163,
    [7014] = 164,
    [7015] = 165,
    [7016] = 166,
    [7017] = 167,
    [7018] = 168,
    [7019] = 169,
    [7020] = 170,
    [7021] = 171,
    [8001] = 172,
    [8002] = 173,
    [8003] = 174,
    [8004] = 175,
    [8005] = 176,
    [8006] = 177,
    [8007] = 178,
    [8008] = 179,
    [8009] = 180,
    [8010] = 181,
    [8011] = 182,
    [8012] = 183,
    [8013] = 184,
    [8014] = 185,
    [8015] = 186,
    [8016] = 187,
    [8017] = 188,
    [8018] = 189,
    [8019] = 190,
    [8020] = 191,
    [8021] = 192,
}

local __key_map = {
    id = 1,
    name = 2,
    function_id = 3,
    icon = 4,
    require_type = 5,
    require_times = 6,
    level_min = 7,
    level_max = 8,
    award1_type = 9,
    award1_value = 10,
    award1_size = 11,
    points = 12,
}

local m = {
    __index = function(t,k)
        if k == "toObject"then
            return function()
                local o = {}
                for key, v in pairs (__key_map) do
                    o[key] = t._raw[v]
                end
                return o
            end
        end

        assert(__key_map[k], "cannot find " .. k .. " in record_daily_mission_info")
        return t._raw[__key_map[k]]
    end
}

function daily_mission_info.getLength()
    return #daily_mission_info._data
end

function daily_mission_info.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

function daily_mission_info.indexOf(index)
    if index == nil then
        return nil
    end
    return setmetatable({_raw = daily_mission_info._data[index]}, m)
end

function daily_mission_info.get(id)
    local k = id
    return daily_mission_info.indexOf(__index_id[k])
end

function daily_mission_info.set(id, key, value)
    local record = daily_mission_info.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

function daily_mission_info.get_index_data()
    return __index_id
end

