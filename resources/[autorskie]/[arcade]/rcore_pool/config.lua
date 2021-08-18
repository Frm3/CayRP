Config = {
    License = "QvE1aXznQzP4ZHiXTZKRm7H4R8Q7cfWDFeBmgiM0sbQ", -- Insert your rcore license
    NotificationDistance = 20.0,
    PropsToRemove = {
        vector3(1993.71, 3046.34, 47.22),
    },

    --[[
        -- To use custom notifications, implement client event handler, example:

        AddEventHandler('rcore_pool:notification', function(serverId, message)
            print(serverId, message)
        end)
    ]]
    CustomNotifications = false,

    --[[
        -- To use custom menu, implement following client handlers
        AddEventHandler('rcore_pool:openMenu', function()
            -- open menu with your system
        end)

        AddEventHandler('rcore_pool:closeMenu', function()
            -- close menu, player has walked far from table
        end)


        -- After selecting game type, trigger one of the following setupTable events
        TriggerEvent('rcore_pool:setupTable', 'BALL_SETUP_8_BALL')
        TriggerEvent('rcore_pool:setupTable', 'BALL_SETUP_STRAIGHT_POOL')
    ]]
    CustomMenu = false,

    --[[
        When you want your players to pay to play pool, set this to true
        AND implement the following server handler in your framework of choice.
        The handler MUST deduct money from the player and then CALL the callback
        if the payment is successful, or inform the player of payment failure.

        This script itself DOES NOT implement ESX/vRP logic, you have to do that yourself.

        AddEventHandler('rcore_pool:payForPool', function(playerServerId, cb)
            print("This should be replaced by deducting money from " .. playerServerId)
            cb() -- successfuly set balls on table
        end)
    ]]
    PayForSettingBalls = false,
    BallSetupCost = 1, -- for example: "$1" or "$200" - any text

    MenuColor = {245, 127, 23},
    Keys = {
        BACK = {code = 200, label = 'INPUT_FRONTEND_PAUSE_ALTERNATE'},
        ENTER = {code = 38, label = 'INPUT_PICKUP'},
        SETUP_MODIFIER = {code = 21, label = 'INPUT_SPRINT'},
        CUE_HIT = {code = 179, label = 'INPUT_CELLPHONE_EXTRA_OPTION'},
        CUE_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        CUE_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        AIM_SLOWER = {code = 21, label = 'INPUT_SPRINT'},
        BALL_IN_HAND = {code = 29, label = 'INPUT_SPECIAL_ABILITY_SECONDARY'},

        BALL_IN_HAND_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        BALL_IN_HAND_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        BALL_IN_HAND_UP = {code = 172, label = 'INPUT_CELLPHONE_UP'},
        BALL_IN_HAND_DOWN = {code = 173, label = 'INPUT_CELLPHONE_DOWN'},
    },
    Text = {
        BACK = "返回",
        HIT = "击中",
        BALL_IN_HAND = "手里拿着球",
        BALL_IN_HAND_BACK = "返回",
        AIM_LEFT = "向左瞄准",
        AIM_RIGHT = "向右瞄准",
        AIM_SLOWER = "瞄准慢一点",

        POOL = '台球',
        POOL_GAME = '台球比赛',
        POOL_SUBMENU = '选择球配置',
        TYPE_8_BALL = '8-球',
        TYPE_STRAIGHT = '台球',

        HINT_SETUP = '设置台面',
        HINT_TAKE_CUE = '打台球',
        HINT_RETURN_CUE = '返回提示',
        HINT_HINT_TAKE_CUE = '要打台球，请在台球提示台上使用台球提示',
        HINT_PLAY = '比赛',

        BALL_IN_HAND_LEFT = '左',
        BALL_IN_HAND_RIGHT = '右',
        BALL_IN_HAND_UP = '上',
        BALL_IN_HAND_DOWN = '下',
        BALL_POCKETED = '%s 球被装进了口袋',
        BALL_IN_HAND_NOTIFY = '球员手里拿着主球',
        BALL_LABELS = {
            [-1] = 'Cue',
            [1] = '~y~Solid 1~s~',
            [2] = '~b~Solid 2~s~',
            [3] = '~r~Solid 3~s~',
            [4] = '~p~Solid 4~s~',
            [5] = '~o~Solid 5~s~',
            [6] = '~g~Solid 6~s~',
            [7] = '~r~Solid 7~s~',
            [8] = '黑色固体 8',
            [9] = '~y~Striped 9~s~',
            [10] = '~b~Striped 10~s~',
            [11] = '~r~Striped 11~s~',
            [12] = '~p~Striped 12~s~',
            [13] = '~o~Striped 13~s~',
            [14] = '~g~Striped 14~s~',
            [15] = '~r~Striped 15~s~',
         }
    },
}