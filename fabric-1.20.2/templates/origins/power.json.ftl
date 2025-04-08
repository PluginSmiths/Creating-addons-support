{
    <#if !data.ticking && data.command?has_content>
        "type": "origins:active_self",
        "entity_action": {
                "type": "origins:execute_command",
                "command": "${data.command}"
        },
        <#if data.cooldown??>
            "cooldown": ${data.cooldown},
        </#if>
        <#if data.key??>
            "key": {
                "key": "key.origins.${data.key}",
                "continuous": ${data.continuous}
            },
        </#if>
        <#if data.texture??>
            "hud_render": {
                "should_render": true,
                <#assign t = "">
                <#assign i = 0>
                <#switch data.texture>
                    <#on "experience">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "0">
                    <#on "powder">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "1">
                    <#on "drop">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "2">
                    <#on "energy">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "3">
                    <#on "cross">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "4">
                    <#on "wings">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "5">
                    <#on "curios">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "6">
                    <#on "ender_pearl">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "7">
                    <#on "house">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "8">
                    <#on "plant">
                        <#assign t = "origins:textures/gui/resource_bar.png">
                        <#assign i = "9">
                    <#on "gold">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "1">
                    <#on "emerald">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "2">
                    <#on "red_ball">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "3">
                    <#on "blue_ball">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "4">
                    <#on "cyan_ball">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "5">
                    <#on "blood">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "6">
                    <#on "creeper">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "7">
                    <#on "brown_mushroom">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "8">
                    <#on "red_mushroom">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "9">
                    <#on "white">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "10">
                    <#on "orange">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "11">
                    <#on "purple">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "12">
                    <#on "cyan">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "13">
                    <#on "yellow">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "14">
                    <#on "green">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "15">
                    <#on "pink">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "16">
                    <#on "dark_grey">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "17">
                    <#on "grey">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "18">
                    <#on "dark_cyan">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "19">
                    <#on "dark_purple">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "20">
                    <#on "blue">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "21">
                    <#on "brown">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "22">
                    <#on "dark_green">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "23">
                    <#on "red">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "24">
                    <#on "black">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_01.png">
                        <#assign i = "25">
                    <#on "shield">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "1">
                    <#on "sword">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "2">
                    <#on "leather">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "3">
                    <#on "pickaxe">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "4">
                    <#on "axe">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "5">
                    <#on "spoon">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "6">
                    <#on "white_mood">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "7">
                    <#on "eye">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "8">
                    <#on "snowflake">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "9">
                    <#on "medical_cross">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "10">
                    <#on "green_potion">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "11">
                    <#on "yellow_potion">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "12">
                    <#on "red_potion">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "13">
                    <#on "blue_potion">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "14">
                    <#on "redstone">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "15">
                    <#on "blue_water">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "16">
                    <#on "magnet">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "17">
                    <#on "white_scull">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "18">
                    <#on "green_skull">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "19">
                    <#on "black_skull">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "20">
                    <#on "green_skull">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "21">
                    <#on "slime">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "22">
                    <#on "leaflet">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "23">
                    <#on "moon">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "24">
                    <#on "sun">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_02.png">
                        <#assign i = "25">
                    <#on "small_snowflake">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "1">
                    <#on "chest">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "2">
                    <#on "balloon">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "3">
                    <#on "cheese">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "4">
                    <#on "dog">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "5">
                    <#on "bone">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "6">
                    <#on "egg">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "7">
                    <#on "portal">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "8">
                    <#on "compass">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "9">
                    <#on "hourglass">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "10">
                    <#on "rose">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "11">
                    <#on "tree">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "12">
                    <#on "snow">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "13">
                    <#on "melody">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "14">
                    <#on "invisibility">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "15">
                    <#on "sponge">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "16">
                    <#on "upside">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "17">
                    <#on "downside">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "18">
                    <#on "stars">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "19">
                    <#on "rock">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "20">
                    <#on "horn">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "21">
                    <#on "slimes">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "22">
                    <#on "fangs">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "23">
                    <#on "feather">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "24">
                    <#on "instrument">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_03.png">
                        <#assign i = "25">
                    <#on "point_hearts">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "0">
                    <#on "point_powder">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "1">
                    <#on "point_drop">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "2">
                    <#on "point_wings">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "3">
                    <#on "point_curios">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "4">
                    <#on "point_ender_pearl">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "5">
                    <#on "point_flame">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "6">
                    <#on "point_water">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "7">
                    <#on "point_egg">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "8">
                    <#on "point_upside">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "9">
                    <#on "point_bone">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "10">
                    <#on "point_hourglass">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "11">
                    <#on "point_eye">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "12">
                    <#on "point_medical_cross">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "13">
                    <#on "point_shield">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "14">
                    <#on "point_magnet">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "15">
                    <#on "point_emerald">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "16">
                    <#on "point_snow">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "17">
                    <#on "point_melody">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "18">
                    <#on "point_invisibility">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "19">
                    <#on "point_sponge">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "20">
                    <#on "point_snowflake">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "21">
                    <#on "point_fangs">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "22">
                    <#on "point_feather">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "23">
                    <#on "point_instrument">
                        <#assign t = "origins:textures/gui/community/spiderkolo/resource_bar_points_01.png">
                        <#assign i = "24">
                    <#on "comet">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "1">
                    <#on "blue_upside">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "2">
                    <#on "arrow">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "3">
                    <#on "soul">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "4">
                    <#on "red_heart">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "5">
                    <#on "ghast">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "6">
                    <#on "totem_of_undying">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "7">
                    <#on "fireball">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "8">
                    <#on "tornado">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "9">
                    <#on "rabbit">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "10">
                    <#on "wave">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "11">
                    <#on "big_snow">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "12">
                    <#on "glass">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "13">
                    <#on "box">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "14">
                    <#on "big_sun">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "15">
                    <#on "wither_rose">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "16">
                    <#on "nether">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "17">
                    <#on "netherite_hoe">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "18">
                    <#on "white_heart">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "19">
                    <#on "white_star">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "20">
                    <#on "run">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "21">
                    <#on "ocean">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "22">
                    <#on "coin">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "23">
                    <#on "water_bottle">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "24">
                    <#on "glass_emerald">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_01.png">
                        <#assign i = "25">
                    <#on "silver">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "0">
                    <#on "clock">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "1">
                    <#on "bomb">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "2">
                    <#on "swimming_pool">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "3">
                    <#on "old_hoe">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "4">
                    <#on "sunset">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "5">
                    <#on "ocean_guard">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "6">
                    <#on "black_wolf">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "7">
                    <#on "big_tree">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "8">
                    <#on "cold_biome">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "9">
                    <#on "warm_biome">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "10">
                    <#on "master_key">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "11">
                    <#on "shoe">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "12">
                    <#on "backpack">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "13">
                    <#on "wither_heart">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "14">
                    <#on "big_flame">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "15">
                    <#on "big_water">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "16">
                    <#on "night">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "17">
                    <#on "steak">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "18">
                    <#on "blue_thing">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "19">
                    <#on "bulb">
                        <#assign t = "origins:textures/gui/community/huang/resource_bar_02.png">
                        <#assign i = "20">
                </#switch>
                "sprite_location": "${t}",
                "bar_index": ${i}
            },
        <#else>
            "hud_render": {
                "should_render": false
            },
        </#if>
    <#elseif !data.ticking && !data.command?has_content>
        "type": "origins:simple",
    <#elseif data.ticking>
        "type": "origins:action_over_time",
        "entity_action": {
            "type": "origins:execute_command",
            "command": "${data.command}"
        },
        "interval": 1,
    </#if>
    "hidden": ${data.hidden}
}