Config = {}
Config.Animations = {
	{
		name  = 'rannys',
		label = 'Ranny / Medyczne',
		items = {
			{label = "Upadek", keyword = "upadek", type = "ragdoll", data = {}},
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
			{label = "Machnięcie ręką", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
			{label = "Powitanie", keyword = "powitanie", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
			{label = "Graba", keyword = "graba", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
			{label = "Graba i klepanie po plecach", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
			{label = "Żółwik", keyword = "zolwik", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
			{label = "Salut", keyword = "salut", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute", mode = 49}},
			{label = "Środkowy palec", keyword = "fuck", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
			{label = "Środkowy palec v2", keyword = "fuck2", type = "anim", data = {lib = "mp_player_intfinger", anim = "mp_player_int_finger"}},
			{label = "Posłanie buziaczka", keyword = "buziak", type = "anim", data = {lib = "anim@mp_player_intselfieblow_kiss", anim = "exit", mode = 48}},
			{label = "Machanie ręką", keyword = "machanie", type = "anim", data = {lib = "random@hitch_lift", anim = "come_here_idle_c", mode = 49}}
		}
	},

	{
		name = 'interaction',
		label = 'Interakcja',
		items = {
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
			{label = "Drapanie się po głowie", type = "anim", keyword = "hm", data = {lib = "mp_cp_stolen_tut", anim = "b_think", mode = 48}},
			{label = "Jest Dobrze!", keyword = "jd", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@thumbs_up", anim = "thumbs_up"}},
			{label = "Przytulanie", keyword = "przytul", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
			{label = "Spokojnie", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
			{label = "Uspakajanie", type = "anim", data = {lib = "rcmnigel1a", anim = "idle_c_2"}},
			{label = "Zdziwienie", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
			{label = "A niech to licho!", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
			{label = "Super", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
			{label = "No i co z tego?", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
			{label = "Ja", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
			{label = "Klęczenie", keyword = "kleczenie", type = "anim", data = {lib = "amb@medic@standing@kneel@base", anim = "base", mode = 2}},
			{label = "Zestresowana", keyword = "zestresowana", type = "anim", data = {lib = "random@hitch_lift", anim = "f_distressed_loop"}},
			{label = "Odpychanie", keyword = "odpychanie", type = "anim", data = {lib = "reaction@shove", anim = "shove_var_a", mode = 48}},
			{label = "Awantura", keyword = "awantura", type = "anim", data = {lib = "misscarsteal4@actor", anim = "actor_berating_loop", mode = 49}},
			{label = "Kłótnia", keyword = "klotnia", type = "anim", data = {lib = "sdrm_mcs_2-0", anim = "csb_bride_dual-0", mode = 48}}
		}
	},

	{
		name  = 'leaning',
		label = 'Siadanie / Leżenie / Opieranie',
		items = {
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
			{label = "Opieranie się v4", keyword = "opieranie4", type = "anim", data = {lib = "anim@amb@business@bgen@bgen_no_work@", anim = "stand_phone_phoneputdown_sleeping_nowork", mode = 1}},
			{label = "Opieranie się na ramionach", keyword = "opieranie5", type = "anim", data = {lib = "missstrip_club_lean", anim = "player_lean_rail_loop", mode = 1}},
			{label = "Opieranie się na rękach", keyword = "opieranie6", type = "anim", data = {lib = "mp_safehousebeer@", anim = "base_drink", mode = 1}},
			{label = "Opieranie się do tyłu", keyword = "opieranie7", type = "anim", data = {lib = "anim@amb@nightclub@gt_idle@", anim = "base", mode = 1}},
			{label = "Opieranie na ramieniu", keyword = "opieranie8", type = "anim", data = {lib = "rcmjosh2", anim = "josh_2_intp1_base", mode = 17}},
			{label = "Opieranie na ramieniu v2", keyword = "opieranie9", type = "anim", data = {lib = "timetable@mime@01_gc", anim = "idle_a", mode = 1}},
			{label = "Leżenie na plecach", keyword = "lezenie", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
			{label = "Leżenie na plecach v2", keyword = "lezenie2", type = "anim", data = {lib = "timetable@tracy@sleep@", anim = "idle_c", mode = 1}},
			{label = "Leżenie na brzuchu", keyword = "lezenie3", type = "anim", data = {lib = "amb@world_human_sunbathe@male@front@base", anim = "base", mode = 1}},
			{label = "Leżenie na brzuchu v2", keyword = "lezenie4", type = "anim", data = {lib = "amb@world_human_sunbathe@female@front@base", anim = "base", mode = 1}},
			{label = "Leżenie na boku", keyword = "lezenie5", type = "anim", data = {lib = "amb@world_human_bum_slumped@male@laying_on_left_side@base", anim = "base", mode = 1}},
			{label = "Leżenie na kanapie", keyword = "lezenie6", type = "anim", data = {lib = "timetable@ron@ig_3_couch", anim = "laying", mode = 1}},
			{label = "Kładzenie się do łóżka", keyword = "kladzenie", type = "anim", data = {lib = "mp_bedmid", anim = "f_getin_l_bighouse"}},
			{label = "Siedzenie z telefonem", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
			{label = "Siedzenie na ziemii na luzaku", keyword = "siedzenie", type = "anim", data = {lib = "anim@heists@fleeca_bank@ig_7_jetski_owner", anim = "owner_idle", mode = 1}},
			{label = "Siedzenie na ziemii na luzaku v2", keyword = "siedzenie2", type = "anim", data = {lib = "timetable@jimmy@mics3_ig_15@", anim = "idle_a_jimmy", mode = 1}},
			{label = "Siedzenie na ziemii w zwarciu", keyword = "siedzenie3", type = "anim", data = {lib = "anim@amb@business@bgen@bgen_no_work@", anim = "sit_phone_phoneputdown_fallasleep_nowork", mode = 1}},
			{label = "Siedzenie na ziemii przygnębiony", keyword = "siedzenie4", type = "anim", data = {lib = "anim@amb@business@bgen@bgen_no_work@", anim = "sit_phone_phoneputdown_sleeping-noworkfemale", mode = 1}},
			{label = "Siedzenie po turecku z rękami w górze", keyword = "siedzenie5", type = "anim", data = {lib = "mp_fm_intro_cut", anim = "base_loop", mode = 1}},
			{label = "Siedzenie pod ścianą", keyword = "siedzenie6", type = "anim", data = {lib = "amb@world_human_stupor@male@idle_a", anim = "idle_b", mode = 1}},
			{label = "Siedzenie na ziemi załamany", keyword = "siedzenie7", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@lo_alone@", anim = "lowalone_dlg_longrant_laz", mode = 1}}
		}
	},

	{
		name  = 'situational',
		label = 'Sytuacyjne',
		items = {
			{label = "Selfie", type = "scenario", data = {anim = "WORLD_HUMAN_TOURIST_MOBILE"}},
			{label = "Ręka na kaburze", keyword = "kabura", type = "anim", data = {lib = "move_m@intimidation@cop@unarmed", anim = "idle", mode = 49}},
			{label = "Ręce za głowę", keyword = "rece", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c", mode = 49}},
			{label = "Strach", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
			{label = "Zakładnik", keyword = "zakladnik", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
			{label = "Zakładnik z podniesionymi rękami", keyword = "zakladnik2", type = "anim", data = {lib = "random@getawaydriver", anim = "idle_a", mode = 1}},
			{label = "Chowanie się", keyword = "chowanie", type = "anim", data = {lib = "mp_am_hold_up", anim = "cower_loop"}},
			{label = "Rozpacz", keyword = "rozpacz", type = "anim", data = {lib = "mp_bank_heist_1", anim = "f_cower_01"}},
			{label = "Poddanie się na glebę", keyword = "poddanie", type = "anim", data = {lib = "mp_bank_heist_1", anim = "prone_l_front_intro", mode = 2}},
			{label = "Rozglądanie się", keyword = "rozgladanie", type = "scenario", data = {anim = "CODE_HUMAN_CROSS_ROAD_WAIT"}},
			{label = "Rozglądanie się v2", keyword = "rozgladanie2", type = "anim", data = {lib = "mp_fm_intro_cut", anim = "idle_a"}},
			{label = "Wkurzenie się", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@freakout", anim = "freakout"}},
			{label = "Wymiotowanie w aucie", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
			{label = "Kibicowanie", keyword = "kibicowanie", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "angry_clap_b_player_b", mode = 1}},
			{label = "Kibicowanie v2", keyword = "kibicowanie2", type = "anim", data = {lib = "anim@arena@celeb@flat@solo@no_props@", anim = "angry_clap_a_player_a", mode = 1}},
			{label = "Ręce do tyłu", keyword = "rece2", type = "anim", data = {lib = "anim@miss@low@fin@vagos@", anim = "idle_ped06", mode = 49}},
			{label = "Drapanie się po tyłku", keyword = "drapanie", type = "anim", data = {lib = "anim@heists@team_respawn@respawn_01", anim = "heist_spawn_01_ped_d", mode = 49}},
			{label = "Otrzepanie się", keyword = "otrzepanie", type = "anim", data = {lib = "move_m@_idles@shake_off", anim = "shakeoff_1"}},
			{label = "Otrzepanie się v2", keyword = "otrzepanie2", type = "anim", data = {lib = "move_m@_idles@wet", anim = "fidget_wet"}},
			{label = "Sprawdzanie wody pod prysznicem", keyword = "woda", type = "anim", data = {lib = "mp_safehouseshower@female@", anim = "shower_enter_into_idle"}},
			{label = "Mycie się", keyword = "mycie", type = "anim", data = {lib = "mp_safehouseshower@female@", anim = "shower_idle_a"}},
			{label = "Mycie się v2", keyword = "mycie2", type = "anim", data = {lib = "mp_safehouseshower@male@", anim = "male_shower_idle_a"}},
			{label = "Oczekiwanie", keyword = "oczekiwanie", type = "anim", data = {lib = "rcmjosh1leadinout", anim = "idle_josh"}},
			{label = "Czytanie", keyword = "czytanie", type = "anim", data = {lib = "misscarsteal4@vendor", anim = "base_customer1", mode = 1}},
			{label = "Kucnięcie z podparciem", keyword = "zpodparciem", type = "anim", data = {lib = "misscarstealfinalecar_5_ig_3", anim = "crouchloop", mode = 1}}
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
			{label = "Disco", keyword = "disco", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@uncle_disco", anim = "uncle_disco", mode = 1}},
			{label = "Impra", keyword = "impra", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_li_to_hi_09_v2_female^3", mode = 1}},
			{label = "Wczuta", keyword = "wczuta", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_hi_to_mi_09_v1_female^6", mode = 1}},
			{label = "Zabawa", keyword = "zabawa", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_hi_to_mi_09_v1_female^1", mode = 1}},
			{label = "Kręć tym mała", keyword = "krectym", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_hi_17_smackthat_laz", mode = 1}},
			{label = "Densjer", keyword = "densjer", type = "anim", data = {lib = "anim@amb@nightclub@dancers@crowddance_groups_transitions@", anim = "trans_dance_crowd_hi_to_li_09_v1_female^3", mode = 1}},
			{label = "Robot", keyword = "robot", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_mi_15_robot_laz", mode = 1}},
			{label = "Wixa", keyword = "wixa", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_2@monologue_2a", anim = "mnt_dnc_angel", mode = 1}},
			{label = "Stepowanie", keyword = "stepowanie", type = "anim", data = {lib = "special_ped@mountain_dancer@monologue_3@monologue_3a", anim = "mnt_dnc_buttwag", mode = 1}},
			{label = "Boogie", keyword = "boogie", type = "anim", data = {lib = "rcmnigel1bnmt_1b", anim = "dance_loop_tyler", mode = 1}},
			{label = "Striptizerka", type = "anim", data = {lib = "mp_am_stripper", anim = "lap_dance_girl", mode = 1}},
			{label = "Macarena", keyword = "macarena", type = "anim", data = {lib = "misschinese2_crystalmazemcs1_cs", anim = "dance_loop_tao", mode = 1}},
			{label = "Taniec kurczaka", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@chicken_taunt", anim = "chicken_taunt", mode = 1}},
			{label = "Taniec łosia", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@thumb_on_ears", anim = "thumb_on_ears", mode = 1}},
			{label = "Taniec spidermana", keyword = "spiderman", type = "anim", data = {lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = "danceidle_hi_17_spiderman_laz", mode = 1}},
			{label = "Wywijanie ręką", keyword = "wywijanie", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@find_the_fish", anim = "find_the_fish", mode = 1}}
		}
	},

	{
		name  = 'movements',
		label = 'Style chodzenia',
		items = {
			{label = "Codzienny", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
			{label = "Jogging", type = "anim", data = {lib = "move_f@jogger", anim = "idle", mode = 49}},
			{label = "Normalne (M)", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}},
			{label = "Normalne (K)", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},
			{label = "Depresja (M)", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
			{label = "Depresja (K)", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
			{label = "Biznesman", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
			{label = "Zdeterminowany", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
			{label = "Grubas", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
			{label = "Hipster", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
			{label = "Kulawy", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},
			{label = "Wkurwiony", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
			{label = "Włóczęga", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
			{label = "Smutny", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
			{label = "Muskularny", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
			{label = "Mroczny", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
			{label = "Zmęczony", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
			{label = "Szybki krok", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
			{label = "Dumny", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},
			{label = "Wyścig", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},
			{label = "Ciepły", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
			{label = "Ciepły v2", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
			{label = "Arogancki", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
			{label = "Gangster", type = "attitude", data = {lib = "move_m@gangster@generic", anim = "move_m@gangster@generic"}},
			{label = "Gangster 2", type = "attitude", data = {lib = "move_m@gangster@ng", anim = "move_m@gangster@ng"}},
			{label = "Swagger", type = "attitude", data = {lib = "move_m@swagger", anim = "move_m@swagger"}},
			{label = "Pewny siebie", type = "attitude", data = {lib = "move_m@fire", anim = "move_m@fire"}}
		}
	},

	{
		name = 'speaking',
		label = 'Style mówienia',
		resource = 'esx_voice',
		items = {
			{label = "Normalny", type = "facial", data = 1},
			{label = "Wkurwiony", type = "facial", data = 2},
			{label = "Zaangażowany", type = "facial", data = 3},
			{label = "Skupiony", type = "facial", data = 4},
			{label = "Zły", type = "facial", data = 5},
			{label = "Zacieszony", type = "facial", data = 6},
			{label = "Szczęśliwy", type = "facial", data = 7},
			{label = "Zdziwiony", type = "facial", data = 8},
			{label = "Zamknięte oczy", type = "facial", data = 9},
			{label = "Odczuwając ból", type = "facial", data = 10}
		}
	},

	{
		name = 'objects',
		label = 'Operowanie obiektami',
		items = {
			{label = "Skrzynia z narzędziami", type = "anim", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_tool_box_04", offset = {x = 0.43, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Skrzynka z wiertarką", type = "anim", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_tool_box_02", offset = {x = 0.53, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Paczka", type = "anim", data = {lib = "anim@heists@box_carry@", anim = "idle", mode = 49, prop = {bone = 28422, object = "v_serv_abox_04", offset = {x = 0.0, y = -0.08, z = -0.17}, rotation = {x = 0.0, y = 0.0, z = 90.0}}}},
			{label = "Aktówka", type = "anim", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_ld_case_01", offset = {x = 0.13, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Walizka", type = "anim", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "hei_p_attache_case_shut", offset = {x = 0.13, y = 0.0, z = 0.0}, rotation = {x = 0.0, y = 0.0, z = -90.0}}}},
			{label = "Walizka podróżna", type = "anim", data = {lib = "rcmepsilonism8", anim = "bag_handler_idle_a", mode = 49, prop = {bone = 57005, object = "prop_ld_suitcase_01", offset = {x = 0.36, y = 0.0, z = -0.02}, rotation = {x = -90.0, y = 0.0, z = 90.0}}}},
			{label = "Walizka na kółkach", type = "anim", data = {lib = "anim@heists@narcotics@trash", anim = "walk", mode = 49, prop = {bone = 57005, object = "prop_suitcase_03", offset = {x = 0.36, y = -0.45, z = -0.05}, rotation = {x = -50.0, y = -60.0, z = 15.0}}}}
		}
	},

	{
		name  = 'porn',
		label = '18+',
		items = {
			{label = "Masturbacja", keyword = "masturbacja", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01", mode = 49}},
			{label = "Masturbacja z wytryskiem", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@wank", anim = "wank"}},
			{label = "Pomaganie pani w aucie", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},
			{label = "Robienie loda w aucie", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},
			{label = "Seks w aucie", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},
			{label = "Siadanie w aucie", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},
			{label = "Drapanie się po jajach", keyword = "drapanie2", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
			{label = "Kobiecy urok", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
			{label = "Posuwanie", keyword = "posuwanie", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
			{label = "Wypięcie tyłka", keyword = "wypnij", type = "anim", data = {lib = "switch@trevor@mocks_lapdance", anim = "001443_01_trvs_28_exit_trv"}},
			{label = "Czekająca pani", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
			{label = "Wystawianie tyłka i piersi", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
			{label = "Striptiz taniec v1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
			{label = "Zaproszenie faceta", keyword = "zaproszenie", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_invite", anim = "ld_girl_a_invite"}},
			{label = "Striptiz taniec v2", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
			{label = "Striptiz taniec v3", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
			{label = "Striptiz taniec v4", type = "anim", data = {lib = "mini@strip_club@private_dance@part1", anim = "priv_dance_p1"}}
		}
	}
}