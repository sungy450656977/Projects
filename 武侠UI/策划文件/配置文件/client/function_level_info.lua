local record_function_level_info = {}

record_function_level_info.id = 0 --id
record_function_level_info.function_id = 0 --功能id
record_function_level_info.level = 0 --开启等级
record_function_level_info.vip_level = 0 --开启VIP等级
record_function_level_info.icon = 0 --图标
record_function_level_info.name = "" --名字
record_function_level_info.directions = "" --描述
record_function_level_info.comment = "" --此处为未到等级的提示文字
record_function_level_info.step_id = 0 --新手引导步数


function_level_info = {
    _data = {
    [1] = {1,1,28,0,103,"传说副本","打传说副本，可获得大量钻石奖励！","28级才可以进传说副本哟，请努力提升等级再来吧！",0,},
    [2] = {2,2,10,0,117,"竞技场","竞技战胜其他玩家，可获得进化石。","10级才开放竞技场哟，请努力提升等级再来吧！",901,},
    [3] = {3,3,15,0,117,"夺宝","抢夺徽章，可提升英雄伤害百分比。","15级才开放夺宝哟，请努力提升等级再来吧！",1901,},
    [4] = {4,4,22,0,117,"试炼塔","试炼塔，可获得紫色橙色装备！","22级才能进试炼塔副本哟，请努力提升等级再来吧！",1401,},
    [5] = {5,5,1,0,105,"英雄升级","升级可提升英雄基础攻防生命属性！","1级才开放英雄升级哟，请努力提升等级再来吧！",0,},
    [6] = {6,6,1,0,105,"英雄进化","进化可获得英雄高级战斗天赋！","1级才开放英雄进化哟，请努力提升等级再来吧！",0,},
    [7] = {7,7,1,0,106,"装备强化","强化可提升装备基础攻防生命属性！","1级才开放装备强化哟，请努力提升等级再来吧！",0,},
    [8] = {8,8,1,0,111,"英雄商店","英雄商店出售紫色橙色英雄。","1级才开放英雄商店哟，请努力提升等级再来吧！",0,},
    [9] = {9,9,8,0,103,"扫荡","扫荡残敌，可以快速得经验升级。","8级才开放扫荡功能哟，请努力提升等级再来吧！",0,},
    [10] = {10,10,2,0,108,"第2阵位","快去【阵容】派上新的英雄吧！","2级才开放第二个英雄位，请努力提升等级再来吧！",0,},
    [11] = {11,10,3,0,108,"第3阵位","快去【阵容】派上新的英雄吧！","3级才开放第三个英雄位，请努力提升等级再来吧！",0,},
    [12] = {12,10,9,0,108,"第4阵位","快去【阵容】派上新的英雄吧！","9级才开放第四个英雄位，请努力提升等级再来吧！",0,},
    [13] = {13,10,16,0,108,"第5阵位","快去【阵容】派上新的英雄吧！","16级才开放第五个英雄位，请努力提升等级再来吧！",0,},
    [14] = {14,10,25,0,108,"第6阵位","快去【阵容】派上新的英雄吧！","25级才开放第六个英雄位，请努力提升等级再来吧！",0,},
    [15] = {15,11,15,0,109,"徽章强化","强化可提升徽章的百分比属性。","15级才开放徽章强化，请努力提升等级再来吧！",0,},
    [16] = {16,12,40,0,109,"徽章精炼","精炼可增加徽章的百分比属性！","40级才开放徽章精炼，请努力提升等级再来吧！",0,},
    [17] = {17,13,30,0,106,"装备精炼","精炼可增加装备的百分比属性！","30级才开放装备精炼，请努力提升等级再来吧！",2101,},
    [18] = {18,14,35,0,105,"英雄潜力","潜力可提升英雄的技能等级！","35级才开放英雄潜力，请努力提升等级再来吧！",0,},
    [19] = {19,15,10,0,105,"英雄培养","培养可提升英雄的一级属性！","10级才开放英雄培养，请努力提升等级再来吧！",0,},
    [20] = {20,16,35,0,117,"平息灾害","平息灾害，可获得大量金币和经验！","35级才开放平息灾害功能，请努力提升等级再来吧！",0,},
    [21] = {21,17,5,0,110,"战斗倍数切换","可切换1倍与2倍战斗速度！","5级才开放开启2倍速战斗，请努力提升等级再来吧！",0,},
    [22] = {22,17,25,1,110,"3倍速战斗","开启3倍速战斗！","达到25级或VIP1开启3倍速战斗！",0,},
    [23] = {23,18,30,0,108,"守护位置开放","快去上阵守护，给英雄凑齐缘分吧！","30级才开放第一个守护位置，请努力提升等级再来吧！",0,},
    [24] = {24,19,35,0,108,"守护位置开放","快去上阵守护，给英雄凑齐缘分吧！","35级才开放第二个守护位置，请努力提升等级再来吧！",0,},
    [25] = {25,20,40,0,108,"守护位置开放","快去上阵守护，给英雄凑齐缘分吧！","40级才开放第三个守护位置，请努力提升等级再来吧！",0,},
    [26] = {26,21,45,0,108,"守护位置开放","快去上阵守护，给英雄凑齐缘分吧！","45级才开放第四个守护位置，请努力提升等级再来吧！",0,},
    [27] = {27,22,50,0,108,"守护位置开放","快去上阵守护，给英雄凑齐缘分吧！","50级才开放第五个守护位置，请努力提升等级再来吧！",0,},
    [28] = {28,23,55,0,108,"守护位置开放","快去上阵守护，给英雄凑齐缘分吧！","55级才开放第六个守护位置，请努力提升等级再来吧！",0,},
    [29] = {29,24,26,0,103,"日常副本","每天可以获得大量资源！","26级才可以进日常副本哟，请努力提升等级再来吧！",801,},
    [30] = {30,25,20,0,112,"聊天系统","聊天系统开启，快去和朋友们一起玩耍吧！","20级才开放聊天系统，我们提高点等级再来吧！",0,},
    [31] = {31,26,10,0,106,"强化5次","加快提升能力吧！装备可以一次强化五次了！","10级才开放强化5次功能，我们提高点等级再来吧！",0,},
    [32] = {32,27,13,0,119,"执照","英雄执照系统开启，快去收集感谢信吧！","13级才开放英雄执照，我们提高点等级再来吧！",1300,},
    [33] = {33,28,200,0,121,"阵营招募","阵营招募开启，快去招募专一阵营的英雄吧！","40级开放阵营招募，要努力提升等级哦！",0,},
    [34] = {34,29,20,0,135,"英雄协会","快去看看英雄协会中各位英雄的风采吧！","20级开放英雄协会功能，要努力提升等级哦！",0,},
    [35] = {35,30,32,0,117,"城市守护","守护新城市，每日巡逻获得大量资源！","32级开放城市守护功能，要努力提升等级哦！",0,},
    [36] = {36,31,200,0,133,"漫画","开放漫画功能！","25级开放看漫画的功能，要努力提升等级哦！",0,},
    [37] = {37,32,38,0,132,"公会","开启公会！","38级开放公会功能，要努力提升等级哦！",0,},
    [38] = {38,33,38,0,134,"时装","开启主角时装功能！","38级开放主角时装功能，要努力提升等级哦！",0,},
    [39] = {39,34,38,3,117,"夺宝5次","开启夺宝5次功能！","达到38级或VIP3开启夺宝5次功能！",0,},
    [40] = {40,35,50,0,105,"升星","开启升星功能！","50级开放升星功能，要努力提升等级哦！",0,},
    [41] = {41,36,50,0,115,"升星背包","开启升星背包功能！","50级开放升星背包功能，要努力提升等级哦！",0,},
    [42] = {42,37,50,0,111,"升星商店","开启升星商店功能！","50级开放升星商店功能，要努力提升等级哦！",0,},
    [43] = {43,38,50,0,115,"升星道具合成","开启升星道具合成功能！","50级开放升星道具合成功能，要努力提升等级哦！",0,},
    [44] = {44,39,50,0,103,"精英副本","开启精英副本！","50级开启精英副本，要努力提升等级哦！",0,},
    [45] = {45,40,52,4,117,"3星挑战","试炼塔可以快速挑战了！","达到52级或VIP4开启3星挑战！",0,},
    [46] = {46,41,200,0,117,"跨服挑战","可以获得红色英雄，红色徽章等稀缺物品！","60级开启跨服挑战，要努力提升等级哦！",0,},
    [47] = {47,42,200,0,139,"称号","开启称号！","60级开启称号系统，要努力提升等级哦！",0,},
    [48] = {48,43,50,0,115,"限时挑战","不定期开启，可获得大量资源！","50级开启限时挑战，要努力提升等级哦！",0,},
    [49] = {49,44,55,5,117,"连战五次","开启竞技场连战五次功能！","达到55级或VIP5开启竞技场连战五次！",0,},
    [50] = {50,45,55,5,110,"平息灾害跳过","开启灾害战斗跳过功能！","达到55级或VIP5开启开启平息灾害战斗跳过！",0,},
    [51] = {51,46,50,0,103,"精英副本灾害入侵","精英副本灾害入侵，击败获得大量升星胶囊！","50级开启精英副本灾害入侵，要努力提升等级哦！",0,},
    [52] = {52,47,200,0,114,"声援","开启声援，快去提升声援等级吧！","75级开启声援，要努力提升等级哦！",0,},
    [53] = {53,48,200,0,137,"转盘","开启转盘玩法，获得大量资源！","60级开启转盘玩法，要努力提升等级哦！",0,},
    [54] = {54,49,200,0,137,"寻找宝藏","开启寻找宝藏玩法，获得大量资源！","60级开启寻找宝藏玩法，要努力提升等级哦！",0,},
    [55] = {55,50,200,0,137,"财宝传说","开启财宝传说玩法，获得大量资源！","60级开启财宝传说系统，要努力提升等级哦！",0,},
    [56] = {56,51,65,0,151,"资源战","开启资源战玩法，获取大量声望奖励！","65级开启资源战玩法，要努力提升等级哦！",0,},
    [57] = {57,52,65,0,152,"灾害BOSS","开启灾害BOSS玩法，获取大量活跃奖励！","65级开启灾害BOSS玩法，要努力提升等级哦！",0,},
    [58] = {58,53,30,0,114,"推广福利","开启推广福利，快去邀请小宠物们一起玩耍吧。","30级开启推广奖励，要努力提升等级哦！",0,},
    [59] = {59,54,60,0,134,"时装强化","开启时装强化功能，强化到指定等级，开启主角合击！","60级开启时装强化，要努力提升等级哦！",0,},
    [60] = {60,55,60,0,153,"限时优惠","开启限时优惠，大量折扣资源！","60级开启限时优惠，要努力提升等级哦！",0,},
    [61] = {61,56,200,0,150,"转换机","开启转换机，可使英雄进行变身哦~","70级开启英雄变身，要努力提升等级哦！",0,},
    [62] = {62,57,65,0,109,"熔炼","开启熔炼，橙色徽章可熔炼成红色徽章碎片！","65级开启熔炼徽章，要努力提升等级哦！",0,},
    [63] = {63,58,65,0,109,"铸造","开启铸造，橙色徽章可直接铸造成红色徽章！","65级开启徽章铸造，要努力提升等级哦！",0,},
    [64] = {64,59,60,0,121,"祈祷","开启祈祷，可获得大量英雄碎片！","60级开启祈祷，要努力提升等级哦！",0,},
    [65] = {65,60,38,0,118,"发送邮件","可以对陌生人发邮件了！","38级开启对陌生人发邮件了，要努力提升等级哦！",0,},
    [66] = {66,61,80,6,154,"一键夺宝","开启一键夺宝功能！","达到80级或者VIP6开启一键夺宝！",0,},
    [67] = {67,62,75,0,105,"材料卡牌增加","每次可升级的材料卡牌扩展至10张！","75级开启10材料卡牌升级，要努力提升等级哦！",0,},
    [68] = {68,63,1,0,105,"VIP头像框","开启VIP头像框，VIP等级提升可更换头像框。","等级1级才开放VIP头像框，要努力提升等级哦！",0,},
    [69] = {69,64,200,0,117,"英雄无敌","可以获得宠物碎片、宠物积分！","70级开启英雄无敌，要努力提升等级哦！",0,},
    [70] = {70,65,200,0,157,"宠物背包","可以上阵炫酷宠物了！","",0,},
    [71] = {71,66,200,0,158,"宠物商店","可以开启宠物商店，购买宠物碎片及宠物养成资源！","70级开启宠物商店，要努力提升等级哦！",0,},
    [72] = {72,67,200,0,157,"同伴分解","可以开启宠物分解，将宠物分解成宠魂！","70级开启宠物分解，要努力提升等级哦！",0,},
    [73] = {73,68,200,0,157,"同伴重生","可以开启宠物重生，将宠物重生成碎片并返还养成资源！","70级开启宠物重生，要努力提升等级哦！",0,},
    [74] = {74,69,200,0,157,"同伴升级","可以开启宠物升级，提升宠物属性！","70级开启宠物升级，要努力提升等级哦！",0,},
    [75] = {75,70,200,0,157,"同伴升星","可以开启宠物升星，提升宠物属性！","70级开启宠物升星，要努力提升等级哦！",0,},
    [76] = {76,71,200,0,157,"同伴神炼","可以开启宠物神炼，提升宠物属性！","70级开启宠物神炼，要努力提升等级哦！",0,},
    [77] = {77,72,200,0,106,"装备升星","可以开启装备升星，提升装备属性！","80级开启装备升星，要努力提升等级哦！",0,},
    [78] = {78,73,200,0,137,"十二星座","开启十二星座玩法，获得大量资源！","60级开启十二星座玩法，要努力提升等级哦！",0,},
    [79] = {79,74,200,0,160,"擂台大战","开启擂台大战，获得大量稀有资源！","75级开启擂台大战，要努力提升等级哦！",0,},
    [80] = {80,75,200,0,159,"道具合成","开启道具合成，合成高阶道具","65级开启道具合成功能，要努力提升等级哦！",0,},
    [81] = {82,77,20,0,114,"手机绑定","绑定手机，即可拿到丰厚奖励！","20级开放手机绑定功能，要努力提升等级哦！",0,},
    [82] = {83,78,200,0,157,"同伴护佑","可以装备1个护佑宠物，提升英雄属性！","75级可以装备1个护佑宠物，要努力提升等级哦！",0,},
    [83] = {84,78,200,0,157,"同伴护佑","可以装备2个护佑宠物，提升英雄属性！","80级可以装备2个护佑宠物，要努力提升等级哦！",0,},
    [84] = {85,78,200,0,157,"同伴护佑","可以装备3个护佑宠物，提升英雄属性！","85级可以装备3个护佑宠物，要努力提升等级哦！",0,},
    [85] = {86,78,200,0,157,"同伴护佑","可以装备4个护佑宠物，提升英雄属性！","90级可以装备4个护佑宠物，要努力提升等级哦！",0,},
    [86] = {87,78,200,0,157,"同伴护佑","可以装备5个护佑宠物，提升英雄属性！","95级可以装备5个护佑宠物，要努力提升等级哦！",0,},
    [87] = {88,78,200,0,157,"同伴护佑","可以装备6个护佑宠物，提升英雄属性！","100级可以装备6个护佑宠物，要努力提升等级哦！",0,},
    [88] = {89,79,200,0,105,"英雄变异","变异可以提升英雄潜力，橙色英雄可以进阶为红色英雄！","90级开启英雄化神，要努力提升等级哦！",0,},
    [89] = {90,80,200,0,154,"宇宙船大战","开启宇宙船大战，参与跨服组队大对决！","65级开启宇宙船大战功能，要努力提升等级哦！",0,},
    [90] = {91,81,80,0,105,"一键合成升星道具","当升星道具材料充分时，可进行一键合成！","80级开启一键合成升星道具，要努力提升等级哦！",0,},
    [91] = {92,82,200,0,105,"跨阵转换机","可以通过转换机跨阵营转化英雄！","90级开启跨阵营英雄转换，要努力提升等级哦！",0,},
    [92] = {93,83,50,0,138,"升星道具标记","可以在商店标记需要的升星道具！","50级开启升星道具标记功能，要努力提升等级哦！",0,},
    [93] = {94,84,200,0,106,"一键精炼/神炼","在装备精炼和宠物神炼界面可进行一键精炼/神炼","85级开启一键精炼/神炼功能，要努力提升等级哦！",0,},
    [94] = {95,85,40,0,133,"角色改名","对角色名不满意？可以进行改名啦！","40级开启角色改名功能，要努力提升等级哦！",0,},
    [95] = {96,86,60,0,137,"充值翻牌","开启充值翻牌玩法，获得大量资源！","60级开启充值翻牌玩法，要努力提升等级哦！",0,},
    [96] = {97,88,55,0,164,"道馆","英魂激活道馆图腾，获得大量属性！","55级开启道馆玩法，要努力提升等级哦！",0,},
    [97] = {98,87,25,0,120,"周VIP礼包","可购买每周限定的周VIP礼包。","25级开启每周VIP礼包，要努力提升等级哦！",0,},
    [98] = {99,89,200,0,150,"红色英雄变身","可以通过八卦镜转化红色英雄！","110级开红色英雄变身，要努力提升等级哦！",0,},
    [99] = {100,90,75,0,117,"三星扫荡","试炼塔自动扫荡至历史最高三星关卡！","75级开启三星扫荡，要努力提升等级哦！",0,},
    [100] = {101,91,50,0,165,"银行","开启银行玩法，获得大量资源！","50级开启银行，要努力提升等级哦！",0,},
    }
}

local __index_id = {
    [1] = 1,
    [2] = 2,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,
    [10] = 10,
    [11] = 11,
    [12] = 12,
    [13] = 13,
    [14] = 14,
    [15] = 15,
    [16] = 16,
    [17] = 17,
    [18] = 18,
    [19] = 19,
    [20] = 20,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
    [27] = 27,
    [28] = 28,
    [29] = 29,
    [30] = 30,
    [31] = 31,
    [32] = 32,
    [33] = 33,
    [34] = 34,
    [35] = 35,
    [36] = 36,
    [37] = 37,
    [38] = 38,
    [39] = 39,
    [40] = 40,
    [41] = 41,
    [42] = 42,
    [43] = 43,
    [44] = 44,
    [45] = 45,
    [46] = 46,
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [57] = 57,
    [58] = 58,
    [59] = 59,
    [60] = 60,
    [61] = 61,
    [62] = 62,
    [63] = 63,
    [64] = 64,
    [65] = 65,
    [66] = 66,
    [67] = 67,
    [68] = 68,
    [69] = 69,
    [70] = 70,
    [71] = 71,
    [72] = 72,
    [73] = 73,
    [74] = 74,
    [75] = 75,
    [76] = 76,
    [77] = 77,
    [78] = 78,
    [79] = 79,
    [80] = 80,
    [82] = 81,
    [83] = 82,
    [84] = 83,
    [85] = 84,
    [86] = 85,
    [87] = 86,
    [88] = 87,
    [89] = 88,
    [90] = 89,
    [91] = 90,
    [92] = 91,
    [93] = 92,
    [94] = 93,
    [95] = 94,
    [96] = 95,
    [97] = 96,
    [98] = 97,
    [99] = 98,
    [100] = 99,
    [101] = 100,
}

local __key_map = {
    id = 1,
    function_id = 2,
    level = 3,
    vip_level = 4,
    icon = 5,
    name = 6,
    directions = 7,
    comment = 8,
    step_id = 9,
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

        assert(__key_map[k], "cannot find " .. k .. " in record_function_level_info")
        return t._raw[__key_map[k]]
    end
}

function function_level_info.getLength()
    return #function_level_info._data
end

function function_level_info.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

function function_level_info.indexOf(index)
    if index == nil then
        return nil
    end
    return setmetatable({_raw = function_level_info._data[index]}, m)
end

function function_level_info.get(id)
    local k = id
    return function_level_info.indexOf(__index_id[k])
end

function function_level_info.set(id, key, value)
    local record = function_level_info.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

function function_level_info.get_index_data()
    return __index_id
end

