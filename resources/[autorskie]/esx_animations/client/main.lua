Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
  }
  

Config = {}
Config.Animations = {

	
	{
		name  = 'rannys',
		label = 'Ranny / Medyczne',
		items = {
			{label = "Upadek", keyword = "upadek", type = "ragdoll", data = {}},
			{label = "Postrzelony", keyword = "postrzelony", type = "anim", data = {lib = "random@dealgonewrong", anim = "idle_a", mode = 1}},
			{label = "Postrzelony 2", keyword = "postrzelony2", type = "anim", data = {lib = "random@dealgonewrong", anim = "idle_a", mode = 51}},
			{label = "RKO", keyword = "rko", type = "anim", data = {lib = "missheistfbi3b_ig8_2", anim = "cpr_loop_paramedic", mode = 1}},
			{label = "Postrzał w brzuch", keyword = "postrzal", type = "anim", data = {lib = "random@crash_rescue@wounded@base", anim = "base", mode = 1}},
			{label = "Ból brzucha", keyword = "bol", type = "anim", data = {lib = "combat@damage@writheidle_a", anim = "writhe_idle_a", mode = 1}},
			{label = "Ból głowy", keyword = "bol2", type = "anim", data = {lib = "combat@damage@writheidle_b", anim = "writhe_idle_f", mode = 1}},
			{label = "Ból nogi", keyword = "bol3", type = "anim", data = {lib = "combat@damage@writheidle_b", anim = "writhe_idle_e", mode = 1}},
			{label = "Ból pleców", keyword = "bol4", type = "anim", data = {lib = "anim@move_lester", anim = "idle_a", mode = 49}},
			{label = "Ból serca", keyword = "bol5", type = "anim", data = {lib = "rcmfanatic1out_of_breath", anim = "p_zero_tired_01"}},
			{label = "Wymiotowanie do toalety", keyword = "wymiotowanie", type = "anim", data = {lib = "timetable@tracy@ig_7@idle_a", anim = "idle_a", mode = 1}},
			{label = "Po uderzeniu w głowę", keyword = "uderzeniewglowe", type = "anim", data = {lib = "misscarsteal4@actor", anim = "stumble"}},
			{label = "Po uderzeniu w głowę v2", keyword = "uderzeniewglowe2", type = "anim", data = {lib = "misscarsteal4@actor", anim = "dazed_idle", mode = 49}}
		}
	},

	{
		name  = 'greetings',
		label = 'Pozdrowienia',
		items = {
			{label = "Machniecie reka", keyword = "machanie", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
			{label = "Powitanie", keyword = "powitanie", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
			{label = "Graba", keyword = "graba", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
			{label = "Graba i klepanie po plecach", keyword = "graba2", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
			{label = "Zolwik", keyword = "zolwik", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
			{label = "Salut", keyword = "salut", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute", mode = 49}},
			{label = "Srodkowy palec", keyword = "fuck", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
			{label = "Srodkowy palec v2", keyword = "fuck2", type = "anim", data = {lib = "mp_player_intfinger", anim = "mp_player_int_finger"}},
			{label = "Poslanie buziaczka", keyword = "buziak", type = "anim", data = {lib = "anim@mp_player_intselfieblow_kiss", anim = "exit", mode = 48}},
			{label = "Machanie reka", keyword = "machanie", type = "anim", data = {lib = "random@hitch_lift", anim = "come_here_idle_c", mode = 49}}
		}
	},

	{
		name = 'interaction',
		label = 'Interakcja',
		items = {
			{label = "Bankomat", keyword = "bankomat", type = "scenario", data = {anim = "PROP_HUMAN_ATM"}},
			{label = "Pisanie na klawiaturze", keyword = "klawiatura", type = "anim", data = {lib = "anim@heists@prison_heiststation@cop_reactions", anim =  "cop_b_idle", mode = 51}},
			{label = "Pisanie na klawiaturze 2", keyword = "klawiatura2", type = "anim", data = {lib = "mp_prison_break", anim = "hack_loop", mode = 1}},
			{label = "Pisanie na klawiaturze 3", keyword = "klawiatura3", type = "anim", data = {lib = "mp_fbi_heist", anim = "loop", mode = 51}},			
			{label = "Boksowanie", keyword = "boksowanie", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@shadow_boxing", anim = "shadow_boxing", mode = 51}},	
			{label = "Boksowanie 2", keyword = "boksowanie2", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@shadow_boxing", anim = "shadow_boxing", mode = 51}},			
			{label = "Notes", keyword = "notes", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_TIME_OF_DEATH"}},
			{label = "Założone ręce", keyword = "foch", type = "anim", data = {lib = "amb@world_human_hang_out_street@female_arms_crossed@base", anim = "base", mode = 49}},
			{label = "Założone ręce v2", keyword = "foch2", type = "anim", data = {lib = "anim@amb@nightclub@peds@", anim = "rcmme_amanda1_stand_loop_cop", mode = 49}},
			{label = "Oprzyj się", keyword = "oprzyj", type = "anim", data = {lib = "amb@prop_human_bum_shopping_cart@male@base", anim = "base", mode = 1}},
			{label = "Kciuk w górę", keyword = "kciuk", type = "anim", data = {lib = "anim@mp_player_intincarthumbs_uplow@ds@", anim = "idle_a", mode = 49}},
			{label = "Kciuk w dół", keyword = "kciuk2", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "thumbs_down_a_player_a"}},
			{label = "Dłubanie w nosie", keyword = "nos", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@nose_pick", anim = "nose_pick", mode = 49}},
			{label = "Wybierz mnie", keyword = "mnie", type = "anim", data = {lib = "missmic4premiere", anim = "crowd_b_idle_01"}},
			{label = "Głupio wyszło", keyword = "glupio", type = "anim", data = {lib = "missmic4premiere", anim = "interview_short_anton"}},
			{label = "Przykro mi", keyword = "przykro", type = "anim", data = {lib = "missmurder", anim = "idle"}},
			{label = "Niegrzeczny palec", keyword = "niegrzeczny", type = "anim", data = {lib = "anim@mp_player_intincarno_waystd@ps@", anim = "enter"}},
			{label = "Stopowicz", keyword = "stopowicz", type = "anim", data = {lib = "random@hitch_lift", anim = "idle_f", mode = 1}},
			{label = "Łapie za głowę", keyword = "glowa", type = "anim", data = {lib = "random@mugging3", anim = "agitated_loop_b"}}
	    }
	},

	{
		name = 'poses',
		label = 'Pozy',
		items = {
			{label = "Samolot", keyword = "samolot", type = "anim", data = {lib = "missfbi1", anim = "ledge_loop", mode = 49}},
			{label = "Medytowanie", keyword = "medytowanie", type = "anim", data = {lib = "rcmcollect_paperleadinout@", anim = "meditiate_idle", mode = 1}},
			{label = "Medytowanie 2", keyword = "medytowanie2", type = "anim", data = {lib = "rcmepsilonism3", anim = "base_loop", mode = 1}},
			{label = "Medytowanie 3", keyword = "medytowanie3", type = "anim", data = {lib = "rcmcollect_paperleadinout@", anim = "meditiate_idle", mode = 51}},
			{label = "Myślenie", keyword = "myslenie", type = "anim", data = {lib = "mp_cp_welcome_tutthink", anim = "b_think", mode = 1}},			
			{label = "Myślenie 2", keyword = "myslenie2", type = "anim", data = {lib = "misscarsteal4@aliens", anim = "rehearsal_base_idle_director", mode = 1}},			
			{label = "Myślenie 3", keyword = "myslenie3", type = "anim", data = {lib = "timetable@tracy@ig_8@base", anim = "base", mode = 1}},		
			{label = "Myślenie 4", keyword = "myslenie4", type = "anim", data = {lib = "misscarsteal4@aliens", anim = "rehearsal_base_idle_director", mode = 51}},			
			{label = "Opieranie się o ladę", keyword = "opieranie", type = "anim", data = {lib = "anim@amb@clubhouse@bar@drink@idle_a", anim = "idle_a_bartender", mode = 51}},
			{label = "Opieranie się o ladę 2", keyword = "opieranie2", type = "anim", data = {lib = "amb@prop_human_bum_shopping_cart@male@idle_a", anim = "idle_c", mode = s1}},						
			{label = "Opieranie się o ladę 3", keyword = "opieranie3", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@ig1_vip@", anim = "clubvip_base_laz", mode = s1}},						
			{label = "Ochroniarz", keyword = "ochroniarz", type = "scenario", data = {anim = "WORLD_HUMAN_GUARD_STAND"}},
			{label = "Guard", keyword = "guard", type = "anim", data = {lib = "amb@world_human_stand_guard@male@base", anim = "base", mode = 49}},
			{label = "Biodra", keyword = "biodra", type = "anim", data = {lib = "random@shop_tattoo", anim = "_idle", mode = 49}},
			{label = "Palce na biodra", keyword = "biodra2", type = "anim", data = {lib = "amb@world_human_cop_idles@female@base", anim = "base", mode = 49}},
			{label = "Biodra i pas", keyword = "biodra3", type = "anim", data = {lib = "amb@world_human_cop_idles@male@idle_b", anim = "idle_e", mode = 49}},
			{label = "Policjant", keyword = "policjant", type = "scenario", data = {anim = "WORLD_HUMAN_COP_IDLES"}},
			{label = "Cop", keyword = "cop", type = "anim", data = {lib = "amb@code_human_wander_idles_cop@male@static", anim = "static", mode = 49}},
			{label = "Bandzior", keyword = "bandzior", type = "scenario", data = {anim = "WORLD_HUMAN_HIKER_STANDING"}},
			{label = "Luźno", keyword = "luzno", type = "anim", data = {lib = "amb@world_human_stand_impatient@female@no_sign@base", anim = "base", mode = 1}},
			{label = "Zastanowienie", keyword = "zastanowienie", type = "anim", data = {lib = "amb@world_human_prostitute@cokehead@base", anim = "base", mode = 49}},
			{label = "Niespokojny", keyword = "niespokojny", type = "anim", data = {lib = "amb@world_human_drug_dealer_hard@male@idle_a", anim = "idle_c", mode = 1}},
			{label = "Wyzywająca", keyword = "wyzywajaca", type = "anim", data = {lib = "amb@world_human_hang_out_street@female_arm_side@idle_a", anim = "idle_b", mode = 1}},
			{label = "Nuda", keyword = "nuda", type = "loop", data = {base = {lib = "amb@world_human_hang_out_street@female_hold_arm@enter", anim = "enter", length = 3600, entering = true}, idle = {lib = "amb@world_human_hang_out_street@female_hold_arm@base", anims = {{"base", 2500}}}, finish = {lib = "amb@world_human_hang_out_street@female_hold_arm@exit", anim = "exit", length = 2500}, mode = 0}},
			{label = "Zmęczenie", keyword = "zmeczenie", type = "anim", data = {lib = "rcmfanatic3leadinoutef_3_mcs_1", anim = "fra_outofbreath_loop", mode = 1}},
			{label = "W kieszeni", keyword = "wkieszeni", type = "anim", data = {lib = "rcmjosh1", anim = "idle", mode = 49}},
			{label = "Panika", keyword = "panika", type = "anim", data = {lib = "rcmlastone1", anim = "convict_idleshort", mode = 1}},
			{label = "Zniecierpliwienie", keyword = "zniecierpliwienie", type = "anim", data = {lib = "rcmme_tracey1", anim = "nervous_loop", mode = 1}},
			{label = "Myśliciel", keyword = "mysliciel", type = "anim", data = {lib = "rcmnigel3_idles", anim = "base_nig", mode = 49}}
		}
	},

	{
		name  = 'conversation',
		label = 'Konwersacja',
		items = {
			{label = "Drapanie sie po glowie", keyword = "drapanie", type = "anim", keyword = "hm", data = {lib = "mp_cp_stolen_tut", anim = "b_think", mode = 48}},
			{label = "Jest Dobrze!", keyword = "jd", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@thumbs_up", anim = "thumbs_up"}},
			{label = "Przytulanie", keyword = "przytul", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
			{label = "Spokojnie", keyword = "spokojnie", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
			{label = "Zdziwienie", keyword = "zdziwienie", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
			{label = "A niech to licho!", keyword = "licho", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
			{label = "Super", keyword = "super", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
			{label = "No i co z tego?", keyword = "ico", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
			{label = "Ja", keyword = "ja", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
			{label = "Klęczenie", keyword = "kleczenie", type = "anim", data = {lib = "amb@medic@standing@kneel@base", anim = "base", mode = 2}},
			{label = "Zestresowana", keyword = "zestresowana", type = "anim", data = {lib = "random@hitch_lift", anim = "f_distressed_loop"}}
		}
	},

	{
		name  = 'leaning',
		label = 'Siadanie / Leżenie / Opieranie',
		items = {
			{label = "Menel", keyword = "menel", type = "scenario", data = {anim = "WORLD_HUMAN_PICNIC"}},
			{label = "Menel (M)", keyword = "menelm", type = "anim", data = {lib = "amb@world_human_picnic@male@base", anim = "base", mode = 1}},
			{label = "Menel (K)", keyword = "menelk", type = "anim", data = {lib = "amb@world_human_picnic@female@base", anim = "base", mode = 1}},
			{label = "Usiądź", keyword = "usiadz", type = "anim", data = {lib = "switch@michael@sitting", anim = "idle", mode = 1}},
			{label = "Usiądź przechylone", keyword = "usiadz2", type = "anim", data = {lib = "timetable@amanda@ig_7", anim = "base", mode = 1}},
			{label = "Usiądź na kanapie", keyword = "usiadz3", type = "anim", data = {lib = "timetable@maid@couch@", anim = "base", mode = 1}},
			{label = "Usiądź na kanapie v2", keyword = "usiadz4", type = "anim", data = {lib = "timetable@reunited@ig_10", anim = "base_jimmy", mode = 1}},
			{label = "Usiądź noga na noge", keyword = "usiadz5", type = "anim", data = {lib = "timetable@reunited@ig_10", anim = "base_amanda", mode = 1}},
			{label = "Usiądź zgarbiony", keyword = "usiadz6", type = "anim", data = {lib = "timetable@ron@ig_3_couch", anim = "base", mode = 1}},
			{label = "Usiądź na kibel", keyword = "usiadz7", type = "anim", data = {lib = "timetable@trevor@on_the_toilet", anim = "trevonlav_baseloop", mode = 1}},
			{label = "Losowe opieranie się", keyword = "lopieranie", type = "scenario", data = {anim = "WORLD_HUMAN_LEANING"}},
			{label = "Opieranie się", keyword = "opieranie", type = "anim", data = {lib = "amb@world_human_leaning@male@wall@back@legs_crossed@base", anim = "base", mode = 1}},
			{label = "Opieranie się v2", keyword = "opieranie2", type = "anim", data = {lib = "amb@world_human_leaning@male@wall@back@hands_together@base", anim = "base", mode = 1}},
			{label = "Opieranie się v3", keyword = "opieranie3", type = "anim", data = {lib = "amb@world_human_leaning@male@wall@back@foot_up@base", anim = "base", mode = 1}},
			{label = "Opieranie się na ramionach", keyword = "opieranie4", type = "anim", data = {lib = "missstrip_club_lean", anim = "player_lean_rail_loop", mode = 1}},
			{label = "Opieranie się na rękach", keyword = "opieranie5", type = "anim", data = {lib = "mp_safehousebeer@", anim = "base_drink", mode = 1}},
			{label = "Opieranie się do tyłu", keyword = "opieranie6", type = "anim", data = {lib = "anim@amb@nightclub@gt_idle@", anim = "base", mode = 1}},
			{label = "Opieranie na ramieniu", keyword = "opieranie7", type = "anim", data = {lib = "rcmjosh2", anim = "josh_2_intp1_base", mode = 17}},
			{label = "Opieranie na ramieniu v2", keyword = "opieranie8", type = "anim", data = {lib = "timetable@mime@01_gc", anim = "idle_a", mode = 1}},
			{label = "Leżenie na plecach", keyword = "lezenie", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
			{label = "Leżenie na plecach v2", keyword = "lezenie2", type = "anim", data = {lib = "timetable@tracy@sleep@", anim = "idle_c", mode = 1}},
			{label = "Leżenie na brzuchu", keyword = "lezenie3", type = "anim", data = {lib = "amb@world_human_sunbathe@male@front@base", anim = "base", mode = 1}},
			{label = "Leżenie na brzuchu v2", keyword = "lezenie4", type = "anim", data = {lib = "amb@world_human_sunbathe@female@front@base", anim = "base", mode = 1}},
			{label = "Leżenie na boku", keyword = "lezenie5", type = "anim", data = {lib = "amb@world_human_bum_slumped@male@laying_on_left_side@base", anim = "base", mode = 1}},
			{label = "Leżenie na kanapie", keyword = "lezenie6", type = "anim", data = {lib = "timetable@ron@ig_3_couch", anim = "laying", mode = 1}},
			{label = "Kładzenie się do łóżka", keyword = "kladzenie", type = "anim", data = {lib = "mp_bedmid", anim = "f_getin_l_bighouse"}},
			{label = "Siedzenie z telefonem", keyword = 'siedzeniet', type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
			{label = "Siedzenie na ziemii na luzaku", keyword = "siedzenie", type = "anim", data = {lib = "anim@heists@fleeca_bank@ig_7_jetski_owner", anim = "owner_idle", mode = 1}},
			{label = "Siedzenie na ziemii na luzaku v2", keyword = "siedzenie2", type = "anim", data = {lib = "timetable@jimmy@mics3_ig_15@", anim = "idle_a_jimmy", mode = 1}},
			{label = "Siedzenie po turecku z rękami w górze", keyword = "siedzenie3", type = "anim", data = {lib = "mp_fm_intro_cut", anim = "base_loop", mode = 1}},
			{label = "Siedzenie pod ścianą", keyword = "siedzenie6", type = "anim", data = {lib = "amb@world_human_stupor@male@idle_a", anim = "idle_b", mode = 1}},
			{label = "Siedzenie na ziemi załamany", keyword = "siedzenie7", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@lo_alone@", anim = "lowalone_dlg_longrant_laz", mode = 1}}
		}
	},

	{
		name  = 'situational',
		label = 'Sytuacyjne',
		items = {
			{label = "Selfie", keyword = "selfie", type = "scenario", data = {anim = "WORLD_HUMAN_TOURIST_MOBILE"}},
			{label = "Rece za glowe", keyword = "rece", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c", mode = 49}},
			{label = "Strach", keyword = "strach", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
			{label = "Zakladnik", keyword = "zakladnik", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
			{label = "Chowanie sie", keyword = "chowanie", type = "anim", data = {lib = "mp_am_hold_up", anim = "cower_loop"}},
			{label = "Rozpacz", keyword = "rozpacz", type = "anim", data = {lib = "mp_bank_heist_1", anim = "f_cower_01"}},
			{label = "Poddanie sie na glebe", keyword = "poddanie", type = "anim", data = {lib = "mp_bank_heist_1", anim = "prone_l_front_intro", mode = 2}},
			{label = "Rozgladanie sie", keyword = "rozgladanie", type = "scenario", data = {anim = "CODE_HUMAN_CROSS_ROAD_WAIT"}},
			{label = "Rozgladanie sie v2", keyword = "rozgladanie2", type = "anim", data = {lib = "mp_fm_intro_cut", anim = "idle_a"}},
			{label = "Wkurzenie sie", keyword = "wkurzenie", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@freakout", anim = "freakout"}},
			{label = "Wymiotowanie w aucie", keyword = "wymiotuj", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside", car = true}},
			{label = "Kibicowanie", keyword = "kibicowanie", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "angry_clap_b_player_b", mode = 1}},
			{label = "Kibicowanie v2", keyword = "kibicowanie2", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "angry_clap_a_player_a", mode = 1}},
			{label = "Rece do tylu", keyword = "rece2", type = "anim", data = {lib = "anim@miss@low@fin@vagos@", anim = "idle_ped06", mode = 49}},
			{label = "Drapanie sie po tylku", keyword = "drapanie", type = "anim", data = {lib = "anim@heists@team_respawn@respawn_01", anim = "heist_spawn_01_ped_d", mode = 49}},
			{label = "Otrzepanie sie", keyword = "otrzepanie", type = "anim", data = {lib = "move_m@_idles@shake_off", anim = "shakeoff_1"}},
			{label = "Otrzepanie sie v2", keyword = "otrzepanie2", type = "anim", data = {lib = "move_m@_idles@wet", anim = "fidget_wet"}},
			{label = "Sprawdzanie wody pod prysznicem", keyword = "woda", type = "anim", data = {lib = "mp_safehouseshower@female@", anim = "shower_enter_into_idle"}},
			{label = "Mycie sie", keyword = "mycie", type = "anim", data = {lib = "mp_safehouseshower@female@", anim = "shower_idle_a"}},
			{label = "Mycie sie v2", keyword = "mycie2", type = "anim", data = {lib = "mp_safehouseshower@male@", anim = "male_shower_idle_a"}}
		}
	},

	{
		name  = 'festives',
		label = 'Imprezka',
		items = {
			{label = "Bujanie się", keyword = "bujanie", type = "scenario", data = {anim = "WORLD_HUMAN_STRIP_WATCH_STAND"}}, -- todo
			{label = "Granie na instrumentach", keyword = "granie", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}}, -- todo
			{label = "DJ", keyword = "dj", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
			{label = "Picie kawy w miejscu", keyword = "kawa", type = "loop", data = {base = {lib = "amb@world_human_aa_coffee@base", anim = "base", length = 3600}, idle = {lib = "amb@world_human_aa_coffee@idle_a", anims = {{"idle_a", 6200}, {"idle_b", 3700}, {"idle_c", 6500}}}, finish = {lib = "amb@world_human_aa_coffee@base", anim = "base", length = 4500}, mode = 0, prop = {object = "p_ing_coffeecup_01", bone = 57005, offset = {x = 0.125, y = 0.02, z = -0.03}, rotation = {x = 95.0, y = 140.0, z = 190.0}, dettach = true}}},
			{label = "Picie kawy", keyword = "kawa2", type = "anim", data = {lib = "amb@world_human_drinking@coffee@male@idle_a", anim = "idle_c", mode = 49, prop = {object = "p_ing_coffeecup_01", bone = 57005, offset = {x = 0.125, y = 0.02, z = -0.03}, rotation = {x = 95.0, y = 140.0, z = 190.0}}}},
			{label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
			{label = "Robienie grilla", keyword = "grill", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}}, -- todo
			{label = "Wciąganie mety", keyword = "meta", type = "anim", data = {lib = "anim@amb@nightclub@peds@", anim = "missfbi3_party_snort_coke_b_male3", mode = 1}},
			{label = "Z gleby", keyword = "zgleby", type = "anim", data = {lib = "random@peyote@eat", anim = "eat_peyote"}},
			{label = "Kacuwa", keyword = "kacuwa", type = "anim", data = {lib = "random@peyote@generic", anim = "wakeup"}},
			{label = "Wydurnianie", keyword = "wydurnianie", type = "anim", data = {lib = "timetable@tracy@ig_5@idle_a", anim = "idle_c"}},
			{label = "Wydurnianie v2", keyword = "wydurnianie2", type = "anim", data = {lib = "timetable@tracy@ig_5@idle_b", anim = "idle_d"}}
		}
	},

	{
		name  = 'work',
		label = 'Praca',
		items = {
			{label = "Przygotowanie broni", keyword = "bron", type = "anim", data = {lib = "mp_corona@single_team", anim = "single_team_intro_one"}},
			{label = "Robienie zdjęć", keyword = "foto", type = "loop",  data = {base = {lib = "amb@world_human_paparazzi@male@enter", anim = "enter", length = 1000}, idle = {lib = "amb@world_human_paparazzi@male@idle_a", anims = {{"idle_a", 6000}, {"idle_b", 6000}, {"idle_c", 5000}}}, finish = {lib = "amb@world_human_paparazzi@male@exit", anim = "exit", length = 1000}, mode = 0, prop = {object = "prop_pap_camera_01", bone = 58866, offset = {x = 0.1, y = -0.05, z = 0.0}, rotation = {x = -10.0, y = 50.0, z = 5.0}, dettach = false}}},
			{label = "Żebrak", keyword = "zebrak", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}}, -- todo
			{label = "Pakowanie na naczepę", keyword = "pakowanie", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
			{label = "Kierowanie ruchem", keyword = "kierowanie", type = "anim", data = {lib = "amb@world_human_car_park_attendant@male@base", anim = "base", mode = 1, prop = {bone = 57005, object = "prop_parking_wand_01", offset = {x = 0.1, y = 0.0, z = -0.03}, rotation = {x = -60.0, y = 0.0, z = 0.0}}}},
			{label = "Wędkowanie", keyword = "wedkowanie", type = "scenario", data = {anim = "WORLD_HUMAN_STAND_FISHING"}},
			{label = "Podsłuchiwanie", keyword = "podsluch", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}},
			{label = "Szukanie śladów", keyword = "szukanie", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
			{label = "Kopanie w ogródku", keyword = "kopanie", type = "scenario", data = {anim = "WORLD_HUMAN_GARDENER_PLANT"}},
			{label = "Kopanie łopatą", keyword = "kopanie2", type = "anim", data = {lib = "random@burial", anim = "a_burial", mode = 1, prop = {bone = 28422, object = "prop_ld_shovel", offset = {x = 0.0, y = 0.0, z = 0.0}, rotation = {x = 0.0, y = 0.0, z = 0.0}}}},
			{label = "Pisanie na klawiaturze", keyword = "klawiatura", type = "anim", data = {lib = "missah_2_ext_altleadinout", anim = "hack_loop", mode = 1}},
			{label = "Sprawdzanie notatek", keyword = "notatki", type = "anim", data = {lib = "amb@world_human_clipboard@male@idle_a", anim = "idle_c", mode = 49, prop = {bone = 36029, object = "p_amb_clipboard_01", offset = {x = 0.1, y = 0.015, z = 0.12}, rotation = {x = -120.0, y = -60.0, z = 0.0}}}},
			{label = "Młotek", keyword = "mlotek", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
			{label = "Mycie okna", keyword = "mycieokna", type = "scenario", data = {anim = "WORLD_HUMAN_MAID_CLEAN"}},
			{label = "Mim", keyword = "mim", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
			{label = "Mycie blatu", keyword = "mycieblatu", type = "anim", data = {lib = "timetable@floyd@clean_kitchen@base", anim = "base", mode = 1}},
			{label = "Wymiana żarówki", keyword = "zarowka", type = "anim", data = {lib = "amb@prop_human_movie_bulb@base", anim = "base", mode = 1}},
			{label = "Mechanik", keyword = "mechanik", type = "anim", data = {lib = "amb@world_human_vehicle_mechanic@male@base", anim = "base", mode = 1}},
			{label = "Mechanik 2", keyword = "mechanik2", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped", mode = 1}},
			{label = "Mechanik 3", keyword = "mechanik3", type = "anim", data = {lib = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", anim = "machinic_loop_mechandplayer", mode = 1}},
			{label = "Mechanik 4", keyword = "mechanik4", type = "anim", data = {lib = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", anim = "machinic_loop_mechandplayer", mode = 51}},
			{label = "Wiercenie wiertarką", keyword = "wiertarka", type = "anim", data = {lib = "anim@heists@fleeca_bank@drilling", anim = "drill_straight_start", mode = 1, prop = {bone = 57005, object = "prop_tool_drill", offset = {x = 0.1, y = 0.04, z = -0.03}, rotation = {x = -90.0, y = 180.0, z = 0.0}}}},
		}
	},

	{
		name  = 'humors',
		label = 'Humor',
		items = {
			{label = "Kajdanki", keyword = "kajdanki", type = "anim", data = {lib = "mp_arresting", anim = "idle", mode = 49}},
			{label = "Klaskanie", keyword = "klaskanie", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
			{label = "Facepalm", keyword = "facepalm", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
			{label = "Samobójstwo", keyword = "ck", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
			{label = "Skok w bok", type = "anim", data = {lib = "melee@unarmed@streamed_core_psycho", anim = "victim_psycho_rear_takedown"}},
			{label = "Jezus", keyword = "jezus", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
			{label = "Palec w dziurke", keyword = "palec", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@dock", anim = "dock"}},	
			{label = "Jesteś pierdolnięty", keyword = "pierdolniety", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@you_loco", anim = "you_loco"}},
			{label = "Jaskółka", keyword = "jaskolka", type = "anim", data = {lib = "random@peyote@bird", anim = "wakeup"}},
			{label = "Kurczak", keyword = "kurczak", type = "anim", data = {lib = "random@peyote@chicken", anim = "wakeup"}},
			{label = "Cztery łapy", type = "anim", data = {lib = "random@peyote@deer", anim = "wakeup"}},
			{label = "Pies", keyword = "pies", type = "anim", data = {lib = "random@peyote@dog", anim = "wakeup"}}
		}
	},

	{
		name  = 'sports',
		label = 'Sport',
		items = {
			{label = "Garda", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
			{label = "Rozgrzewka", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
			{label = "Bitka", keyword = "bitka", type = "anim", data = {lib = "mp_deathmatch_intros@unarmed", anim = "intro_male_unarmed_b"}},
			{label = "Jogging", keyword = "jogging", type = "scenario", data = {anim = "WORLD_HUMAN_JOG_STANDING"}},
			{label = "Pompki", keyword = "pompki", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base", mode = 1}},
			{label = "Brzuszki", keyword = "brzuszki", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base", mode = 1}},
			{label = "Napinanie", keyword = "napinanie", type = "scenario", data = {anim = "WORLD_HUMAN_MUSCLE_FLEX"}},
			{label = "Napinanie mięśni", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
			{label = "Napinanie bicków", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_in_front@idle_a", anim = "idle_a"}},
			{label = "Trenowanie bicków", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
			{label = "Yoga", keyword = "yoga", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
			{label = "Salto w tył", keyword = "salto", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "flip_a_player_a"}},
			{label = "Gwiazda", keyword = "gwiazda", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "cap_a_player_a"}},
			{label = "Rozciąganie", keyword = "rozciaganie", type = "anim", data = {lib = "rcmfanatic1maryann_stretchidle_b", anim = "idle_e"}},
			{label = "Pajacyki", keyword = "pajacyki", type = "anim", data = {lib = "timetable@reunited@ig_2", anim = "jimmy_masterbation"}}
		}
	},

	{
		name  = 'dances',
		label = 'Taniec',
		items = {
			{label = "Taniec", keyword = "taniec", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_hi_06_base_laz", mode = 1}},
			{label = "Taniec konia", keyword = "kon", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_dancefloor@", anim = "dancecrowd_li_11_hu_shimmy_laz", mode = 1, prop = {bone = 28422, object = "ba_prop_battle_hobby_horse", offset = {x = 0.0, y = 0.0, z = 0.0}, rotation = {x = 0.0, y = 0.0, z = 0.0}}}},			
			{label = "Taniec konia 2", keyword = "kon2", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_dancefloor@", anim = "dancecrowd_li_15_handup_laz", mode = 51, prop = {bone = 28422, object = "ba_prop_battle_hobby_horse", offset = {x = 0.0, y = 0.0, z = 0.0}, rotation = {x = 0.0, y = 0.0, z = 0.0}}}},			
			{label = "Taniec z Glowstickiem", keyword = "glowstick", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_railing@", anim = "ambclub_09_mi_hi_bellydancer_laz", mode = 1, prop = {bone = 28422, object = "ba_prop_battle_glowstick_01", offset = {x = 0.07, y = 0.14, z = 0.0}, rotation = {x = -80.0, y = 20.0, z = 0.0}}}},
			{label = "Taniec z Glowstickiem 2", keyword = "glowstick2", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_railing@", anim = "ambclub_09_mi_hi_bellydancer_laz", mode = 1, prop = {bone = 60309, object = "ba_prop_battle_glowstick_01", offset = {x = 0.07, y = 0.09, z = 0.0}, rotation = {x = -120.0, y = -20.0, z = 0.0}}}},
			{label = "Taniec z Glowstickiem 3", keyword = "glowstick3", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_railing@", anim = "ambclub_12_mi_hi_bootyshake_laz", mode = 51, prop = {bone = 60309, object = "ba_prop_battle_glowstick_01", offset = {x = 0.07, y = 0.09, z = 0.0}, rotation = {x = -120.0, y = -20.0, z = 0.0}}}},
			{label = "Disco", keyword = "disco", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@uncle_disco", anim = "uncle_disco", mode = 1}},
			{label = "Impra", keyword = "impra", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_li_to_hi_09_v2_female^3", mode = 1}},
			{label = "Wczuta", keyword = "wczuta", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_hi_to_mi_09_v1_female^6", mode = 1}},
			{label = "Zabawa", keyword = "zabawa", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_hi_to_mi_09_v1_female^1", mode = 1}},
			{label = "Krec tym mała", keyword = "krec", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_hi_17_smackthat_laz", mode = 1}},
			{label = "Densjer", keyword = "densjer", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_hi_to_li_09_v1_female^3", mode = 1}},
			{label = "Robot", keyword = "robot", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_mi_15_robot_laz", mode = 1}},
			{label = "Wixa", keyword = "wixa", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_2@monologue_2a", anim = "mnt_dnc_angel", mode = 1}},
			{label = "Stepowanie", keyword = "stepowanie", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_3@monologue_3a", anim = "mnt_dnc_buttwag", mode = 1}},
			{label = "Boogie", keyword = "boogie", type = "anim", data = {lib = "rcmnigel1bnmt_1b", anim = "dance_loop_tyler", mode = 1}},
			{label = "Striptizerka", keyword = "striptizerka", type = "anim", data = {lib = "mp_am_stripper", anim = "lap_dance_girl", mode = 1}},
			{label = "Macarena", keyword = "macarena", type = "anim", data = {lib = "misschinese2_crystalmazemcs1_cs", anim = "dance_loop_tao", mode = 1}},
			{label = "Taniec kurczaka", keyword = "kurczak", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@chicken_taunt", anim = "chicken_taunt", mode = 1}},
			{label = "Taniec losia", keyword = "los", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@thumb_on_ears", anim = "thumb_on_ears", mode = 1}},
			{label = "Taniec spidermana", keyword = "spiderman", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_hi_17_spiderman_laz", mode = 1}},
			{label = "Wywijanie reka", keyword = "wywijanie", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@find_the_fish", anim = "find_the_fish", mode = 1}}
		}
	},
	{
		name  = 'dances2',
		label = '40 Tańców',
		items = {	
        {label = "Taniec 1", type = "anim", keyword = "taniec1", data = {lib = "anim@amb@nightclub@dancers@club_ambientpeds@med-hi_intensity", anim = "mi-hi_amb_club_10_v1_male^6", mode = 1}},
        {label = "Taniec 2", type = "anim", keyword = "taniec2", data = {lib = "amb@code_human_in_car_mp_actions@dance@bodhi@ds@base", anim = "idle_a_fp", mode = 1}},
        {label = "Taniec 3", type = "anim", keyword = "taniec3", data = {lib = "amb@code_human_in_car_mp_actions@dance@bodhi@rds@base", anim = "idle_b", mode = 1}},
        {label = "Taniec 4", type = "anim", keyword = "taniec4", data = {lib = "amb@code_human_in_car_mp_actions@dance@std@ds@base", anim = "idle_a", mode = 1}},
        {label = "Taniec 5", type = "anim", keyword = "taniec5", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", anim = "hi_dance_facedj_09_v2_male^6", mode = 1}},
        {label = "Taniec 6", type = "anim", keyword = "taniec6", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj@low_intesnsity", anim = "li_dance_facedj_09_v1_male^6", mode = 1}},
        {label = "Taniec 7", type = "anim", keyword = "taniec7", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", anim = "trans_dance_facedj_hi_to_li_09_v1_male^6", mode = 1}},
        {label = "Taniec 8", type = "anim", keyword = "taniec8", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_low_intensity", anim = "trans_dance_facedj_li_to_hi_07_v1_male^6", mode = 1}},
        {label = "Taniec 9", type = "anim", keyword = "taniec9", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_13_v2_male^6", mode = 1}},
        {label = "Taniec 10", type = "anim", keyword = "taniec10", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_hi_intensity", anim = "trans_dance_crowd_hi_to_li__07_v1_male^6", mode = 1}},
        {label = "Taniec 11", type = "anim", keyword = "taniec11", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@hi_intensity", anim = "hi_dance_prop_13_v1_male^6", mode = 1}},
        {label = "Taniec 12", type = "anim", keyword = "taniec12", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props_transitions@from_med_intensity", anim = "trans_crowd_prop_mi_to_li_11_v1_male^6", mode = 1}},
        {label = "Taniec 13", type = "anim", keyword = "taniec13", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", anim = "med_center_up", mode = 1}},
        {label = "Taniec 14", type = "anim", keyword = "taniec14", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", anim = "med_right_up", mode = 1}},
        {label = "Taniec 15", type = "anim", keyword = "taniec15", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@low_intensity", anim = "li_dance_crowd_17_v1_male^6", mode = 1}},
        {label = "Taniec 16", type = "anim", keyword = "taniec16", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_med_intensity", anim = "trans_dance_facedj_mi_to_li_09_v1_male^6", mode = 1}},
        {label = "Taniec 17", type = "anim", keyword = "taniec17", data = {lib = "timetable@tracy@ig_5@idle_b", anim = "idle_e", mode = 1}},
        {label = "Taniec 18", type = "anim", keyword = "taniec18", data = {lib = "mini@strip_club@idles@dj@idle_04", anim = "idle_04", mode = 1}},
        {label = "Taniec 19", type = "anim", keyword = "taniec19", data = {lib = "special_ped@mountain_dancer@monologue_1@monologue_1a", anim = "mtn_dnc_if_you_want_to_get_to_heaven", mode = 1}},
        {label = "Taniec 20", type = "anim", keyword = "taniec20", data = {lib = "special_ped@mountain_dancer@monologue_4@monologue_4a", anim = "mnt_dnc_verse", mode = 1}},
        {label = "Taniec 21", type = "anim", keyword = "taniec21", data = {lib = "special_ped@mountain_dancer@monologue_3@monologue_3a", anim = "mnt_dnc_buttwag", mode = 1}},
        {label = "Taniec 22", type = "anim", keyword = "taniec22", data = {lib = "anim@amb@nightclub@dancers@black_madonna_entourage@", anim = "hi_dance_facedj_09_v2_male^5", mode = 1}},
        {label = "Taniec 23", type = "anim", keyword = "taniec23", data = {lib = "anim@amb@nightclub@dancers@crowddance_single_props@", anim = "hi_dance_prop_09_v1_male^6", mode = 1}},
        {label = "Taniec 24", type = "anim", keyword = "taniec24", data = {lib = "anim@amb@nightclub@dancers@dixon_entourage@", anim = "mi_dance_facedj_15_v1_male^4", mode = 1}},
        {label = "Taniec 25", type = "anim", keyword = "taniec25", data = {lib = "anim@amb@nightclub@dancers@podium_dancers@", anim = "hi_dance_facedj_17_v2_male^5", mode = 1}},
        {label = "Taniec 26", type = "anim", keyword = "taniec26", data = {lib = "anim@amb@nightclub@dancers@tale_of_us_entourage@", anim = "mi_dance_prop_13_v2_male^4", mode = 1}},
        {label = "Taniec 27", type = "anim", keyword = "taniec27", data = {lib = "misschinese2_crystalmazemcs1_cs", anim = "dance_loop_tao", mode = 1}},
        {label = "Taniec 28", type = "anim", keyword = "taniec28", data = {lib = "misschinese2_crystalmazemcs1_ig", anim = "dance_loop_tao", mode = 1}},
        {label = "Taniec 29", type = "anim", keyword = "taniec29", data = {lib = "anim@mp_player_intcelebrationfemale@uncle_disco", anim = "uncle_disco", mode = 1}},
        {label = "Taniec 30", type = "anim", keyword = "taniec30", data = {lib = "anim@mp_player_intcelebrationfemale@raise_the_roof", anim = "raise_the_roof", mode = 1}},
        {label = "Taniec 31", type = "anim", keyword = "taniec31", data = {lib = "anim@mp_player_intcelebrationmale@cats_cradle", anim = "cats_cradle", mode = 1}},
        {label = "Taniec 32", type = "anim", keyword = "taniec32", data = {lib = "anim@mp_player_intupperbanging_tunes", anim = "idle_a", mode = 1}},
        {label = "Taniec 33", type = "anim", keyword = "taniec33", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", anim = "high_center", mode = 1}},
        {label = "Taniec 34", type = "anim", keyword = "taniec34", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", anim = "high_center", mode = 1}},
        {label = "Taniec 35", type = "anim", keyword = "taniec35", data = {lib = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", anim = "high_center", mode = 1}},
        {label = "Taniec 36", type = "anim", keyword = "taniec36", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@", anim = "trans_dance_facedj_hi_to_mi_11_v1_female^6", mode = 1}},
        {label = "Taniec 37", type = "anim", keyword = "taniec37", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", anim = "trans_dance_facedj_hi_to_li_07_v1_female^6", mode = 1}},
        {label = "Taniec 38", type = "anim", keyword = "taniec38", data = {lib = "anim@amb@nightclub@dancers@crowddance_facedj@", anim = "hi_dance_facedj_09_v1_female^6", mode = 1}},
        {label = "Taniec 39", type = "anim", keyword = "taniec39", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity", anim = "hi_dance_crowd_09_v1_female^6", mode = 1}},
        {label = "Taniec 40", type = "anim", keyword = "taniec40", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_hi_06_base_laz", mode = 1}},
		
		}
	},
	
	{
		name  = 'movements',
		label = 'Style chodzenia',
		items = {
			{label = "Codzienny", type = "attitude", keyword = "codzienny", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
			{label = "Kozak", type = "attitude", keyword = "kozak", data = {lib = "MOVE_M@TOUGH_GUY@", anim = "MOVE_M@TOUGH_GUY@"}},
			{label = "Jogging", type = "anim", keyword = "jogging", data = {lib = "move_f@jogger", anim = "idle", mode = 49}},
			{label = "Normalne (M)", type = "attitude", keyword = "normalneM", data = {lib = "move_m@confident", anim = "move_m@confident"}},
			{label = "Normalne (K)", type = "attitude", keyword = "normalneK", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},
			{label = "Depresja (M)", type = "attitude", keyword = "depresjaM", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
			{label = "Depresja (K)", type = "attitude", keyword = "depresjaK", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
			{label = "Biznesman", type = "attitude", keyword = "biznesmen", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
			{label = "Zdeterminowany", type = "attitude", keyword = "zdeterminowany", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
			{label = "Grubas", type = "attitude", keyword = "grubas", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
			{label = "Hipster", type = "attitude", keyword = "hipster", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
			{label = "Kulawy", type = "attitude", keyword = "kulawy", data = {lib = "move_m@injured", anim = "move_m@injured"}},
			{label = "Wkurwiony", type = "attitude", keyword = "wkurwiony", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
			{label = "Wloczega", type = "attitude", keyword = "wloczega", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
			{label = "Smutny", type = "attitude", keyword = "smutny", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
			{label = "Muskularny", type = "attitude", keyword = "muskularny", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
			{label = "Mroczny", type = "attitude", keyword = "mroczny", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
			{label = "Zmeczony", type = "attitude", keyword = "zmeczony", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
			{label = "Szybki krok", type = "attitude", keyword = "szybkikrok", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
			{label = "Dumny", type = "attitude", keyword = "dumny", data = {lib = "move_m@money", anim = "move_m@money"}},
			{label = "Wyscig", type = "attitude", keyword = "wyscig", data = {lib = "move_m@quick", anim = "move_m@quick"}},
			{label = "Cieply", type = "attitude", keyword = "cieply", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
			{label = "Cieply v2", type = "attitude", keyword = "cieply2", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
			{label = "Arogancki", type = "attitude", keyword = "arogancki", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
			{label = "Gangster", type = "attitude", keyword = "gangster", data = {lib = "move_m@gangster@generic", anim = "move_m@gangster@generic"}},
			{label = "Gangster 2", type = "attitude", keyword = "gangster2", data = {lib = "move_m@gangster@ng", anim = "move_m@gangster@ng"}},
			{label = "Swagger", type = "attitude", keyword = "swagger", data = {lib = "move_m@swagger", anim = "move_m@swagger"}},
			{label = "Pewny siebie", type = "attitude", keyword = "pewnysiebie", data = {lib = "move_m@fire", anim = "move_m@fire"}}
		}
	},

	{
		name = 'speaking',
		label = 'Style mówienia',
		items = {
			{label = "Normalny", type = "facial", data = 1, keyword = "normalny2"},
			{label = "Wkurwiony", type = "facial", data = 2, keyword = "wkurwiony2"},
			{label = "Zaangażowany", type = "facial", data = 3, keyword = "zaangazowany"},
			{label = "Skupiony", type = "facial", data = 4, keyword = "skupiony"},
			{label = "Zły", type = "facial", data = 5, keyword = "zly"},
			{label = "Zacieszony", type = "facial", data = 6, keyword = "zacieszony"},
			{label = "Szczęśliwy", type = "facial", data = 7, keyword = "szczesliwy"},
			{label = "Zdziwiony", type = "facial", data = 8, keyword = "zdziwiony"},
			{label = "Zamknięte oczy", type = "facial", data = 9, keyword = "zamknieteoczy"},
			{label = "Odczuwając ból", type = "facial", data = 10, keyword = "odczuwajacybol"}
		}
	},
	
	{
		name = 'objects',
		label = 'Operowanie obiektami',
		items = {
			{label = "Skrzynia z narzędziami", type = "anim", keyword = "skrzynka", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_tool_box_04", offset = {x = 0.43, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Skrzynka z wiertarką", type = "anim", keyword = "skrzynka2", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_tool_box_02", offset = {x = 0.53, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Paczka", type = "anim", keyword = "paczka", data = {lib = "anim@heists@box_carry@", anim = "idle", mode = 49, prop = {bone = 28422, object = "v_serv_abox_04", offset = {x = 0.0, y = -0.08, z = -0.17}, rotation = {x = 0.0, y = 0.0, z = 90.0}}}},
			{label = "Aktówka", type = "anim", keyword = "aktowka", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_ld_case_01", offset = {x = 0.13, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Walizka", type = "anim", keyword = "walizka", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "hei_p_attache_case_shut", offset = {x = 0.13, y = 0.0, z = 0.0}, rotation = {x = 0.0, y = 0.0, z = -90.0}}}},
			{label = "Walizka podróżna", type = "anim", keyword = "walizka2", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_ld_suitcase_01", offset = {x = 0.36, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Walizka na kółkach", type = "anim", keyword = "walizka3", data = {lib = "anim@heists@narcotics@trash", anim = "walk", mode = 49, prop = {bone = 57005, object = "prop_suitcase_03", offset = {x = 0.36, y = -0.45, z = -0.05}, rotation = {x = -50.0, y = -60.0, z = 15.0}}}}
		}
	},

	{
		name  = 'porn',
		label = 'PEGI 21',
		items = {
			{label = "Masturbacja", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01", mode = 49}},
			{label = "Masturbacja z wytryskiem", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@wank", anim = "wank"}},
			{label = "Pomaganie pani w aucie", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop", car = true}},
			{label = "Robienie loda w aucie", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop", car = true}},
			{label = "Seks w aucie", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player", car = true}},
			{label = "Siadanie w aucie", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female", car = true}},
			{label = "Drapanie sie po jajach", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
			{label = "Kobiecy urok", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
			{label = "Posuwanie", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
			{label = "Wypiecie tylka", type = "anim", data = {lib = "switch@trevor@mocks_lapdance", anim = "001443_01_trvs_28_exit_trv"}},
			{label = "Czekajaca pani", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
			{label = "Wystawianie tylka i piersi", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
			{label = "Striptiz taniec v1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
			{label = "Zaproszenie faceta", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_invite", anim = "ld_girl_a_invite"}},
			{label = "Striptiz taniec v2", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
			{label = "Striptiz taniec v3", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
			{label = "Striptiz taniec v4", type = "anim", data = {lib = "mini@strip_club@private_dance@part1", anim = "priv_dance_p1"}}
		}
	}
}
Config.Gesty = {
	handsUp = Keys["~"],
}

Ped = {
	Active = false,
	Locked = false,
	Id = 0,
	Alive = false,
	Available = false,
	Visible = false,
	InVehicle = false,
	OnFoot = false,
	Collection = false
}

local handsUp = false
CreateThread(function()
	while not HasAnimDictLoaded("random@mugging3") do
		RequestAnimDict("random@mugging3")
		Citizen.Wait(0)
	end

	while true do
		Citizen.Wait(0)
		if Ped.Active then
			local status = true
			if Ped.Available and not Ped.InVehicle and Ped.Visible and Ped.Collection then
				status = false
				if IsControlJustPressed(1, Config.Gesty.handsUp) then
					handsUp = not handsUp
					if not handsUp then
						ClearPedSecondaryTask(Ped.Id)
					else
						TaskPlayAnim(Ped.Id, "random@mugging3", "handsup_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
					end
				end
			end

			if status and handsUp then
				handsUp = false
				if not Ped.Locked then
					ClearPedSecondaryTask(Ped.Id)
				end
			end
		elseif handsUp then
			handsUp = false
			if Ped.Available then
				ClearPedSecondaryTask(PlayerPedId())
			end
		end
	end
end)

RegisterNetEvent('testteddd')
AddEventHandler('testteddd', function()
	if Ped.Active then
		local status = true
		if Ped.Available and not Ped.InVehicle and Ped.Visible and Ped.Collection then
			status = false
				handsUp = not handsUp
				if not handsUp then
					ClearPedSecondaryTask(closestPlayer)
				else
					TaskPlayAnim(closestPlayer, "random@mugging3", "handsup_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
				end
		end

		if status and handsUp then
			handsUp = false
			if not Ped.Locked then
				ClearPedSecondaryTask(closestPlayer)
			end
		end
	elseif handsUp then
		handsUp = false
		if Ped.Available then
			ClearPedSecondaryTask(PlayerPedId())
		end
	end
end)

CreateThread(function()
	while true do
		if handsUp then
			Citizen.Wait(0)
			DisableControlAction(2, 24, true) -- Attack
			DisableControlAction(2, 257, true) -- Attack 2
			DisableControlAction(2, 25, true) -- Aim
			DisableControlAction(2, 263, true) -- Melee Attack 1
			DisableControlAction(2, Keys['R'], true) -- Reload
			DisableControlAction(2, Keys['TAB'], true) -- Select Weapon
			DisableControlAction(2, Keys['F1'], true) -- Disable phone
			DisableControlAction(2, Keys['F'], true) -- Also 'enter'?
			DisableControlAction(0, 47, true)  -- Disable weapon
			DisableControlAction(0, 264, true) -- Disable melee
			DisableControlAction(0, 257, true) -- Disable melee
			DisableControlAction(0, 140, true) -- Disable melee
			DisableControlAction(0, 141, true) -- Disable melee
			DisableControlAction(0, 142, true) -- Disable melee
			DisableControlAction(0, 143, true) -- Disable melee
		else
			Citizen.Wait(500)
		end
	end
end)



CreateThread(function()
	while true do
		Citizen.Wait(200)

		Ped.Active = not IsPauseMenuActive()
		if Ped.Active then
			Ped.Id = PlayerPedId()
			if not IsEntityDead(Ped.Id) then
				Ped.Locked = (getCarry())
				Ped.Alive = true
				Ped.Available = (Ped.Alive and not Ped.Locked)
				Ped.Visible = IsEntityVisible(Ped.Id)
				Ped.InVehicle = IsPedInAnyVehicle(Ped.Id, false)
				Ped.OnFoot = IsPedOnFoot(Ped.Id)

				if Ped.Available and not Ped.InVehicle and Ped.Visible then
					Ped.Collection = not IsPedFalling(Ped.Id) and not IsPedDiving(Ped.Id) and not IsPedSwimming(Ped.Id) and not IsPedSwimmingUnderWater(Ped.Id) and not IsPedInCover(Ped.Id, false) and not IsPedInParachuteFreeFall(Ped.Id) and (GetPedParachuteState(Ped.Id) == 0 or GetPedParachuteState(Ped.Id) == -1) and not IsPedBeingStunned(Ped.Id)
				else
					Ped.Collection = false
				end
			else
				Ped.Alive = false
				Ped.Available = false
				Ped.Visible = IsEntityVisible(Ped.Id)
				Ped.InVehicle = false
				Ped.OnFoot = true
				Ped.Collection = false
			end
		end
	end
end)

function PedStatus()
	return Ped.Collection
end


doll = false
  prop = nil
  loop = {
      status = nil,
      current = nil,
      finish = nil,
      delay = 0,
      dettach = false,
      last = 0
  }
  binds = nil
  binding = nil
  ESX = nil
  local PlayerData = {}
  
  CreateThread(function()
      while ESX == nil do
          TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
          Citizen.Wait(0)
      end
  
  
      Citizen.Wait(5000)
      PlayerData = ESX.GetPlayerData()
      if not binds then
          TriggerServerEvent('esx_animations:load')
      end
  end)
  
  RegisterNetEvent('esx:playerLoaded')
  AddEventHandler('esx:playerLoaded', function(xPlayer)
      PlayerData = xPlayer
  end)
  
  RegisterNetEvent('esx:setJob')
  AddEventHandler('esx:setJob', function(job)
      PlayerData.job = job
  
  end)
  
  RegisterNetEvent('esx_animations:bind')
  AddEventHandler('esx_animations:bind', function(list)
      binds = list
  end)
  

  
  
  RegisterNetEvent('esx_animations:trigger')
  AddEventHandler('esx_animations:trigger', function(anim)
      --local ped = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      --local car = GetVehiclePedIsIn(ped, false)
      --if car then 
          if anim.type == 'ragdoll' then
              if IsPedInAnyVehicle(PlayerPedId(), false) then
                  ragdoll = true
              end
          elseif anim.type == 'attitude' then
              if anim.data.car == true then
                  if IsPedInAnyVehicle(PlayerPedId(), false) then
                      startAttitude(anim.data.lib, anim.data.anim)
                  end
              else
                  if not IsPedInAnyVehicle(PlayerPedId(), false) then
                      startAttitude(anim.data.lib, anim.data.anim)
                  end
              end
          elseif anim.type == 'scenario' then
              if anim.data.car == true then
                  if IsPedInAnyVehicle(PlayerPedId(), false) then
                      startScenario(anim.data.anim, anim.data.offset)
                  end
              else
                  if not IsPedInAnyVehicle(PlayerPedId(), false) then
                      startScenario(anim.data.anim, anim.data.offset)
                  end
              end
          elseif anim.type == 'anim' then
              if anim.data.car == true then
                  if IsPedInAnyVehicle(PlayerPedId(), false) then
                      startAnim(anim.data.lib, anim.data.anim, anim.data.mode, anim.data.prop)
                  end
              else
                  if not IsPedInAnyVehicle(PlayerPedId(), false) then
                      startAnim(anim.data.lib, anim.data.anim, anim.data.mode, anim.data.prop)
                  end
              end
          elseif anim.type == 'facial' then
              TriggerEvent('esx_voice:facial', anim.data)
          elseif anim.type == 'wspolne' then
              if anim.data.name == 'powitaj' then
              local Gracz = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
                  if not IsPedInAnyVehicle(Gracz, false) then
                      local closestPlayer, distance = ESX.Game.GetClosestPlayer()
                      if closestPlayer ~= nil and distance ~= -1 and distance <= 3.0 then
                          TriggerServerEvent('SimplyRDM:powitajSynchroS', GetPlayerServerId(closestPlayer))
                      else
                          ESX.ShowNotification('~r~Brak obywatela w poblizu')
                      end
                  end		
              elseif anim.data.name == 'przytul' then
              local Gracz = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
                  if not IsPedInAnyVehicle(Gracz, false) then
                      local closestPlayer, distance = ESX.Game.GetClosestPlayer()
                      if closestPlayer ~= nil and distance ~= -1 and distance <= 3.0 then
                          TriggerServerEvent('SimplyRDM:przytulSynchroS', GetPlayerServerId(closestPlayer))
                      else
                          ESX.ShowNotification('~r~Brak obywatela w poblizu')
                      end
                  end		
              elseif anim.data.name == 'pocaluj' then
              local Gracz = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
                  if not IsPedInAnyVehicle(Gracz, false) then
                  local closestPlayer, distance = ESX.Game.GetClosestPlayer()
                      if closestPlayer ~= nil and distance ~= -1 and distance <= 3.0 then
                          TriggerServerEvent('SimplyRDM:pocalujSynchroS', GetPlayerServerId(closestPlayer))
                      else
                          ESX.ShowNotification('~r~Brak obywatela w poblizu')
                      end
                  end		
              elseif anim.data.name == 'przenies' then
              local Gracz = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
                  if not IsPedInAnyVehicle(Gracz, false) then
                  local closestPlayer, distance = ESX.Game.GetClosestPlayer()
                      if closestPlayer ~= nil and distance ~= -1 and distance <= 3.0 then
                          TriggerServerEvent('SimplyRDM:OdpalAnimacje4', GetPlayerServerId(closestPlayer))
                      else
                          ESX.ShowNotification('~r~Brak obywatela w poblizu')
                      end
                  end		
              end
          else
              if not IsPedInAnyVehicle(PlayerPedId(), false) then
                  startAnimLoop(anim.data)
              end
          end
      --else 
          
      --end
      
  end)
  
  function startAttitude(lib, anim)
      CreateThread(function()
          RequestAnimSet(anim)
          while not HasAnimSetLoaded(anim) do
              Citizen.Wait(1)
          end
  
          SetPedMovementClipset(PlayerPedId(), anim, true)
      end)
  end
  
  function startScenario(anim, offset)
      if loop.status == true then
          finishLoop(function()
              startScenario(anim, offset)
          end)
      else
          local ped = PlayerPedId()
          if offset then
              local coords = GetEntityCoords(ped, true)
              TaskStartScenarioAtPosition(ped, anim, coords.x, coords.y, coords.z + offset, GetEntityHeading(ped), 0, true, true)
          else
              TaskStartScenarioInPlace(ped, anim, 0, false)
          end
      end
  end
  
  function startAnim(lib, anim, mode, obj)
      if loop.status == true then
          finishLoop(function()
              startAnim(lib, anim, mode, obj)
          end)
      else
          mode = mode or 0
          CreateThread(function()
              RequestAnimDict(lib)
              while not HasAnimDictLoaded(lib) do
                  Citizen.Wait(0)
              end
  
              local ped = PlayerPedId()
              TaskPlayAnim(ped, lib, anim, 8.0, -8.0, -1, mode, 0, false, false, false)
              if obj then
                  if type(prop) == 'table' then
                      DeleteObject(prop.obj)
                  end
  
                  local coords = GetEntityCoords(ped)
                  local boneIndex = GetPedBoneIndex(ped, obj.bone)
                  ESX.Game.SpawnObject(obj.object, {
                      x = coords.x,
                      y = coords.y,
                      z = coords.z + 2
                  }, function(object)
                      AttachEntityToEntity(object, ped, boneIndex, obj.offset.x + 0.0, obj.offset.y + 0.0, obj.offset.z + 0.0, obj.rotation.x + 0.0, obj.rotation.y + 0.0, obj.rotation.z + 0.0, true, true, false, true, 1, true)
                      prop = {obj = object, lib = lib, anim = anim}
                  end)
              end
          end)
      end
  end
  
  function startAnimLoop(data)
      if loop.status == true then
          finishLoop(function()
              startAnimLoop(data)
          end)
      else
          CreateThread(function()
              while loop.status ~= nil do
                  Citizen.Wait(1)
              end
  
              RequestAnimDict(data.base.lib)
              while not HasAnimDictLoaded(data.base.lib) do
                  Citizen.Wait(1)
              end
  
              RequestAnimDict(data.idle.lib)
              while not HasAnimDictLoaded(data.idle.lib) do
                  Citizen.Wait(1)
              end
  
              RequestAnimDict(data.finish.lib)
              while not HasAnimDictLoaded(data.finish.lib) do
                  Citizen.Wait(1)
              end
  
              local playerPed = PlayerPedId()
              if data.prop then
                  local coords	= GetEntityCoords(playerPed)
                  local boneIndex = GetPedBoneIndex(playerPed, data.prop.bone)
  
                  ESX.Game.SpawnObject(data.prop.object, {
                      x = coords.x,
                      y = coords.y,
                      z = coords.z + 2
                  }, function(object)
                      AttachEntityToEntity(object, playerPed, boneIndex, data.prop.offset.x, data.prop.offset.y, data.prop.offset.z, data.prop.rotation.x, data.prop.rotation.y, data.prop.rotation.z, true, true, false, true, 1, true)
                      prop = object
                  end)
              end
  
              TaskPlayAnim(PlayerPedId(), data.base.lib, data.base.anim, 8.0, -8.0, -1, data.mode, 0, false, false, false)
              loop = {status = true, current = nil, finish = data.finish, delay = (GetGameTimer() + 100), last = 0}
  
              loop.finish.mode = data.mode
              if data.prop then
                  loop.dettach = data.prop.dettach
              else
                  loop.dettach = false
              end
  
              Citizen.Wait(data.base.length)
              while loop.status do
                  local rng
                  repeat
                      rng = math.random(0, #data.idle.anims)
                  until rng ~= loop.last
  
                  loop.delay = GetGameTimer() + 100
                  loop.last = rng
                  if rng == 0 then
                      TaskPlayAnim(PlayerPedId(), data.base.lib, data.base.anim, 8.0, -8.0, -1, data.mode, 0, false, false, false)
                      loop.current = data.base
                      Citizen.Wait(data.base.length)
                  else
                      TaskPlayAnim(PlayerPedId(), data.idle.lib, data.idle.anims[rng][1], 8.0, -8.0, -1, data.mode, 0, false, false, false)
                      loop.current = {lib = data.idle.lib, anim = data.idle.anims[rng][1]}
                      Citizen.Wait(data.idle.anims[rng][2])
                  end
              end
          end)
      end
  end
  
  function finishLoop(cb)
      loop.status = false
      CreateThread(function()
          TaskPlayAnim(PlayerPedId(), loop.finish.lib, loop.finish.anim, 8.0, 8.0, -1, loop.finish.mode, 0, false, false, false)
  
          Citizen.Wait(loop.finish.length)
          if loop.status == false and prop then
              if loop.dettach then
                  DetachEntity(prop, true, false)
              else
                  DeleteObject(prop)
              end
  
              prop = nil
          end
  
          loop.status = nil
          if cb then
              cb()
          end
      end)
  end
  
  
  function OpenAnimationsMenu()
  
      local elements = {}
      if not binding then
          if binds then
              table.insert(elements, {label = "Ulubione (SHIFT+1-9)", value = "binds"})
          end
  
          table.insert(elements, {label = "- PRZERWIJ -", value = "cancel"})
      end
      
      for _, group in ipairs(Config.Animations) do
          if not group.resource or GetResourceState(group.resource) == 'started' then
              table.insert(elements, {label = group.label, value = group.name})
          end
      end
  local fineeasz = true
      ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animations', {
          title    = 'Animacje',
          align    = 'bottom-right',
          elements = elements
      }, function(data, menu)
          if data.current.value == 'binds' then
              menu.close()
              OpenBindsSubMenu()
          elseif data.current.value ~= 'cancel' then
              menu.close()
              OpenAnimationsSubMenu(data.current.value)
          elseif fineeasz then
              clearTask()
          end
      end, function(data, menu)
          menu.close()
      end)
  end
  
  function OpenBindsSubMenu()
      local elements = {}
      for i = 1, 9 do
          local bind = binds[i]
          if bind then
              table.insert(elements, {label = i .. ' - ' .. bind.label, value = i, assigned = true})
          else
              table.insert(elements, {label = i .. ' - PRZYPISZ', value = i, assigned = false})
          end
      end
  
      window = ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animations_binds', {
          title    = 'Animacje - ulubione',
          align    = 'bottom-right',
          elements = elements
      }, function(data, menu)
          menu.close()
          window = nil
  
          local index = tonumber(data.current.value)
          if data.current.assigned then
              binds[index] = nil
              TriggerServerEvent('esx_animations:save', binds)
              OpenBindsSubMenu()
          else
              binding = tonumber(data.current.value)
              OpenAnimationsMenu()
          end
      end, function(data, menu)
          menu.close()
          window = nil
          OpenAnimationsMenu()
      end)
  end
  
  
  function OpenAnimationsSubMenu(menu)
      local title, elements = nil, {}
      for _, group in ipairs(Config.Animations) do
          if group.name == menu then
              for _, item in ipairs(group.items) do
                  table.insert(elements, {label = item.label .. (item.keyword and ' <span style="font-size: 11px; color: #fff000;">/e ' .. item.keyword .. '</span>' or ''), short = item.label, type = item.type, data = item.data})
              end
  
              title = group.label
              break
          end
      end
  
      ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animations_' .. menu, {
          title    = title,
          align    = 'bottom-right',
          elements = elements
      }, function(data, menu)
          if binding then
              menu.close()
  
              window = nil
              if not binds then
                  binds = {}
              end
  
              binds[binding] = {
                  label = '[' .. title .. '] ' .. data.current.short,
                  type = data.current.type,
                  data = data.current.data
              }
              TriggerServerEvent('esx_animations:save', binds)
  
              binding = nil
              OpenBindsSubMenu()
          else
              TriggerEvent('esx_animations:trigger', data.current)
          end
      end, function(data, menu)
          menu.close()
          OpenAnimationsMenu()
      end)
  end
  
  local GraczKuca = false
  CreateThread( function()
      while true do 
          Citizen.Wait(1)
          local ped = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
  
          if DoesEntityExist(ped) and not Citizen.InvokeNative(0x5F9532F3B5CC2551, ped) then 
              DisableControlAction(0, 36, true) -- CTRL
  
              if not IsPauseMenuActive() then 
                  if IsDisabledControlJustPressed(0, 36) and not IsPedInAnyVehicle(ped, false) then 
                      RequestAnimSet( "move_ped_crouched" )
  
                      while not HasAnimSetLoaded( "move_ped_crouched" ) do 
                          Citizen.Wait(100)
                      end 
  
                      if GraczKuca == true then 
                          ResetPedMovementClipset(ped, 0)
                          GraczKuca = false 
                      elseif GraczKuca == false then
                          SetPedMovementClipset(ped, "move_ped_crouched", 0.25)
                          GraczKuca = true 
                      end 
                  end
              end 
          end 
      end
  end)
  
  RegisterCommand("e",function(source, args)
      local player = PlayerPedId()
      if tostring(args[1]) == nil then
          return
      else
          if tostring(args[1]) ~= nil then
              local argh = tostring(args[1])
              for _, group in ipairs(Config.Animations) do
                  for _, anim in ipairs(group.items) do
                      if argh == anim.keyword then
                          if anim.type == 'ragdoll' then
                              if IsPedInAnyVehicle(PlayerPedId(), false) then
                                  ragdoll = true
                              end
                          elseif anim.type == 'attitude' then
                              if anim.data.car == true then
                                  if IsPedInAnyVehicle(PlayerPedId(), false) then
                                      startAttitude(anim.data.lib, anim.data.anim)
                                  end
                              else
                                  if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                      startAttitude(anim.data.lib, anim.data.anim)
                                  end
                              end
                          elseif anim.type == 'scenario' then
                              if anim.data.car == true then
                                  if IsPedInAnyVehicle(PlayerPedId(), false) then
                                      startScenario(anim.data.anim, anim.data.offset)
                                  end
                              else
                                  if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                      startScenario(anim.data.anim, anim.data.offset)
                                  end
                              end
                          elseif anim.type == 'anim' then
                              if anim.data.car == true then
                                  if IsPedInAnyVehicle(PlayerPedId(), false) then
                                      startAnim(anim.data.lib, anim.data.anim, anim.data.mode, anim.data.prop)
                                  end
                              else
                                  if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                      startAnim(anim.data.lib, anim.data.anim, anim.data.mode, anim.data.prop)
                                  end
                              end
                          else
                              if not IsPedInAnyVehicle(PlayerPedId(), false) then
                                  startAnimLoop(anim.data)
                              end
                          end
                      end
                  end
              end
          end
      end
  end)
  
  -- Key Controls
  CreateThread(function()
      while true do
          Citizen.Wait(1)
  
          local ped = PlayerPedId()
          if ragdoll then
              SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
          end
  
          if loop.status and loop.current and loop.delay < GetGameTimer() and not IsEntityPlayingAnim(ped, loop.current.lib, loop.current.anim, 3) then
              loop.status = nil
              if prop and type(prop) ~= 'table' then
                  if loop.dettach then
                      DetachEntity(prop, true, false)
                  else
                      DeleteObject(prop)
                  end
  
                  prop = nil
              end
          end
  
          if type(prop) == 'table' and not IsEntityPlayingAnim(ped, prop.lib, prop.anim, 3) then
              DeleteObject(prop.obj)
              prop = nil
          end
          

          
          if IsControlJustPressed(0, 170) then
              OpenAnimationsMenu(PlayerPedId())
          elseif IsControlJustReleased(0, Keys['X']) and GetLastInputMethod(2) then		
              clearTask()
          end
  
      end
  end)
  
  RegisterNetEvent('animacje')
  AddEventHandler('animacje', function()
      OpenAnimationsMenu(PlayerPedId())
  end)
  
  function clearTask()
      if loop.status == true then
          finishLoop()
      elseif ragdoll then
          ragdoll = false
      else
          ClearPedTasks(PlayerPedId())
          if loop.status ~= nil then
              loop.status = nil
              if prop and type(prop) ~= 'table' then
                  if loop.dettach then
                      DetachEntity(prop, true, false)
                  else
                      DeleteObject(prop)
                  end
  
                  prop = nil
              end
          elseif type(prop) == 'table' then
              DeleteObject(prop.obj)
              prop = nil
          end
      end
  end
  
  local Oczekuje = false
  local Czas = 7
  local wysylajacy = nil
  
  RegisterNetEvent('SimplyRDM:powitajSynchroC')
  AddEventHandler('SimplyRDM:powitajSynchroC', function(target)
      Oczekuje = true
      wysylajacy = target
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(0)
          if Oczekuje then
              if IsControlJustReleased(0, 246) then
                  Oczekuje = false
                  Czas = 7
                  TriggerServerEvent('SimplyRDM:OdpalAnimacje', wysylajacy)
              end
          else
              Citizen.Wait(200)
          end
      end
  end)
  
  
  
  RegisterNetEvent('SimplyRDM:PrzywitajTarget')
  AddEventHandler('SimplyRDM:PrzywitajTarget', function(target)
  
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      local targetPed = Citizen.InvokeNative(0x43A66C31C68491C0, GetPlayerFromServerId(target))
  
      AttachEntityToEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), targetPed, 11816, 0.1, 1.15, 0.0, 0.0, 0.0, 180.0, false, false, false, false, 20, false)
      ESX.Streaming.RequestAnimDict("mp_ped_interaction", function()
          TaskPlayAnim(playerPed, "mp_ped_interaction", "handshake_guy_b", 8.0, -8.0, -1, 0, 0, false, false, false)
      end)
  
      Citizen.Wait(950)
      DetachEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), true, false)
      Oczekuje = false
      Czas = 7
      wysylajacy = nil
  end)
  
  RegisterNetEvent('SimplyRDM:PrzywitajSource')
  AddEventHandler('SimplyRDM:PrzywitajSource', function()
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
  
  
      ESX.Streaming.RequestAnimDict("mp_ped_interaction", function()
          TaskPlayAnim(playerPed, "mp_ped_interaction", "handshake_guy_a", 8.0, -8.0, -1, 0, 0, false, false, false)
      end)
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(1000)
          if Oczekuje then
              Czas = Czas - 1
          end
      end
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(250)
          if Czas < 1 then
              Oczekuje = false
              Czas = 7
              wysylajacy = nil
              ESX.ShowNotification('~r~Anulowano propozycję animacji')
          end
      end
  end)
  
  -- pocalowanie
  
  local Oczekuje2 = false
  local Czas2 = 7
  local wysylajacy2 = nil
  
  RegisterNetEvent('SimplyRDM:pocalujSynchroC')
  AddEventHandler('SimplyRDM:pocalujSynchroC', function(target)
      Oczekuje2 = true
      wysylajacy2 = target
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(0)
          if Oczekuje2 then 
              if IsControlJustReleased(0, 246) then
                  Oczekuje2 = false
                  Czas2 = 7
                  TriggerServerEvent('SimplyRDM:OdpalAnimacje2', wysylajacy2)
              end
          else
              Citizen.Wait(200)
          end
      end
  end)
  
  RegisterNetEvent('SimplyRDM:PocalujTarget')
  AddEventHandler('SimplyRDM:PocalujTarget', function(target)
  
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      local targetPed = Citizen.InvokeNative(0x43A66C31C68491C0, GetPlayerFromServerId(target))
  
      AttachEntityToEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), targetPed, 11816, 0.0, 1.2, 0.0, 0.0, 0.0, 180.0, false, false, false, false, 20, false)
      ESX.Streaming.RequestAnimDict("mp_ped_interaction", function()
          TaskPlayAnim(playerPed, "mp_ped_interaction", "kisses_guy_a", 8.0, -8.0, -1, 0, 0, false, false, false)
      end)
  
      Citizen.Wait(950)
      DetachEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), true, false)
      Oczekuje2 = false
      Czas2 = 7
      wysylajacy2 = nil
  end)
  
  RegisterNetEvent('SimplyRDM:PocalujSource')
  AddEventHandler('SimplyRDM:PocalujSource', function()
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
  
  
      ESX.Streaming.RequestAnimDict("mp_ped_interaction", function()
          TaskPlayAnim(playerPed, "mp_ped_interaction", "kisses_guy_b", 8.0, -8.0, -1, 0, 0, false, false, false)
      end)
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(1000)
          if Oczekuje2 then
              Czas2 = Czas2 - 1
          end
      end
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(250)
          if Czas2 < 1 then
              Oczekuje2 = false
              Czas2 = 7
              wysylajacy2 = nil
              ESX.ShowNotification('~r~Anulowano propozycję animacji')
          end
      end
  end)
  
  -- przytulas 
  
  local Oczekuje3 = false
  local Czas3 = 7
  local wysylajacy3 = nil
  
  RegisterNetEvent('SimplyRDM:przytulSynchroC')
  AddEventHandler('SimplyRDM:przytulSynchroC', function(target)
      Oczekuje3 = true
      wysylajacy3 = target
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(0)
          if Oczekuje3 then
              if IsControlJustReleased(0, 246) then
                  Oczekuje3 = false
                  Czas3 = 7
                  TriggerServerEvent('SimplyRDM:OdpalAnimacje3', wysylajacy3)
              end
          else
              Citizen.Wait(200)
          end
      end
  end)
  
  RegisterNetEvent('SimplyRDM:PrzytulTarget')
  AddEventHandler('SimplyRDM:PrzytulTarget', function(target)
  
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      local targetPed = Citizen.InvokeNative(0x43A66C31C68491C0, GetPlayerFromServerId(target))
  
      AttachEntityToEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), targetPed, 11816, -0.05, 0.9, 0.0, 0.0, 0.0, 180.0, false, false, false, false, 20, false)
      ESX.Streaming.RequestAnimDict("mp_ped_interaction", function()
          TaskPlayAnim(playerPed, "mp_ped_interaction", "hugs_guy_a", 8.0, -8.0, -1, 0, 0, false, false, false)
      end)
  
      Citizen.Wait(950)
      DetachEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), true, false)
      Oczekuje3 = false
      Czas3 = 7
      wysylajacy3 = nil
  end)
  
  RegisterNetEvent('SimplyRDM:PrzytulSource')
  AddEventHandler('SimplyRDM:PrzytulSource', function()
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
  
  
      ESX.Streaming.RequestAnimDict("mp_ped_interaction", function()
          TaskPlayAnim(playerPed, "mp_ped_interaction", "hugs_guy_a", 8.0, -8.0, -1, 0, 0, false, false, false)
      end)
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(1000)
          if Oczekuje3 then
              Czas3 = Czas3 - 1
          end
      end
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(250)
          if Czas3 < 1 then
              Oczekuje3 = false
              Czas3 = 7
              wysylajacy3 = nil
              ESX.ShowNotification('~r~Anulowano propozycję animacji')
          end
      end
  end)
  
  
  --Noszenie
  
  local Oczekuje4 = false
  local Czas4 = 7
  local wysylajacy4 = nil
  
  RegisterNetEvent('SimplyRDM:przytulSynchroC2')
  AddEventHandler('SimplyRDM:przytulSynchroC2', function(target)
      Oczekuje4 = true
      wysylajacy4 = target
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(1000)
          if Oczekuje4 then
              Czas4 = Czas4 - 1
          end
      end
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(250)
          if Czas4 < 1 then
              Oczekuje4 = false
              Czas4 = 7
              wysylajacy4 = nil
              ESX.ShowNotification('~r~Anulowano propozycję animacji')
          end
      end
  end)
  
  CreateThread(function()
      while true do
          Citizen.Wait(0)
          if Oczekuje4 then
              if IsControlJustReleased(0, 246) then
                  Oczekuje4 = false
                  Czas4 = 7
                  TriggerServerEvent('SimplyRDM:OdpalAnimacje5', wysylajacy4)
              end
          else
              Citizen.Wait(200)
          end
      end
  end)
  
  local carryingBackInProgress = false
  local niesie = false
  
  function getCarry()
      return carryingBackInProgress
  end
  
  RegisterNetEvent('SimplyRDM:startMenu2')
  AddEventHandler('SimplyRDM:startMenu2', function()  
    local Gracz = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      if not IsPedInAnyVehicle(Gracz, false) then
          local closestPlayer, distance = ESX.Game.GetClosestPlayer()
          if closestPlayer ~= nil and distance <= 4 then
              TriggerEvent('SimplyRDM:startMenu', GetPlayerServerId(closestPlayer))
          end
      end
  end)
  
  RegisterNetEvent('SimplyRDM:startMenu')
  AddEventHandler('SimplyRDM:startMenu', function(obiekt)
      if not carryingBackInProgress then
          niesie = true
          carryingBackInProgress = true
          local player = PlayerPedId()	
          lib = 'missfinale_c2mcs_1'
          anim1 = 'fin_c2_mcs_1_camman'
          lib2 = 'nm'
          anim2 = 'firemans_carry'
          distans = 0.15
          distans2 = 0.27
          height = 0.63
          spin = 0.0		
          length = 100000
          controlFlagMe = 49
          controlFlagTarget = 33
          animFlagTarget = 1
          local closestPlayer = Citizen.InvokeNative(0x43A66C31C68491C0, obiekt)
          target = obiekt
          if closestPlayer ~= nil then
              TriggerServerEvent('SimplyRDM:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
          end
      else
          carryingBackInProgress = false
          ClearPedSecondaryTask(Citizen.InvokeNative(0x43A66C31C68491C0, -1))
          DetachEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), true, false)
          local closestPlayer = obiekt
          target = GetPlayerServerId(closestPlayer)
          TriggerServerEvent("SimplyRDM:stop",target)
      end
  end)
  
  RegisterNetEvent('SimplyRDM:syncTarget')
  AddEventHandler('SimplyRDM:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      local targetPed = Citizen.InvokeNative(0x43A66C31C68491C0, GetPlayerFromServerId(target))
      carryingBackInProgress = true
      RequestAnimDict(animationLib)
  
      while not HasAnimDictLoaded(animationLib) do
          Citizen.Wait(10)
      end
      if spin == nil then spin = 180.0 end
      AttachEntityToEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
      if controlFlag == nil then controlFlag = 0 end
      TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
  end)
  
  RegisterNetEvent('SimplyRDM:syncMe')
  AddEventHandler('SimplyRDM:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
      local playerPed = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      RequestAnimDict(animationLib)
  
      while not HasAnimDictLoaded(animationLib) do
          Citizen.Wait(10)
      end
      Wait(500)
      if controlFlag == nil then controlFlag = 0 end
      TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
  
      Citizen.Wait(length)
  end)
  
  RegisterNetEvent('SimplyRDM:cl_stop')
  AddEventHandler('SimplyRDM:cl_stop', function()
      carryingBackInProgress = false
      niesie = false
      ClearPedSecondaryTask(Citizen.InvokeNative(0x43A66C31C68491C0, -1))
      DetachEntity(Citizen.InvokeNative(0x43A66C31C68491C0, -1), true, false)
  end)
  
  function GetPlayers()
    local players = {}
    for _, player in ipairs(GetActivePlayers()) do
      table.insert(players, player)
    end
  
    return players
  end
  
  function GetClosestPlayer(radius)
      local players = GetPlayers()
      local closestDistance = -1
      local closestPlayer = -1
      local ply = Citizen.InvokeNative(0x43A66C31C68491C0, -1)
      local plyCoords = GetEntityCoords(ply, 0)
  
      for index,value in ipairs(players) do
          local target = Citizen.InvokeNative(0x43A66C31C68491C0, value)
          if(target ~= ply) then
              local targetCoords = GetEntityCoords(Citizen.InvokeNative(0x43A66C31C68491C0, value), 0)
              local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
              if(closestDistance == -1 or closestDistance > distance) then
                  closestPlayer = value
                  closestDistance = distance
              end
          end
      end
      if closestDistance <= radius then
          return closestPlayer
      else
          return nil
      end
  end
  
  local lockpick = false
  
  RegisterNetEvent('animki:lockpick')
  AddEventHandler('animki:lockpick', function(rodzaj)
      if rodzaj == true then
          lockpick = true
      elseif rodzaj == false then
          lockpick = false
      end
  end)
  
  
  
  