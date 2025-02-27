Config = {}

-- General configurations
Config.EnableNightMining = false -- By default this is false which means players cannot mine between the nightly hours of 20:00 to 05:00.
Config.MinMiningTime = 2000 -- How long at minimum mining a single material should take
Config.MaxMiningTime = 4000 -- How long at maximum mining a single material should take
Config.PickaxeItemName = 'pickaxe' -- The item name required to start mining
Config.BreakPickaxe = false -- If using ox_inventory v.2.31.0 or later, keep this set to false and it will use "decay" feature instead. Otherwise, recommended to set to true
Config.BreakChance = 10 -- What percentage chance should a pickaxe have to break
Config.Anticheat = true -- Display a skillcheck at random intervals to deter autoclicking (True to enabled, false to disable)
Config.AnticheatChance = 100 -- What percentage chance should a player be hit with the anticheat while mining? (10 = 10% chance)

Config.Selling = {
    enabled = true, -- Do you want to enable selling materials? (True if yes, false if no)
    model = 'a_m_y_genstreet_01', -- The ped model for selling (https://docs.fivem.net/docs/game-references/ped-models/)
    coords = vec3(2832.9509, 2795.2390, 56.4827), -- The location at which the ped will spawn
    heading = 99.1351, -- The direction at which the ped will face
    account = 'money' -- The account to receive money in when selling materials
}

-- These items have a 60% chance to be rewarded
-- If an item is to be smelted later, you must have "raw_" in front
-- Be sure any changes made here are also updated in Config.SmeltingOptions
Config.CommonRewards = {
    'scrap_metal',
    'stone',
    'raw_copper',
    'raw_iron'
}

-- These items have a 30% chance to be rewarded
-- If an item is to be smelted later, you must have "raw_" in front
-- Be sure any changes made here are also updated in Config.SmeltingOptions
Config.MediumRewards = {
    'raw_steel',
    'raw_silver',
    'raw_gold',
}

-- These items have a 10% chance to be rewarded
-- If an item is to be smelted later, you must have "raw_" in front
-- Be sure any changes made here are also updated in Config.SmeltingOptions
Config.RareRewards = {
    'raw_diamond',
    'raw_emerald'
}

-- If you add or change item rewards from the above tables (common, medium & rare)
-- You must also add them here. It is important to follow the exact format as seen here
-- This section determines important details about each item (smeltable, duration, price)
-- If you don't want an item to be "smeltable", then set smeltable to false & duration to nil
-- If you want an item to be smeltable, the item name MUST include the "raw_" prefix
-- All smeltable items must also have a "finished" version without the "raw_" prefix in ox_inventory/data/items.lua
Config.SmeltingOptions = {
    scrap_metal = { -- The item name itself
        label = 'Scrap Metal', -- The item "label" / not the item name
        smeltable = false, -- Are you able to smelt this item? (True if yes, false if no)
        sellable = true, -- Are you able to sell this item? (True if yes, false if no)
        duration = nil, -- If item is not smeltable, set to nil. If smeltable, you need a duraction (in milliseconds)
        price = 50 -- How much does this item sell for if Config.Selling = true
    },
    stone = {
        label = 'Stone',
        smeltable = false,
        sellable = true,
        duration = nil,
        price = 75
    },
    raw_copper = {
        label = 'Raw Copper',
        smeltable = true,
        sellable = true,
        duration = 1000,
        price = 100
    },
    raw_iron = {
        label = 'Raw Iron',
        smeltable = true,
        sellable = true,
        duration = 2000,
        price = 125
    },
    raw_steel = {
        label = 'Raw Steel',
        smeltable = true,
        sellable = true,
        duration = 2000,
        price = 150
    },
    raw_silver = {
        label = 'Raw Silver',
        smeltable = true,
        sellable = true,
        duration = 3000,
        price = 175
    },
    raw_gold = {
        label = 'Raw Gold',
        smeltable = true,
        sellable = true,
        duration = 3000,
        price = 200
    },
    raw_diamond = {
        label = 'Raw Diamond',
        smeltable = true,
        sellable = true,
        duration = 4000,
        price = 225
    },
    raw_emerald = {
        label = 'Raw Emerald',
        smeltable = true,
        sellable = true,
        duration = 5000,
        price = 250
    },
    -- Copy and paste to add more items here
}

-- This is both the blip & target location for smelting
Config.SmeltingLocation = vec3(1086.3845, -2003.6810, 30.9738)

-- All the locations at which a player can start mining
Config.MiningLocations = {
    vec3(2952.3447, 2852.9858, 49.1865),
    vec3(2972.1936, 2842.1506, 46.3243),
    vec3(2980.8755, 2824.4500, 45.9470),
    vec3(3001.8000, 2791.0654, 44.8597),
    vec3(2999.3096, 2752.8396, 44.1624),
    vec3(2981.2747, 2749.6770, 43.1636)
}

-- The blip settings for each type of blip
Config.BlipSettings = {
    mineSettings = {
        blipName = 'Mining area', -- The label to display on the map for this location
        blipSprite = 618, -- https://docs.fivem.net/docs/game-references/blips/
        blipColor = 5, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        blipScale = 0.45 -- Ranges from 0.01 to 1.0
    },
    smeltSettings = {
        blipName = 'Smelting',
        blipSprite = 648,
        blipColor = 17,
        blipScale = 0.65
    },
    sellSettings = {
        blipName = 'Sell Materials',
        blipSprite = 207,
        blipColor = 2, 
        blipScale = 0.65
    }
}

Notify = {
    title = 'Mining', -- The title for all notifications
    position = 'top', -- The position for all notifications
    icon = 'fas fa-hill-rockslide', -- The icon for all notifications
    mineAtNight = 'You cannot mine at night - please try again later',
    noPickaxe = 'You need a pickaxe in order to begin mining',
    noDurability = 'You\'re pickaxe has completely degraded',
    cancelledMining = 'You stopped mining',
    cancelledSmelting = 'You stopped smelting ',
    cancelledSell = 'You stopped selling your materials',
    missingItem = 'You do not have enough ',
    missingItemSell = 'You do not have enough',
    soldItems = 'You have been paid $',
    pickaxeBroke = 'Your pickaxe has broke'
}

TextUI = {
    label = 'E - Start mining',
    position = 'left-center',
    icon = 'fas fa-hill-rockslide'
}

ProgressCircle = {
    position = 'middle', -- The position for all progressCircle's
    miningLabel = 'Mining..',
    smeltingLabel = 'Smelting..',
    sellingLabel = 'Selling..'
}

Target = {
    smeltLabel = 'Start smelting',
    smeltIcon = 'fas fa-fire',
    sellLabel = 'Sell materials',
    sellIcon = 'fas fa-hand-holding-dollar'
}

InputDialog = {
    smeltTitle = 'Choose Material',
    smeltSelectMaterial = 'Raw Material',
    smeltSelectMaterialDesc = 'What do you want to smelt?',
    smeltSelectMaterialIcon = 'recycle',
    smeltSelectQuantity = 'Quantity',
    smeltSelectQuantityDesc = 'How many do you want to smelt?',
    smeltSelectQuantityIcon = 'hashtag',
    sellTitle = 'Choose Material',
    sellSelectMaterial = 'Material',
    sellSelectMaterialDesc = 'What do you want to sell?',
    sellSelectMaterialIcon = 'recycle',
    sellSelectQuantity = 'Quantity',
    sellSelectQuantityDesc = 'How many do you want to sell?',
    sellSelectQuantityIcon = 'hashtag'
}

