local record_item_awaken_compose = {}

record_item_awaken_compose.id = 0 --合成id
record_item_awaken_compose.item_id = 0 --合成对象id
record_item_awaken_compose.compose_part_1 = 0 --合成部件id1
record_item_awaken_compose.compose_num_1 = 0 --合成部件1数量
record_item_awaken_compose.compose_part_2 = 0 --合成部件id2
record_item_awaken_compose.compose_num_2 = 0 --合成部件2数量
record_item_awaken_compose.compose_part_3 = 0 --合成部件id3
record_item_awaken_compose.compose_num_3 = 0 --合成部件3数量
record_item_awaken_compose.compose_part_4 = 0 --合成部件id4
record_item_awaken_compose.compose_num_4 = 0 --合成部件id4数量
record_item_awaken_compose.compose_cost = 0 --合成消费银两


item_awaken_compose = {
    _data = {
    [1] = {2111,211,112,1,111,1,132,1,0,0,5000,},
    [2] = {2121,212,114,1,113,1,122,1,0,0,5000,},
    [3] = {2131,213,114,1,113,1,123,1,0,0,5000,},
    [4] = {2141,214,113,1,114,1,124,1,0,0,5000,},
    [5] = {2211,221,121,1,111,1,132,1,0,0,5000,},
    [6] = {2221,222,132,1,112,1,122,1,0,0,5000,},
    [7] = {2231,223,121,1,133,1,123,1,0,0,5000,},
    [8] = {2241,224,121,1,134,1,124,1,0,0,5000,},
    [9] = {2311,231,133,1,111,1,131,1,0,0,5000,},
    [10] = {2321,232,131,1,112,1,122,1,0,0,5000,},
    [11] = {2331,233,134,1,133,1,123,1,0,0,5000,},
    [12] = {2341,234,131,1,134,1,124,1,0,0,5000,},
    [13] = {3111,311,211,1,214,1,121,5,113,5,50000,},
    [14] = {3121,312,212,1,213,1,122,5,132,5,50000,},
    [15] = {3131,313,213,1,212,1,123,5,133,5,50000,},
    [16] = {3211,321,224,1,221,1,124,5,134,5,50000,},
    [17] = {3221,322,221,1,224,1,111,5,131,5,50000,},
    [18] = {3231,323,222,1,223,1,112,5,123,5,50000,},
    [19] = {3311,331,233,1,232,1,113,5,133,5,50000,},
    [20] = {3321,332,234,1,231,1,114,5,134,5,50000,},
    [21] = {3331,333,233,1,234,1,114,5,124,5,50000,},
    [22] = {4111,411,311,2,214,5,231,5,111,10,100000,},
    [23] = {4121,412,312,2,212,5,232,5,112,10,100000,},
    [24] = {4131,413,313,2,213,5,233,5,113,10,100000,},
    [25] = {4211,421,321,2,211,5,221,5,121,10,100000,},
    [26] = {4221,422,322,2,214,5,224,5,122,10,100000,},
    [27] = {4231,423,323,2,213,5,223,5,123,10,100000,},
    [28] = {4311,431,331,2,234,5,224,5,131,10,100000,},
    [29] = {4321,432,332,2,234,5,222,5,132,10,100000,},
    [30] = {4331,433,333,2,233,5,223,5,133,10,100000,},
    [31] = {5111,511,411,2,311,5,211,10,0,0,500000,},
    [32] = {5121,512,412,2,312,5,212,10,0,0,500000,},
    [33] = {5131,513,413,2,313,5,213,10,0,0,500000,},
    [34] = {5211,521,421,2,321,5,221,10,0,0,500000,},
    [35] = {5221,522,422,2,322,5,222,10,0,0,500000,},
    [36] = {5231,523,423,2,323,5,223,10,0,0,500000,},
    [37] = {5311,531,431,2,331,5,231,10,0,0,500000,},
    [38] = {5321,532,432,2,332,5,232,10,0,0,500000,},
    [39] = {5331,533,433,2,333,5,233,10,0,0,500000,},
    [40] = {6111,611,511,2,411,5,311,10,0,0,1000000,},
    [41] = {6121,612,512,2,421,5,321,10,0,0,1000000,},
    [42] = {6131,613,513,2,431,5,331,10,0,0,1000000,},
    [43] = {6211,621,521,2,412,5,312,10,0,0,1000000,},
    [44] = {6221,622,522,2,422,5,322,10,0,0,1000000,},
    [45] = {6231,623,523,2,432,5,332,10,0,0,1000000,},
    [46] = {6311,631,531,2,413,5,313,10,0,0,1000000,},
    [47] = {6321,632,532,2,423,5,323,10,0,0,1000000,},
    [48] = {6331,633,533,2,433,5,333,10,0,0,1000000,},
    [49] = {7111,711,611,1,511,3,411,5,0,0,1500000,},
    [50] = {7121,712,612,1,521,3,421,5,0,0,1500000,},
    [51] = {7131,713,613,1,531,3,431,5,0,0,1500000,},
    [52] = {7211,721,621,1,512,3,412,5,0,0,1500000,},
    [53] = {7221,722,622,1,522,3,422,5,0,0,1500000,},
    [54] = {7231,723,623,1,532,3,432,5,0,0,1500000,},
    [55] = {7311,731,631,1,513,3,413,5,0,0,1500000,},
    [56] = {7321,732,632,1,523,3,423,5,0,0,1500000,},
    [57] = {7331,733,633,1,533,3,433,5,0,0,1500000,},
    }
}

local __index_id = {
    [2111] = 1,
    [2121] = 2,
    [2131] = 3,
    [2141] = 4,
    [2211] = 5,
    [2221] = 6,
    [2231] = 7,
    [2241] = 8,
    [2311] = 9,
    [2321] = 10,
    [2331] = 11,
    [2341] = 12,
    [3111] = 13,
    [3121] = 14,
    [3131] = 15,
    [3211] = 16,
    [3221] = 17,
    [3231] = 18,
    [3311] = 19,
    [3321] = 20,
    [3331] = 21,
    [4111] = 22,
    [4121] = 23,
    [4131] = 24,
    [4211] = 25,
    [4221] = 26,
    [4231] = 27,
    [4311] = 28,
    [4321] = 29,
    [4331] = 30,
    [5111] = 31,
    [5121] = 32,
    [5131] = 33,
    [5211] = 34,
    [5221] = 35,
    [5231] = 36,
    [5311] = 37,
    [5321] = 38,
    [5331] = 39,
    [6111] = 40,
    [6121] = 41,
    [6131] = 42,
    [6211] = 43,
    [6221] = 44,
    [6231] = 45,
    [6311] = 46,
    [6321] = 47,
    [6331] = 48,
    [7111] = 49,
    [7121] = 50,
    [7131] = 51,
    [7211] = 52,
    [7221] = 53,
    [7231] = 54,
    [7311] = 55,
    [7321] = 56,
    [7331] = 57,
}

local __key_map = {
    id = 1,
    item_id = 2,
    compose_part_1 = 3,
    compose_num_1 = 4,
    compose_part_2 = 5,
    compose_num_2 = 6,
    compose_part_3 = 7,
    compose_num_3 = 8,
    compose_part_4 = 9,
    compose_num_4 = 10,
    compose_cost = 11,
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

        assert(__key_map[k], "cannot find " .. k .. " in record_item_awaken_compose")
        return t._raw[__key_map[k]]
    end
}

function item_awaken_compose.getLength()
    return #item_awaken_compose._data
end

function item_awaken_compose.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

function item_awaken_compose.indexOf(index)
    if index == nil then
        return nil
    end
    return setmetatable({_raw = item_awaken_compose._data[index]}, m)
end

function item_awaken_compose.get(id)
    local k = id
    return item_awaken_compose.indexOf(__index_id[k])
end

function item_awaken_compose.set(id, key, value)
    local record = item_awaken_compose.get(id)
    if record then
        local keyIndex = __key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

function item_awaken_compose.get_index_data()
    return __index_id
end

