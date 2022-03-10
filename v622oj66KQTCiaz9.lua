local ui = {
	info = {
		text = Menu.Text('Info', 'Info Box', 'Report errors in DM on any social.'),
		text1 = Menu.Text('Info', 'Info Box', 'Available Socials (to contact): Telegram, Discord, VKontakte'),
		button = Menu.Button('Info', 'Info Box', 'To k3ls\'s site', 'https://k3ls.tk/', function() Panorama.Open().SteamOverlayAPI.OpenExternalBrowserURL('https://k3ls.tk') end),
		spacing = Menu.Text('Info', 'Info Box', ''),
		changelog = Menu.Switch('Info', 'Info Box', 'Show Changelog', true, 'Show latest changelog.'),
		changelog1 = Menu.Text('Info', 'Info Box', 'Added tooltip for \'Show Changelog\'.')
	},

	killsay = {
		master = Menu.Switch('KillSay', 'Main', 'Master Switch', false),
		warning = Menu.Text('KillSay', 'Main', 'Default KillSay In Chat'),
		version = Menu.Combo('KillSay', 'Main', 'Version', {'Regular', 'Exotic', 'Kimetsu no Yaiba', 'Custom'}, 1),
		language = Menu.Combo('KillSay', 'Main', 'Language', {'English', 'Russian', 'Japanese'}, 0),
		mode = Menu.Combo('KillSay', 'Main', 'Regular Mode', {'Toxic', 'CancerStrike', 'Questions', 'EzFragz'}, 0),
		language2 = Menu.Combo('KillSay', 'Main', 'Toxic Language', {'English', 'English Fancy', 'Russian', 'German', 'Polish', 'Japanese', 'Chinese', 'Romanian', 'Hungarian', 'Czech'}, 0),
		mode2 = Menu.Combo('KillSay', 'Main', 'Exotic Mode', {'Harry Potter', 'Hentai', 'Lewd', 'ChatBreak', 'Facts', '1000-7', 'CS Advice'}, 1),
		language3 = Menu.Combo('KillSay', 'Main', 'Facts Language', {'English', 'Russian'}, 0),
		mode3 = Menu.Combo('KillSay', 'Main', 'Breathing', {'Sun (Kagura)', 'Water', 'Moon', 'Flame', 'Thunder', 'Stone', 'Flower', 'Serpent', 'Insect', 'Love', 'Sound', 'Beast',
		'Mist', 'Wind'}, 0),
		checks = Menu.MultiCombo('KillSay', 'Main', 'Additional Phrases', {'Knife', 'Taser', 'HeadShot', 'Burn', 'Blown'}, 0, 'Print unique phrases for enabled checks'),
		custom = Menu.TextBox('KillSay', 'Custom', 'Custom KillSay', 256, '1', 'Maximum characters: 256'),
		knife_msg = Menu.TextBox('KillSay', 'Custom', 'Knife Message', 256, '1, knifed', 'Maximum characters: 256'),
		taser_msg = Menu.TextBox('KillSay', 'Custom', 'Taser Message', 256, '1, tased', 'Maximum characters: 256'),
		hs_msg = Menu.TextBox('KillSay', 'Custom', 'HeadShot Message', 256, '1, hs', 'Maximum characters: 256'),
		burn_msg = Menu.TextBox('KillSay', 'Custom', 'Burn Message', 256, '1, burned', 'Maximum characters: 256'),
		blown_msg = Menu.TextBox('KillSay', 'Custom', 'Blow Message', 256, '1, blowned', 'Maximum characters: 256'),
	},

	teamsay = {
		master = Menu.Switch('TeamSay', 'Main', 'Master Switch', false),
		warning = Menu.Text('TeamSay', 'Main', 'TeamSay Will Print Message When Any Of Your TeamMate\'s Has Been Killed'),
		check = Menu.Switch('TeamSay', 'Main', 'Self Kill Check', true, 'Do not print when teammate killed by you'),
		check2 = Menu.Combo('TeamSay', 'Main', 'Print to', {'Global Chat', 'Team Chat'}, 1),
		version = Menu.Combo('TeamSay', 'Main', 'Version', {'Regular', 'Exotic', 'Kimetsu no Yaiba', 'Custom'}, 3),
		language = Menu.Combo('TeamSay', 'Main', 'Language', {'English', 'Russian', 'Japanese'}, 0),
		mode = Menu.Combo('TeamSay', 'Main', 'Regular Mode', {'Toxic', 'CancerStrike', 'Questions', 'EzFragz'}, 0),
		language2 = Menu.Combo('TeamSay', 'Main', 'Toxic Language', {'English', 'English Fancy', 'Russian', 'German', 'Polish', 'Japanese', 'Chinese', 'Romanian', 'Hungarian', 'Czech'}, 0),
		mode2 = Menu.Combo('TeamSay', 'Main', 'Exotic Mode', {'Harry Potter', 'Hentai', 'Lewd', 'ChatBreak', 'Facts', '1000-7', 'CS Advice'}, 1),
		language3 = Menu.Combo('TeamSay', 'Main', 'Facts Language', {'English', 'Russian'}, 0),
		mode3 = Menu.Combo('TeamSay', 'Main', 'Breathing', {'Sun (Kagura)', 'Water', 'Moon', 'Flame', 'Thunder', 'Stone', 'Flower', 'Serpent', 'Insect', 'Love', 'Sound', 'Beast',
		'Mist', 'Wind'}, 0),
		custom = Menu.TextBox('TeamSay', 'Custom', 'Custom KillSay', 256, '1', 'Maximum characters: 256'),
	},

	shared = {
		master = Menu.Switch('Shared KillSay', 'Main', 'Master Switch', false),
		warning = Menu.Text('Shared KillSay', 'Main', 'Shared KillSay Will Print Message When Any Of Your TeamMate\'s Kill\'s Someone'),
		check = Menu.Switch('Shared KillSay', 'Main', '\'IsAlive Check\'', true, 'Do not say when not alive'),
		version = Menu.Combo('Shared KillSay', 'Main', 'Version', {'Regular', 'Exotic', 'Kimetsu no Yaiba', 'Custom'}, 3),
		language = Menu.Combo('Shared KillSay', 'Main', 'Language', {'English', 'Russian', 'Japanese'}, 0),
		mode = Menu.Combo('Shared KillSay', 'Main', 'Regular Mode', {'Toxic', 'CancerStrike', 'Questions', 'EzFragz'}, 0),
		language2 = Menu.Combo('Shared KillSay', 'Main', 'Toxic Language', {'English', 'English Fancy', 'Russian', 'German', 'Polish', 'Japanese', 'Chinese', 'Romanian', 'Hungarian', 'Czech'}, 0),
		mode2 = Menu.Combo('Shared KillSay', 'Main', 'Exotic Mode', {'Harry Potter', 'Hentai', 'Lewd', 'ChatBreak', 'Facts', '1000-7', 'CS Advice'}, 1),
		language3 = Menu.Combo('Shared KillSay', 'Main', 'Facts Language', {'English', 'Russian'}, 0),
		mode3 = Menu.Combo('Shared KillSay', 'Main', 'Breathing', {'Sun (Kagura)', 'Water', 'Moon', 'Flame', 'Thunder', 'Stone', 'Flower', 'Serpent', 'Insect', 'Love', 'Sound', 'Beast',
		'Mist', 'Wind'}, 0),
		custom = Menu.TextBox('Shared KillSay', 'Custom', 'Custom KillSay', 256, '1', 'Maximum characters: 256'),
	},
	
	deathsay = {
		master = Menu.Switch('DeathSay', 'Main', 'Master Switch', false),
		warning = Menu.Text('DeathSay', 'Main', 'DeathSay Will Print Message When You Die'),
		ignore = Menu.Switch('DeathSay', 'Main', 'Ignore Team', true, 'Ignore Kill By TeamMate'),
		mode = Menu.Combo('DeathSay', 'Main', 'Mode', {'English', 'Russian', 'Custom'}, 0),
		custom = Menu.TextBox('DeathSay', 'Custom', 'Custom DeathSay', 256, 'Fuck this shit, im out!', 'Maximum characters: 256')
	},
	
	killvoice = {
		master = Menu.Switch('KillVoice', 'Main', 'Master Switch', false),
		listen = Menu.Switch('KillVoice', 'Main', 'Listen YourSelf', true, 'voice_loopback'),
		fix = Menu.Switch('KillVoice', 'Main', 'Fix Killvoice w\\ DT', true, 'Allow charge DT only when not playing killvoice'),
		callback = Menu.Combo('KillVoice', 'Main', 'Fix DT CallBack', {'Draw', 'Prediction', 'Createmove'}, 0, 'Change it if you got conflicts w\\ other scripts'),
		lenght = Menu.SliderFloat('KillVoice', 'Main', 'Lenght', 2.0, .1, 10, 'Lenght in seconds of .wav file'),
	},
}

local visibility = function()
	local changelog = ui.info.changelog:Get()
	
	ui.info.spacing:SetVisible(changelog)
	ui.info.changelog1:SetVisible(changelog)
	
	local master = ui.killsay.master:Get()
	local regular = ui.killsay.version:Get() == 0
	local custom = ui.killsay.version:Get() == 3
	local exotic = ui.killsay.version:Get() == 1
	local ds = ui.killsay.version:Get() == 2
	local toxic = ui.killsay.mode:Get() == 0
	local facts = ui.killsay.mode2:Get() == 4

	local knife = ui.killsay.checks:GetBool(1)
	local taser = ui.killsay.checks:GetBool(2)
	local hs = ui.killsay.checks:GetBool(3)
	local burn = ui.killsay.checks:GetBool(4)
	local blown = ui.killsay.checks:GetBool(5)

	ui.killsay.warning:SetVisible(master)
	ui.killsay.version:SetVisible(master)
	ui.killsay.custom:SetVisible(master and custom)
	ui.killsay.checks:SetVisible(master and regular and toxic and (ui.killsay.language2:Get() == 0 or ui.killsay.language2:Get() == 1 or ui.killsay.language2:Get() == 2))
	ui.killsay.language2:SetVisible(master and regular and toxic)
	ui.killsay.language3:SetVisible(master and exotic and facts)
	ui.killsay.knife_msg:SetVisible(master and custom and knife)
	ui.killsay.taser_msg:SetVisible(master and custom and taser)
	ui.killsay.hs_msg:SetVisible(master and custom and hs)
	ui.killsay.burn_msg:SetVisible(master and custom and burn)
	ui.killsay.blown_msg:SetVisible(master and custom and blown)
	ui.killsay.mode:SetVisible(master and regular)
	ui.killsay.mode2:SetVisible(master and exotic)
	ui.killsay.mode3:SetVisible(master and ds)
	ui.killsay.language:SetVisible(master and ds)

	local team_master = ui.teamsay.master:Get()
	local team_regular = ui.teamsay.version:Get() == 0
	local team_custom = ui.teamsay.version:Get() == 3
	local team_exotic = ui.teamsay.version:Get() == 1
	local team_ds = ui.teamsay.version:Get() == 2
	local team_toxic = ui.teamsay.mode:Get() == 0
	local team_facts = ui.teamsay.mode2:Get() == 4

	ui.teamsay.warning:SetVisible(team_master)
	ui.teamsay.version:SetVisible(team_master)
	ui.teamsay.check:SetVisible(team_master)
	ui.teamsay.check2:SetVisible(team_master)
	ui.teamsay.language2:SetVisible(team_master and team_regular and team_toxic)
	ui.teamsay.language3:SetVisible(team_master and team_exotic and team_facts)
	ui.teamsay.custom:SetVisible(team_master and team_custom)
	ui.teamsay.mode:SetVisible(team_master and team_regular)
	ui.teamsay.mode2:SetVisible(team_master and team_exotic)
	ui.teamsay.mode3:SetVisible(team_master and team_ds)
	ui.teamsay.language:SetVisible(team_master and team_ds)

	local shared_master = ui.shared.master:Get()
	local shared_regular = ui.shared.version:Get() == 0
	local shared_custom = ui.shared.version:Get() == 3
	local shared_exotic = ui.shared.version:Get() == 1
	local shared_ds = ui.shared.version:Get() == 2
	local shared_toxic = ui.shared.mode:Get() == 0
	local shared_facts = ui.shared.mode2:Get() == 4

	ui.shared.warning:SetVisible(shared_master)
	ui.shared.version:SetVisible(shared_master)
	ui.shared.check:SetVisible(shared_master)
	ui.shared.custom:SetVisible(shared_master and shared_custom)
	ui.shared.mode:SetVisible(shared_master and shared_regular)
	ui.shared.mode2:SetVisible(shared_master and shared_exotic)
	ui.shared.mode3:SetVisible(shared_master and shared_ds)
	ui.shared.language:SetVisible(shared_master and shared_ds)
	ui.shared.language2:SetVisible(shared_master and shared_regular and shared_toxic)
	ui.shared.language3:SetVisible(shared_master and shared_exotic and shared_facts)
	
	local death_master = ui.deathsay.master:Get()
	local death_mode_custom = ui.deathsay.mode:Get() == 2
	
	ui.deathsay.warning:SetVisible(death_master)
	ui.deathsay.mode:SetVisible(death_master)
	ui.deathsay.ignore:SetVisible(death_master)
	ui.deathsay.custom:SetVisible(death_master and death_mode_custom)
	
	local voice_master = ui.killvoice.master:Get()
	local fix = ui.killvoice.fix:Get()
	
	ui.killvoice.listen:SetVisible(voice_master)
	ui.killvoice.fix:SetVisible(voice_master)
	ui.killvoice.callback:SetVisible(voice_master and fix)
	ui.killvoice.lenght:SetVisible(voice_master)
end
visibility()
ui.info.changelog:RegisterCallback(visibility)
ui.killsay.master:RegisterCallback(visibility)
ui.killsay.version:RegisterCallback(visibility)
ui.killsay.mode:RegisterCallback(visibility)
ui.killsay.checks:RegisterCallback(visibility)
ui.killsay.language2:RegisterCallback(visibility)
ui.teamsay.version:RegisterCallback(visibility)
ui.teamsay.mode:RegisterCallback(visibility)
ui.teamsay.mode2:RegisterCallback(visibility)
ui.teamsay.master:RegisterCallback(visibility)
ui.teamsay.language2:RegisterCallback(visibility)
ui.teamsay.language3:RegisterCallback(visibility)
ui.shared.version:RegisterCallback(visibility)
ui.shared.mode:RegisterCallback(visibility)
ui.shared.mode2:RegisterCallback(visibility)
ui.shared.master:RegisterCallback(visibility)
ui.shared.language2:RegisterCallback(visibility)
ui.shared.language3:RegisterCallback(visibility)
ui.deathsay.master:RegisterCallback(visibility)
ui.deathsay.mode:RegisterCallback(visibility)
ui.killvoice.master:RegisterCallback(visibility)
ui.killvoice.fix:RegisterCallback(visibility)

local phrases = {
	english = {
		HP = {
			'Killed by Harry, yikers.',
			'I baked you a pie, oh boy what flavor AVADA KEDAVRA.',
			'INCENDIO! LIGHT IT UP.',
			'I broke your wand lol.',
			'Well, you were a death eater.',
			'RIDDIKULUS! Oh wait, nothing changed.',
			'Now now, Azkaban we go.',
			'I would try like to know if you were fostered like Voldemort.',
			'Sorcering stones do not work on me.',
			'I mean, Hagrid approves.',
			'ALOHAMORA, Azkaban awaits.',
			'OBLIVIATE, oh, fuk, I can\'t even remembered what happened now...',
			'ACCIO, oh wait, do I really need a muggle weapon?',
			'Cry to Dumbledore.',
			'CRUCIO! PAIN WALKS AMONG YOU.',
			'LIGHT APPEARS FROM THE END OF YOUR CHEST, LUMOS.',
			'Sectumsempra, damn right owned.',
			'EXPECTO PATRONUM, NO WAY WILL I DIE.',
			'WINGARDIUM LEVIOSA! NOW YOU ARE SOOOOOO UP THERE.',
			'SONORUS, CAN YOU HEAR ME NOW? HA-HA!',
			'EXPELLIARMUS, CAN\'T FIGHT BACK NOW HUH?',
			'CONFRINGO! FLAMES EMERSE INSIDE OF YOU.',
			'Scourgify, cleaned you up real well.',
			'NOX! Good night.',
			'AVADA KEDAVRA! SPAGHETTI MONSTER!!!',
			'RELASHIO, MADE YOU DROP THAT GUN QUICK',
			'REPARO! Oh fuck, it didn\'t work... I know why! Cuz i cant repair ur brain!',
			'STUPEFY, I think I did more than just a stun...',
			'Levicorpus, Body bag you go! Upside down is the way to go.',
			'PERMANENT STICKING CHARM, My Bullets Still Stuck',
		},

		Toxic = {
			'kos omk',
			'KS OMK YA WLD IL 87BH ANEECHK W B3D MA ANEECHK AWL3 6EEZK IB WLA3AT BO 500 FILS YAL 87BH',
			'Cut your mother, O boy, I will hate you, and after I have swallowed thee, thou shalt bear him 500 fils.',
			'Ayeree fee wij imaak',
			'YALLA YALLA',
			'jys n fokken dom kont poes naai slet wat suig sy ma se piel',
			'ra7 anech omk 3la 9dr i5tk ybn ilg7ba',
			'Æ tænke du hold kjæftn din æ no',
			'jävla horunga*',
			'1',
			'hs',
			'nn',
			'get rekt by hvh king',
			'https://freeqn.net/refund.php',
			'卐 1tap 卐',
			'卐 aufs maul du hurensohn 卐',
			'卐 mad 卐',
			'卐 low kid 卐',
			'卐 just a 2022 joiner 卐',
			'5ara 3alek',
			'nt nn',
			'me > you, ur mom, whole ur family together',
			'skeet is ur cheat',
			'Du Er Tjukk',
			'ks a5tk 3zbi ya sharmota',
			'Why So EZZZZZZZZZ, 2022 NN!??!?!?!?!?',
			'ra7 anech omk 3la 9dr i5tk ybn ilg7ba',
			'1tap nub',
			'sit dog',
			'hhh',
			'get goods',
			'get fucked',
			'eat shit',
			'fuck a baboon',
			'suck my dingleberries',
			'choke on steaming cum',
			'die in a fire',
			'gas yourself',
			'sit on garden shears',
			'choke on scrotum',
			'shove a brick up your ass',
			'swallow barbed wire',
			'move to sweden',
			'fuck a pig',
			'bow to me',
			'suck my ball sweat',
			'come back when you aren\'t garbage',
			'i will piss on everything you love',
			'kill yourself',
			'livestream suicide',
			'neck yourself',
			'go be black somewhere else',
			'rotate on it',
			'choke on it',
			'blow it out your ass',
			'go browse tumblr',
			'go back to casual',
			'sit down to horse cock',
			'drive off a cliff',
			'rape yourself',
			'get raped by niggers',
			'fuck right off',
			'you mother is a whore',
			'come at me',
			'go work the corner',
			'you are literal cancer',
			'why haven\'t you killed yourself yet',
			'why do you even exist',
			'shoot your balls off with a shotgun',
			'sterilize yourself',
			'convert to islam',
			'drink bleach',
			'remove yourself',
			'choke on whale cock',
			'suck shit',
			'suck a cock',
			'lick my sphincter',
			'set yourself on fire',
			'drink jenkem',
			'get beaten to death by your dad',
			'choke on your uncle\'s cock',
			'get sat on by a 200kg feminist',
			'blow off',
			'join isis',
			'stick your cock in a blender',
			'OD yourself on meth',
			'lie under a truck',
			'lick a wall socket',
			'swallow hot coals',
			'die slowly',
			'explode yourself',
			'swing from the noose',
			'end yourself',
			'take your best shot',
			'get shot in a gay bar',
			'drink pozzed cum',
			'marry a muslim',
			'rub your dick on a cheese grater',
			'wrap a rake with barbed wire and sodomize yourself',
			'close your gaping cunt',
			'cancer infested',
			'cock sucking',
			'fuck faced',
			'cunt eyed',
			'nigger fucking',
			'candy ass',
			'fairy ass fucking',
			'shit licking',
			'unlovable',
			'disgusting',
			'degenerate',
			'fuck headed',
			'dick lipped',
			'autismal',
			'gook eyed',
			'mongoloided',
			'cunt faced',
			'dick fisted',
			'worthless',
			'hillary loving',
			'maggot infested',
			'boot lipped',
			'chink eyed',
			'shit skinned',
			'nigger headed',
			'lgbt supporting',
			'cum stained',
			'fuck face',
			'poofter',
			'jew cunt',
			'fagmaster',
			'goat rapist',
			'rag head',
			'cock cheese',
			'vaginaphobe',
			'coon',
			'nigger',
			'slag cunt',
			'garbage man',
			'paeodophile',
			'kiddy toucher',
			'pony fucker',
			'tumblrite',
			'sperglord',
			'gorilla\'s dick',
			'shit licker',
			'shit slick',
			'redditor',
			'pig fucker',
			'spastic',
			'cuckold',
			'chode gobbler',
			'fuckwit',
			'retard',
			'mongoloid',
			'elephants cunt',
			'cunt',
			'gook',
			'fag lord',
			'shit stain',
			'mpgh skid',
			'batch coder',
			'pony fucker',
			'furfag',
			'half caste',
			'double nigger',
			'cock socket',
			'cunt rag',
			'anal wart',
			'maggot',
			'knob polisher',
			'fudge packer',
			'cock slave',
			'trashmaster',
			'shitskin',
			'curry muncher',
			'gator bait',
			'bootlip',
			'camel jockey',
			'wog cunt',
			'hooknosed kike',
			'feminist',
			'wop cunt',
			'abo',
			'porch monkey',
			'dago',
			'anal secretion',
			'pig cunt',
			'insect',
			'sub human',
			'mental defect',
			'fat whore',
			'cunt rag',
			'cotton picker',
			'bum tickling fag',
			'degenerate faggot',
			'smegma lump',
			'darkie',
			'fuck toy',
			'underage midget cunt',
			'twelvie',
			'faggot teenager',
			'ankle biter',
			'fat cunt american',
			'bernie loving washout',
			'fucking failure',
			'cum dumpster',
			'waste of skin',
			'petrol sniffing coon',
			'jenkem bottle',
			'dirty jew',
			'casual retard',
			'cuck master',
			'barrel of piss',
			'tankard of shit',
			'cock wart',
			'Call ambulance, Call ambulancec! But not for me!',
			'Oh no, la cringe!',
			'Six niggers w8 for you.',
			'$$$ UFF YA PREMIUM 1 TAP $$$ ∩ ( ͡⚆ ͜ʖ ͡⚆) ∩',
			'Even Noah can\'t carry these animals...',
			'Go climb a wall of dicks.',
			'At least my country has indoor plumbing.',
			'Safest place for us to stand is in front of your gun...',
			'You must be fat because you have a nice voice, and the air needs enough space in your lungs to articulate the sound right.',
			'Warmup is over already.',
			'Do you feel special? Please try suicide again... Hopefully you will be successful this time.',
			'Your only chance of getting laid is to crawl up a chicken\'s ass and wait.',
			'Your mom is so fat when she boosts she teamkills.',
			'I thought I was ugly but evolution really took a step back with you.',
			'If you want to play against enemies of your skill level just go to the main menu and click \'Offline with Bots\'.',
			'Yo mama so fat when she plays Overpass, you can shoot her on Mirage.',
			'Is that a decoy, or are you trying to shoot somebody?',
			'I\'m surprised you\'ve got the brain power to keep your heart beating.',
			'On a scale from 1 to 10, how old are you? I think it\'s around -1.',
			'Cheer up, your small dick isnt noticealbe under ur badness.',
			'Internet Explorer is think faster than you and whole ur family.',
			'You must be russian, I smell your drunk mom.',
			'I have not met with anything in natural history more amusing and entertaining than your personal appearance.',
			'Mad cuz bad.',
			'How did you get there from watching gay porn? 0_o.',
			'Shut up kid and talk to me when your balls have reached the bottom of your spiderman underwear...',
			'Did you grow up near by Tschernobyl or why are you so toxic?',
			'Did you learn shot in a bukkake video?',
			'If I were to commit suicide, I would jump from your age to your iq.',
			'The only thing you carry is an extra chromosome.',
			'You\'re almost as salty as the semen dripping from your mum\'s mouth.',
			'When I see your face there\'s not a thing I would change... Except the direction I was walking in.',
			'Oops, I must have chosen easy bots by accident...',
			'Isn\'t it uncomfortable play in basement?',
			'If laughter is the best medicine, your face must be curing the world.',
			'If we learn from our mistakes, your parents must be geniuses now.',
			'You\'re the reason the gene pool should have a life guard.',
			'Nice decoy.',
			'The only thing you can throw are rounds.',
			'Bro you couldn\'t hit an elephant in the ass with a shotgun with cfg like that.',
			'Don\'t be upsetti, have some spaghetti.',
			'I\'m not trashtalking, I\'m talking to trash.',
			'You\'re the human equivalent to biting into an oatmeal raisin cookie thinking it\'s chocolate chip.',
			'Stop playing eco.',
			'They do not deserve like this, they do not deserve for rekt...',
			'Why can\'t I take control of this bot?',
			'Which one of your 2 dads taught you how to play?',
			'I support abortion up to whatever age you are.',
			'LISTEN HERE YOU LITTLE FUCKER, WHEN I WAS YOUR AGE, PLUTO WAS A PLANET!',
			'Buy something except decoy next round...',
			'When you were born the doctor threw you out the window, and the window threw you back.',
			'Atleast hitler knew when to kill himself.',
			'Don\'t be a loser, buy a rope and hang yourself.',
			'Even if you would play tetris you would tie up.',
			'Get good, get killsay by k3ls.',
			'Get good, get killsay by keLs.',
			'Get good, get killsay by kek3ls.',
			'Get good, get killsay by kekeLs.',
			'If I wanted a cumback, I\'d get it off your moms mouth.',
			'Can\'t hear you from the bottom of the scoreboard.',
			'Sell your computer and buy a Wii.',
			'You\'re as useless as the "ueue" in "queue"',
			'Choose your excuse: 1.Lags | 2.Cfg test | 3.Low FPS | 4.Low team | 5.Enemy is NL Alpha | 6.Lucker | 7. Spread miss | 8. Osiris',
			'Mirros can\'t talk. Lucky for you, they can\'t laugh.',
			'Did your parents meet at a family reunion by any chance?',
			'You suck so much dick, that you turn your entire team gay.',
			'LOL watchin u play this game is like watching helen keller play tennis.',
			'Dude you\'re so fat you run out of breath rushing me.',
			'At least you did 100 damage to the wall behind me.',
			'I PRAY TO GOD A PACK OF WOLVES RAPES YOU IN THE DEAD OF WINTER AND FORCES YOU TO WALK HOME BAREFOOT!',
			'Server cvar "sv_rekt" changed to 1',
			'I\'d love to see things from your perspective, but I don\'t think I could shove my head that far up my ass.',
			'You\'re about as useful as pedals on a wheelchair.',
			'You shoot like an AI designed by a 10 year old.',
			'You’re the reason God created the middle finger.',
			'I\'m glad to see you\'re not letting your education get in the way of your ignorance.',
			'Hey dude, what controller are you using?',
			'Get the bomb, at least you will carry something this game.',
			'If you were a CSGO match, your mother would have a 1 month cooldown all the time, because she kept abandoning you.',
			'Protip: Using a brain is recommended.',
			'Watching you play is making my brain cells want commit suicide.',
			'Did you know what this game is free to uninstall?',
			'It was a sad day at the hospital when you crawled out of the abortion bucket.',
			'Do you make eye-contact when you\'re fucking your dad in the ass?',
			'Is your monitor on?',
			'Your family must have a motto of Incest is Wincest for you to be that retarded.',
			'My knife is well-worn, just like your mother.',
			'Bhopped to your mom\'s cunt last Sunday, kek.',
			'It\'s not that you\'re intimidating, youre face is just difficult to look at.',
			'I bet you\'re the type of dude that likes it when your toilet paper breaks and your finger slides up your asshole.',
			'You\'re going to give me an aneurysm.',
			'You\'re going to give me an a blowjob?',
			'You\'re going to give me an a deepthroat?',
			'EZ KATKA',
			'Rest in spaghetti never forgetti.',
			'Riposare in pace.',
			'Maybe if you stopped taking loads in the mouth you wouldn\'t be so salty.',
			'bvfndsubmdsj vudsa,vsjnfn   ., .,.,',
			'ns xj f[etkf nfv cjdctv ,kzlm? Gblfhfc t,fysq gji`k yf[eq velbkf t,fyfz',
			'SORRY JUST CLEANING THE JIZZ OF MY KEYBOARD!!',
			'It\'s impossible to underestimate you.',
			'You know all those times your parents said video games would get you nowhere? They were right.',
			'Сука блять, иди нахуй пидор бля.',
			'If CS:GO is too hard for you maybe consider a game that requires less skill, like idk.... solitaire?',
			'Who are you sponsored by? Parkinson\'s?',
			'Your family tree must be a circle.',
			'DO YOU PLAY WITH A RACING WHEEL?',
			'Yo momma so fat, she gets stuck at KFC doors.',
			'Yo momma so fat, she gets stuck at McDonald\'s doors.',
			'I\'m the reason your dad\'s gay.',
			'CRY HERE ---> \\__/ <--- Africans need water.',
			'You look like you have parkinsons you shake and bake fuck-knuckle.',
			'Is your ass jealous of the amount of shit that just came out of your mouth?',
			'You can feel the autism, cuz it\'s ur best friend.',
			'You can feel the autism, cuz it\'s ur boyfriend.',
			'Don\' talk to me, double dad\'s kid.',
			'I\'m gonna plant a tree in your mom\'s ass and then fuck your sister in its shade.',
			'Your mother\'s breasts sag with such severity that the late, great surrealist artist Salvador Dali mistook them for clocks.',
			'You are the reason they put instructions on shampoo.',
			'Your mama\'s so fat her patronus is a cake.',
			'Your mama\'s so fat, the Sorting Hat sorted her into the House of Pancakes.',
			'Your Mom should have swallowed you...',
			'You suck more than a suck machine set on "suck a lot".',
			'You suck more than a hooker at a vacuum cleaner convention.',
			'I\'ll fuck you \'til you love me, faggot. <3',
			'Your mom is so fat, she should probably be worried about the increased risk of cardiovascular disease.',
			'Yo mamma\'s so fat, she\'ll probably have both knees replaced before she turns 50.',
			'If I had a dollar for every brain you don\'t have, I\'d have ONE dollar.',
			'Ur shit thinks better than u.',
			'Did you hear a bell ring? Because someone just got schooled.',
			'No huba buba today.',
			'SUCH A BADDIE.',
			'2bad4me',
			'Owned.',
			'Died again?!',
			'Welcome to the GULAG!',
			'HULK SMASH!',
			'THIS IS SPARTA!',
			'I\'v got the power!',
			'Lil Xan, OOhdem Beatz - Who Are You',
			'ez',
			'too fucking easy',
			'effortless',
			'easiest kill of my life',
			'retard blasted',
			'cleans?',
			'nice memesense retard',
			'hello mind explaining what happened there',
			'pounce out of your window disgusting tranny, you shouldnt exist in this world',
			'lmao ur so ugly irl like bro doesnt it hurt to live like that, btw you know you can just end it all',
			'take the cooldown and let your team surr retard',
			'nn4ik shat on',
			'go take some estrogen tranny',
			'uid police here present your user identification number right now',
			'tranny holzed',
			'better buy the superior hack!',
			'whatcha shootin at retard',
			'imagine losing at video games couldn\'t ever be me',
			'nice thirdworldspeak ROFL',
			'nice chromosome count you sell??',
			'nice 0.5x0.5m room you poorfag, how the fuck did you afford an acc hhhhhh',
			'get 1\'s get brain',
			'ez',
			'effortless',
			'you pay for that?',
			'refund right now',
			'consider suicide',
			'bro are u clean?',
			'another retard blasted',
			'hhhhhhhhhhhhhhhhhh 1, you pay for that? refund so maybe youll afford some food for your family thirdworld monkey',
			'paster abandoned the match and received a 7 day competitive matchmaking cooldown',
			'freeqn.net/refund.php',
			'refund your rainbowhook right now pasteuser dog',
			'JAJAJAJJAJA NICE RAINBOWPASTE ROFL',
			'140er????',
			'get good get vantap4ik',
			'stop spending your lunch money on shitpastes retard',
			'1 but all you need to fix your problems is a rope and a chair you ugly shit',
			'who (кто) are you (ннчик) wattafak mens???????',
			'who (kto) are you (nn4ik) wattafak mens???????',
			'must be an uid issue',
			'holy shit consider refunding your trash paste rofl',
			'thats going in my media compilation right there get shamed retard rofl',
			'imagine the only thing you eat being bullets man being a thirdworlder must suck rofl',
			'so fucking ez',
			'bot_kick',
			'bot_kill',
			'where the enemies at????',
			'hello please refund your subpar product',
			'Did you really sold your anal virginity for that cheat?',
			'Get Good, Get Onetap.',
			'Get Good, Get GameSense.',
			'Get Good, Get Fatality.',
			'Get Good, Get Ev0lve.',
			'Get Good, Get NeverLose.',
			'Insert > Ragebot > Turn ON.',
			'Refund that ayyware.',
			'*Dead*',
			'Change that mindmg5.cfg',
			'Lol u dead hhh',
			'Ez esketit eyey$$$',
			'Give me ur selly so i can fix that trash cfg lmao',
			'Stop trying so hard nn hhh',
			'Too Slow.',
			'Ouu I\'m sorry, you were not fast enough.',
			'my Baim is better than yours.',
			'BaimGOD ez hhh',
			'Stop trying so hard ufff ur min dmg is 5 so just stop',
			'Dude, cast the spell! Willy wigger, kill that ni...',
			'Dude, cast the spell! Willy wigger, kill that nigger',
			'eAsY pEaSy LeMoN sQuEeZy',
			'suck my cock you silver bastards',
			'you\'re getting fucked by me right now',
			'Server cvar \'sv_rekt\' changed to 1',
			'Did you learn your spray downs in a bukkake video?',
			'Shut up, I fucked your dad',
			'You only killed me because I ran out of health...',
			'Options -> How To Play',
			'If I were to commit suicide, I would jump from your ego to your elo.',
			'I kissed your mom last night. Her breath was globally offensive',
			'mad cuz bad',
			'his guy is more toxic than the beaches at Fukushima',
			'Who are you sponsored by? Parkinson\'s?',
			'ゴミの話',
			'Where\'s my pixel dinner',
			'Y O U R P A R E N T S M U S T B E P R O U D O F Y O U ',
			'killsay set to 1',
			'《AK•47•KILLER》☆',
			'FIX KD NN DOGGO',
			'co‌mm‌it‌ n‌ec‌k ‌ro‌pe‌ u‌r ‌to‌o ‌ba‌d ‌xa‌xa',
			'better buy the superior hack!',
			'8====={Headshot bitch]==0',
			'✘︎NeveR●︎Give●︎Up✘︎ヅ',
			'op‌ti‌on‌s ‌=>‌ h‌ow‌ t‌o ‌pl‌ay',"why so bad?",
			'mad?',
			'hoes mad',
			'sleep',
			'1',
			'boutta head out',
			'what u use?',
			'nice paste',
			'420hacks.com',
			'why so bad?',
			'get tapped',
			'bruh',
			'aw be like',
			'stfu nigger',
			'stfu',
			'sit',
			'sit dog',
			'sit down',
			'dog',
			'refund your paste',
			'paste be like',
			'refund',
			'can i buy your cfg?',
			'do you have selly for that cfg?',
			'whats your selly link mate?',
			'clean fucked',
			'the money i gave your mum u bought cheats with',
			'boutta media some bots brb',
			'please uninstall',
			'ez',
			'nnware.xyz',
			'commit die',
			'commit neckrope',
			':(',
			'1',
			'clapped them cheeks',
			'mad dog',
			'don\'t cry',
			'be happy',
			'shitted in my pants',
			'niggas in my butthole',
			'please refund that shit',
			'nice config mate',
			'i am sure it is a uid issue',
			'config issue i am sure ;)'
		},

		Toxic_fancy = {
			'ｋｏｓ ｏｍｋ',
			'ＫＳ ＯＭＫ ＹＡ ＷＬＤ ＩＬ 𝟖𝟕ＢＨ ＡＮＥＥＣＨＫ Ｗ Ｂ𝟑Ｄ ＭＡ ＡＮＥＥＣＨＫ ＡＷＬ𝟑 𝟔ＥＥＺＫ ＩＢ ＷＬＡ𝟑ＡＴ ＢＯ 𝟓𝟎𝟎 ＦＩＬＳ ＹＡＬ 𝟖𝟕ＢＨ',
			'Ｃｕｔ ｙｏｕｒ ｍｏｔｈｅｒ, Ｏ ｂｏｙ, Ｉ ｗｉｌｌ ｈａｔｅ ｙｏｕ, ａｎｄ ａｆｔｅｒ Ｉ ｈａｖｅ ｓｗａｌｌｏｗｅｄ ｔｈｅｅ, ｔｈｏｕ ｓｈａｌｔ ｂｅａｒ ｈｉｍ 𝟓𝟎𝟎 ｆｉｌｓ.',
			'Ａｙｅｒｅｅ ｆｅｅ ｗｉｊ ｉｍａａｋ',
			'ＹＡＬＬＡ ＹＡＬＬＡ',
			'ｊｙｓ ｎ ｆｏｋｋｅｎ ｄｏｍ ｋｏｎｔ ｐｏｅｓ ｎａａｉ ｓｌｅｔ ｗａｔ ｓｕｉｇ ｓｙ ｍａ ｓｅ ｐｉｅｌ',
			'ｒａ𝟕 ａｎｅｃｈ ｏｍｋ 𝟑ｌａ 𝟗ｄｒ ｉ𝟓ｔｋ ｙｂｎ ｉｌｇ𝟕ｂａ',
			'Æ ｔæｎｋｅ ｄｕ ｈｏｌｄ ｋｊæｆｔｎ ｄｉｎ æ ｎｏ',
			'ｊäｖｌａ ｈｏｒｕｎｇａ*',
			'𝟏',
			'ｈｓ',
			'ｎｎ',
			'ｇｅｔ ｒｅｋｔ ｂｙ ｈｖｈ ｋｉｎｇ',
			'ｈｔｔｐｓ://ｆｒｅｅｑｎ.ｎｅｔ/ｒｅｆｕｎｄ.ｐｈｐ',
			'卐 𝟏ｔａｐ 卐',
			'卐 ａｕｆｓ ｍａｕｌ ｄｕ ｈｕｒｅｎｓｏｈｎ 卐',
			'卐 ｍａｄ 卐',
			'卐 ｌｏｗ ｋｉｄ 卐',
			'卐 ｊｕｓｔ ａ 𝟐𝟎𝟐𝟐 ｊｏｉｎｅｒ 卐',
			'𝟓ａｒａ 𝟑ａｌｅｋ',
			'ｎｔ ｎｎ',
			'ｍｅ > ｙｏｕ, ｕｒ ｍｏｍ, ｗｈｏｌｅ ｕｒ ｆａｍｉｌｙ ｔｏｇｅｔｈｅｒ',
			'ｓｋｅｅｔ ｉｓ ｕｒ ｃｈｅａｔ',
			'Ｄｕ Ｅｒ Ｔｊｕｋｋ',
			'ｋｓ ａ𝟓ｔｋ 𝟑ｚｂｉ ｙａ ｓｈａｒｍｏｔａ',
			'Ｗｈｙ Ｓｏ ＥＺＺＺＺＺＺＺＺＺ, 𝟐𝟎𝟐𝟐 ＮＮ!??!?!?!?!?',
			'ｒａ𝟕 ａｎｅｃｈ ｏｍｋ 𝟑ｌａ 𝟗ｄｒ ｉ𝟓ｔｋ ｙｂｎ ｉｌｇ𝟕ｂａ',
			'𝟏ｔａｐ ｎｕｂ',
			'ｓｉｔ ｄｏｇ',
			'ｈｈｈ',
			'ｇｅｔ ｇｏｏｄｓ',
			'ｇｅｔ ｆｕｃｋｅｄ',
			'ｅａｔ ｓｈｉｔ',
			'ｆｕｃｋ ａ ｂａｂｏｏｎ',
			'ｓｕｃｋ ｍｙ ｄｉｎｇｌｅｂｅｒｒｉｅｓ',
			'ｃｈｏｋｅ ｏｎ ｓｔｅａｍｉｎｇ ｃｕｍ',
			'ｄｉｅ ｉｎ ａ ｆｉｒｅ',
			'ｇａｓ ｙｏｕｒｓｅｌｆ',
			'ｓｉｔ ｏｎ ｇａｒｄｅｎ ｓｈｅａｒｓ',
			'ｃｈｏｋｅ ｏｎ ｓｃｒｏｔｕｍ',
			'ｓｈｏｖｅ ａ ｂｒｉｃｋ ｕｐ ｙｏｕｒ ａｓｓ',
			'ｓｗａｌｌｏｗ ｂａｒｂｅｄ ｗｉｒｅ',
			'ｍｏｖｅ ｔｏ ｓｗｅｄｅｎ',
			'ｆｕｃｋ ａ ｐｉｇ',
			'ｂｏｗ ｔｏ ｍｅ',
			'ｓｕｃｋ ｍｙ ｂａｌｌ ｓｗｅａｔ',
			'ｃｏｍｅ ｂａｃｋ ｗｈｅｎ ｙｏｕ ａｒｅｎ\'ｔ ｇａｒｂａｇｅ',
			'ｉ ｗｉｌｌ ｐｉｓｓ ｏｎ ｅｖｅｒｙｔｈｉｎｇ ｙｏｕ ｌｏｖｅ',
			'ｋｉｌｌ ｙｏｕｒｓｅｌｆ',
			'ｌｉｖｅｓｔｒｅａｍ ｓｕｉｃｉｄｅ',
			'ｎｅｃｋ ｙｏｕｒｓｅｌｆ',
			'ｇｏ ｂｅ ｂｌａｃｋ ｓｏｍｅｗｈｅｒｅ ｅｌｓｅ',
			'ｒｏｔａｔｅ ｏｎ ｉｔ',
			'ｃｈｏｋｅ ｏｎ ｉｔ',
			'ｂｌｏｗ ｉｔ ｏｕｔ ｙｏｕｒ ａｓｓ',
			'ｇｏ ｂｒｏｗｓｅ ｔｕｍｂｌｒ',
			'ｇｏ ｂａｃｋ ｔｏ ｃａｓｕａｌ',
			'ｓｉｔ ｄｏｗｎ ｔｏ ｈｏｒｓｅ ｃｏｃｋ',
			'ｄｒｉｖｅ ｏｆｆ ａ ｃｌｉｆｆ',
			'ｒａｐｅ ｙｏｕｒｓｅｌｆ',
			'ｇｅｔ ｒａｐｅｄ ｂｙ ｎｉｇｇｅｒｓ',
			'ｆｕｃｋ ｒｉｇｈｔ ｏｆｆ',
			'ｙｏｕ ｍｏｔｈｅｒ ｉｓ ａ ｗｈｏｒｅ',
			'ｃｏｍｅ ａｔ ｍｅ',
			'ｇｏ ｗｏｒｋ ｔｈｅ ｃｏｒｎｅｒ',
			'ｙｏｕ ａｒｅ ｌｉｔｅｒａｌ ｃａｎｃｅｒ',
			'ｗｈｙ ｈａｖｅｎ\'ｔ ｙｏｕ ｋｉｌｌｅｄ ｙｏｕｒｓｅｌｆ ｙｅｔ',
			'ｗｈｙ ｄｏ ｙｏｕ ｅｖｅｎ ｅｘｉｓｔ',
			'ｓｈｏｏｔ ｙｏｕｒ ｂａｌｌｓ ｏｆｆ ｗｉｔｈ ａ ｓｈｏｔｇｕｎ',
			'ｓｔｅｒｉｌｉｚｅ ｙｏｕｒｓｅｌｆ',
			'ｃｏｎｖｅｒｔ ｔｏ ｉｓｌａｍ',
			'ｄｒｉｎｋ ｂｌｅａｃｈ',
			'ｒｅｍｏｖｅ ｙｏｕｒｓｅｌｆ',
			'ｃｈｏｋｅ ｏｎ ｗｈａｌｅ ｃｏｃｋ',
			'ｓｕｃｋ ｓｈｉｔ',
			'ｓｕｃｋ ａ ｃｏｃｋ',
			'ｌｉｃｋ ｍｙ ｓｐｈｉｎｃｔｅｒ',
			'ｓｅｔ ｙｏｕｒｓｅｌｆ ｏｎ ｆｉｒｅ',
			'ｄｒｉｎｋ ｊｅｎｋｅｍ',
			'ｇｅｔ ｂｅａｔｅｎ ｔｏ ｄｅａｔｈ ｂｙ ｙｏｕｒ ｄａｄ',
			'ｃｈｏｋｅ ｏｎ ｙｏｕｒ ｕｎｃｌｅ\'ｓ ｃｏｃｋ',
			'ｇｅｔ ｓａｔ ｏｎ ｂｙ ａ 𝟐𝟎𝟎ｋｇ ｆｅｍｉｎｉｓｔ',
			'ｂｌｏｗ ｏｆｆ',
			'ｊｏｉｎ ｉｓｉｓ',
			'ｓｔｉｃｋ ｙｏｕｒ ｃｏｃｋ ｉｎ ａ ｂｌｅｎｄｅｒ',
			'ＯＤ ｙｏｕｒｓｅｌｆ ｏｎ ｍｅｔｈ',
			'ｌｉｅ ｕｎｄｅｒ ａ ｔｒｕｃｋ',
			'ｌｉｃｋ ａ ｗａｌｌ ｓｏｃｋｅｔ',
			'ｓｗａｌｌｏｗ ｈｏｔ ｃｏａｌｓ',
			'ｄｉｅ ｓｌｏｗｌｙ',
			'ｅｘｐｌｏｄｅ ｙｏｕｒｓｅｌｆ',
			'ｓｗｉｎｇ ｆｒｏｍ ｔｈｅ ｎｏｏｓｅ',
			'ｅｎｄ ｙｏｕｒｓｅｌｆ',
			'ｔａｋｅ ｙｏｕｒ ｂｅｓｔ ｓｈｏｔ',
			'ｇｅｔ ｓｈｏｔ ｉｎ ａ ｇａｙ ｂａｒ',
			'ｄｒｉｎｋ ｐｏｚｚｅｄ ｃｕｍ',
			'ｍａｒｒｙ ａ ｍｕｓｌｉｍ',
			'ｒｕｂ ｙｏｕｒ ｄｉｃｋ ｏｎ ａ ｃｈｅｅｓｅ ｇｒａｔｅｒ',
			'ｗｒａｐ ａ ｒａｋｅ ｗｉｔｈ ｂａｒｂｅｄ ｗｉｒｅ ａｎｄ ｓｏｄｏｍｉｚｅ ｙｏｕｒｓｅｌｆ',
			'ｃｌｏｓｅ ｙｏｕｒ ｇａｐｉｎｇ ｃｕｎｔ',
			'ｃａｎｃｅｒ ｉｎｆｅｓｔｅｄ',
			'ｃｏｃｋ ｓｕｃｋｉｎｇ',
			'ｆｕｃｋ ｆａｃｅｄ',
			'ｃｕｎｔ ｅｙｅｄ',
			'ｎｉｇｇｅｒ ｆｕｃｋｉｎｇ',
			'ｃａｎｄｙ ａｓｓ',
			'ｆａｉｒｙ ａｓｓ ｆｕｃｋｉｎｇ',
			'ｓｈｉｔ ｌｉｃｋｉｎｇ',
			'ｕｎｌｏｖａｂｌｅ',
			'ｄｉｓｇｕｓｔｉｎｇ',
			'ｄｅｇｅｎｅｒａｔｅ',
			'ｆｕｃｋ ｈｅａｄｅｄ',
			'ｄｉｃｋ ｌｉｐｐｅｄ',
			'ａｕｔｉｓｍａｌ',
			'ｇｏｏｋ ｅｙｅｄ',
			'ｍｏｎｇｏｌｏｉｄｅｄ',
			'ｃｕｎｔ ｆａｃｅｄ',
			'ｄｉｃｋ ｆｉｓｔｅｄ',
			'ｗｏｒｔｈｌｅｓｓ',
			'ｈｉｌｌａｒｙ ｌｏｖｉｎｇ',
			'ｍａｇｇｏｔ ｉｎｆｅｓｔｅｄ',
			'ｂｏｏｔ ｌｉｐｐｅｄ',
			'ｃｈｉｎｋ ｅｙｅｄ',
			'ｓｈｉｔ ｓｋｉｎｎｅｄ',
			'ｎｉｇｇｅｒ ｈｅａｄｅｄ',
			'ｌｇｂｔ ｓｕｐｐｏｒｔｉｎｇ',
			'ｃｕｍ ｓｔａｉｎｅｄ',
			'ｆｕｃｋ ｆａｃｅ',
			'ｐｏｏｆｔｅｒ',
			'ｊｅｗ ｃｕｎｔ',
			'ｆａｇｍａｓｔｅｒ',
			'ｇｏａｔ ｒａｐｉｓｔ',
			'ｒａｇ ｈｅａｄ',
			'ｃｏｃｋ ｃｈｅｅｓｅ',
			'ｖａｇｉｎａｐｈｏｂｅ',
			'ｃｏｏｎ',
			'ｎｉｇｇｅｒ',
			'ｓｌａｇ ｃｕｎｔ',
			'ｇａｒｂａｇｅ ｍａｎ',
			'ｐａｅｏｄｏｐｈｉｌｅ',
			'ｋｉｄｄｙ ｔｏｕｃｈｅｒ',
			'ｐｏｎｙ ｆｕｃｋｅｒ',
			'ｔｕｍｂｌｒｉｔｅ',
			'ｓｐｅｒｇｌｏｒｄ',
			'ｇｏｒｉｌｌａ\'ｓ ｄｉｃｋ',
			'ｓｈｉｔ ｌｉｃｋｅｒ',
			'ｓｈｉｔ ｓｌｉｃｋ',
			'ｒｅｄｄｉｔｏｒ',
			'ｐｉｇ ｆｕｃｋｅｒ',
			'ｓｐａｓｔｉｃ',
			'ｃｕｃｋｏｌｄ',
			'ｃｈｏｄｅ ｇｏｂｂｌｅｒ',
			'ｆｕｃｋｗｉｔ',
			'ｒｅｔａｒｄ',
			'ｍｏｎｇｏｌｏｉｄ',
			'ｅｌｅｐｈａｎｔｓ ｃｕｎｔ',
			'ｃｕｎｔ',
			'ｇｏｏｋ',
			'ｆａｇ ｌｏｒｄ',
			'ｓｈｉｔ ｓｔａｉｎ',
			'ｍｐｇｈ ｓｋｉｄ',
			'ｂａｔｃｈ ｃｏｄｅｒ',
			'ｐｏｎｙ ｆｕｃｋｅｒ',
			'ｆｕｒｆａｇ',
			'ｈａｌｆ ｃａｓｔｅ',
			'ｄｏｕｂｌｅ ｎｉｇｇｅｒ',
			'ｃｏｃｋ ｓｏｃｋｅｔ',
			'ｃｕｎｔ ｒａｇ',
			'ａｎａｌ ｗａｒｔ',
			'ｍａｇｇｏｔ',
			'ｋｎｏｂ ｐｏｌｉｓｈｅｒ',
			'ｆｕｄｇｅ ｐａｃｋｅｒ',
			'ｃｏｃｋ ｓｌａｖｅ',
			'ｔｒａｓｈｍａｓｔｅｒ',
			'ｓｈｉｔｓｋｉｎ',
			'ｃｕｒｒｙ ｍｕｎｃｈｅｒ',
			'ｇａｔｏｒ ｂａｉｔ',
			'ｂｏｏｔｌｉｐ',
			'ｃａｍｅｌ ｊｏｃｋｅｙ',
			'ｗｏｇ ｃｕｎｔ',
			'ｈｏｏｋｎｏｓｅｄ ｋｉｋｅ',
			'ｆｅｍｉｎｉｓｔ',
			'ｗｏｐ ｃｕｎｔ',
			'ａｂｏ',
			'ｐｏｒｃｈ ｍｏｎｋｅｙ',
			'ｄａｇｏ',
			'ａｎａｌ ｓｅｃｒｅｔｉｏｎ',
			'ｐｉｇ ｃｕｎｔ',
			'ｉｎｓｅｃｔ',
			'ｓｕｂ ｈｕｍａｎ',
			'ｍｅｎｔａｌ ｄｅｆｅｃｔ',
			'ｆａｔ ｗｈｏｒｅ',
			'ｃｕｎｔ ｒａｇ',
			'ｃｏｔｔｏｎ ｐｉｃｋｅｒ',
			'ｂｕｍ ｔｉｃｋｌｉｎｇ ｆａｇ',
			'ｄｅｇｅｎｅｒａｔｅ ｆａｇｇｏｔ',
			'ｓｍｅｇｍａ ｌｕｍｐ',
			'ｄａｒｋｉｅ',
			'ｆｕｃｋ ｔｏｙ',
			'ｕｎｄｅｒａｇｅ ｍｉｄｇｅｔ ｃｕｎｔ',
			'ｔｗｅｌｖｉｅ',
			'ｆａｇｇｏｔ ｔｅｅｎａｇｅｒ',
			'ａｎｋｌｅ ｂｉｔｅｒ',
			'ｆａｔ ｃｕｎｔ ａｍｅｒｉｃａｎ',
			'ｂｅｒｎｉｅ ｌｏｖｉｎｇ ｗａｓｈｏｕｔ',
			'ｆｕｃｋｉｎｇ ｆａｉｌｕｒｅ',
			'ｃｕｍ ｄｕｍｐｓｔｅｒ',
			'ｗａｓｔｅ ｏｆ ｓｋｉｎ',
			'ｐｅｔｒｏｌ ｓｎｉｆｆｉｎｇ ｃｏｏｎ',
			'ｊｅｎｋｅｍ ｂｏｔｔｌｅ',
			'ｄｉｒｔｙ ｊｅｗ',
			'ｃａｓｕａｌ ｒｅｔａｒｄ',
			'ｃｕｃｋ ｍａｓｔｅｒ',
			'ｂａｒｒｅｌ ｏｆ ｐｉｓｓ',
			'ｔａｎｋａｒｄ ｏｆ ｓｈｉｔ',
			'ｃｏｃｋ ｗａｒｔ',
			'Ｃａｌｌ ａｍｂｕｌａｎｃｅ, Ｃａｌｌ ａｍｂｕｌａｎｃｅｃ! Ｂｕｔ ｎｏｔ ｆｏｒ ｍｅ!',
			'Ｏｈ ｎｏ, ｌａ ｃｒｉｎｇｅ!',
			'Ｓｉｘ ｎｉｇｇｅｒｓ ｗ𝟖 ｆｏｒ ｙｏｕ.',
			'$$$ ＵＦＦ ＹＡ ＰＲＥＭＩＵＭ 𝟏 ＴＡＰ $$$ ∩ ( ͡⚆ ͜ʖ ͡⚆) ∩',
			'Ｅｖｅｎ Ｎｏａｈ ｃａｎ\'ｔ ｃａｒｒｙ ｔｈｅｓｅ ａｎｉｍａｌｓ...',
			'Ｇｏ ｃｌｉｍｂ ａ ｗａｌｌ ｏｆ ｄｉｃｋｓ.',
			'Ａｔ ｌｅａｓｔ ｍｙ ｃｏｕｎｔｒｙ ｈａｓ ｉｎｄｏｏｒ ｐｌｕｍｂｉｎｇ.',
			'Ｓａｆｅｓｔ ｐｌａｃｅ ｆｏｒ ｕｓ ｔｏ ｓｔａｎｄ ｉｓ ｉｎ ｆｒｏｎｔ ｏｆ ｙｏｕｒ ｇｕｎ...',
			'Ｙｏｕ ｍｕｓｔ ｂｅ ｆａｔ ｂｅｃａｕｓｅ ｙｏｕ ｈａｖｅ ａ ｎｉｃｅ ｖｏｉｃｅ, ａｎｄ ｔｈｅ ａｉｒ ｎｅｅｄｓ ｅｎｏｕｇｈ ｓｐａｃｅ ｉｎ ｙｏｕｒ ｌｕｎｇｓ ｔｏ ａｒｔｉｃｕｌａｔｅ ｔｈｅ ｓｏｕｎｄ ｒｉｇｈｔ.',
			'Ｗａｒｍｕｐ ｉｓ ｏｖｅｒ ａｌｒｅａｄｙ.',
			'Ｄｏ ｙｏｕ ｆｅｅｌ ｓｐｅｃｉａｌ? Ｐｌｅａｓｅ ｔｒｙ ｓｕｉｃｉｄｅ ａｇａｉｎ... Ｈｏｐｅｆｕｌｌｙ ｙｏｕ ｗｉｌｌ ｂｅ ｓｕｃｃｅｓｓｆｕｌ ｔｈｉｓ ｔｉｍｅ.',
			'Ｙｏｕｒ ｏｎｌｙ ｃｈａｎｃｅ ｏｆ ｇｅｔｔｉｎｇ ｌａｉｄ ｉｓ ｔｏ ｃｒａｗｌ ｕｐ ａ ｃｈｉｃｋｅｎ\'ｓ ａｓｓ ａｎｄ ｗａｉｔ.',
			'Ｙｏｕｒ ｍｏｍ ｉｓ ｓｏ ｆａｔ ｗｈｅｎ ｓｈｅ ｂｏｏｓｔｓ ｓｈｅ ｔｅａｍｋｉｌｌｓ.',
			'Ｉ ｔｈｏｕｇｈｔ Ｉ ｗａｓ ｕｇｌｙ ｂｕｔ ｅｖｏｌｕｔｉｏｎ ｒｅａｌｌｙ ｔｏｏｋ ａ ｓｔｅｐ ｂａｃｋ ｗｉｔｈ ｙｏｕ.',
			'Ｉｆ ｙｏｕ ｗａｎｔ ｔｏ ｐｌａｙ ａｇａｉｎｓｔ ｅｎｅｍｉｅｓ ｏｆ ｙｏｕｒ ｓｋｉｌｌ ｌｅｖｅｌ ｊｕｓｔ ｇｏ ｔｏ ｔｈｅ ｍａｉｎ ｍｅｎｕ ａｎｄ ｃｌｉｃｋ \'Ｏｆｆｌｉｎｅ ｗｉｔｈ Ｂｏｔｓ\'.',
			'Ｙｏ ｍａｍａ ｓｏ ｆａｔ ｗｈｅｎ ｓｈｅ ｐｌａｙｓ Ｏｖｅｒｐａｓｓ, ｙｏｕ ｃａｎ ｓｈｏｏｔ ｈｅｒ ｏｎ Ｍｉｒａｇｅ.',
			'Ｉｓ ｔｈａｔ ａ ｄｅｃｏｙ, ｏｒ ａｒｅ ｙｏｕ ｔｒｙｉｎｇ ｔｏ ｓｈｏｏｔ ｓｏｍｅｂｏｄｙ?',
			'Ｉ\'ｍ ｓｕｒｐｒｉｓｅｄ ｙｏｕ\'ｖｅ ｇｏｔ ｔｈｅ ｂｒａｉｎ ｐｏｗｅｒ ｔｏ ｋｅｅｐ ｙｏｕｒ ｈｅａｒｔ ｂｅａｔｉｎｇ.',
			'Ｏｎ ａ ｓｃａｌｅ ｆｒｏｍ 𝟏 ｔｏ 𝟏𝟎, ｈｏｗ ｏｌｄ ａｒｅ ｙｏｕ? Ｉ ｔｈｉｎｋ ｉｔ\'ｓ ａｒｏｕｎｄ -𝟏.',
			'Ｃｈｅｅｒ ｕｐ, ｙｏｕｒ ｓｍａｌｌ ｄｉｃｋ ｉｓｎｔ ｎｏｔｉｃｅａｌｂｅ ｕｎｄｅｒ ｕｒ ｂａｄｎｅｓｓ.',
			'Ｉｎｔｅｒｎｅｔ Ｅｘｐｌｏｒｅｒ ｉｓ ｔｈｉｎｋ ｆａｓｔｅｒ ｔｈａｎ ｙｏｕ ａｎｄ ｗｈｏｌｅ ｕｒ ｆａｍｉｌｙ.',
			'Ｙｏｕ ｍｕｓｔ ｂｅ ｒｕｓｓｉａｎ, Ｉ ｓｍｅｌｌ ｙｏｕｒ ｄｒｕｎｋ ｍｏｍ.',
			'Ｉ ｈａｖｅ ｎｏｔ ｍｅｔ ｗｉｔｈ ａｎｙｔｈｉｎｇ ｉｎ ｎａｔｕｒａｌ ｈｉｓｔｏｒｙ ｍｏｒｅ ａｍｕｓｉｎｇ ａｎｄ ｅｎｔｅｒｔａｉｎｉｎｇ ｔｈａｎ ｙｏｕｒ ｐｅｒｓｏｎａｌ ａｐｐｅａｒａｎｃｅ.',
			'Ｍａｄ ｃｕｚ ｂａｄ.',
			'Ｈｏｗ ｄｉｄ ｙｏｕ ｇｅｔ ｔｈｅｒｅ ｆｒｏｍ ｗａｔｃｈｉｎｇ ｇａｙ ｐｏｒｎ? 𝟎_ｏ.',
			'Ｓｈｕｔ ｕｐ ｋｉｄ ａｎｄ ｔａｌｋ ｔｏ ｍｅ ｗｈｅｎ ｙｏｕｒ ｂａｌｌｓ ｈａｖｅ ｒｅａｃｈｅｄ ｔｈｅ ｂｏｔｔｏｍ ｏｆ ｙｏｕｒ ｓｐｉｄｅｒｍａｎ ｕｎｄｅｒｗｅａｒ...',
			'Ｄｉｄ ｙｏｕ ｇｒｏｗ ｕｐ ｎｅａｒ ｂｙ Ｔｓｃｈｅｒｎｏｂｙｌ ｏｒ ｗｈｙ ａｒｅ ｙｏｕ ｓｏ ｔｏｘｉｃ?',
			'Ｄｉｄ ｙｏｕ ｌｅａｒｎ ｓｈｏｔ ｉｎ ａ ｂｕｋｋａｋｅ ｖｉｄｅｏ?',
			'Ｉｆ Ｉ ｗｅｒｅ ｔｏ ｃｏｍｍｉｔ ｓｕｉｃｉｄｅ, Ｉ ｗｏｕｌｄ ｊｕｍｐ ｆｒｏｍ ｙｏｕｒ ａｇｅ ｔｏ ｙｏｕｒ ｉｑ.',
			'Ｔｈｅ ｏｎｌｙ ｔｈｉｎｇ ｙｏｕ ｃａｒｒｙ ｉｓ ａｎ ｅｘｔｒａ ｃｈｒｏｍｏｓｏｍｅ.',
			'Ｙｏｕ\'ｒｅ ａｌｍｏｓｔ ａｓ ｓａｌｔｙ ａｓ ｔｈｅ ｓｅｍｅｎ ｄｒｉｐｐｉｎｇ ｆｒｏｍ ｙｏｕｒ ｍｕｍ\'ｓ ｍｏｕｔｈ.',
			'Ｗｈｅｎ Ｉ ｓｅｅ ｙｏｕｒ ｆａｃｅ ｔｈｅｒｅ\'ｓ ｎｏｔ ａ ｔｈｉｎｇ Ｉ ｗｏｕｌｄ ｃｈａｎｇｅ... Ｅｘｃｅｐｔ ｔｈｅ ｄｉｒｅｃｔｉｏｎ Ｉ ｗａｓ ｗａｌｋｉｎｇ ｉｎ.',
			'Ｏｏｐｓ, Ｉ ｍｕｓｔ ｈａｖｅ ｃｈｏｓｅｎ ｅａｓｙ ｂｏｔｓ ｂｙ ａｃｃｉｄｅｎｔ...',
			'Ｉｓｎ\'ｔ ｉｔ ｕｎｃｏｍｆｏｒｔａｂｌｅ ｐｌａｙ ｉｎ ｂａｓｅｍｅｎｔ?',
			'Ｉｆ ｌａｕｇｈｔｅｒ ｉｓ ｔｈｅ ｂｅｓｔ ｍｅｄｉｃｉｎｅ, ｙｏｕｒ ｆａｃｅ ｍｕｓｔ ｂｅ ｃｕｒｉｎｇ ｔｈｅ ｗｏｒｌｄ.',
			'Ｉｆ ｗｅ ｌｅａｒｎ ｆｒｏｍ ｏｕｒ ｍｉｓｔａｋｅｓ, ｙｏｕｒ ｐａｒｅｎｔｓ ｍｕｓｔ ｂｅ ｇｅｎｉｕｓｅｓ ｎｏｗ.',
			'Ｙｏｕ\'ｒｅ ｔｈｅ ｒｅａｓｏｎ ｔｈｅ ｇｅｎｅ ｐｏｏｌ ｓｈｏｕｌｄ ｈａｖｅ ａ ｌｉｆｅ ｇｕａｒｄ.',
			'Ｎｉｃｅ ｄｅｃｏｙ.',
			'Ｔｈｅ ｏｎｌｙ ｔｈｉｎｇ ｙｏｕ ｃａｎ ｔｈｒｏｗ ａｒｅ ｒｏｕｎｄｓ.',
			'Ｂｒｏ ｙｏｕ ｃｏｕｌｄｎ\'ｔ ｈｉｔ ａｎ ｅｌｅｐｈａｎｔ ｉｎ ｔｈｅ ａｓｓ ｗｉｔｈ ａ ｓｈｏｔｇｕｎ ｗｉｔｈ ｃｆｇ ｌｉｋｅ ｔｈａｔ.',
			'Ｄｏｎ\'ｔ ｂｅ ｕｐｓｅｔｔｉ, ｈａｖｅ ｓｏｍｅ ｓｐａｇｈｅｔｔｉ.',
			'Ｉ\'ｍ ｎｏｔ ｔｒａｓｈｔａｌｋｉｎｇ, Ｉ\'ｍ ｔａｌｋｉｎｇ ｔｏ ｔｒａｓｈ.',
			'Ｙｏｕ\'ｒｅ ｔｈｅ ｈｕｍａｎ ｅｑｕｉｖａｌｅｎｔ ｔｏ ｂｉｔｉｎｇ ｉｎｔｏ ａｎ ｏａｔｍｅａｌ ｒａｉｓｉｎ ｃｏｏｋｉｅ ｔｈｉｎｋｉｎｇ ｉｔ\'ｓ ｃｈｏｃｏｌａｔｅ ｃｈｉｐ.',
			'Ｓｔｏｐ ｐｌａｙｉｎｇ ｅｃｏ.',
			'Ｔｈｅｙ ｄｏ ｎｏｔ ｄｅｓｅｒｖｅ ｌｉｋｅ ｔｈｉｓ, ｔｈｅｙ ｄｏ ｎｏｔ ｄｅｓｅｒｖｅ ｆｏｒ ｒｅｋｔ...',
			'Ｗｈｙ ｃａｎ\'ｔ Ｉ ｔａｋｅ ｃｏｎｔｒｏｌ ｏｆ ｔｈｉｓ ｂｏｔ?',
			'Ｗｈｉｃｈ ｏｎｅ ｏｆ ｙｏｕｒ 𝟐 ｄａｄｓ ｔａｕｇｈｔ ｙｏｕ ｈｏｗ ｔｏ ｐｌａｙ?',
			'Ｉ ｓｕｐｐｏｒｔ ａｂｏｒｔｉｏｎ ｕｐ ｔｏ ｗｈａｔｅｖｅｒ ａｇｅ ｙｏｕ ａｒｅ.',
			'ＬＩＳＴＥＮ ＨＥＲＥ ＹＯＵ ＬＩＴＴＬＥ ＦＵＣＫＥＲ, ＷＨＥＮ Ｉ ＷＡＳ ＹＯＵＲ ＡＧＥ, ＰＬＵＴＯ ＷＡＳ Ａ ＰＬＡＮＥＴ!',
			'Ｂｕｙ ｓｏｍｅｔｈｉｎｇ ｅｘｃｅｐｔ ｄｅｃｏｙ ｎｅｘｔ ｒｏｕｎｄ...',
			'Ｗｈｅｎ ｙｏｕ ｗｅｒｅ ｂｏｒｎ ｔｈｅ ｄｏｃｔｏｒ ｔｈｒｅｗ ｙｏｕ ｏｕｔ ｔｈｅ ｗｉｎｄｏｗ, ａｎｄ ｔｈｅ ｗｉｎｄｏｗ ｔｈｒｅｗ ｙｏｕ ｂａｃｋ.',
			'Ａｔｌｅａｓｔ ｈｉｔｌｅｒ ｋｎｅｗ ｗｈｅｎ ｔｏ ｋｉｌｌ ｈｉｍｓｅｌｆ.',
			'Ｄｏｎ\'ｔ ｂｅ ａ ｌｏｓｅｒ, ｂｕｙ ａ ｒｏｐｅ ａｎｄ ｈａｎｇ ｙｏｕｒｓｅｌｆ.',
			'Ｅｖｅｎ ｉｆ ｙｏｕ ｗｏｕｌｄ ｐｌａｙ ｔｅｔｒｉｓ ｙｏｕ ｗｏｕｌｄ ｔｉｅ ｕｐ.',
			'Ｇｅｔ ｇｏｏｄ, ｇｅｔ ｋｉｌｌｓａｙ ｂｙ ｋ𝟑ｌｓ.',
			'Ｇｅｔ ｇｏｏｄ, ｇｅｔ ｋｉｌｌｓａｙ ｂｙ ｋｅＬｓ.',
			'Ｇｅｔ ｇｏｏｄ, ｇｅｔ ｋｉｌｌｓａｙ ｂｙ ｋｅｋ𝟑ｌｓ.',
			'Ｇｅｔ ｇｏｏｄ, ｇｅｔ ｋｉｌｌｓａｙ ｂｙ ｋｅｋｅＬｓ.',
			'Ｉｆ Ｉ ｗａｎｔｅｄ ａ ｃｕｍｂａｃｋ, Ｉ\'ｄ ｇｅｔ ｉｔ ｏｆｆ ｙｏｕｒ ｍｏｍｓ ｍｏｕｔｈ.',
			'Ｃａｎ\'ｔ ｈｅａｒ ｙｏｕ ｆｒｏｍ ｔｈｅ ｂｏｔｔｏｍ ｏｆ ｔｈｅ ｓｃｏｒｅｂｏａｒｄ.',
			'Ｓｅｌｌ ｙｏｕｒ ｃｏｍｐｕｔｅｒ ａｎｄ ｂｕｙ ａ Ｗｉｉ.',
			'Ｙｏｕ\'ｒｅ ａｓ ｕｓｅｌｅｓｓ ａｓ ｔｈｅ "ｕｅｕｅ" ｉｎ "ｑｕｅｕｅ"',
			'Ｃｈｏｏｓｅ ｙｏｕｒ ｅｘｃｕｓｅ: 𝟏.Ｌａｇｓ | 𝟐.Ｃｆｇ ｔｅｓｔ | 𝟑.Ｌｏｗ ＦＰＳ | 𝟒.Ｌｏｗ ｔｅａｍ | 𝟓.Ｅｎｅｍｙ ｉｓ ＮＬ Ａｌｐｈａ | 𝟔.Ｌｕｃｋｅｒ | 𝟕. Ｓｐｒｅａｄ ｍｉｓｓ | 𝟖. Ｏｓｉｒｉｓ',
			'Ｍｉｒｒｏｓ ｃａｎ\'ｔ ｔａｌｋ. Ｌｕｃｋｙ ｆｏｒ ｙｏｕ, ｔｈｅｙ ｃａｎ\'ｔ ｌａｕｇｈ.',
			'Ｄｉｄ ｙｏｕｒ ｐａｒｅｎｔｓ ｍｅｅｔ ａｔ ａ ｆａｍｉｌｙ ｒｅｕｎｉｏｎ ｂｙ ａｎｙ ｃｈａｎｃｅ?',
			'Ｙｏｕ ｓｕｃｋ ｓｏ ｍｕｃｈ ｄｉｃｋ, ｔｈａｔ ｙｏｕ ｔｕｒｎ ｙｏｕｒ ｅｎｔｉｒｅ ｔｅａｍ ｇａｙ.',
			'ＬＯＬ ｗａｔｃｈｉｎ ｕ ｐｌａｙ ｔｈｉｓ ｇａｍｅ ｉｓ ｌｉｋｅ ｗａｔｃｈｉｎｇ ｈｅｌｅｎ ｋｅｌｌｅｒ ｐｌａｙ ｔｅｎｎｉｓ.',
			'Ｄｕｄｅ ｙｏｕ\'ｒｅ ｓｏ ｆａｔ ｙｏｕ ｒｕｎ ｏｕｔ ｏｆ ｂｒｅａｔｈ ｒｕｓｈｉｎｇ ｍｅ.',
			'Ａｔ ｌｅａｓｔ ｙｏｕ ｄｉｄ 𝟏𝟎𝟎 ｄａｍａｇｅ ｔｏ ｔｈｅ ｗａｌｌ ｂｅｈｉｎｄ ｍｅ.',
			'Ｉ ＰＲＡＹ ＴＯ ＧＯＤ Ａ ＰＡＣＫ ＯＦ ＷＯＬＶＥＳ ＲＡＰＥＳ ＹＯＵ ＩＮ ＴＨＥ ＤＥＡＤ ＯＦ ＷＩＮＴＥＲ ＡＮＤ ＦＯＲＣＥＳ ＹＯＵ ＴＯ ＷＡＬＫ ＨＯＭＥ ＢＡＲＥＦＯＯＴ!',
			'Ｓｅｒｖｅｒ ｃｖａｒ "ｓｖ_ｒｅｋｔ" ｃｈａｎｇｅｄ ｔｏ 𝟏',
			'Ｉ\'ｄ ｌｏｖｅ ｔｏ ｓｅｅ ｔｈｉｎｇｓ ｆｒｏｍ ｙｏｕｒ ｐｅｒｓｐｅｃｔｉｖｅ, ｂｕｔ Ｉ ｄｏｎ\'ｔ ｔｈｉｎｋ Ｉ ｃｏｕｌｄ ｓｈｏｖｅ ｍｙ ｈｅａｄ ｔｈａｔ ｆａｒ ｕｐ ｍｙ ａｓｓ.',
			'Ｙｏｕ\'ｒｅ ａｂｏｕｔ ａｓ ｕｓｅｆｕｌ ａｓ ｐｅｄａｌｓ ｏｎ ａ ｗｈｅｅｌｃｈａｉｒ.',
			'Ｙｏｕ ｓｈｏｏｔ ｌｉｋｅ ａｎ ＡＩ ｄｅｓｉｇｎｅｄ ｂｙ ａ 𝟏𝟎 ｙｅａｒ ｏｌｄ.',
			'Ｙｏｕ’ｒｅ ｔｈｅ ｒｅａｓｏｎ Ｇｏｄ ｃｒｅａｔｅｄ ｔｈｅ ｍｉｄｄｌｅ ｆｉｎｇｅｒ.',
			'Ｉ\'ｍ ｇｌａｄ ｔｏ ｓｅｅ ｙｏｕ\'ｒｅ ｎｏｔ ｌｅｔｔｉｎｇ ｙｏｕｒ ｅｄｕｃａｔｉｏｎ ｇｅｔ ｉｎ ｔｈｅ ｗａｙ ｏｆ ｙｏｕｒ ｉｇｎｏｒａｎｃｅ.',
			'Ｈｅｙ ｄｕｄｅ, ｗｈａｔ ｃｏｎｔｒｏｌｌｅｒ ａｒｅ ｙｏｕ ｕｓｉｎｇ?',
			'Ｇｅｔ ｔｈｅ ｂｏｍｂ, ａｔ ｌｅａｓｔ ｙｏｕ ｗｉｌｌ ｃａｒｒｙ ｓｏｍｅｔｈｉｎｇ ｔｈｉｓ ｇａｍｅ.',
			'Ｉｆ ｙｏｕ ｗｅｒｅ ａ ＣＳＧＯ ｍａｔｃｈ, ｙｏｕｒ ｍｏｔｈｅｒ ｗｏｕｌｄ ｈａｖｅ ａ 𝟏 ｍｏｎｔｈ ｃｏｏｌｄｏｗｎ ａｌｌ ｔｈｅ ｔｉｍｅ, ｂｅｃａｕｓｅ ｓｈｅ ｋｅｐｔ ａｂａｎｄｏｎｉｎｇ ｙｏｕ.',
			'Ｐｒｏｔｉｐ: Ｕｓｉｎｇ ａ ｂｒａｉｎ ｉｓ ｒｅｃｏｍｍｅｎｄｅｄ.',
			'Ｗａｔｃｈｉｎｇ ｙｏｕ ｐｌａｙ ｉｓ ｍａｋｉｎｇ ｍｙ ｂｒａｉｎ ｃｅｌｌｓ ｗａｎｔ ｃｏｍｍｉｔ ｓｕｉｃｉｄｅ.',
			'Ｄｉｄ ｙｏｕ ｋｎｏｗ ｗｈａｔ ｔｈｉｓ ｇａｍｅ ｉｓ ｆｒｅｅ ｔｏ ｕｎｉｎｓｔａｌｌ?',
			'Ｉｔ ｗａｓ ａ ｓａｄ ｄａｙ ａｔ ｔｈｅ ｈｏｓｐｉｔａｌ ｗｈｅｎ ｙｏｕ ｃｒａｗｌｅｄ ｏｕｔ ｏｆ ｔｈｅ ａｂｏｒｔｉｏｎ ｂｕｃｋｅｔ.',
			'Ｄｏ ｙｏｕ ｍａｋｅ ｅｙｅ-ｃｏｎｔａｃｔ ｗｈｅｎ ｙｏｕ\'ｒｅ ｆｕｃｋｉｎｇ ｙｏｕｒ ｄａｄ ｉｎ ｔｈｅ ａｓｓ?',
			'Ｉｓ ｙｏｕｒ ｍｏｎｉｔｏｒ ｏｎ?',
			'Ｙｏｕｒ ｆａｍｉｌｙ ｍｕｓｔ ｈａｖｅ ａ ｍｏｔｔｏ ｏｆ Ｉｎｃｅｓｔ ｉｓ Ｗｉｎｃｅｓｔ ｆｏｒ ｙｏｕ ｔｏ ｂｅ ｔｈａｔ ｒｅｔａｒｄｅｄ.',
			'Ｍｙ ｋｎｉｆｅ ｉｓ ｗｅｌｌ-ｗｏｒｎ, ｊｕｓｔ ｌｉｋｅ ｙｏｕｒ ｍｏｔｈｅｒ.',
			'Ｂｈｏｐｐｅｄ ｔｏ ｙｏｕｒ ｍｏｍ\'ｓ ｃｕｎｔ ｌａｓｔ Ｓｕｎｄａｙ, ｋｅｋ.',
			'Ｉｔ\'ｓ ｎｏｔ ｔｈａｔ ｙｏｕ\'ｒｅ ｉｎｔｉｍｉｄａｔｉｎｇ, ｙｏｕｒｅ ｆａｃｅ ｉｓ ｊｕｓｔ ｄｉｆｆｉｃｕｌｔ ｔｏ ｌｏｏｋ ａｔ.',
			'Ｉ ｂｅｔ ｙｏｕ\'ｒｅ ｔｈｅ ｔｙｐｅ ｏｆ ｄｕｄｅ ｔｈａｔ ｌｉｋｅｓ ｉｔ ｗｈｅｎ ｙｏｕｒ ｔｏｉｌｅｔ ｐａｐｅｒ ｂｒｅａｋｓ ａｎｄ ｙｏｕｒ ｆｉｎｇｅｒ ｓｌｉｄｅｓ ｕｐ ｙｏｕｒ ａｓｓｈｏｌｅ.',
			'Ｙｏｕ\'ｒｅ ｇｏｉｎｇ ｔｏ ｇｉｖｅ ｍｅ ａｎ ａｎｅｕｒｙｓｍ.',
			'Ｙｏｕ\'ｒｅ ｇｏｉｎｇ ｔｏ ｇｉｖｅ ｍｅ ａｎ ａ ｂｌｏｗｊｏｂ?',
			'Ｙｏｕ\'ｒｅ ｇｏｉｎｇ ｔｏ ｇｉｖｅ ｍｅ ａｎ ａ ｄｅｅｐｔｈｒｏａｔ?',
			'ＥＺ ＫＡＴＫＡ',
			'Ｒｅｓｔ ｉｎ ｓｐａｇｈｅｔｔｉ ｎｅｖｅｒ ｆｏｒｇｅｔｔｉ.',
			'Ｒｉｐｏｓａｒｅ ｉｎ ｐａｃｅ.',
			'Ｍａｙｂｅ ｉｆ ｙｏｕ ｓｔｏｐｐｅｄ ｔａｋｉｎｇ ｌｏａｄｓ ｉｎ ｔｈｅ ｍｏｕｔｈ ｙｏｕ ｗｏｕｌｄｎ\'ｔ ｂｅ ｓｏ ｓａｌｔｙ.',
			'ｂｖｆｎｄｓｕｂｍｄｓｊ ｖｕｄｓａ,ｖｓｊｎｆｎ   ., .,.,',
			'ｎｓ ｘｊ ｆ[ｅｔｋｆ ｎｆｖ ｃｊｄｃｔｖ ,ｋｚｌｍ? Ｇｂｌｆｈｆｃ ｔ,ｆｙｓｑ ｇｊｉ`ｋ ｙｆ[ｅｑ ｖｅｌｂｋｆ ｔ,ｆｙｆｚ',
			'ＳＯＲＲＹ ＪＵＳＴ ＣＬＥＡＮＩＮＧ ＴＨＥ ＪＩＺＺ ＯＦ ＭＹ ＫＥＹＢＯＡＲＤ!!',
			'Ｉｔ\'ｓ ｉｍｐｏｓｓｉｂｌｅ ｔｏ ｕｎｄｅｒｅｓｔｉｍａｔｅ ｙｏｕ.',
			'Ｙｏｕ ｋｎｏｗ ａｌｌ ｔｈｏｓｅ ｔｉｍｅｓ ｙｏｕｒ ｐａｒｅｎｔｓ ｓａｉｄ ｖｉｄｅｏ ｇａｍｅｓ ｗｏｕｌｄ ｇｅｔ ｙｏｕ ｎｏｗｈｅｒｅ? Ｔｈｅｙ ｗｅｒｅ ｒｉｇｈｔ.',
			'Сука блять, иди нахуй пидор бля.',
			'Ｉｆ ＣＳ:ＧＯ ｉｓ ｔｏｏ ｈａｒｄ ｆｏｒ ｙｏｕ ｍａｙｂｅ ｃｏｎｓｉｄｅｒ ａ ｇａｍｅ ｔｈａｔ ｒｅｑｕｉｒｅｓ ｌｅｓｓ ｓｋｉｌｌ, ｌｉｋｅ ｉｄｋ.... ｓｏｌｉｔａｉｒｅ?',
			'Ｗｈｏ ａｒｅ ｙｏｕ ｓｐｏｎｓｏｒｅｄ ｂｙ? Ｐａｒｋｉｎｓｏｎ\'ｓ?',
			'Ｙｏｕｒ ｆａｍｉｌｙ ｔｒｅｅ ｍｕｓｔ ｂｅ ａ ｃｉｒｃｌｅ.',
			'ＤＯ ＹＯＵ ＰＬＡＹ ＷＩＴＨ Ａ ＲＡＣＩＮＧ ＷＨＥＥＬ?',
			'Ｙｏ ｍｏｍｍａ ｓｏ ｆａｔ, ｓｈｅ ｇｅｔｓ ｓｔｕｃｋ ａｔ ＫＦＣ ｄｏｏｒｓ.',
			'Ｙｏ ｍｏｍｍａ ｓｏ ｆａｔ, ｓｈｅ ｇｅｔｓ ｓｔｕｃｋ ａｔ ＭｃＤｏｎａｌｄ\'ｓ ｄｏｏｒｓ.',
			'Ｉ\'ｍ ｔｈｅ ｒｅａｓｏｎ ｙｏｕｒ ｄａｄ\'ｓ ｇａｙ.',
			'ＣＲＹ ＨＥＲＥ ---> \\__/ <--- Ａｆｒｉｃａｎｓ ｎｅｅｄ ｗａｔｅｒ.',
			'Ｙｏｕ ｌｏｏｋ ｌｉｋｅ ｙｏｕ ｈａｖｅ ｐａｒｋｉｎｓｏｎｓ ｙｏｕ ｓｈａｋｅ ａｎｄ ｂａｋｅ ｆｕｃｋ-ｋｎｕｃｋｌｅ.',
			'Ｉｓ ｙｏｕｒ ａｓｓ ｊｅａｌｏｕｓ ｏｆ ｔｈｅ ａｍｏｕｎｔ ｏｆ ｓｈｉｔ ｔｈａｔ ｊｕｓｔ ｃａｍｅ ｏｕｔ ｏｆ ｙｏｕｒ ｍｏｕｔｈ?',
			'Ｙｏｕ ｃａｎ ｆｅｅｌ ｔｈｅ ａｕｔｉｓｍ, ｃｕｚ ｉｔ\'ｓ ｕｒ ｂｅｓｔ ｆｒｉｅｎｄ.',
			'Ｙｏｕ ｃａｎ ｆｅｅｌ ｔｈｅ ａｕｔｉｓｍ, ｃｕｚ ｉｔ\'ｓ ｕｒ ｂｏｙｆｒｉｅｎｄ.',
			'Ｄｏｎ\' ｔａｌｋ ｔｏ ｍｅ, ｄｏｕｂｌｅ ｄａｄ\'ｓ ｋｉｄ.',
			'Ｉ\'ｍ ｇｏｎｎａ ｐｌａｎｔ ａ ｔｒｅｅ ｉｎ ｙｏｕｒ ｍｏｍ\'ｓ ａｓｓ ａｎｄ ｔｈｅｎ ｆｕｃｋ ｙｏｕｒ ｓｉｓｔｅｒ ｉｎ ｉｔｓ ｓｈａｄｅ.',
			'Ｙｏｕｒ ｍｏｔｈｅｒ\'ｓ ｂｒｅａｓｔｓ ｓａｇ ｗｉｔｈ ｓｕｃｈ ｓｅｖｅｒｉｔｙ ｔｈａｔ ｔｈｅ ｌａｔｅ, ｇｒｅａｔ ｓｕｒｒｅａｌｉｓｔ ａｒｔｉｓｔ Ｓａｌｖａｄｏｒ Ｄａｌｉ ｍｉｓｔｏｏｋ ｔｈｅｍ ｆｏｒ ｃｌｏｃｋｓ.',
			'Ｙｏｕ ａｒｅ ｔｈｅ ｒｅａｓｏｎ ｔｈｅｙ ｐｕｔ ｉｎｓｔｒｕｃｔｉｏｎｓ ｏｎ ｓｈａｍｐｏｏ.',
			'Ｙｏｕｒ ｍａｍａ\'ｓ ｓｏ ｆａｔ ｈｅｒ ｐａｔｒｏｎｕｓ ｉｓ ａ ｃａｋｅ.',
			'Ｙｏｕｒ ｍａｍａ\'ｓ ｓｏ ｆａｔ, ｔｈｅ Ｓｏｒｔｉｎｇ Ｈａｔ ｓｏｒｔｅｄ ｈｅｒ ｉｎｔｏ ｔｈｅ Ｈｏｕｓｅ ｏｆ Ｐａｎｃａｋｅｓ.',
			'Ｙｏｕｒ Ｍｏｍ ｓｈｏｕｌｄ ｈａｖｅ ｓｗａｌｌｏｗｅｄ ｙｏｕ...',
			'Ｙｏｕ ｓｕｃｋ ｍｏｒｅ ｔｈａｎ ａ ｓｕｃｋ ｍａｃｈｉｎｅ ｓｅｔ ｏｎ "ｓｕｃｋ ａ ｌｏｔ".',
			'Ｙｏｕ ｓｕｃｋ ｍｏｒｅ ｔｈａｎ ａ ｈｏｏｋｅｒ ａｔ ａ ｖａｃｕｕｍ ｃｌｅａｎｅｒ ｃｏｎｖｅｎｔｉｏｎ.',
			'Ｉ\'ｌｌ ｆｕｃｋ ｙｏｕ \'ｔｉｌ ｙｏｕ ｌｏｖｅ ｍｅ, ｆａｇｇｏｔ. <𝟑',
			'Ｙｏｕｒ ｍｏｍ ｉｓ ｓｏ ｆａｔ, ｓｈｅ ｓｈｏｕｌｄ ｐｒｏｂａｂｌｙ ｂｅ ｗｏｒｒｉｅｄ ａｂｏｕｔ ｔｈｅ ｉｎｃｒｅａｓｅｄ ｒｉｓｋ ｏｆ ｃａｒｄｉｏｖａｓｃｕｌａｒ ｄｉｓｅａｓｅ.',
			'Ｙｏ ｍａｍｍａ\'ｓ ｓｏ ｆａｔ, ｓｈｅ\'ｌｌ ｐｒｏｂａｂｌｙ ｈａｖｅ ｂｏｔｈ ｋｎｅｅｓ ｒｅｐｌａｃｅｄ ｂｅｆｏｒｅ ｓｈｅ ｔｕｒｎｓ 𝟓𝟎.',
			'Ｉｆ Ｉ ｈａｄ ａ ｄｏｌｌａｒ ｆｏｒ ｅｖｅｒｙ ｂｒａｉｎ ｙｏｕ ｄｏｎ\'ｔ ｈａｖｅ, Ｉ\'ｄ ｈａｖｅ ＯＮＥ ｄｏｌｌａｒ.',
			'Ｕｒ ｓｈｉｔ ｔｈｉｎｋｓ ｂｅｔｔｅｒ ｔｈａｎ ｕ.',
			'Ｄｉｄ ｙｏｕ ｈｅａｒ ａ ｂｅｌｌ ｒｉｎｇ? Ｂｅｃａｕｓｅ ｓｏｍｅｏｎｅ ｊｕｓｔ ｇｏｔ ｓｃｈｏｏｌｅｄ.',
			'Ｎｏ ｈｕｂａ ｂｕｂａ ｔｏｄａｙ.',
			'ＳＵＣＨ Ａ ＢＡＤＤＩＥ.',
			'𝟐ｂａｄ𝟒ｍｅ',
			'Ｏｗｎｅｄ.',
			'Ｄｉｅｄ ａｇａｉｎ?!',
			'Ｗｅｌｃｏｍｅ ｔｏ ｔｈｅ ＧＵＬＡＧ!',
			'ＨＵＬＫ ＳＭＡＳＨ!',
			'ＴＨＩＳ ＩＳ ＳＰＡＲＴＡ!',
			'Ｉ\'ｖ ｇｏｔ ｔｈｅ ｐｏｗｅｒ!',
			'Ｌｉｌ Ｘａｎ, ＯＯｈｄｅｍ Ｂｅａｔｚ - Ｗｈｏ Ａｒｅ Ｙｏｕ',
			'ｅｚ',
			'ｔｏｏ ｆｕｃｋｉｎｇ ｅａｓｙ',
			'ｅｆｆｏｒｔｌｅｓｓ',
			'ｅａｓｉｅｓｔ ｋｉｌｌ ｏｆ ｍｙ ｌｉｆｅ',
			'ｒｅｔａｒｄ ｂｌａｓｔｅｄ',
			'ｃｌｅａｎｓ?',
			'ｎｉｃｅ ｍｅｍｅｓｅｎｓｅ ｒｅｔａｒｄ',
			'ｈｅｌｌｏ ｍｉｎｄ ｅｘｐｌａｉｎｉｎｇ ｗｈａｔ ｈａｐｐｅｎｅｄ ｔｈｅｒｅ',
			'ｐｏｕｎｃｅ ｏｕｔ ｏｆ ｙｏｕｒ ｗｉｎｄｏｗ ｄｉｓｇｕｓｔｉｎｇ ｔｒａｎｎｙ, ｙｏｕ ｓｈｏｕｌｄｎｔ ｅｘｉｓｔ ｉｎ ｔｈｉｓ ｗｏｒｌｄ',
			'ｌｍａｏ ｕｒ ｓｏ ｕｇｌｙ ｉｒｌ ｌｉｋｅ ｂｒｏ ｄｏｅｓｎｔ ｉｔ ｈｕｒｔ ｔｏ ｌｉｖｅ ｌｉｋｅ ｔｈａｔ, ｂｔｗ ｙｏｕ ｋｎｏｗ ｙｏｕ ｃａｎ ｊｕｓｔ ｅｎｄ ｉｔ ａｌｌ',
			'ｔａｋｅ ｔｈｅ ｃｏｏｌｄｏｗｎ ａｎｄ ｌｅｔ ｙｏｕｒ ｔｅａｍ ｓｕｒｒ ｒｅｔａｒｄ',
			'ｎｎ𝟒ｉｋ ｓｈａｔ ｏｎ',
			'ｇｏ ｔａｋｅ ｓｏｍｅ ｅｓｔｒｏｇｅｎ ｔｒａｎｎｙ',
			'ｕｉｄ ｐｏｌｉｃｅ ｈｅｒｅ ｐｒｅｓｅｎｔ ｙｏｕｒ ｕｓｅｒ ｉｄｅｎｔｉｆｉｃａｔｉｏｎ ｎｕｍｂｅｒ ｒｉｇｈｔ ｎｏｗ',
			'ｔｒａｎｎｙ ｈｏｌｚｅｄ',
			'ｂｅｔｔｅｒ ｂｕｙ ｔｈｅ ｓｕｐｅｒｉｏｒ ｈａｃｋ!',
			'ｗｈａｔｃｈａ ｓｈｏｏｔｉｎ ａｔ ｒｅｔａｒｄ',
			'ｉｍａｇｉｎｅ ｌｏｓｉｎｇ ａｔ ｖｉｄｅｏ ｇａｍｅｓ ｃｏｕｌｄｎ\'ｔ ｅｖｅｒ ｂｅ ｍｅ',
			'ｎｉｃｅ ｔｈｉｒｄｗｏｒｌｄｓｐｅａｋ ＲＯＦＬ',
			'ｎｉｃｅ ｃｈｒｏｍｏｓｏｍｅ ｃｏｕｎｔ ｙｏｕ ｓｅｌｌ??',
			'ｎｉｃｅ 𝟎.𝟓ｘ𝟎.𝟓ｍ ｒｏｏｍ ｙｏｕ ｐｏｏｒｆａｇ, ｈｏｗ ｔｈｅ ｆｕｃｋ ｄｉｄ ｙｏｕ ａｆｆｏｒｄ ａｎ ａｃｃ ｈｈｈｈｈｈ',
			'ｇｅｔ 𝟏\'ｓ ｇｅｔ ｂｒａｉｎ',
			'ｅｚ',
			'ｅｆｆｏｒｔｌｅｓｓ',
			'ｙｏｕ ｐａｙ ｆｏｒ ｔｈａｔ?',
			'ｒｅｆｕｎｄ ｒｉｇｈｔ ｎｏｗ',
			'ｃｏｎｓｉｄｅｒ ｓｕｉｃｉｄｅ',
			'ｂｒｏ ａｒｅ ｕ ｃｌｅａｎ?',
			'ａｎｏｔｈｅｒ ｒｅｔａｒｄ ｂｌａｓｔｅｄ',
			'ｈｈｈｈｈｈｈｈｈｈｈｈｈｈｈｈｈｈ 𝟏, ｙｏｕ ｐａｙ ｆｏｒ ｔｈａｔ? ｒｅｆｕｎｄ ｓｏ ｍａｙｂｅ ｙｏｕｌｌ ａｆｆｏｒｄ ｓｏｍｅ ｆｏｏｄ ｆｏｒ ｙｏｕｒ ｆａｍｉｌｙ ｔｈｉｒｄｗｏｒｌｄ ｍｏｎｋｅｙ',
			'ｐａｓｔｅｒ ａｂａｎｄｏｎｅｄ ｔｈｅ ｍａｔｃｈ ａｎｄ ｒｅｃｅｉｖｅｄ ａ 𝟕 ｄａｙ ｃｏｍｐｅｔｉｔｉｖｅ ｍａｔｃｈｍａｋｉｎｇ ｃｏｏｌｄｏｗｎ',
			'ｆｒｅｅｑｎ.ｎｅｔ/ｒｅｆｕｎｄ.ｐｈｐ',
			'ｒｅｆｕｎｄ ｙｏｕｒ ｒａｉｎｂｏｗｈｏｏｋ ｒｉｇｈｔ ｎｏｗ ｐａｓｔｅｕｓｅｒ ｄｏｇ',
			'ＪＡＪＡＪＡＪＪＡＪＡ ＮＩＣＥ ＲＡＩＮＢＯＷＰＡＳＴＥ ＲＯＦＬ',
			'𝟏𝟒𝟎ｅｒ????',
			'ｇｅｔ ｇｏｏｄ ｇｅｔ ｖａｎｔａｐ𝟒ｉｋ',
			'ｓｔｏｐ ｓｐｅｎｄｉｎｇ ｙｏｕｒ ｌｕｎｃｈ ｍｏｎｅｙ ｏｎ ｓｈｉｔｐａｓｔｅｓ ｒｅｔａｒｄ',
			'𝟏 ｂｕｔ ａｌｌ ｙｏｕ ｎｅｅｄ ｔｏ ｆｉｘ ｙｏｕｒ ｐｒｏｂｌｅｍｓ ｉｓ ａ ｒｏｐｅ ａｎｄ ａ ｃｈａｉｒ ｙｏｕ ｕｇｌｙ ｓｈｉｔ',
			'ｗｈｏ (кто) ａｒｅ ｙｏｕ (ннчик) ｗａｔｔａｆａｋ ｍｅｎｓ???????',
			'ｗｈｏ (ｋｔｏ) ａｒｅ ｙｏｕ (ｎｎ𝟒ｉｋ) ｗａｔｔａｆａｋ ｍｅｎｓ???????',
			'ｍｕｓｔ ｂｅ ａｎ ｕｉｄ ｉｓｓｕｅ',
			'ｈｏｌｙ ｓｈｉｔ ｃｏｎｓｉｄｅｒ ｒｅｆｕｎｄｉｎｇ ｙｏｕｒ ｔｒａｓｈ ｐａｓｔｅ ｒｏｆｌ',
			'ｔｈａｔｓ ｇｏｉｎｇ ｉｎ ｍｙ ｍｅｄｉａ ｃｏｍｐｉｌａｔｉｏｎ ｒｉｇｈｔ ｔｈｅｒｅ ｇｅｔ ｓｈａｍｅｄ ｒｅｔａｒｄ ｒｏｆｌ',
			'ｉｍａｇｉｎｅ ｔｈｅ ｏｎｌｙ ｔｈｉｎｇ ｙｏｕ ｅａｔ ｂｅｉｎｇ ｂｕｌｌｅｔｓ ｍａｎ ｂｅｉｎｇ ａ ｔｈｉｒｄｗｏｒｌｄｅｒ ｍｕｓｔ ｓｕｃｋ ｒｏｆｌ',
			'ｓｏ ｆｕｃｋｉｎｇ ｅｚ',
			'ｂｏｔ_ｋｉｃｋ',
			'ｂｏｔ_ｋｉｌｌ',
			'ｗｈｅｒｅ ｔｈｅ ｅｎｅｍｉｅｓ ａｔ????',
			'ｈｅｌｌｏ ｐｌｅａｓｅ ｒｅｆｕｎｄ ｙｏｕｒ ｓｕｂｐａｒ ｐｒｏｄｕｃｔ',
		},

		CancerStrike = {
			'LOL fuk u silver scUm',
			'nice aim doEs It cume in NOT N00be?',
			'u r terible my doode',
			'u almost hit me that time LOL',
			'ur aim iz a joke my man',
			'get shrekt skrub xdddd',
			'u just got shitted on kidddd',
			'i bet u r silver on csgo xD',
			'u never stood a chance against my pSkillz',
			'ur just 2bad to kill me :^(',
			'dam im good',
			'u wil never beat aimware hax kidd :^)',
			'eat shit and die xdd',
			'i laugh at ur shit skillz :D',
			'get fukn owned kid xd',
			'i kill u every time u shud try harder :^(',
			'all u can do is die LOL',
			'N00bez like u cant beat me LOL',
			'u tried but im jus 2 gud 4 u',
			'u cant even hit me LOL uninstall kid xd',
			'git GUD skrub u r an embarasment',
			'pathetic LOL',
			'2 bad so sad u just bad :^(',
			'im global elit in csgo xd',
			'thx 4 free kill loser :D',
			'r u even trying???',
			'top kekt u got rekt',
			'fuken smashed kunt :D',
			'u shud add me so i can teach u how 2 shoot LOL',
			'ur jus 2 weak and sad to beat me xd',
			'looks liek ur sad life isnt working out 2 well 4 u :D',
			'dats all u got??? LOL!',
			'dont upsetti hav some spagetti',
			'eat my asse like a bufet (3 corse meal xd)',
			'i ownt u in ur gay butth0le',
			'umade noobe?',
			'le troled hard',
			'go wach naturo and play wif urself fag REKT',
			'LOL i fuckd u so hard just like ur mum lst nit fag',
			'u play liek a blynd stefen hawkin haha',
			'ARE U GUEYS NEW??',
			'are u as bad at life as u are in csgo??',
			'omg this is 2 ezy are U even trying??',
			'why dont u go play halo an fist ur butthol faget',
			'hey granma is that u???? LOL so bad',
			'time for you 2 uninstale the game shit stane',
			'congrtulations ur the worlds worst csgo player',
			'dose ur aim come in NOT NOOBE? LMAO',
			'lol i troled u so hard *OWNED*',
			'\'i lik 2 eat daddys logs of poo for lucnh while jackn off 2 naturo\'- u',
			'take a se4t faget $hitstain u got OWNDE',
			'LOL scrub ur gettin rekt hardcroe',
			'R u mad becouse ur bad nooby?',
			'LMAO did u go to da buthurt king an g3t urself a butthurt with fries?!?',
			'why dont u go and play manoppoly you noob',
			'you hav no lyfe you cant evan play csgo propaly',
			'im hi rite now on ganj but im stil ownen u xD',
			'if u want my cum bake ask ur mum LOL',
			'butdocter prognoses: OWND',
			'cry 2 ur dads dick forver noob',
			'lol troled autismal faget',
			'LOL N3RD owned',
			'\'i love to drink sprems all day\'- u',
			'crushd nerd do u want a baindaid for that LOL',
			'lol rectal rekage ur so sh1t lol',
			'ass states - [ ] NOT REKT -> [X] REKT',
			'lmao do u even try????',
			'are u slippan off ur chaire cos ur ass is bleeding so hard??',
			'u better get a towel for all ur tears faget',
			'u got ass asassenated by me rofl',
			'u wont shit agen thats how rekt ur ass is',
			'i bet youre anus is sore from me ownen u LOL',
			'im gonna record a fragshow so i can watch me pwn u ova and ova LMAO',
			'i almost feel sorry for you hahahaha',
			'lol why dont u play COD so i can own you there too',
			'how dose it feel to be owneded so hartd??',
			'rekt u lol another one for the fraghsow',
			'if i was as bade as u i would kil myself',
			'dont fell bad not ervry one can be goode',
			'do u need some loob for ur butt so it doesnt hurt so much when i fuck u',
			'spesciall delivary for CAPTEN BUTTHURT',
			'wats wrong cant play wif ur dads dik in ur mouth????',
			'maybe if u put down the cheseburgers u could kill me lol fat nerd',
			'getting mad u virgan nerd??',
			'butt docta prognosis: buttfustrated',
			'<<< OWEND U >>>',
			'if u were a fish you wuld be a sperm whael LOL',
			'>mfw i ownd u',
			'rekt u noob *OWNED*',
			'ur gonna have 2 wear dipers now cos ur ass got SHREDED by me',
			'y dont u take a short strole to the fagot store and buy some skills scrub',
			'school3d by a 13yo lol u r rely bad',
			'ur pathetic nerd its like u have parkensons',
			'u just got promoted 2 cumcaptain prestige',
			'lol pwnd',
			'u just got butt raped lol TROLLED U',
			'did u learn 2 aim from stevie wondar??? LOL',
			'tell ur mum to hand the keyboard and mosue back',
			'how does it feel to be shit on by a 13 yer old',
			'r u into scat porns or some thing cos it feel\'s like u want me 2 shit on u',
			'u play csgo like my granpa and hes ded',
			'are u new or just bad?? noobe',
			'u play csgo lik a midget playin basket ball',
			'welcome to the noob scoole bus first stop ur house <<PWND>>',
			'>mfw i rek u',
			'\'i got my ass kiked so hard im shittn out my mouf\' - u',
			'<-(0.0)-< dats u gettn ownd LOL',
			'u just got ur ass ablitterated <<<RECKT>>>',
			'c=3 (dats ur tiney dik rofl)',
			'just leeve the game and let the real mans play',
			'ur so bad u make ur noobe team look good',
			'CONGRASTULATIONS YOU GOT FRIST PRIZE IN BEING BUTT MAD (BUT LAST IN PENIS SIZE LMAO)',
			'im not even trying to pwn u its just so easy',
			'im only 13 an im better than u haha XD',
			'u just got raped',
			'some one an ambulance cos u just got DE_STROYED',
			'i hope u got birth control coz u got rapped',
			'lol pwnd scrubb',
			'you play lik a girl',
			'\'i got fukd so hard dat im cummin shit n shittn cum\'- u',
			'ur gonna need tampons for ur ass afta that ownage',
			'{{ scoooled u }}',
			'(O.o) ~c======3 dats me jizzan on u',
			'dont worry at least ur tryan XD',
			'cya noob send me a post card from pwnd city ROFL',
			'its ok if u keep practasing u will get bettar lol #rekt',
			'\'evry time i fart 1 liter of cum sqerts out\' - u',
			'rofl i pwnd u scrub #420 #based #mlgskill',
			'u fail just like ur dads condom',
			'if i pwnd u any harder it wud be animal abuse',
			'uploaden this fragshow roflmao',
		},

		Questions = {
			'Whats the max tabs you can have open on a vpn',
			'Whats the time',
			'Is it possible to make a clock in binary',
			'How many cars can you drive at once',
			'Did you know there\'s more planes on the ground than there is submarines in the air',
			'How many busses can you fit on 1 bus',
			'How many tables does it take to support a chair',
			'How many doors does it take to screw a screw',
			'How long can you hold your eyes closed in bed',
			'How long can you hold your breath for under spagetti',
			'Whats the fastest time to deliver the mail as a mail man',
			'How many bees does it take to make a wasp make honey',
			'If I paint the sun blue will it turn blue',
			'How many beavers does it take to build a dam',
			'How much wood does it take to build a computer',
			'Can i have ur credit card number',
			'Is it possible to blink and jump at the same time',
			'Did you know that dinosaurs were, on average, large',
			'How many thursdays does it take to paint an elephant purple',
			'If cars could talk how fast would they go',
			'Did you know theres no oxygen in space',
			'Do toilets flush the other way in australia',
			'If i finger paint will i get a splinter',
			'Can you build me an ant farm',
			'Did you know australia hosts 4 out of 6 of the deadliest spiders in the world',
			'Is it possible to ride a bike in space',
			'Can i make a movie based around your life',
			'How many pants can you put on while wearing pants',
			'If I paint a car red can it wear pants',
			'How come no matter what colour the liquid is the froth is always white',
			'Can a hearse driver drive a corpse in the car pool lane',
			'How come the sun is cold at night',
			'Why is it called a TV set when there is only one',
			'If i blend strawberries can i have ur number',
			'If I touch the moon will it be as hot as the sun',
			'Did u know ur dad is always older than u',
			'Did u know the burger king logo spells burger king',
			'Did u know if u chew on broken glass for a few mins, it starts to taste like blood',
			'Did u know running is faster than walking',
			'Did u know the colour blue is called blue because its blue',
			'Did u know a shooting star isnt a star',
			'Did u know shooting stars dont actually have guns',
			'Did u know the great wall of china is in china',
			'Statistictal fact: 100% of non smokers die',
			'Did u kmow if you eat you poop it out',
			'Did u know rain clouds r called rain clouds cus they are clouds that rain',
			'If cows drink milk is that cow a cannibal',
			'Did u know you cant win a staring contest with a stuffed animal',
			'Did u know if a race car is at peak speed and hits someone they\'ll die',
			'Did u know the distance between the sun and earth is the same distance as the distance between the earth and the sun',
			'Did u know flat screen tvs arent flat',
			'Did u know aeroplane mode on ur phone doesnt make ur phone fly',
			'Did u know too many birthdays can kill you',
			'Did u know rock music isnt for rocks',
			'Did u know if you eat enough ice you can stop global warming',
			'If ww2 happened before vietnam would that make vietnam world war 2',
			'Did u know 3.14 isn\'t a real pie',
			'Did u know 100% of stair accidents happen on stairs',
			'Can vampires get AIDS',
			'What type of bird was a dodo',
			'Did u know dog backwards is god',
			'Did you know on average a dog barks more than a cat',
			'Did u know racecar backwards is racecar',
			'If you were a CSGO match, your mother would have a 7day cooldown all the time, because she kept abandoning you.',
			'Get the bomb, at least you will carry something in this game.',
		},

		hentai = {
			'S-Sorry, onii-chan, p-please d-do me harder ;w;',
			'Y-You got me, im all wet now, Senpai!',
			'D-Don\'t t-touch me there, Senpai!',
			'P-Please, l-love me harder, oniichan, ohh grrh aahhhh~!',
			'Give me all your semen, Senpai, ahhhhh~',
			'F-Fuck me harder, onii-chan!',
			'Oh my god, I hate you so much, Senpai, but please, k-keep fucking me harder! ahhh~',
			'D-Do you like my stripped panties getting soaked by you and your hard cock? ehhh master you\'re so lewd ^0^~',
			'Kun, your cute little dick between my pussy lips looks really cute, I\'m blushing',
			'M-Master, does it feel good when I slide by tits up and down on your cute manly part?',
			'O-Oniichan, my t-toes are so warm with your cum all over them uwu~',
			'Lets take this swimsuit off already <3 i\'ll drink your unknown melty juice',
			'S-Stop, Senpai, if we keep making these lewd sounds im going to cum~~',
			'You\'re such a pervert for filling me up with your baby batter, Senpai~~',
			'Fill up my baby chamber with your semen, kun, ^-^',
			'M-Master, d-dont spank my petite butt so hard ahhhH~~~ you\'re getting me so w-wet~',
			'Senpai, your cock is already throbbing from my huge tits~',
			'Hey kun, Can I have some semen?',
			'M-My baby chamber is overflowing with your semen, M-Master',
			'Fill my throat pussy with your semen, kun',
			'It-It\'s not gay if you\'re wearing thigh highs, M-Master',
			'I-I need somewhere to blow my load. Can i borrow your bussy?',
			'A-ah shit... Y-your cock is big and in my ass -- already~?!',
			'I\'ll swallow your sticky essence along with you~!',
			'B-Baka, please let me be your femboy sissy cum slut!',
			'That\'s a penis UwU you towd me you wewe a giww!!',
			'Ahhhh... It\'s like a dream come true... I get to stick my dick inside your ass...!',
			'Hey, who wants a piece of this plump 19-year-old boy-pussy? Single file, boys, come get it while it\'s hot!',
			'M-Master, if you keep thrusting that hard, my boobs will fall off!',
			'When do you wanna meet up again? I\'ve really taken a liking to your dick! (,,◠∇◠) I want you and only you to slam it into my pussy every day! (≧∇≦)',
			'All I did was crossplay \'cause I felt like it might be fun... But now I\'m just a little girl that cums from big dicks!',
			'D-Don\'t get the wrong idea!!! I don\'t w-want you to fuck my b-bussy because I l-love you or anything! d-definitely not!',
			'I-I know I said you could be as rough as you want... But surprise fisting wasn\'t what I had in mind!!',
			'W-Why is it that lately... Y-You haven\'t been playing with my ass!!?',
			'Ara-Ara~, who is ther! Come get me, senpai~ <3',
		},

		lewd = {
			'Oh do you wanna eat? Do you wanna take a bath? Or do you want me!',
			'It\'s not gay if you swallow the evidence!',
			'That\'s a penis UwU you towd me you wewe a giww!!',
			'You are cordially invited to fuck my ass!',
			'Grab them, squeeze them, pinch them, pull them, lick them, bite them, suck them!',
			'It feels like your dick is sliding into a slimy pile of macaroni!',
			'This is the cock block police! Hold it right there!',
			'Ohoo, getting creampied made you cum? What a lewd bitch you are!',
			'I\'ve jerked off every single day... Given birth to countless snails... All while fantasizing about the day I\'d get to fuck you!',
			'You\'re looking at porn when you could be using your little sister instead!',
			'Umm... I don\'t wanna sound rude, but have you had a bath? Your panties look a bit yellow...',
			'Papa you liar! How could you say that while having such a HUGE erection.',
			'I-I just wanna borrow y-your dick...',
			'If a man inserts his hose into another man\'s black hole, can they make a baby?',
			'I-I had a itch down there... and I-I just needed something to-to stick up in there!',
			'You have some tasty-looking panties there...',
			'You\'re my personal cum bucket!!',
			'I-I\'m cumming, I\'m cumming, CUM with me too!',
			'Your resistance only makes my penis harder!',
			'Cum, you naughty cock! Do it! Do it! DO IT!!!',
			'Boys just can\'t consider themselves an adult... Until they\'ve had a chance to cum with a girl\'s armpit.',
			'We\'re both gonna fuck your pussy at the same time!',
			'When everyone\'s gone home for the day and the class-room\'s empty you have no choice but to expose yourself and jerk off, right?',
		},

		EzFragz = {
			'Visit www.EZfrags.co.uk for the finest public & private CS:GO cheats',
			'Stop being a noob! Get good with www.EZfrags.co.uk',
			'I\'m not using www.EZfrags.co.uk, you\'re just bad',
			'You just got pwned by EZfrags, the #1 CS:GO cheat',
			'If I was cheating, I\'d use www.EZfrags.co.uk',
			'Think you could do better? Not without www.EZfrags.co.uk',
		},

		ChatBreak = {
			'﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽﷽ ﷽﷽'
		},

		demonslayer = {
			sun = {
				'Sun Breathing: Dance',
				'Sun Breathing: Azure Heaven',
				'Sun Breathing: Raging Sun',
				'Sun Breathing: Burning Bones, Summer Sun',
				'Sun Breathing: Setting Sun Transformation',
				'Sun Breathing: Solar Heat Haze',
				'Sun Breathing: Beneficent Radiance',
				'Sun Breathing: Sunflower Thrust',
				'Sun Breathing: Dragon Sun Halo Head Dance',
				'Sun Breathing: Fire Wheel',
				'Sun Breathing: Fake Rainbow',
				'Sun Breathing: Flame Dance',
			},
			
			water = {
				'Water Breathing: 1st form: Water Surface Slash',
				'Water Breathing: 2nd form: Water Wheel',
				'Water Breathing: 3rd form: Flowing Dance',
				'Water Breathing: 4rd form: Striking Tide',
				'Water Breathing: 5th form: Blessed Rain After the Drought',
				'Water Breathing: 6th form: Whirlpool',
				'Water Breathing: 7th form: Drop Ripple Thrust',
				'Water Breathing: 8th form: Waterfall Basin',
				'Water Breathing: 9th form: Splashing Water Flow, Turbulent',
				'Water Breathing: 10th form: Constant Flux',
				'Water Breathing: 11th form: Dead Calm',
			},
			
			moon = {
				'Moon Breathing: 1st form: Dark Moon, Evening Palace',
				'Moon Breathing: 2nd form: Pearl Flower Moongazing',
				'Moon Breathing: 3rd form: Loathsome Moon, Chains',
				'Moon Breathing: 5th form: Moon Spirit Calamitous Eddy',
				'Moon Breathing: 6th form: Perpetual Night, Lonely Moon - Incessant',
				'Moon Breathing: 7th form: Mirror of Misfortune, Moonlit',
				'Moon Breathing: 8th form: Moon-Dragon Ringtail',
				'Moon Breathing: 9th form: Waning Moonswaths',
				'Moon Breathing: 10th form: Drilling Slashes, Moon Through Bamboo Leaves',
				'Moon Breathing: 14th form: Catastrophe, Tenman Crescent Moon',
				'Moon Breathing: 16th form: Moonbow, Half Moon',
			},
			
			flame = {
				'Flame Breathing: 1st form: Unknowing Fire',
				'Flame Breathing: 2nd form: Rising Scorching Sun',
				'Flame Breathing: 3rd form: Blazing Universe',
				'Flame Breathing: 4th form: Blooming Flame Undulation',
				'Flame Breathing: 5th form: Flame Tiger',
				'Flame Breathing: 9th form: Rengoku',
			},
			
			thunder = {
				'Thunder Breathing: 1st form: Thunderclap and Flash',
				'Thunder Breathing: 2nd form: Rice Spirit',
				'Thunder Breathing: 3rd form: Thunder Swarm',
				'Thunder Breathing: 4th form: Distant Thunder',
				'Thunder Breathing: 5th form: Heat Lightning',
				'Thunder Breathing: 6th form: Rumble and Flash',
				'Thunder Breathing: 7th form: Honoikazuchi no Kami',
			},
			
			stone = {
				'Stone Breathing: 1st form: Serpentinite Bipolar',
				'Stone Breathing: 2nd form: Upper Smash',
				'Stone Breathing: 3rd form: Stone Skin',
				'Stone Breathing: 4th form: Volcanic Rock, Rapid Conquest',
				'Stone Breathing: 5th form: Arcs of Justice',
			},
			
			wind = {
				'Wind Breathing: 1st form: Whirlwind Cutter',
				'Wind Breathing: 2nd form: Claws-Purifying Wind',
				'Wind Breathing: 3rd form: Clean Storm Wind Tree',
				'Wind Breathing: 4th form: Rising Dust Storm',
				'Wind Breathing: 5th form: Cold Mountain Wind',
				'Wind Breathing: 6th form: Black Wind Mountain Mist',
				'Wind Breathing: 7th form: Gale, Sudden Gusts',
				'Wind Breathing: 8th form: Primary Gale Slash',
				'Wind Breathing: 9th form: Idaten Typhoon',
			},
			
			flower = {
				'Flower Breathing: 2st form: Honorable Shadow Plum',
				'Flower Breathing: 4nd form: Crimson Hanagoromo',
				'Flower Breathing: 5th form: Peonies of Futility',
				'Flower Breathing: 6rd form: Whirling Peach',
				'Flower Breathing: Final form: Equinoctial Vermilion Eye',
			},
			
			serpent = {
				'Serpent Breathing: 1st form: Winding Serpent Slash',
				'Serpent Breathing: 2nd form: Venom Fangs of the Narrow Head',
				'Serpent Breathing: 3rd form: Coil Choke',
				'Serpent Breathing: 4th form: Twin-Headed Reptile',
				'Serpent Breathing: 5th form: Slithering Serpent',
			},
			
			love = {
				'Love Breathing: 1st form: Shivers of First Love',
				'Love Breathing: 2nd form: Love Pangs',
				'Love Breathing: 3rd form: Catlove Shower',
				'Love Breathing: 5th form: Swaying Love, Wildclaw',
				'Love Breathing: 6th form: Cat-Legged Winds of Love',
			},
			
			sound = {
				'Sound Breathing: 1st form: Roar',
				'Sound Breathing: 4nd form: Constant Resounding Slashes',
				'Sound Breathing: 4th form: String Performance',
			},
			
			beast = {
				'Beast Breathing: 1st fang: Pierce',
				'Beast Breathing: 2nd fang: Slice',
				'Beast Breathing: 3rd fang: Devour',
				'Beast Breathing: 4th fang: Slice \'n\' Dice',
				'Beast Breathing: 5th fang: Crazy Cutting',
				'Beast Breathing: 6th fang: Palisade Bite',
				'Beast Breathing: 7th fang: Spatial Awareness',
				'Beast Breathing: 8th fang: Explosive Rush',
				'Beast Breathing: 9th fang: Extending Bendy Slash',
				'Beast Breathing: 10th fang: Whirling Fangs',
				'Beast Breathing: Sudden Throwing Strike',
			},
			
			mist = {
				'Mist Breathing: 1st form: Low Clouds, Distant Haze',
				'Mist Breathing: 2nd form: Eight-Layered Mist',
				'Mist Breathing: 3rd form: Scattering Mist Splash',
				'Mist Breathing: 4th form: Shifting Flow Slash',
				'Mist Breathing: 5th form: Sea of Clouds and Haze',
				'Mist Breathing: 6th form: Lunar Dispersing Mist',
				'Mist Breathing: 7th form: Obscuring Clouds',
			},
			
			insect = {
				'Insect Breathing: Butterfly Dance: Caprice',
				'Insect Breathing: Dance of the Bee Sting: True Flutter',
				'Insect Breathing: Dance of the Dragonfly: Compound Eye Hexagon',
				'Insect Breathing: Dance of the Centipede: Hundred-Legged Zigzag',
			},
		},
		
		advice = {
			'A weapon\'s Accurate Range is the distance at which the weapon is guaranteed to hit a 30 cm dinner plate (from a standstill).',
			'\'Flashbang\' grenades temporarily blind anyone who sees them go off. Be careful because this includes your team and even yourself!',
			'Don\'t forget to buy armor in Competitive Mode! Wearing armor will increase the amount of damage you can take and allow you to live longer.',
			'Don\'t forget to buy armor. Armor will reduce the damage you take from all weapons that don\'t have maximum Armor Penetration.',
			'Don\'t forget your defuse kit in Competitive Mode! Defuse kits significantly reduce the time it takes to defuse a planted bomb.',
			'The AWP sniper rifle is very powerful and can usually kill with one shot. Take advantage of its powerful scope and engage from a distance.',
			'The Desert Eagle .50C is truly a \'hand cannon\'. Its powerful ammunition stops enemies in their tracks, but its magazine holds few bullets.',
			'The AK-47 is as powerful as it is loud. It suffers from high recoil, but accurate marksmen prefer it for its lethal headshots.',
			'The M4A4 carbine is a powerful and precise automatic rifle that excels at midrange combat, but can be mastered for both long range and CQB.',
			'Turning your view away from a Flashbang Grenade will lessen its blinding effects.',
			'Use molotovs and incendiary grenades to cover the ground with fire and slow enemy rushes.',
			'Smoke grenades are best used to hide your movement. Use them to pass open doorways or slip by a sniper.',
			'When you are killed, you will drop your most expensive weapon and most recently selected grenade for your teammates (or enemies).',
			'In Competitive mode, if your opponent hasn\'t purchased a helmet, shooting them in the head with most weapons is an instant kill - a \'headshot\'',
			'Jumping slows your movement and decreases your accuracy.',
			'To be accurate with a sniper rifle, you must stand still when you fire your shot.',
			'You are more accurate when you stand still. Crouching makes you the most accurate.',
			'Enemies can hear your footsteps when you run. Walking will make your footsteps harder to hear and will improve your accuracy.',
			'Firing an automatic weapon in short bursts will help you maintain control over your shots and will improve your accuracy.',
			'Switching to your pistol is faster than reloading. In a firefight, this can give you the advantage.',
			'You don\'t need to hunt for the enemy - the team with the objective will to come to you. If you have a strong position, stand your ground!',
			'Engaging in combat alone is very risky. Stick with your teammates and watch their back.',
			'Ammo management is extremely important. If you run out of bullets in a firefight, you are in deep trouble.',
			'You are vulnerable when you are reloading. Make sure you are in a safe spot or behind cover when you reload.',
			'Powerful guns can penetrate many thin surfaces. If your enemy is hiding behind a wooden door or plaster wall, you can probably still hit them. ',
			'Your radar shows teammates, enemies and the bomb. Learning to use the radar and checking it regularly will give you an advantage.',
			'Sometimes teammates don\'t have enough cash to buy a good weapon. Be a good teammate and toss your weapon to them using [G].',
			'When you\'re controlling a bot, money, kills, deaths and weapons that you earn are awarded to that bot instead of you.',
			'Many objects in the world can be broken, including some windows, boards, and boxes.',
			'Remember to pay attention to your crosshair position, even when just running around. Your enemy\'s head will never be at their feet.',
			'Hey, sometimes your opponent is just having a really good day.',
		},
		
		facts = {
			'Everyone abroad is sure that Cheburashka is SHE.',
			'The heart of a white whale has the size of a Volkswagen Beetle.',
			'In Creskill, New Jersey, all cats and cats must wear 3 bells so that birds always know about their location.',
			'Pepidastras are furry multi-colored things that are beautifully waved by girls from the support group of sports teams.',
			'The chameleon\'s tongue is twice as long as its body.',
			'The runner is able to outrun the race car in the first 10 meters from the start.',
			'The giant Komodo lizards attack even deer and wild boar.',
			'If a yellow canary is fed with red pepper, the color of its feathers will turn bright orange.',
			'A rat can fall from a five-story building without any damage.',
			'Drivers kill more deer than hunters.',
			'All modern jet planes can overcome the speed of sound.',
			'More than 70% of the world\'s population have never heard a phone call. . In Africa, only one in 40 people has a telephone.',
			'Originally Coca-Cola was green.',
			'A man has 46 chromosomes, a pea has 14, and a lobster has 200.',
			'The tongue of a giraffe is completely black, and its length can reach 50 cm.',
			'The Hawaiian alphabet consists of 12 letters.',
			'Men can read smaller print than women, but women hear better.',
			'Thunderstorms bring over 10 million tons of nitrogen to the Earth annually.',
			'The largest hailstone recorded by people fell on the town of Coffeyville (Kansas, USA). Its weight was almost 700 grams.',
			'The higher a man\'s income, the more likely he is cheating on his wife.',
			'A man has exactly 1 rib less than a woman.',
			'Men laugh longer, louder and more often than women.',
			'Among outstanding mathematicians, there are 12 times more men than women.',
			'The toy yo-yo appeared in the 16th century on Philippines as a weapon.',
			'One bee family harvests up to 150 kg of honey over the summer.',
			'The flight speed of a bumblebee is 18 km per hour; dragonflies - up to 96 km per hour.',
			'Thunder can be heard at a distance of 25 km.',
			'Mosquitoes are attracted to the smell of people who have recently eaten bananas.',
			'A person\'s right lung holds more air than the left.',
			'A human hair is about 5000 times thicker than a soapy film.',
			'A shark bites first with its lower jaw, and then with its upper jaw.',
			'A cat can have more in its life. 100 kittens.',
			'Every year lightning kills 1000 people.',
			'Throughout its life, a bee produces 1/12 of a teaspoon of honey.',
			'During the Second World War, the first bomb dropped on Berlin killed the only elephant in the Berlin Zoo.',
			'Koalas sleep on average about 22 hours a day.',
			'Human DNA contains about 80,000 genes.',
			'Some whales live up to 100 years.',
			'Cats can clearly pronounce some consonants, for example: M, P and N.',
			'The human body contains only 4 minerals: apatite, aragonite, calcite and cristobalite.',
			'The average ATM makes a mistake by 250 dollars a year - and not in their favor.',
			'If the population of China passes you in one line, then this queue will never end due to the rapid growth of China\'s population.',
			'Los Angeles has more cars than residents.',
			'A sum of $ 1,000,000 exchanged with 1 dollar bills would weigh about 1 ton. all banknotes in a pile, its height would be about 100 meters.',
			'The sum of the numbers on opposite sides of the dice is always 7.',
			'Polar bears are left-handed.',
			'Octopuses have rectangular pupils.',
			'Peanuts are used to make dynamite in the USA, and soy is used in Russia.',
			'The snail\'s teeth are located on the tongue with which it cuts and grinds food.',
			'The tongue of a blue whale weighs up to 4 tons. Like a large elephant.',
			'The British drink more tea than the inhabitants of any other country.',
			'The sperm is the smallest single cell in the body. The egg is the largest.',
			'The number of crows in a flock that gathers for the night somewhere in a forest glade in winter can reach 200 -300 thousand.',
			'In Portugal, inclement weather is a good reason for not showing up for work.',
			'The diameter of the moon is 3476 kilometers.',
			'The duration of a total solar eclipse does not exceed 7.5 minutes;total lunar eclipse - 104 minutes.',
			'According to the UN, 250 thousand newborns appear on earth every day, three every second.',
			'Quasars emit more energy than 100 giant galaxies.',
			'In England, the toilet cistern capacity is 4 liters, and in France - 6 liters. .',
			'Spain means land of rabbits.',
			'The caffeine content of chocolate is not as high as many believe: 5 to 10 mg in one ounce (28.35 g) of dark chocolate, 5 mg in milk chocolate and 10 mg in a cup with six ounces of cocoa. (In a cup of coffee - 100-150mg.)',
			'The heart of a hedgehog makes about 300 beats per minute.',
			'A reticulated python is the longest snake in the world - its length is 9 meters.',
			'Sigmund Freud was very afraid of ferns.',
			'The drawing of the surface of a cat\'s nose is unique, like a human fingerprint.',
			'An ostrich\'s eye is larger than its brain.',
			'If a cockroach\'s head is cut off, it can live for several more weeks.',
			'A newborn kangaroo is so small that can fit in a teaspoon.',
			'Cats can make over 1000 different sounds, while dogs only 10.',
			'The only part of the body that does not have a blood supply is the cornea of the eye. It gets oxygen directly from the air.',
			'In Japanese theaters, there was a tradition of sprinkling some salt on the stage so that evil spirits would not spoil the performance.',
			'On every continent there is a city called Rome.',
			'In 1777, in New Jersey, salt miners were exempted from military service.',
			'Antarctica is the only land on our planet that does not belong to any country. It is also the only continent that does not have territories below sea level.',
			'The first city with a million-plus population was Rome in 133 BC. Today, more than 300 cities in the world have a population of over a million.',
			'Mexico City sinks 6-8 inches a year because it is built on top of an underground basin .',
			'French has been the official language of England for over 600 years.',
			'The fastest falling raindrops - 18 miles per hour.',
			'In 1880, cocaine was freely sold to treat colds, neuralgia, headache and insomnia.',
			'The largest cave is Sarawak in Gunung Mulu National Park, Sarawak (Malaysia). Its length is 700 m, height 70 m, average width is 300 m.',
			'Dolphins do not breathe automatically, they need to remind themselves to breathe.',
			'Niagara Falls passes through more water every year than any other waterfall on Earth.',
			'The border between Canada and the United States is the longest in the world. It stretches for 3987 miles (6416 km).',
			'In Napoleon\'s army, soldiers could address the generals on you.',
			'Crocodiles do not know how to stick out their tongue.',
			'Only 55% of Americans know that the sun is a star.',
			'The Philippines archipelago includes 7107 islands.',
			'One 75-watt light bulb gives more light,than 3 25-watt.',
			'The most popular female name in the world is Anna. Almost 100 million women wear it.',
			'Mountains on Mars reach a height of 20-25 kilometers.',
			'The millionth inhabitant of Moscow was born in 1897.',
			'In Russia, only cocoa, coffee, chocolate and tea.',
			'Babies who are breastfed grow up thinner than those who grew up on artificial feeding.',
			'About 800 items of drinking water are sold in the USA.',
			'Sea otters, when sleep, hold on to each other so as not to move away during the current.',
			'Iron heated to 5000 degrees Celsius becomes gaseous.',
			'There are 32 muscles in the cat\'s ear.',
			'The oldest living trees are the American Pinus aristata, some of which are over 5000 years old.',
			'The Lodoicea maldivica palm tree has the largest seeds in the world. Their weight reaches 20 kilograms.',
			'Female dogs bite more often than dogs.',
			'Men suffer from heart attacks more often than women, because they are used to keeping everything to themselves.',
			'Men are about 10 times more likely to suffer from color blindness than women.',
			'About 1/3 of the earth\'s surface are deserts.',
			'Chocolate is an excellent source of energy. Participating in military campaigns, Napoleon always took chocolate with him, using it to recuperate. Despite its high fat content, chocolate does not raise blood cholesterol levels.',
			'Snails can sleep for three years without eating any food.',
			'Dodder is a plant.but without leaves and in a mature state without roots.',
			'The water in the Dead Sea is 7-8 times saltier than in the oceans.',
			'A shark is the only fish that can blink both eyes at once.',
			'The hottest planet in our universe is Venus.',
			'An adult whale inhales in 2 seconds. 2400 liters of air.',
			'Every day about 200 thousand meteorites fall on the Earth.',
			'Green tea contains 50% more vitamin C than regular black tea.',
			'Italian laws equate drawing with crayons on the asphalt to begging.',
			'In South Africa, almost 2/3 of the world\'s gold is mined.',
			'Boiled water cools faster champagne than raw water.',
			'The filming of the Titanic was more expensive than the cost of the ship itself',
			'The efficiency of a steam locomotive is 6%, and the efficiency of a light bulb is 20%',
			'The highest temperature on the moon is 117 degrees Celsius.',
			'Brazil is the only country that has participated in all the world football championships.',
			'The nose grows throughout a person\'s life.',
			'The shortest distance from Russia to America is 4 km.',
			'The hourglass runs faster in the cold than in the warmth.',
			'The Earth rotates at a speed of 1000 miles per hour, but at the same time flies through space at an incredible speed of 67000 miles per hour.',
			'If only you could drive a car straight vertically, you would be in space in about an hour.',
			'A hungry wolf eats about 10 kg of meat. But usually his diet is 2 kg.',
			'On average, 3 sex reassignment surgeries are performed in the United States per day.',
			'Contraceptive pills also work on gorillas.',
			'About 70% of living things on Earth are bacteria.',
			'A sailfish swims faster than a cheetah runs. A sailfish has a speed of 109 km / h, and a cheetah - 96-101 km / h.',
			'Most often in English libraries they steal the Guinness Book of Records.',
			'Of the 25 highest peaks in the world, 19 are in the Himalayas.',
			'The largest lunar crater visible from Earth is called Bailey or the field of destruction. Has an area of approximately 26,000 square miles.',
			'There are more than 300,000 people in Sweden with the surname Carlson (or Karlsson).',
			'A diamond does not dissolve in acid. The only thing that can destroy it is a very high temperature.',
			'10 percent of men and 8 percent of women on earth are left-handed.',
			'Until 1703, Chistye Prudy in Moscow was called ... Rotten Ponds.',
			'In Togo, a man who compliments a woman must marry her.',
			'Americans spend more on cat food than on baby food',
			'During his life, a person eats about 40 tons of various food.',
			'The national anthem of Greece has 158 versions. Not a single resident of Greece knows all 158 versions of the anthem of his country',
			'Hummingbirds cannot walk.',
			'A pig physically cannot look at the sky.',
			'In the 19th century, homosexuals were called not blue, but green.',
			'In England, the Pythagorean table has a dimension not of 10 by 10, but 12 by 12.',
			'The penguin can jump three meters in height.',
			'Every minute there are 2 earthquakes in the world.',
			'The maximum number that can be written in Roman numerals without violating the Schwarzman rules (rules for writing Roman numerals) is 3999 (MMMCMXCIX)',
			'in the movie, when it is necessary to show effectively scattering splinters of stone or wall after the shot, the rifle charge marble bullets.',
			'According to the job description, the fire - the process objects burning, at the moment this is not intended.',
			'in every drop of the sea water contains approximately 1 billion atoms of gold.',
			'The ancient Egyptians taught baboons to serve them at the table.',
			'A female Malaysian stick insect can have offspring without a male.',
			'Wembley football stadium in England is created only for games, training on it is prohibited.',
			'Male monkeys go bald just like men.',
		}
	},

	russian = {
		Toxic = {
			'Полный выдвиг в кровать к твоей мамке.',
			'Я твоей мамке в глотку кипяток заливал, ушлёпок.',
			'Го фотку рядом с могилой твоего отца импотента?',
			'Представь как я твоей матери скальпелем вырезаю органы.',
			'Пропиши /repair и ник твоей матери. А хотя, тебе это уже не поможет, она же как год уже в могиле.',
			'Да выкидыш ебаный, тебя в плацкарте скрафтили.',
			'Я при любой возможности, могу твоей матери колени сломать, и заставить её бегать подпрыгивая.',
			'Сынишка параши, с болтами вместо зубов',
			'Я тебе шею свернул, опрокинь свое глупое еблище в режим терпилоида.',
			'Интересный факт: твою сеструху ебут узбеки на стройке.',
			'Бро, слабо свою мать с пинка по ебалу разбудить?',
			'Ты нахуя на языке детей шлюх разговариваешь?',
			'Я твою мать забайтил на горловой с проглотом.',
			'Я так радовался когда увидел трупак твоей матери!!!',
			'Какой же ты тупой, я хуею. Как ты блять живешь, глупый овощь!? Пошел нахуй отсюда, тупое ты создание.',
			'Упал = минус мать. Ах бля, я забыл, у тебя же её нету! Ха-Ха-Ха. Урыл нищего.',
			'НИХУЯ ТАМ НЬЮCUMЫЧА ОРОШИЛИ СТРУЕЙ МОЧИ ХАХАХАХАХАХАХА',
			'Иди лунтика смотри, безмозглый пидарас.',
			'Кто тебе про хвх рассказал, мальчик? Дай мне ник этого пидараса, я его 1337х1337 позову.',
			'ЕРЖАН, ВСТАВАЙ! Завтра в школу!',
			'*DEAD* пофикси, нищ.',
			'Слишком изи.',
			'Ботинок ебаный, куда улетел!? Я тебя не отпускал, нахуй!',
			'Ты куда лезешь, сын фантомного стационарного спец изолированого металлформовочного механизма!?',
			'А ты и в жизни ньюcumыч?',
			'1.',
			'На мыло с верёвкой деньги-то есть, или тебе подкинуть?',
			'Даже 1 писать стремно тебе скорее 0.5',
			'Сьебался нахуй, таракан усатый',
			'Циатата: ну такое убьёт блядь. Ответ: Мне можно нахуй, я король, а ты мой раб!',
			'АХАХА ЕБАТЬ У ТЕБЯ ЧЕРЕПНАЯ КОРОБКА ПРЯМ КАК [XML-RPC] No-Spread 24/7 | aim_ag_texture_2 ONLY!',
			'Почему ты такое хуёвое!?',
			'БЛЯ, НИЩ, ХУЯК ХУЯК И ТЕБЯ НЕТ. КАК МОЖНО ТАКИМ БЫТЬ?????? ОПРАВДАЙСЯ МНЕ В ХУЙ.',
			'Почему так легко!?',
			'Где енеми?',
			'Блядь, ты такой бездарный. Я никак понять не могу, как таких земля носит!?',
			'До связи башмак.',
			'Иди кс удали, чурка.',
			'Прости что без смазки.',
			'А ты вообще знаешь что такое iq?',
			'Нахуй ты упал иди вставай и на завод',
			'ТЫ на кого полез, кусок дауна?!',
			'Животное, аддон скачай, а то падаешь.',
			'Обоссал мемесенсера.',
			'Иди в бабл квас играй, чехотошный.',
			'Тебе ник придумать?',
			'Ты ебаный сочник, нахуя ты вообще на хвх зашел?',
			'хс, бот.',
			'1, хс.',
			'Хватит умирать, возьми лучше свою руку и иди дрочи, еблан.',
			'∩ ( ⚆ ʖ ⚆) ∩ ДоПрыГался ДрУжоЧеК (ت)',
			'$$$ UFF YA PREMIUM 1 TAP $$$ ∩ ( ͡⚆ ͜ʖ ͡⚆) ∩',
			'Я не понял, ты такой жирный - потому-что бургеры каждый день жрешь?',
			'Говори: буду плохо говорить - буду сосать, буду плохо сосать - буду пересасывать.',
			'ауе',
			'ауф',
			'Iq больше двух будет, пмнешь ок???',
			'Улетаешь со своего ванвея хуесос.',
			'В НИКСВАР ПМАЙ, ШЛЮХА ЕБАНАЯ. УИД: 1337, НИК: UR_OWNER.',
			'Братка, го я тебе бекап позову?',
			'Не не не, отмена, он опять на конлени падает при виде меня.',
			'Самая легкая игра, которую я когда либо играл.',
			'ОЛО, может ты не будешь тратить мамкину зарплату на говнопасты?',
			'надеюсь после этой катки ты пойдешь в роблокс...',
			'Спалился, мужик.',
			'Держи, ритуальные услуги для тебя и всей твоей семьи: +74951900129',
			'Иди кредит возьми на неверлуз. Вот телефончик: 88005553535',
			'Иди кредит возьми на верёвку с мылом. Вот телефончик: 88005553535',
			'ФАРМ КРИПОВ',
			'Занюхни жумайсынбу.',
			'Депортирован в таджикистан.',
			'Я конечно не Дио но муда муда тебе сделал.',
			'Вызывайте скорую! Вызывайте скорую! Но не для меня!',
			'Тоби \'Пизда\' Магваер',
			'Ищи себя на джага-джага.cum',
			'Калдыбэк на связи',
			'Капец-пипец, убили негра!',
			'Назад в пизду',
			'Это ты папичу гей донаты на стриме кидаешь?',
			'Трахен в попен.',
			'♂️three hundred backs♂️ в моём кармане, а у тебя членов в жопе.',
			'ЛЕЖАТЬ+СОСАТЬ',
			'Метнись к своей матери в могилу кабанчиком!',
			'Слонина ебаная!',
			'Заглотнул коки-яки.',
			'Го я тебе на ротан накидаю, слабый хуесос',
			'Соу-фыв-фыв педарас, нэвырлуз хуита.',
			'Экзорцист педарас, гейсекс хуита.',
			'Ллама педарас, ванпаст хуита.',
			'Я тихо подойду, и прошепчу тебе на ушко... АНИГИЛЯТАРНАЯ ПУШКА!!!',
			'Тебе дать сурсы норм чита что-ли?',
			'Выйди отсюда, если ты не знаешь что такое pak01_dir.vpk.',
			'Выйди отсюда, если ты не знаешь что такое GCFScape.',
			'Ты что, через GeForce Now играешь что-ли?',
			'Иди алмазы копай.',
			'Иди на себя киллера закажи.',
			'https://letmegooglethat.com/?q=csgo+cheats ',
			'С пакетом на голове и под водочку, даже ты красивый.',
			'Бля, ебать ты хуёвый, иди что-ли мемесенс купи...',
			'Пососал как Гитлер во второй мировой.',
			'Чпоньк!',
			'Вам звонил мастурбек, просил передать что у вас рот в сперме.',
			'Я твою мамку в жопу пердолил.',
			'Сходи попей, а то у тебя ♂️cum♂️ за ♂️three hundred backs♂️ в горле застряла.',
			'Ты юзаешь никсерчит, два хуя с очка торчит!',
			'Молодец, поставил рекорд Гиннеса - по самому быстрому отсосу.',
			'Ты что, ебанутый? У тебя что, JS BY REZOLVER???',
			'Ты что, ебанутый? Ну да ладно, опустим этот момент, так-же как я опустил тебя.',
			'·٠●•۩۞۩ОтДыХаЙ (ٿ) НуБяРа۩۞۩•●٠·',
			'Твои родители что, из Америки? Нет? Тогда какого хуя у них такой пидарас вырос!?',
			'Набутылирован.',
			'Тебе бутылку дать, или сам найдёшь?',
			'Любишь кататься?.. ну и катись нахуй.',
			'Судя по твоему ебалу - тебе пора на стройку за кирпичём.',
			'Посмотри вниз, там ты валяешься...',
			'Не укладывается в голове, как я тебя убил? А ты растяни вдоль спинного мозга!',
			'Чо, словесная нефтескважина иссякла?',
			'Чао, пэрсик, дозревай!',
			'Зубы не волосы, вылетят - не поймёшь',
			'А тобой в детстве бабайку не пугали часом?',
			'Не шурши, пакетик дырявый.',
			'Ты когда свой интеллект выгуливал, ты его случайно не потерял?',
			'Розочка моя, тусуй отсюда, а то с такой силой могу загеоргинить, что точно обсиренишься!',
			'У меня спинного мозга, больше чем у тебя головного!',
			'Слышь, не петушись, ты же осел.',
			'Ммм, детка, тебе не зачем меня боятся, я - не зеркало, себя не увидишь!',
			'Сдуйся, и не выкрякивай.',
			'Я тебе намордник куплю, если ещё раз тявкать в мою сторону будешь.',
			'По твоим губам плачет степлер.',
			'Подари мне свою фотографию, я её в буфет поставлю, чтобы дети за конфетами не лазили..',
			'Рассказывай свое мнение туалетной бумаге сидя в туалете, она тебя выслушает с удовольствием. А меня, твоё мнение, не интересует!',
			'Из положительных качеств у тебя только - «резус-фактор».',
			'Сгинь, сатанинское отродье!',
			'1. Заглотнул хуй. ЫЫЫЫЫЫЫЫЫЫЫЫЫЫ',
			'Рот помой, и попу смажь!',
			'Сколько стоит твоя анальная девственность?',
			'♿️Вы♿️ка♿️ты♿️ва♿️ем♿️ся♿️',
			'Ты как Vanish, всегда ебланишь.',
			'Ты был обоссан как Иисус, во рту елдак а в жопе куст.',
			'Ветер с моря дул, ветер с моря дул, ты очко продул, ёбаный колдун.',
			'Ебать ты кринжовый... Прям как морковка в полночь!',
			'Простатуя свободы.',
			'Контуженный-ряженый.',
			'А, я так понял, у вас умирать - это семейное?',
			'Иди кумыса попей, очередняра',
			'Альё, ента скороя? Тут чилавеку плоха! Адрис? А, ща, сечас. Записыуайте: Улица "Пушкена", Дом "Калатушкена"',
			'Ну нет, почему оно ложится когда я прохожу?',
			'А вы, (you) сэр, собственно кто (who)?',
			'Ой, нищий упал! Сейчас скорую вызовем.',
			'Ты как туалетный утёнок, слит вместе с говном.',
			'Бля, мужик, прости. Просто мне мама сказала мусор вынести...',
			'Твои родители похоже бегали за аистом все эти годы чтобы он забрал тебя назад.',
			'Улетел на татуин.',
			'Ебать ты кваземорда.',
			'Ты чо, пёрнуть пытаешься?',
			'Ах ты гомосос.',
			'Ебать я тебя отшашлычил.',
			'Пиздрейшн сделан.',
			'НА ПРОЛОООООООООМ',
			'А-а-а-а-АПЧХУЙ',
			'Ну, если твою мать убьют, то можешь называться Джон Уикидыш.',
			'Колабмия прикчерс не представляет какую хуйню ты сейчас сделал...',
			'Мал да удалбоёб.',
			'Разрыхлитель сраки.',
			'Ебать ты гомункул.',
			'Иисус всё простит.',
			'Покайся, сын мой.',
			'Я-я-я-я-я-ЯИЧКИ.',
			'Я тебя с пятью с половиной фпс убил.',
			'Ебать ты хлебубек.',
			'У меня лапки, но я тебя всёравно убив.',
			'я убван петрович.',
			'Жан клод бан дам.',
			'Жан клод вам бан.',
			'Жан клод вам в рот.',
			'Жан в рот вам дам.',
			'Ты чо, ебобо?',
			'Твоё имя войдёт в аналы истории.',
			'Рулетик с мясом.',
			'Либо я всех на изи, либо меня по кругу.',
			'Добро пожаловать в ГУЛАГ!',
			'ХАЛК КРУШИТЬ!',
			'ХАЛК ЧПОКАТЬ!',
			'Здравствуйте, я из компании орифлейм.',
			'Я устрою тебе анальный дискомфорт.',
			'Горловой массаж глубоко проникновения.',
			'Киборг-убийца.',
			'Сюрпраааааайз.',
			'Взлом жопы.',
			'Жду тебя тут завтра в тоже время.',
			'Запущен в стратосферу.',
			'Напердолен.',
			'Лежать.',
			'Долбил я тебя в рот буровой установкой M38-ЧихПых-ПРО!',
			'Убит в яичко.',
			'Подскальзнулся.',
			'Не смотри на меня, ничтожество.',
			'Не смотри на меня, я стесняюсь.',
			'Это был ЭЛИТНЫЙ ЧПОНЬК',
			'Это была засада. А получилась - отсосада',
			'Да я ёбаный волшебник',
			'Уииииииииииииииииииииииииииииии',
			'ЭТО СПАРТА!',
			'Руки в масле, жопа в мыле, НУ НЕ ВЫЖИТЬ ЭТОЙ ШКИЛЕ!',
			'Дьебиль',
			'ЗАТКНИСЬ',
			'Пс... Парень... Есть позвонить? А ЕСЛИ НАЙДУ!?',
			'М-М-М-М-М-МОНСТЕР ЧПОНЬК',
			'Тебя тимейт блочил когда ты при родах вылетал?',
			'Я ж говорил - вам пизда!',
			'Кон-Чен-Ый',
			'Чо так плохо сосёшь? Рот не размял?',
			'Ох уж эти девственники...',
			'Ты чо, самый умный чтоли?',
			'Прякол',
			'Ебаки-глотаки',
			'Пиздамёт5000 enabled',
			'Бля. Кривая полетела. Да похуй',
			'По яичcum',
			'Иди трум трум лайфхаки смотри',
			'Сосать обезьяньи яйца ДОСУХА',
			'Опа - чирик!',
			'Не смотрти на меня, гандурас',
			'ПИФ-ПАФ',
			'Хватит мочу в подъезде кастовать',
			'Хватит в варфейс играть, ебланище тупорылое',
			'уот так уот, уот таким уот образом',
			'твоя тима не спасёт тебя от орального рабства',
			'Свободен',
			'Хватит на пули прыгать, ебланище',
			'Пришёл колбасян из великого клана асасянов, ОЧИСТИТЬ ПОМЕЩЕНИЕ',
			'Ууу сюка',
			'Всех отстрапоню',
			'чпонько-motherfucker-инатор',
			'Счастья тебе и любви! С дилдаком в жопе',
			'Лежать, говнина! пажалустааа))',
			'я альфа-тестостероноинатор',
			'лети габену в сракотан бургер заталкивать',
			'Хватит дрочить',
			'Пиу Пиу',
			'Нихуя ты ебазавр',
			'БКГ - Большое Куриное Глушило',
			'Фокус Покус, Членус в Ротус',
			'Клянусь девственностью своей черепашки, ты мёртв',
			'Губы прочь от ширинки!',
			'штоп, сто?',
			'чел, ты...',
			'хватит воровать мои какашки!',
			'назад в магадан',
			'видел бы ты своё ебало',
			'видел бы ты свой еблет',
			'видел бы ты своё ебло',
			'учись сосать',
			'ты конечно не драка бомжей, но мимо тебя нельзя пройти',
			'ты конечно не вампир, но отсасываешь хорошо',
			'спасибо, я не люблю анилингус',
			'сосать умеешь?',
			'чих пых',
			'чирик пиздык куку',
			'намотан на кардан',
			'СОСА... Тоесть боевая задача выполнена.',
			'УЫХАДЫ, ПИСЬКИ МЕРИТЬ БУДЕМ',
			'Да я новый бисмарк!',
			'F тебе, мужик',
			'Жалко мужика, потный был',
			'Я как Мавроди, засcumил тебя на горловой с проглотом',
			'Съебался в ужасе',
			'Хватит ебалом щёлкать',
			'Самотык подарить, или у мамки возьмёшь?',
			'Отставить сосать!',
			'Отставить сосать! А хотя... продолжай, пупсик)',
			'Провёл по губам волосатой нежностью',
			'BRUTALITY',
			'БРУТАЛИТИ',
			'FATALITY',
			'SOSALITY',
			'OTSOSALITY',
			'ФАТАЛИТИ',
			'ОТСОСАЛИТИ',
			'СОСАЛИТИ',
			'100 слоёв спермы на лице челлендж',
			'Это такси Умер. А такси Убер, жалкая пародия.',
			'Опять тебя тимейты не закерили, слабый хуесос',
			'отвоебубелен',
			'шайтан машина',
			'за проезд передаём',
			'за отъезд передаём',
			'я твоей мамке огурцом вены вскрывал',
			'я твоей мамке перфаратор в жопу сувал туда-сюда ВЖЖ ВЖЖЖ ВЖЖЖЖЖ ВЖЖ',
			'етить мою сардельку',
			'етить твою сардельку',
			'етить мою сарделечку',
			'етить твою сарделечку',
			'анус-разрыванус',
			'я лёгкий как пёрышко, а опасный как коровья лепёха с корсаром',
			'-трусы',
			'сделал обрезание',
			'сделал обрезание через монитор',
			'ты водишь',
			'ты водишь, уёбок переёбаный',
			'ты водишь, сын портовой бляди',
			'ты водишь, сын портовой шлюхи',
			'капрал клиторчук на связи',
			'сидеть',
			'стоять',
			'лежать',
			'огребать',
			'глотать',
			'спи моя радость усни, только не храпи',
			'опа опа опапа опапулички папа',
			'у меня аж сосочки затвердели',
			'ты как ленивец',
			'прям в шоколадницу',
			'ох зря ты меня не убил',
			'умри уёбок гнойный',
			'умри уёбок гнилой',
			'твой плейстайл доказательство того, что мастурбация вызывает слепоту',
			'ты настолько жирный что можешь 5х5 в одно ебало играть',
			'ты наверное хотел меня обоссать, но забыл снять штаны.',
			'где прописка?',
			'по моим расчётам, ты еблан',
			'кемпидрист ебаный',
			'алмазные трусы тебя не спасут',
			'щащлык мащлык',
			'хуя струя',
			'ПОИСК ПИДАРАСОВ АКТИВИРОВАН. ПИДАРАС НАЙДЕН. ПИДАРАС УНИЧТОЖЕН!',
			'ПОИСК ПЕДИРАСТОВ АКТИВИРОВАН. ПЕДИРАСТ НАЙДЕН. ПЕДИРАСТ УНИЧТОЖЕН!',
			'именно после твоего рождения люди начали массово использовать контрацептивы',
			'твоя мать настолько жирная, что я поставил печатать её фотку в принтере ещё 10 лет назад, а оно до сих пор печатается...',
			'твоя мать настолько жирная, что я поставил печатать её фотку, а принтер взорвался',
			'твоя мать настолько жирная, что когда она падает с кровати, она падает с двух сторон одновременно',
			'нихуя ты маслину поймал',
			'рвота портовой шлюхи',
			'смерть была единственным твоим шансом на хорошую жизнь',
			'нихуя ты хухан',
			'нихуя ты пэрэц',
			'ямете кудасайнись отсюда',
			'нихуя ты dickhead',
			'нихуя ты дикхэд',
			'сходи прокладки купи, сучка',
			'ох я б тебя послал, но вижу ты прямиком оттуда!',
			'тебе нанять тренера по завалу ебала, или сам справишься?',
			'Аттестат о среднем обрезании есть? А если найду!?',
			'Твоё ебало - это ходячая реклама гандонов',
			'Твоё ебало - это ходячая реклама абортов',
			'Твоё ебало - это ходячая реклама контрацептивов',
			'Отправил твою мать в декрет',
			'прострелил целку твоей матери, а потом появился ты...',
			'делаю вдох, так пахнет БЭБРА',
			'въебал тапком с порога',
			'Дай угадаю, у тебя мать на шлюхен штрассе работает?',
			'Я твою матуху на ноль умножил',
			'Я твою мамку на ноль умножил',
			'Я твою мать на ноль умножил',
			'Я твою мать-шлюху на ноль умножил',
			'Я твою матуху на ноль умножал',
			'Я твою мамку на ноль умножал',
			'Я твою мать на ноль умножал',
			'Я твою мать-шлюху на ноль умножал',
			'Ты кто (who)?',
			'Умри и родись нормально',
			'начинай оправдываться, ведь это единственное, что ты можешь лучше других',
			'я бы попросил тебя пропмать юидик в ските, но боюсь ты даже не знаешь что это такое',
			'я бы попросил тебя пропмать юидик в фатале, но боюсь ты даже не знаешь что это такое',
			'я бы попросил тебя пропмать юидик в еволве, но боюсь ты даже не знаешь что это такое',
			'да у меня кд больше чем твоё iq, кринж',
			'да у тебя кд больше чем твоё iq, кринж',
			'откисай в *DEAD*\'e слабая сочняра',
			'откисай в *DEAD*\'e слабая очередняра',
			'помнишь как в детстве ты пизданулся бошкой об кафель и теперь у тебя деменция мозга?',
			'бля ну ты и кринжовый, без brain.lua играешь...',
			'съебись с серва, от тебя фанатом облома воняет',
			'я бы посоветовал тебе подумать, но боюсь твой мозг не предназначен для этого',
			'помнишь как тебе в детстве в ухо кончили и теперь у тебя хоть что то есть в голове?',
			'снова абузишь свою тупость?',
			'хз,меня какой то очередняга с завода убил...',
			'в некст раунде пуля прилетит в висок твоего отца',
			'ты как меня зафиксил, бездарь с кряком?',
			'ого... пошел нахуй',
			'ты че на хвх делаешь, сочняга ебанная?',
			'ты че на хвх делаешь, очередняга ебанная?',
			'ты че на хвх делаешь, сочняра ебанная?',
			'ты че на хвх делаешь, очередняра ебанная?',
			'ебать ты бездарб, я хуею.',
			'ебать ты бездарь, я хуею.',
			'а нахуй ты рейдж оффнул?',
			'а нахуй ты рагу оффнул?',
			'а нахуй ты рейдж-бот оффнул?',
			'а нахуй ты рагу-бот оффнул?',
			'улетел к своей мертвой матери, очередняга.',
			'улетел к своей мертвой матери, очередняра.',
			'улетел к своей мертвой матери, сочняга.',
			'улетел к своей мертвой матери, сочняра.',
			'ого,бездарь без скита упал)()))(',
			'ля какой, ща я тебя трахну',
			'ля какой, ща я тебе трах трах сделаю',
			'ля какой, ща я тебе трах-трах сделаю',
			'ля какой, ща я тебе трахтрах сделаю',
			'пиздуй. Нааа. ЗАВОООД!',
			'пиздууй нааа завооод',
			'пиздуй на завод',
			'пиздуй на завод',
			'ты платил за эту пасту? соболезную кошельку твоей матери...',
			'ты платил за эту пасту? соболезную кошельку твоего отчима...',
			"нищий улетел", "*DEAD* пофикси нищ", "сразу видно юид иссуе хуле тут",
			'у мамки что кфг иссуе была шо тебя родила',
			'а ты и в жизни ньюкамыч????',
			'сука не позорься и ливни лол',
			'юид полиция подьехала открывай дверь уебыч',
			'набутылирован лол', 'tranny holzed',
			'але ты там из хрущевки выеди а потом вырыгивай блять',
			'как там с мамкой комнату разделять АХАХАХХАХА как ты на акк накопил блять',
			'найс 0.5х0.5м комната блять ХАХАХАХА ТЫ ТАМ ЖЕ ДАЖЕ ПОВЕСИТЬСЯ НЕ МОЖЕШЬ МЕСТА НЕТ ПХПХПХППХ',
			'на мыло и веревку то деньги есть нищ????',
			'опущены стяги, легион и.. А БЛЯТЬ ТЫЖ ТУТ ОПУЩ НАХУЙ ПХГАХААХАХАХАХА)))))))',
			'але какая с юидом ситуация)))',
			'бля че тут эта нищая собака заскулила',
			'не хотелось даже руки об тебя марать нищ сука',
			'ебать ты красиво на бутылку упал',
			'прости что без смазки)))',
			'алло это скорая? тут такая ситуация нищ упал))) ОЙ А ВЫ НИЩАМ ТО НЕ ПОМОГАЕТЕ?? ПОНЯТНО Я ПОЙДУ ТОГДА))))))))',
			'вырыгнись из окна нахуй боберхук юзер',
			'тяжело с мемсенсом наверно????',
			'але а противники то где???',
			'как ты на пк накопил даже не знаю )))))))))',
			'iq больше двух будет пмнешь ок????',
			'дал юид за щеку проверяй',
			'nn4ik shat on',
			'хуя тебя опустили манька))))',
			'ебать тебя унесло',
			'рефандни пожалуйста',
			'на бутылку русак',
			'a вы (you) сэр собственно кто (who)?',
			'бля пиздос может рефнешь???',
			'как там жизнь с рупастой??????',
			'але может не будешь тратить мамкину зарплату на говнопасты???',
			'бля я рядом только прошел а ты уже упал АУУ НИЩ С ТОБОЙ ВСЕ ХОРОШО??????????))))))',
			'ой нищий упал щас скорую вызовем',
			'ой а кто (who) ты (you) такой вотзефак мен))))))',
			'але найс упал нищ ЛОООООООЛ', 'с тобой там все хорошо????????????? а да ты нищ нахуя я спрашиваю ПХАХАХАХАХХА',
			'жаль конечно что против нищей играть надо)))',
			'тебе даже спин не поможет блять, нахуй ты вообще живешь',
			'ты можешь заселлить лишнюю хромосому???',
			'научи потом как так сосать на хвх',
			'когда не накопил на гормоны и чулки)))))))))))))',
			'как там жизнь на мамкину пенсию???????',
			'але я бот_кик в консоль вроде прописал а вас там не кикнуло эт че баг??)))))))))',
			'крякоюзер down, на завод нахуй',
			'я не понял ты такой жирный потомучто дошики каждый день жрешь???? нормальную работу найди может на еду денег хватит))))))))))))',
			'насрал тебе в ротешник проверяй',
			'нихуя ты там как самолет отлетел ХАХАХХАХАХАХАХХХААХАА',
			'БЛЯ НИЩ ХУЯК ХУЯК И ТЕБЯ НЕТ КАК МОЖНО ТАКИМ БЫТЬ?????? ОБЬЯСНИСЬ БЛЯТЬ',
			'Блин, друг, прости пожалуйста, не увидел',
			'Опять ты, прости, я без ников убил',
			'У тебя Ник тема бебриков? Я тебя вчера на Дме видел',
			'Ты с чем ?',
			'Зато ты очень красивый',
			'А фип бы забанил за такое, прости пж',
			'Мне друг (витма) (бигнейм) сказал, что в таких случаях 1 писать, но я добрый так что не буду',
			'Посаны, а как вам микрофон яспер мо о глод, у фипа такой вроде',
			'Возьми печеньки, завари чайочек. И расслабся',
			'Какой у тебя мейн Ник ? Мне сказали, что это важна чтоб медия сделать, ты витма ?',
			'Ну ничего, с кем не бывает',
			'Бро, прости пожалуйста, я не хотел',
			'чел у тя скит?',
			'чо так изично нуб с ппхудом',
			'Бро, а у тебя кфг бай твой?',
			'Кряк в3 обновили?',
			'а рейвтрип неплохо тапает',
			'У тебя аа случаем не Минаев кодил, или сам делал?',
			'Сорян что убил, я легит тестил',
			'Прости, в следующий раз повезет.',
			'Трипл бекфлипом в голову',
			'повтори за колобком - повешайся',
			'Обязательно было ванвей пикать?',
			'Отличная работа! Ты почти смог меня одолеть',
			'Продолжай тренироваться и когда нибудь ты сможешь мне противостоять! <3',
			'50к бебры у папы да я босс',
			'А фестив бы не простил',
			'Ой улетел',
			'Не ну фуриос сегогдня тапает класна',
			'В спирте обнова клас мне нравица',
			'Втшка впенила сорямбр',
			'походу HESOYAM забыл выключить',
			'даже фанта лучше будет твоего пащенного мемепараши',
			'ты че там отлетел то',
			'бля прости брат ты подскользнулся(((9',
			'иди готовь уроки шкила ебаная',
			'нищий улетел',
			'паста ой моргенкорд юзер упал',
			'сразу видно юид иссуе хуле тут',
			'у мамки что кфг иссуе была шо тебя родила',
			'а ты и в жизни ньюкамыч????',
			'сука не позорься и ливни лол',
			'юид полиция подьехала открывай дверь уебыч',
			'набутылирован лол',
			'але ты там из хрущевки выеди а потом вырыгивай блять',
			'как там с мамкой комнату разделять АХАХАХХАХА как ты на акк накопил блять',
			'опущены стяги, легион и.. А БЛЯТЬ ТЫЖ ТУТ ОПУЩ НАХУЙ ПХГАХААХАХАХАХА)))))))',
			'але какая с юидом ситуация)))',
			'бля че тут эта нищая собака заскулила',
			'не хотелось даже руки об тебя марать нищ сука',
			'ебать ты красиво на бутылку упал',
			'вырыгнись из окна нахуй боберхук юзер',
			'Создатель LUA ケルス#2705',
			'Создатель JS ケルス#2705',
			'але а противники то где???',
			'как ты на пк накопил даже не знаю )))))))))',
			'жаль тебе нельзя купить брейн на алиэкспресс(((99(9',
			'iq больше двух будет пмнешь ок????',
			'дал юид за щеку проверяй',
			'бля эт пиздец че какие то там нищи с мемсенсом рыгают блять',
			'тебе права голоса не давали thirdworlder ебаный',
			'я номер один, я не победим',
			'ебать тебя унесло',
			'рефандни пожалуйста',
			'на бутылку русак',
			'a вы (you) сэр собственно кто (who)?',
			'бля пиздос может рефнешь???',
			'как там жизнь с рупастой??????',
			'глент кобяков глент влад бумага а ты скорей иди бля нахуй уии уии',
			'хелло шкилы ебаные',
			'глент кобяков глент влад бумага а вы совсем забыли как летает мой в3 уиии',
			'ой а кто (who) ты (you) такой вотзефак мен))))))',
			'я боюсь ослепнуть от такого позора',
			'с тобой там все хорошо????????????? а да ты нищ нахуя я спрашиваю ПХАХАХАХАХХА',
			'это ламба врум врум а это ньюген нищ какой то',
			'тебе даже спин не поможет блять, нахуй ты вообще живешь',
			'ты можешь заселлить лишнюю хромосому???',
			'научи потом как так сосать на хвх',
			'когда не накопил на гормоны и чулки)))))))))))))',
			'как там жизнь на мамкину пенсию???????',
			'але я бот_кик в консоль вроде прописал а вас там не кикнуло эт че баг??)))))))))',
			'але я bot_kick в консоль вроде прописал а вас там не кикнуло эт че баг??)))))))))',
			'але я бот_килл в консоль вроде прописал а вас там не убило эт че баг??)))))))))',
			'але я bot_kill в консоль вроде прописал а вас там не убило эт че баг??)))))))))',
			'крякоюзер down',
			'плыви нахуй! (◣_◢)',
			'я не понял ты такой жирный потомучто дошики каждый день жрешь???? нормальную работу найди может на еду денег хватит))))))))))))',
			'насрал тебе в ротешник проверяй',
			'нихуя ты там как самолет отлетел ХАХАХХАХАХАХАХХХААХАА',
			'Станция \'nn4ik\', следующая станция: \'упал\'',
			'угощаю пиздюля-кебабом',
			'PPHUD СТРЕЛЯЕТ МЕТКО AIMWARE СОСЕТ КОНКРЕТНО',
			'Nice cfg you sell',
			'Мамонт, без нихуя',
			'Жду оправданий в чате ◣_◢',
			'Это так, да, это так, сосать это талант',
			'Хватит обмазываться маслом, иди играй',
			'Хватит обмазываться маслом, иди умирай',
			'Хватит обмазываться маслом, иди соси',
			'Хватит обмазываться маслом, иди сосать',
			'Это не ты умер, это я убил',
			'Здравствуйте, это общество защиты диких обезьян. Нам сказали что вас обижают!',
			'Я трахнул тебя в твою жопу',
			'Лови тапыча, мусор',
			'еба тя расплющило жирнич',
			'Теперь я - Ютубер Омлет (◣_◢)',
			'طلقه واحده هههههههههه',
			'Я играю на лайфхакерском конфиге от Шока (◣_◢)',
			'нищий улетел',
			'*忍び 1 УПАЛ び忍',
			'ХАХАХАХАХХАХА НИЩИЙ УЛЕТЕЛ (◣_◢)',
			'я ķ¤нɥåλ ϯβ¤£ü ɱåɱķ£ β Ƥ¤ϯ',
			'ⒶaŴÞ ︻デ═一 -™',
			'Желток в деле! Белок на пределе! (◣_◢)',
			'опущены стяги, легион и.. А БЛЯТЬ ТЫЖ ТУТ ОПУЩ НАХУЙ ПХГАХААХАХАХАХА)))))))',
			'але ты там из хрущевки выеди а потом выпрыгивай блять',
			'ебать ты красиво на бутылку упал',
			'ты как ваще живешь в коробке 1х1м где ты деньги на акк взял нищ ахахах',
			'╭∩╮(◣_◢)╭∩╮',
			'->‌> ‌si‌rg‌ay‌zo‌rh‌ac‌k.‌pw‌/в‌оз‌вр‌ат‌де‌не‌г.‌ph‌p ‌«‌-',
			'в окно паунс сделай у тя даже юида нету ЛОООЛ',
			'земля те землей хуй до чиста еденицей отлетел))',
			'$$$ 1 TAP UFF YA $$$ ∩ ( ͡⚆ ͜ʖ ͡⚆) ∩',
			'ху‌я ‌ты‌ н‌а ‌бу‌ты‌лк‌у ‌уп‌ал‌ х‌ах‌ах‌ах‌а',
			'мн‌е ‌по‌ху‌й ‌на‌ к‌ри‌ти‌ку‌ о‌че‌ре‌дн‌ог‌о ‌ны‌ти‌ка‌, ‌со‌ м‌но‌й ‌мо‌и ‌лю‌ди‌, ‌мо‌й ‌ра‌йо‌н.',
			'AHXAAP!! oNe.TaP.!*',
			'cya @ dog',
			'Я играю на вкуснейшем конфиге от Омлета ツ',
			'как ты на пк накопил даже не знаю )))))))))',
			'VAAAAAAAC в чат!!! (づ ◕‿◕ )づ',
			'AWPutin༻︻デ 一',
			'LIFEEEEHAAAACK BITCH!!! (◣_◢)',
			'AHAHAHHAAH (◣_◢)',
			'а у вас походу умирать это семейное)',
			'нахуя пидораса убил?',
			'чао персик дозревай',
			'уважаемый в тюрьме вы будете водолазом',
			'говори буду плохо говорить буду сосать, буду плохо сосать буду пересасывать',
			'долбаеб иди башмачки в сундучок школьный собирай',
			'ботинок ебаный чо слетел',
			'братик маме привет передай',
			'не противник',
			'а ты че клоун???',
			'я обоссал тебя (',
			'ты че там отлетел то?',
			'упал хуета ебаная , но в боди забрал да похуй все равно упал',
			'*DEAD* ливай с хвх (',
			'до связи башмак',
			'нищета глупейшая играть учись',
			'опущен сын твари',
			'нищий улетел',
			'*DEAD* пофикси нищ',
			'сразу видно кфг иссуе мб конфиг у меня прикупишь ?',
			'животное аддон скачай а то падаешь',
			'оттарабанен армянская королева',
			'сука не позорься и ливни',
			'улетел тапочек ебаный',
			'единицей свалился фуфлыжник',
			'зачем ты играешь тут безмозглый',
			'иди кумыса попей очередняра',
			'откисай сочняра',
			'на мыло и веревку то деньги есть????',
			'ИЩИ СЕБЯ НА pornoeb.cc/sochniki',
			'свежий кабанчик',
			'до связи на подскоке кабанчик',
			'скажи маме сухарики купить долбаеб',
			'ебать ты красиво на бутылку присел, тебе дать альт?',
			'прости что без смазки)',
			'алло это скорая? тут такая ситуация парню который упал нужна скорая)',
			'ало ты мапу лузаешь дура очнись',
			'тяжело с кряком????',
			'ЕБУЧЕСТЬ ВТОРОГО РАЗРЯДА ВЫДВИЖЕНЕЦ ОТКИС',
			'але а противники то где???',
			'ты по легиту играешь ?',
			'ХУЕПРЫГАЛО ТУСОВОЧНОЕ КУДА ПОЛЕТЕЛО',
			'ты куда жертва козьего аборта',
			'iq?',
			'·٠●•۩۞۩ОтДыХаЙ (ٿ) НуБяРа۩۞۩•●٠·',
			'ты то куда лезешь сын фантомного стационарного спец изолированого металлформовочного механизма',
			'╭∩╮( ⚆ ʖ ⚆)╭∩╮ ДоПрыГался(ت)ДрУжоЧеК',
			'держи зонтик ☂, тебя обоссали',
			'Держи ✈ и лети нахуй !',
			'слишком сочный для Djamic.technologies',
			'сьебался нахуй таракан усатый',
			'мать твою ебал',
			'нахуй ты упал иди вставай и на завод',
			'не по сезону шуршишь фраер',
			'ИЗИ ЧМО ЕБАНОЕ',
			'ливай блять не позорься',
			'AХАХ ПИДОР УПАЛ С ВАНВЕЯ ХАХАХА ОНЛИ БАИМ В БОДИ ПОТЕЕТ НА ФД АХА',
			'АХАХА УЛЕТЕЛ ЧМОШНИК',
			'1 МАТЬ ЖАЛЬ',
			'тебе права голоса не давали thirdworlder ебаный',
			'на завод иди',
			'не не он опять упал на колени',
			'вставай заебал , завтра в школу',
			'гет гуд гет иди нахуй',
			'ну нет почему он ложится когда я прохожу',
			'у тебя ник нейм адео?',
			'by SANCHEZj hvh boss',
			'парень тебе ник придумать?',
			'такой тупой :(',
			'хватит получать хс ,лучше возьми свою руку и иди дрочи',
			'нет нет этот крякер такой смешной',
			'1 сын шлюхи',
			'1 мать твою ебал',
			'приобрети мой кфг клоун',
			'об кафель голову разбил?',
			'мать твою ебал',
			'хуесос дальше адайся ко мне',
			'ещё раз позови к себе на бекап',
			'не противник',
			'ник нейм дориан(',
			'упал = минус мать',
			'не пиши мне',
			'жаль конечно что против тебя играю, но куда деваться',
			'единичкой упал',
			'сынок зачем тебе это ?',
			'давно в рот берёшь?',
			'мне можно',
			'ты меня так заебал , ливни уже',
			'ничему жизнь не учит (',
			'я не понял, ты такой жирный потому что дошики каждый день жрешь?',
			'братка го я тебе бекап позову',
			'толстяк даже пройти спокойно не может',
			'улетел пидорас by ev0lve.xyz',
			'все хуево братка, прикупи конфиг санчеза или виртуала хз',
			'изи',
			'АХАХА ПОШЕЛ НАХУЙ',
			'Иди посмотри nolove там ты научишься играть хотя бы долбоёб ебаный',
			'улетел в казахстан',
			'боже тебе не надоело быть мёртвым??',
			'owned by ХВХ ПОДМЫШКИ',
			'Слишком плохо!',
			'Слишком хуёво!',
			'чо за чит?',
			'ебучая собака',
			'присаживайся, тут для тебя елдак готов',
			'найс кфг, ю селл?',
			'сасай дик',
			'1',
			'почему так просто',
			'иди рефунди чит',
			'иди рефанди чит',
			'иди рефандни чит',
			'иди рефундни чит',
			'выйди, ты мне не ровня',
			'собака',
			'умри от рака',
			'пожалуйста, не убивайте меня!!!! ( ͡° ͜ʖ ͡°)',
			'дай мне свой читикс',
			'в следующий раз, попробуй меня убить!',
			'полощи рот спермой шлюха дырявая',
			'еще че в хуй своего отца скажешь',
			'тихий час, спать нахуй',
			'ты один из тех людей кто занимает 3 место при игре 1x1',
			'я ебал твою vfnm',
			'я твою мать на батеной жигули сбил к хуям',
			'спать, уёбище',
		},
		
		demonslayer = {
			sun = {
				'Дыхание Солнца: Вальс',
				'Дыхание Солнца: Азурные Небеса',
				'Дыхание Солнца: Обжигающее Багряное Отражение',
				'Дыхание Солнца: Радуга Паргелия',
				'Дыхание Солнца: Огненная Колесница',
				'Дыхание Солнца: Палящее Солнце',
				'Дыхание Солнца: Копьё Подсолнуха',
				'Дыхание Солнца: Сияющий Удар Солнца',
				'Дыхание Солнца: Превращение Заходящего Солнца',
				'Дыхание Солнца: Благодетельный Свет',
				'Дыхание Солнца: Солнечное Гало - Танец Дракона',
				'Дыхание Солнца: Пламенный Вальс',
			},
			
			water = {
				'Дыхание Воды: 1ая ката: Рассекающая Водная Гладь',
				'Дыхание Воды: 2ая ката: Водяное Кольцо',
				'Дыхание Воды: 3ья ката: Танец Быстротечного Потока',
				'Дыхание Воды: 4ая ката: Удар Волной',
				'Дыхание Воды: 5ая ката: Милосердный Дождь Сухого Дня',
				'Дыхание Воды: 6ая ката: Вращающийся Водоворот',
				'Дыхание Воды: 7ая ката: Пронзающий Удар Капель Волны',
				'Дыхание Воды: 8ая ката: Водопадный Поток',
				'Дыхание Воды: 9ая ката: Хаос Водных Всплесков',
				'Дыхание Воды: 10ая ката: Дракон Перемен',
				'Дыхание Воды: 11ая ката: Штиль',
			},
			
			moon = {
				'Дыхание Луны: 1ая ката: Тёмная Луна: Вечерняя Святыня',
				'Дыхание Луны: 2ая ката: Лунные Жемчужные Цветы',
				'Дыхание Луны: 3ья ката: Ненавистная Луна: Цепи',
				'Дыхание Луны: 5ая ката: Разрушительный Вихрь Призрачной Луны',
				'Дыхание Луны: 6ая ката: Одинокая Луна В Бесконечной Ночи Авичи',
				'Дыхание Луны: 7ая ката: Зловещее Зеркало: Лунный Блеск',
				'Дыхание Луны: 8ая ката: Лунный Уроборос',
				'Дыхание Луны: 9ая ката: Убывающая Луна: Бесконечный Пейзаж',
				'Дыхание Луны: 10ая ката: Срез: Свет Луны, Пробивающийся Сквозь Бамбуковые Листья',
				'Дыхание Луны: 14ая ката: Бедствие — Бессмертный Гордый Полумесяц',
				'Дыхание Луны: 16ая ката: Радужный Полумесяц',
			},
			
			flame = {
				'Дыхание Пламени: 1ая ката: Блуждающие Огни',
				'Дыхание Пламени: 2ая ката: Восходящее Пламя',
				'Дыхание Пламени: 3ья ката: Пылящая Вселенная',
				'Дыхание Пламени: 4ая ката: Отражение Цветущего пламени',
				'Дыхание Пламени: 5ая ката: Пламенный Тигр',
				'Дыхание Пламени: 9ая ката: Чистилище',
			},
			
			thunder = {
				'Дыхание Грома: 1ая ката: Гром И Молния',
				'Дыхание Грома: 2ая ката: Шаровая Молния',
				'Дыхание Грома: 3ья ката: Собирающиеся На Гул Грома Комары',
				'Дыхание Грома: 4ая ката: Далёкий Гром',
				'Дыхание Грома: 5ая ката: Жар Электрических Молний',
				'Дыхание Грома: 7ая ката: Пылающий Бог Грома',
			},
			
			stone = {
				'Дыхание Камня: 1ая ката: Извивающаяся Гидра',
				'Дыхание Камня: 2ая ката: Удар Небесной Твердью',
				'Дыхание Камня: 3ья ката: Вулканическое Отражение',
				'Дыхание Камня: 4ая ката: Риолит — Стремительный Захват',
				'Дыхание Камня: 5ая ката: Каменное Колесо Правосудия',
			},
			
			wind = {
				'Дыхание Ветра: 1ая ката: Удар Песчаного Вихря',
				'Дыхание Ветра: 2ая ката: Очищающие Когти Ветра',
				'Дыхание Ветра: 3ья ката: Шатающиеся На Ветру Деревья',
				'Дыхание Ветра: 4ая ката: Поднимающаяся Песчаная Буря',
				'Дыхание Ветра: 5ая ката: Метель',
				'Дыхание Ветра: 6ая ката: Вихрь Чёрного Дыма',
				'Дыхание Ветра: 7ая ката: Порыв Ветра - Полёт Тенгу',
				'Дыхание Ветра: 8ая ката: Шквал Безжалостного Вихря',
				'Дыхание Ветра: 9ая ката: Ураган Сканды',
			},
			
			flower = {
				'Дыхание Цветка: 2ая ката: Дух Сливы',
				'Дыхание Цветка: 4ая ката: Алое Ханагоромо',
				'Дыхание Цветка: 5ая ката: Пионы Пустоты',
				'Дыхание Цветка: 6ая ката: Кружащийся Персик',
				'Дыхание Цветка: Финальная техника: Алые Глаза Равноденствия',
			},
			
			serpent = {
				'Дыхание Змеи: 1ая ката: Удар Змеи',
				'Дыхание Змеи: 2ая ката: Ядовитые клыки Змеи',
				'Дыхание Змеи: 3ья ката: Извивающийся Натиск',
				'Дыхание Змеи: 4ая ката: Двуглавая Змея',
				'Дыхание Змеи: 5ая ката: Извивающаяся Змея',
			},
			
			love = {
				'Дыхание Любви: 1ая ката: Дрожь Первой Любви',
				'Дыхание Любви: 2ая ката: Мучительная Любовь',
				'Дыхание Любви: 3ья ката: Град Милых Котиков',
				'Дыхание Любви: 5ая ката: Робкая Привязанность: Когти Хаоса',
				'Дыхание Любви: 6ая ката: Бриз Любви — Кошачья Лапка',
			},
			
			sound = {
				'Дыхание Звука: 1ая ката: Гром',
				'Дыхание Звука: 4ая ката: Похоронный Звон Авичи',
				'Дыхание Звука: 5ая ката: Симфония Пронзительных Струн',
			},
			
			beast = {
				'Дыхание Зверя: 1ый клык: Пронзить И Извлечь',
				'Дыхание Зверя: 2ой клык: Распороть И Разорвать',
				'Дыхание Зверя: 3ий клык: Разрезать И Поглотить',
				'Дыхание Зверя: 4ый клык: Разрубить На Куски',
				'Дыхание Зверя: 5ый клык: Неистово Иссечь',
				'Дыхание Зверя: 6ой клык: Неровно Обгрызть',
				'Дыхание Зверя: 7ой клык: Пространственный Обзор',
				'Дыхание Зверя: 8ой клык: Атака Кабана',
				'Дыхание Зверя: 9ый клык: Удлинение — Изогнуто Рассечь',
				'Дыхание Зверя: 10ый клык: Вращающиеся Клыки',
				'Дыхание Зверя: Удар-Бросок',
			},
			
			mist = {
				'Дыхание Тумана: 1ая ката: Подвешенные Небеса, Далёкий Туман',
				'Дыхание Тумана: 2ая ката: Слоистый Туман',
				'Дыхание Тумана: 3ья ката: Ветер, Рассеивающий Туман',
				'Дыхание Тумана: 4ая ката: Удар Адвекции',
				'Дыхание Тумана: 5ая ката: Море облачного Тумана',
				'Дыхание Тумана: 6ая ката: Лунный Туман',
				'Дыхание Тумана: 7ая ката: Дымка',
			},
			
			insect = {
				'Дыхание Насекомого: Танец бабочек: Шалость',
				'Дыхание Насекомого: Танец жалящей осы: Истинный Взмах',
				'Дыхание Насекомого: Танец стрекозы: Фасетчатые глаза — Шестигранник',
				'Дыхание Насекомого: Танец многоножки: Извивающаяся Многоножка',
			},
		},
		
		nanatsunotaizai = {
			chastiefol = {
				--Normal Chastiefol
				'Spirit Spear Chastiefol, Form 1: Chastiefol',
				'Spirit Spear Chastiefol, Form 2: Guardian',
				'Spirit Spear Chastiefol, Form 3: Fossilization',
				'Spirit Spear Chastiefol, Form 4: Sunflower',
				'Spirit Spear Chastiefol, Form 5: Increase',
				'Spirit Spear Chastiefol, Form 6: Luminosity',
				'Spirit Spear Chastiefol, Form 7: Pollen Garden',
				--True Chastiefol
				'True Spirit Spear Chastiefol, Form 1: Chastiefol',
				'True Spirit Spear Chastiefol, Form 2: Guardian',
				'True Spirit Spear Chastiefol, Form 3: Fossilization',
				'True Spirit Spear Chastiefol, Form 4: Sunflower',
				'True Spirit Spear Chastiefol, Form 5: Increase',
				'True Spirit Spear Chastiefol, Form 6: Luminosity',
				'True Spirit Spear Chastiefol, Form 7: Pollen Garden',
			},
			
			basquias = {
				'True Spirit Spear Basquias, Form 1: Basquias',
				'True Spirit Spear Basquias, Form 2: Guardian',
				'True Spirit Spear Basquias, Form 5: Yggdra Armor',
				'True Spirit Spear Basquias, Form 7: Moon Rose',
				'True Spirit Spear Basquias, Form 9: Death Thorn',
				'True Spirit Spear Basquias, Form 10: Emerald Octo',
			},
		},
		
		facts = {
			'Если долго смотреть аниме, то лицо может аниметь.',
			'Во Флориде запрещено петь на публике в купальнике.',
			'Несмотря на все свое население, в китае используется всего около 200 фамилий.',
			'В любое время в земной атмосфере происходит около 1800 гроз. Каждую секунду в землю ударяет 100 молний.',
			'Существует растение, которое называют цветком смеха. Оно вызывает беспричинный смех на полчаса.',
			'Мурчание кошек аналогично лечению людей акустическими колебаниями и может способствовать замедлению остеопороза и даже возобновлению роста костей у пожилых людей.',
			'Люди с голубыми глазами лучше видят в темноте.',
			'Стив Возняк (основатель Apple), изобрел первое устройство, позволяющее прослушивать чужие телефонные разговоры и звонить бесплатно.',
			'Среднестатистическая женщина за свою жизнь успевает посидеть на 32 диетах.',
			'Самый старый обнаруженный рецепт супа датируется 6000 годом до нашей эры. Главный ингредиент — мясо бегемота.',
			'Жирафы в целях самозащиты действуют головой как молотком.',
			'В Швейцарии выпустили детские презервативы.',
			'Чихание при взгляде на солнце — это аутосомно-доминантный непроизвольный гелио-глазной синдром взрыва.',
			'Рев, который мы слышим, когда мы помещаем морскую ракушку рядом с нашим ухом, не является океаном, а скорее звуком крови, приливающей через вены в ухе.',
			'Потребление йогурта в мире возросло за последние 12 лет в четыре раза.',
			'Самая старой кошкой на свете была Puss, из Англии, которая умерла в 1939 году через день после своего 36-ого дня рождения.',
			'На территории Японии 17 действующих вулканов.',
			'В Саудовской Аравии нет ни одной реки.',
			'В арабских странах чрезвычайно популярны гонки на верблюдах. А в качестве жокеев там обычно используют трех - четырехлетних детей.',
			'В 1892 году в Италии девочкам стали разрешать выходить замуж начиная с 12 лет. Раньше этот возраст был еще меньше.',
			'Недавно учеными было обнаружено первое бессмертное существо нашей планеты. Как оказалось, этим существом является медуза Turritopsis nutricula. Медуза способна на всем протяжении своей жизни постоянно себя омолаживать.',
			'Как минимум три часа в день мы бездельничаем.',
			'Степень непредсказуемости и импульсивности мужского поведения обратно пропорциональна возрасту. Участки головного мозга, отвечающие за контролирование эмоций, окончательно формируются ближе к 25 годам.',
			'В большинстве реклам время показываемое на часах – 10:10, чтобы не закрывать марку часов.',
			'В озере на юге Франции был пойман один из самых крупных карпов в мире. Гигантская рыба весом 15 килограмм с оранжевой чешуей напоминает золотую рыбку из сказки.',
			'Имя шейха Хамада написано на Земле километровыми буквами и видно из космоса.',
			'В Албании кивание головой значит «нет», и наоборот.',
			'В Алабаме запрещено водить машину необутым. Закон, однако, позволяет ездить по встречной полосе, если включить фары.',
			'Комары могут летать во время дождя.',
			'У человека меньше мyскyлов, чем y гyсеницы.',
			'Браки, в которых жены плохо спят, имеют гораздо больше шансов развалиться.',
			'При сильной рвоте у человека могут лопнуть сосуды в глазах.',
			'За пол века овощи стали менее полезны.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Япония — последняя страна в мире, формально сохранившая титул Империи.',
			'Бильярд, так же как и шахматы, имеет очень древнее происхождение, а его родиной является Азия.',
			'В ходе эволюционного процесса сформировалась отличительная особенность мужского восприятия зрительной информации – мужчины остро реагируют на движущиеся объекты, в то время как неподвижные предметы для них практически незаметны.',
			'В Антарктиде банкоматов в 2 раза больше, чем постоянных жителей.',
			'В автомобильных авариях ежегодно гибнет более миллиона человек, половина из которых – пешеходы, мотоциклисты и автомобилисты.',
			'Имя верблюда, изображенного на пачке сигарет «Camel» – Старый Джо.',
			'В начале Второй Мировой войны немецкая фабрика по розливу Кока-Колы лишилась поставок ингредиентов из США. Тогда немцы приняли решение производить другой напиток из отходов пищевого производства — яблочного жмыха и молочной сыворотки — и назвали его «Фанта» (сокращение от слова «фантазия»).',
			'Пизанская башня никогда не была прямой!',
			'2 500 000 000 пицц производится в Италии ежегодно.',
			'Полярная крачка — единственная птица, которая мигрирует с одного полюса на другой.',
			'Самые большие в мире сластены-немцы и швйцарцы:согласно статистике, в год каждый из них съедает по 10-11 кг шоколада.',
			'Каждый американец имеет, в среднем, 7 пар джинсов.',
			'Ежегодно из-за градобития страдает примерно 1% растительности по всему миру. Каждый год град наносит существенный ущерб экономике различных стран, суммарная цифра приближается к 1 миллиарду долларов. У градин может быть самая разная конфигурация – шары, конусы, эллипсы, яблоки и прочее, а также неправильная ...',
			'Самое популярное в мире женское имя - Анна. Его носят почти 100 миллионов женщин.',
			'По статистике сотовых операторов самая популярная смс 31 декабря: `Спасибо! А кто это?`',
			'Самая распространенная скальная порода на земле — это базальт.',
			'ДНК человека и банана совпадают на 50%.',
			'Сигареты содержат мышьяк, формальдегид, свинец, синильную кислоту, окись азота, угарный газ, аммиак и еще 43 известных канцерогенных веществ.',
			'При ярком свете человек съедает намного меньше, чем с приглушённым тусклым освещением.',
			'Горькие напитки делают людей критичнее и строже.',
			'Гречка очищает желудок от жвачек.',
			'Лечебные свойства зелёного чая — это миф',
			'Лингвисты утверждают, что в любом языке есть слово, обозначающее подхалима.',
			'Самые большие в мире лягушки – голиафы (Rana goliath). Длина взрослого голиафа может достигать 32–42 сантиметров, масса–3,5 килограмма.',
			'Длина самого длинного лимузина в мире — 30,5 метров',
			'На холоде насекомые дрожат, как и человек.',
			'Каждый день по всему миру выкуривают 15 миллиардов сигарет.',
			'Змея может спать в течение 3 лет.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Бананы можно есть не только сырыми. На Кубе подают бананы-фри, а в Венесуэле- банановый рис с перцем. Африканцы добавляют бананы во все блюда даже в томатный соус.',
			'На Гавайях серфинг включен в школьную программу.',
			'В Швейцарии запрещено смывать воду в туалете после 10 часов вечера.',
			'Стрекозы в буквальном смысле до смерти боятся рыб.',
			'Женские сердца бьются быстрее, чем у мужчин.',
			'В наше время дождь можно вызвать искусственно, путём сбрасывания на облака различных реагентов, таких как частицы сухого льда.',
			'Примерно 10 000 птиц в год разбиваются об окна.',
			'Три силовых занятия в неделю дают наибольший эффект.',
			'Каучук – один из ингредиентов жевательной резинки. Благодаря ему мы можем надувать пузыри.',
			'Аисты могут засыпать в полете на 10-15 минут.',
			'Вместо того, чтобы покупать энергетик, зайдите в аптеку. Настойка элеутерококка — рублей 30 в любой аптеке, хватает на 4 сессии (в среднем). Принимать в соответствии с инструкцией. Женьшень в гранулах (цена тоже около 30 рублей). 5 штук в рот, если надо быть бодрым часа три, 10 штук хватает на 5 часов, от 15 до 20 — чтобы мозг `после вчерашнего` запустился.',
			'По статистике 66% людей закрывают глаза во время поцелуя.',
			'Виадук Мийо - самый высокий мост в мире!',
			'13% людей притворяються, что говорят по мобильному телефону, что бы избежать неприятной встречи или разговора.',
			'В центре Мадрида есть отель из мусора.',
			'Пчелы никогда не спят. Пчела замирает на соте лишь на несколько секунд в течение суток.',
			'Пожилых людей больше всего в Швеции (24%) и меньше всего в Кувейте (2%).',
			'Булемия - это неукротимый аппетит.',
			'При улыбке у человека `работают` 17 мускулов.',
			'Самая дорогая пицца в мире стоит $1000',
			'Одна сигарета отнимает 5 минут жизни!',
			'Список подарков Сталину в честь его семидесятилетия печатался в советских газетах с декабря 1949 года по март 1953.',
			'Большинство американцев на вопрос `Сериал Вашего детства?` отвечают - «Зена: королева воинов»',
			'Японцы водят большие машины. Сити кары невозможно встретить даже в тесном Токио, зато джипов очень много.',
			'В 1988 году Мак Тайсон заработала за 91 секунду 20 миллионов долларов. За это время он нокаутировал Майкла Спинкса.',
			'Самый крупный рубин весит более 7 кг.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Жираф, Верблюд и Кошка - это единственные животные-иноходцы, при ходьбе у них идут сначала левые ноги, а потом правые. Такая ходьба гарантирует скорость, проворство и тишину.',
			'Тайна Бермудского треугольника будоражит умы уже несколько столетий. Однако, есть на Земле и другие аномальные места.',
			'Cпособность сворачивать язык в трубочку передаётся генетически.',
			'У женщин почти всегда исчезают боли в суставах, стоит им забеременеть.',
			'Собаки африканской породы `Басенджи` не умеют лаять.',
			'В древнем Риме, мужчина принимая присягу или давая клятву, клал руку на мошонку.',
			'В Японии можно купить клубничные Cheetos.',
			'Полководец А. Македонский знал в лицо 30 000 солдат своего войска.',
			'Сергей Абдрахманов самый быстрый человек в мире!!За 6,37 секунд он преодолел 15 метровую отвесную стену на этапе кубка Европы в Шамони (Франция) по скалолазанию!',
			'Чувство усталости появляется при нагрузках 35-65% от абсолютных возможностей.',
			'Самый старый вулкан – Этна, его возраст более 350 000 лет.',
			'Когда вы краснеете, ваш желудок тоже краснеет.',
			'Во рту человека около 40 000 бактерий.',
			'Пузырьки в пиве «Гиннес» не поднимаются на поверхность, а опускаются на дно, в отличие от всех других сортов пива.',
			'У свиньи оргазм длится 30 минут!',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Термин «любовь» произошёл от «lubhyati» (санскрит) и означает «желание».',
			'Антон Чехов перед смертью признался, что «Вишневый сад» написал его друг Василий Дрынов, но книгу решили подписать более «раскрученным» имен.',
			'Наполеон Бонапарт был вовсе не коротышкой — его рост был выше среднего в то время и составлял 169 сантиметров.',
			'35 см - таким был рост самого маленького пони. И звали его соответственно - тыквочка.',
			'Согласно британскому закону, принятому в 1845, попытка покончить жизнь самоубийством каралась смертной казнью.',
			'Петух не может петь, если не вытянет шею.',
			'По статистике, женщины плачут чаще мужчин примерно в 3-4 раза. В крови всех женщин содержится гормон пролактин, он-то и заставляетнас пускать слезу, в организме у мужчин такой гормон отсутствует.',
			'У некоторых людей бывают глаза хамелионы. Их радужная оболочка может менять свой цвет на синий, зеленый, серый, карий, желтый и даже красный цвет включая их оттенки. Но чаще глаза имеют только 3-4 основных цвета.',
			'Выразительность взгляда Элизабет Тейлор объяснялась не только её природным обаянием, но также и редкой генетической мутацией — у актрисы был двойной ряд ресниц.',
			'По суше бегемот может бежать быстрее человека.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Две трети жителей планеты Земля никогда не видели снега.',
			'Ласточка влетает в 5‐ти сантиметровую щель на скорости 56 км/час.',
			'Ни мужчина, ни женщина не может чихнуть с открытыми глазами. Около 2% автомобильных аварий, происходящих в мире, вызвано чиханием за рулем.',
			'Кошка имеет 32 мускулы в каждом ухе.',
			'Самая дорогая пицца в мире стоит $1000.',
			'В Антарктиде найдено озеро, вода в котором в 11 раз солонее морской и может замерзнуть только при температуре -50 градусов',
			'Партенофобия - это боязнь девственниц.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Почти каждый человек имел копилку в его/ее детстве, и в настоящее время эта традиция проддерживается.',
			'Пчела за свою жизнь производит всего 1-2 чайные ложки меда.',
			'Секундную стрелку в часах изобрёл английский врач около 300 лет назад. Врач изобрёл её именно для того, чтобы приступить к исследованиям ритма сердца.',
			'Одна капля нефти делает непригодным для питья 25 литров воды.',
			'На Земле сейчас живут примерно сто тысяч человек в возрасте свыше ста лет.',
			'Ежедневно жители США съедают 18 гектаров пиццы.',
			'Эверест подрастает на 4 миллиметра в год.',
			'В Америке, американские горки называют русскими горками.',
			'Если кошки возле вас и у них вибрирует хвост они проявляют самое сильное чувство любви.',
			'Если стекло разбивается, трещины двигаться со скоростью до 3000 миль в час.',
			'Самое возрастное дерево на Земле растет на склоне горы Фулуфьяллет в Швеции. Согласно подсчетам ученых ели `Старая Тйикко` исполнилось 9550 лет.',
			'Bugatti Veyron может проехать футбольное поле за одну секунду.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Детеныши крокодила при рождении не имеют пола — он зависит от температуры кладки, где они будут развиваться и вылупляться.',
			'25% населения Индии с наивысшим IQ это больше чем все население США. В Индии больше умных детей чем в США вообще детей.',
			'В наше время дождь можно вызвать искусственно, путём сбрасывания на облака различных реагентов, таких как частицы сухого льда.',
			'Три силовых занятия в неделю дают наибольший эффект.',
			'Список подарков Сталину в честь его семидесятилетия печатался в советских газетах с декабря 1949 года по март 1953.',
			'Томас Эдисон, изобретатель лампочки, боялся темноты.',
			'Выразительность взгляда Элизабет Тейлор объяснялась не только её природным обаянием, но также и редкой генетической мутацией — у актрисы был двойной ряд ресниц.',
			'У некоторых женщин может быть аллергия на сперму.',
			'Бабушку Леонардо Ди Каприо звали Елена Смирнова.',
			'Все полярные медведи - левши.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'У пчелы 2 желудка .Один для мёда ,другой для пищи.',
			'Общая длина государственной границы Ватикана составляет 3, 2 км.',
			'Cексуальность мужчины зависит от его схожести с обезьяной.',
			'Никогда не говори людям о своих проблемах, 80% ими не интересуются, остальные 20% рады что они у тебя есть!',
			'Одна британская компания делает мобильные телефоны, которые вместо звонков издают запахи.',
			'В Древней Греции салфетками служили листья фигового дерева, которыми рабы вытирали губы своему хозяину.',
			'С точки зрения эволюции человеческое обоняние бесполезно и, возможно, со временем исчезнет',
			'По данным Лионского университета: в мире около 400 миллионов домашних кошек. Пальму первенства отдают Австралии, где на 10 жителей приходится 9 кошек.',
			'LSD не влияет на хромосомы.',
			'Рыба-доктор лечит людей, обгрызая чешуйки отмершей кожи пациентов.',
			'До 19 века шоколад употреблялся только в жидком виде. Плитки появились лишь в 1840-х годах.',
			'Самые ненужные деньги были выпущены в России после смерти царя Александра I. Еще до коронации была отчеканена пария монет с портретом старшего наследника Константина, который отказался от престола в пользу Николая и тираж отправили на переплавку.',
			'В Windows нельзя создать папку с названием `Con`.',
			'В среднем килограмм картофельных чипсов стоит в двести раз дороже, чем килограмм картофеля.',
			'У блондинов борода растет быстрее, чем у брюнетов.',
			'Отлично поднимает настроение физическая нагрузках.',
			'Писсуары, находящиеся в туалетах ближе к двери, как правило, самые чистые, так как их реже используют.',
			'Джулия Робертс — первая в истории киноактриса, получившая 20 миллионов долларов за роль в фильме.',
			'Американцы тратят больше денег на еду для своих собак,чем для своих детей.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Ежедневно на Земле происходит тысячи слабых землетрясений.',
			'Япония — последняя страна в мире, формально сохранившая титул Империи.',
			'IQ-показатель людей, использующих IE, ниже, чем у пользователей других браузеров.',
			'Для того, чтобы шариковая ручка начала писать в невесомости, США потратило миллионы долларов. А вот русские в космосе обходились простым карандашом, причём не внося в его конструкцию никаких изменений.',
			'В мире всего 7.1 % левшей.',
			'Подобно отпечаткам пальца, окрас жирафа также является уникальным',
			'В головном мозге человека за одну секунду происходит 100 000 химических реакций.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Существуют реки, которые могут менять направление течения.',
			'В Швейцарии выпустили детские презервативы.',
			'Человеческое и свиное сердце практически полностью идентичны.',
			'У человека почти в 2 раза меньше извилин в коре головного мозга, чем у дельфина.',
			'У собак по четыре пальца на задних ногах, и по пять на передних.',
			'Человеческий глаз мигает в среднем 4 млн. 200 тыс. раз в год.',
			'На самом деле знаменитая фраза Суворова звучит так: «Тяжело в учении — легко в походе».',
			'В США один сёрфер подал на другого в суд за то, что тот прокатился на «его» волне. Суд отказал в рассмотрении из-за невозможности оценки ущерба от созерцания гнусного типа катающегося на чужой волне.',
			'Центр Евразии находится в Казахстане, в местечке Жидебай.',
			'Если мы посадили крысу в лабиринт с четырьмя тоннелями, и всегда будем класть сыр в четвёртый тоннель, крыса через некоторое время научится искать сыр в четвёртом тоннеле',
			'Брань и сквернословие может уменьшать физическую боль.',
			'Статистика показывает, что в последнее время инициаторами развода все чаще становятся женщины.',
			'В 17 веке в Англии за ошибочный прогноз синоптиков подвергали смертной казни.',
			'Комары могут летать во время дождя.',
			'23 АВГУСТА - День Государственного Флага Украины.',
			'Самый большой Санта-Клаус. Высота Санты составила 15,6 метров, а в ширину он был 11 метров. Вся конструкция была сделана из пенопласта и металла, и весила 2,5 тонны.',
			'Сердце слона весит 20-30 кг и бьется с частотой 30 раз в минуту.',
			'Морская звезда может вывернуть свой желудок наизнанку.',
			'Джиму Керри сегодня исполнилось 50!',
			'57-летнего жителя Флориды посадили в тюрьму за то, что он дважды направил своей супруге запрос на добавление в друзья в социальной сети и таким образом нарушил охранный судебный приказ.',
			'Не секрет, что не все знаменитости в школе были отличниками или хотя бы хорошистами. Звезду российского футбола Андрея Аршавина тоже в свое время выгоняли из школы. Получив «четверку», по его мнению, незаслуженно, он порвал классный журнал.',
			'Канада 4 раза за последние 5 лет была объявлена ООН лучшей для жизни страной.',
			'30% игроков NBA имеют татуировки.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Человеческий глаз мигает в среднем 4 млн. 200 тыс. раз в год.',
			'Сегодня пользователи меняют свои фотографии в профилях соцсетей в 3 раза чаще, чем в 2006-ом году.',
			'Человеческий глаз мигает в среднем 4 млн. 200 тыс. раз в год.',
			'Сердцебиение может учащаться примерно на 30 процентов во время зевания.',
			'В Перу продаётся сок из лягушек.',
			'Чем чаще самец дрофы занимается сексом, тем быстрее он стареет.',
			'Глаза у страуса больше, чем его мозг.',
			'У слизней четыре носа.',
			'Гепард может бежать со скоростью до 130 км/ч',
			'В быстроте черный африканский носорог носорог не уступает лошади и может развивать скорость до 40 км/ч.',
			'В Минске есть станция метро «Московская», в Москве — «Киевская», а в Киеве — «Минская».',
			'Чаще всего жёны миллионеров — учителя.',
			'Одна сигарета отнимает 5 минут жизни!',
			'Жирафы в целях самозащиты действуют головой как молотком.',
			'Имя верблюда, изображенного на пачке сигарет «Camel» – Старый Джо.',
			'У медузы нет мозга и кровеносных сосудов.',
			'15% людей тайно грызут ногти.',
			'Каждый день по всему миру выкуривают 15 миллиардов сигарет.',
			'Как утверждают ученые, поцелуй – это не рефлекс. Дети не умеют целоваться. Поэтому поцелуям можно только научиться. Или не научиться. В мире есть много стран, где люди не знаю, что такое поцелуи.',
			'Компания Google купила компанию Motorola.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Колличество смертей от различных несчастных случаев у мужчин в два раза выше, чем у женщин.',
			'Зелёный цвет успокаивает человека.',
			'В спиртных напитках можно найти 13 жизненно необходимых для нашего организма минеральных веществ.',
			'В г.Пара жители сверяют часы по дождю, т.к. ливни каждый день идут в одно и тоже время.',
			'Существуют картины и предметы из скотча.',
			'Когда Билл Клинтон был президентом, он отправил всего 2 электронных письма. Одно Д. Гленну на космический шаттл, а другое с текстом «Тест»',
			'Во время чихания воздух из носа выходит со скоростью 400 км / ч.',
			'В 2007 году в Японии появилась в продаже лимитированная серия Pepsi со вкусом огурца.',
			'Самый большой в мире фотоаппарат имеет длину 11 метров',
			'Устрица умеет менять пол, чем не раз пользуется.',
			'Одна британская компания делает мобильные телефоны, которые вместо звонков издают запахи.',
			'Медведь гризли в день может поймать и съесть до 40.000 бабочек',
			'У пчел пять глаз.',
			'У Моны Лизы нет бровей.',
			'Слоны используют свой хобот для мастурбации',
			'В Японии можно купить клубничные Cheetos.',
			'Шахматы придумали в Индии.',
			'Самого быстрого репера в мире зовут Билгин Озчалкан (Ceza). Его рекорд 1267 слов за 2 минуты 40 секунд.',
			'Полное имя куклы Барби — Барбара Миллисент Робертс',
			'Слон – единственное животное которое помнит все.',
			'Вопрос чести по-прежнему играет в Японии центральную роль, даже в политике. Последний премьер министр Юкио Хатояма подал в отставку после того, как не смог выполнить предвыборное обещание. Двое его предшественников тоже.',
			'В Алабаме запрещено водить машину необутым. Закон, однако, позволяет ездить по встречной полосе, если включить фары.',
			'Первой автокомпанией, предложившей скидку на свои автомобили - Ford. Сумма скидки была аж 50 долларов, автомобиль - Ford Model T',
			'Самый быстрый мотоцикл в мире!Bub Seven Streamliner достиг средней скорости 590,63 км/ч и поставил новый рекорд.',
			'Кошка может издавать более 100 видов разных звуков, а собака только 10.',
			'В древнем Египте в знак траура по умершей кошке хозяин сбривал брови.',
			'Бананы можно есть не только сырыми. На Кубе подают бананы-фри, а в Венесуэле- банановый рис с перцем. Африканцы добавляют бананы во все блюда даже в томатный соус.',
			'В среднем, в понедельник люди жалуются на жизнь на 12 минут дольше, чем в другие дни.',
			'Булемия - это неукротимый аппетит.',
			'Человек за день тратит в среднем 3-4 часа на то, чтобы противостоять собственным желаниям.',
			'Умные дети гораздо чаще становятся алкоголиками.',
			'Чтобы набрать 50 млн пользователей радио потребовалось 38 лет,TV - 13 лет, интернету - 4 года, Ipod - 3 года. Facebook собрал 200 млн пользователей менее чем за год.',
			'79% людей,чихнув говорят `ой`',
			'Чтобы нахмуриться, нужно задействовать больше мышц, чем для того, чтобы улыбнуться.',
			'Стоимость Земли — пять квадриллионов долларов.',
			'Февраль 1865 года — единственный месяц в истории человечества, в котором не было полнолуния.',
			'На Эйфелевой башне полностью обновляют краску каждые семь лет, причем вручную.',
			'Женщины в 4 раза ленивее, нежели мужчины.',
			'Книга – лучший лекарь при нервных расстройствах.',
			'Во Флориде запрещено петь на публике в купальнике.',
			'Осьминоги — самые умные животные среди беспозвоночных.',
			'Питание в космосе для большинства людей по-прежнему ассоциируется с тюбиками. На самом деле, уже 25 лет космонавты используют продукты в специальных пакетах. В эти пакеты перед едой заливают горячую воду, и блюда приобретают земной вид.',
			'Когда вы краснеете, ваш желудок краснеет тоже.',
			'Двадцать пять танков были выброшены в море в Сиамском заливе, чтобы помочь формированию искусственных рифов и обеспечение дома для рыб.',
			'Слово «горилла» переводится как «поросшая шерстью женщина»',
			'Ученые выяснили, что у людей долгое время обходящихся без отпуска, продолжительность жизни даже меньше, чем у хронических алкоголиков.',
			'У человека меньше мyскyлов, чем y гyсеницы.',
			'В 1957 году была издана книга в которую вошли 117 рассказов очевидцев о визуальном контакте с Лох-Несским чудовищем',
			'Джонни Депп потерял девственность в 13 лет.',
			'В Зионе, штат Иллинойс, запрещено давать зажженную сигарету собаке, коту или другому домашнему животному.',
			'Если Википедию распечатать, то получится книга примерно с 30 000 000 страниц.',
			'В крупных московских супермаркетах во время ПИК ловят иногда до 20 клептоманов в час.',
			'Простая ласточка может пролететь в дверной зазор шириной 5 см на скорости 56 км/ч',
			'У сомов более 27 000 вкусовых рецепторов.',
			'Муравьи никогда не спят.',
			'Игуана может находиться под водой до 28 минут.',
			'По статистике, более 7000 человек получают травмы, упав со стула.',
			'В городе Буфорд (США) живёт всего один человек. Он работает и дворником и мэром.',
			'Крот может за одну ночь прорыть туннель длиной в 76 метров.',
			'Слёзы улучшают настроение только 30% людей.',
			'Кофе — это второй крупнейший товар в международной торговле после бензина.',
			'Компании Adidas и Puma были основаны родными братьями, которые 26 лет не разговаривали – так сильно они друг друга ненавидели.',
			'Взрослая свинья пробегает километр за 5 минут.',
			'Кошка может издавать более 100 видов разных звуков, а собака только 10.',
			'Облака не могут двигаться на юго-запад.',
			'Пчелы никогда не спят. Пчела замирает на соте лишь на несколько секунд в течение суток.',
			'Вам потребуется около 1000 лет, чтобы посмотреть все ролики на YouTube.',
			'В дикой природе лев убивает не больше 20 раз в год.',
			'Какапо – единственный в мире нелетающий попугай.',
			'100 граммов водки содержит 235 ккал.',
			'Галилео Галилей не изобретал телескоп. За несколько лет до него это устройство предложили, по крайней мере, три человека, в том числе, голландец Ханс Липперсгей.',
			'Многие водные каналы в Амстердаме в особо холодные зимы замерзают настолько, что счастливые жители катаются по ним на коньках!',
			'При улыбке у человека `работают` 17 мускулов.',
			'Стрекозы в буквальном смысле до смерти боятся рыб.',
			'Тайна Бермудского треугольника будоражит умы уже несколько столетий. Однако, есть на Земле и другие аномальные места.',
			'В Перу продаётся сок из лягушек.',
			'В том, что ударяться локтями так больно, виноват «весёлый нерв»',
			'В Японии, Тайване, Китае и Корее не принято целоваться у всех на виду.',
			'Риск смерти во время секса с любовницей значительно выше, чем с женой.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Хомяки умеют подтягиваться,а некоторые даже переварачиваться через палочку.',
			'Компания Колгейт™ столкнулась с неожиданным препятствием при продвижении своей зубной пасты в испаноговорящих странах. В переводе с испанского «колгейт» означает: «иди и повесься».',
			'Во время зимней спячки сердце медведя на каждом выдохе останавливается на 15–20 сек.',
			'У Перис Хилтон 44 размер ноги.',
			'Самый распространенный мусор – сигаретные окурки. Ежегодно их выбрасывается 4.500.000.000 штук.',
			'Все полярные медведи - левши.',
			'Интернет увеличивает количество углерода в атмосфере и способствует глобальному потеплению.',
			'Если разбавить чай молоком, то можно почувствовать вкус сгущенного молока.',
			'Цвет носков правильно подбирать под цвет брюк, а не обуви.',
			'В дикой природе лев убивает не больше 20 раз в год.',
			'Для того, чтобы сфотографиться на первый фотоаппарат приходилось сидеть неподвижно около 8 часов.',
			'Население Якутии в 1200 раз меньше населения Индии, хотя по площади они почти одинаковы.', 'Слоны действительно боятся мышей, но не более чем любых других мелких животных, вертящихся у них под ногами.', ' Кончик кнута при ударе развивает скорость, превышающую скорость звука. Щелчок кнута возникает при преодолении им звукового барьера.', 'Одна из наиболее трудноизлечимых фобий — фобофобия, или боязнь страха.',
			'Викинги никогда не носили шлемов с рогами. В шлеме с рогами невозможно воевать, он годится только для шаманов.',
			'Шум, который мы слышим поднося морскую раковину к уху, это вовсе не звук океана, а эхо от окружающих нас шумов. В изолированной от шумов комнате никаких звуков из раковины не раздается.',
			'В казино не бывает настенных часов и окон с прозрачными стеклами.',
			'Если на одну шахматную клетку положить 1 зернышко риса, на вторую 2 зернышка, на третью 4 зернышка и т. д., тов итоге общий вес риса на шахматной доске составит более 460 миллиардов тонн. Это в тысячу раз больше, чем годовой урожай риса на всей Земле.',
			'Алмазы образуются в земной коре на глубине более 200 км. Только благодаря извержениям вулканов, алмазы переносятся на глубины, досягаемые человеком. Средний возраст любого бриллианта — около полутора миллиардов лет.',
			'Историю о яблоке, упавшем на голову Ньютона, впервые рассказал Вольтер в своем эссе о Ньютоне. Сам Ньютон никогда не рассказывал этой истории.',
			'Римский император Веспасиан, правивший с 69-го по 79-й год нашей эры, спасая империю от разорения, ввел множество весьма необычных налогов. Один из них был налог на латруны — общественные туалеты. В ответ на упреки сенаторов Веспасиан предложил им понюхать деньги, полученные по этому налогу. Так возникла знаменитая фраза pecunia non olet— «деньги не пахнут».',
			'Руководители отделений Ку-Клукс-Клана в США в начале XX века назывались Великими Гоблинами.',
			'Тариф — это остров в Средиземном море, где во времена арабского правления в VIII веке впервые стали брать плату за стоянку в порту.',
			'Речные дельфины встречаются в Бразилии, Китае и Индии, но только обитающие в Амазонке дельфины — розового цвета.',
			'Бобры и капибары (самые крупные грызуны на планете) признаны католической церковью рыбой, поэтому католики могут есть мясо этих животных во время Великого поста и по пятницам.',
			'В 1933 году компания по производству ткацких станков Toyoda Automatic Loom Worksсоздала новое отделение, специализирующееся на производстве автомобилей. Сегодня это крупнейший производитель автомобилей в мире. А логотип Toyotaдо сих пор означает нитку, пропущенную в игольное ушко.',
			'Благодаря прецедентному праву, в США существуют сотни странных и труднообъяснимых законов, однако один, пожалуй, достоин особого внимания: в городе Чико в Калифорнии всякому, кто взорвет в пределах города ядерное устройство, грозит штраф в 500 долларов.',
			'В 1983 году знаменитая английская писательница Барбара Картленд написала 23 романа в течение одного года. Это достижение зафиксировано в Книге рекордов Гиннесса. Всего в течение жизни она написала более 600 книг.',
			'Озон, защищающий Землю от солнечной радиации, смертельно ядовит. Для человека озон опаснее угарного газа. К счастью, в отличие от лишенного запаха угарного газа, озон легко обнаружить — он пахнет геранью.',
			'На перевозку одного плода киви из Новой Зеландии в Европу уходит больше авиационного топлива, чем весит сам плод.',
			'Дмитрий Иванович Менделеев действительно утверждал, что периодическую таблицу элементов он увидел во сне. Но этому предшествовала титаническая работа на протяжении 25 лет.',
			'Устья рек стали называться дельтами после того, как античные ученые подметили сходство формы дельты Нила с буквой Δ греческого алфавита. Самую большую дельту образует не Амазонка, а Ганг. Ее площадь составляет 105 640 км². В дельте Ганга проживает более 145 млн. человек.', 'Стараниями ирландских миссионеров, Святой Патрик является теперь покровителем не только Ирландии, но и Нигерии.', 'Клеопатра не была египтянкой. Она была последней в царском роду Птолемеев, выходцев из Македонии.', 'Страусы никогда не прячут голову в песок. В случае опасности они просто убегают, развивая скорость до 70 км/час.', 'Главный герой романа Мэри Шелли «Франкенштейн» — доктор Франкенштейн. Он не монстр, а создатель монстра, у которого нет имени.',
			'Первый паровой двигатель был создан не в конце XVII века, как принято считать, а в I веке до н. э. древнегреческим изобретателем Героном Александрийским.',
			'Быки практически не различают цветов. Поэтому они реагируют на красный цвет точно так же, как на зеленый или синий, то есть никак. На быка раздражающе действует не красная тряпка, а то, что кто-то больно его ранит, да еще и машет чем-то у него перед носом.',
			'Бангладеш — страна, по площади приблизительно равная Мурманской области. Однако в этой стране проживает на 20 млн. человек больше, чем во всей России.',
			'Поседеть за несколько часов физически невозможно, даже в результате сильнейшего потрясения. Это не более, чем поэтическое преувеличение.',
			'Гравитационное поле Луны вызывает не только приливы и отливы, но и колебания земной коры, достаточно значительные для сейсмологических приборов.',
			'По решению федерации настольного тенниса, в 2003 году диаметр шарика был увеличен на 2 мм. В результате, скорость шарика во время игры замедлилась на 15 %. Сделано это было для того, чтобы стало легче наблюдать за игрой по телевизору.',
			'Более 35 000 американцев ежегодно страхуются на случай похищения инопланетянами.',
			'Сердце человека находится не слева. Оно расположено за грудиной, между левым и правым легкими.',
			'Во Флориде запрещено петь на публике в купальнике.',
			'Несмотря на все свое население, в китае используется всего около 200 фамилий.',
			'В любое время в земной атмосфере происходит около 1800 гроз. Каждую секунду в землю ударяет 100 молний.',
			'Существует растение, которое называют цветком смеха. Оно вызывает беспричинный смех на полчаса.',
			'Мурчание кошек аналогично лечению людей акустическими колебаниями и может способствовать замедлению остеопороза и даже возобновлению роста костей у пожилых людей.',
			'Люди с голубыми глазами лучше видят в темноте.',
			'Стив Возняк (основатель Apple), изобрел первое устройство, позволяющее прослушивать чужие телефонные разговоры и звонить бесплатно.',
			'Среднестатистическая женщина за свою жизнь успевает посидеть на 32 диетах.',
			'Самый старый обнаруженный рецепт супа датируется 6000 годом до нашей эры. Главный ингредиент — мясо бегемота.',
			'Жирафы в целях самозащиты действуют головой как молотком.',
			'В Швейцарии выпустили детские презервативы.',
			'Чихание при взгляде на солнце — это аутосомно-доминантный непроизвольный гелио-глазной синдром взрыва.',
			'Рев, который мы слышим, когда мы помещаем морскую ракушку рядом с нашим ухом, не является океаном, а скорее звуком крови, приливающей через вены в ухе.',
			'Потребление йогурта в мире возросло за последние 12 лет в четыре раза.',
			'Самая старой кошкой на свете была Puss, из Англии, которая умерла в 1939 году через день после своего 36-ого дня рождения.',
			'На территории Японии 17 действующих вулканов.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'В Саудовской Аравии нет ни одной реки.',
			'В арабских странах чрезвычайно популярны гонки на верблюдах. А в качестве жокеев там обычно используют трех - четырехлетних детей.',
			'В 1892 году в Италии девочкам стали разрешать выходить замуж начиная с 12 лет. Раньше этот возраст был еще меньше.',
			'Недавно учеными было обнаружено первое бессмертное существо нашей планеты. Как оказалось, этим существом является медуза Turritopsis nutricula. Медуза способна на всем протяжении своей жизни постоянно себя омолаживать.',
			'Как минимум три часа в день мы бездельничаем.',
			'Степень непредсказуемости и импульсивности мужского поведения обратно пропорциональна возрасту. Участки головного мозга, отвечающие за контролирование эмоций, окончательно формируются ближе к 25 годам.',
			'В большинстве реклам время показываемое на часах – 10:10, чтобы не закрывать марку часов.',
			'В озере на юге Франции был пойман один из самых крупных карпов в мире. Гигантская рыба весом 15 килограмм с оранжевой чешуей напоминает золотую рыбку из сказки.',
			'Имя шейха Хамада написано на Земле километровыми буквами и видно из космоса.',
			'В Албании кивание головой значит «нет», и наоборот.',
			'В Алабаме запрещено водить машину необутым. Закон, однако, позволяет ездить по встречной полосе, если включить фары.',
			'Комары могут летать во время дождя.',
			'У человека меньше мyскyлов, чем y гyсеницы.',
			'Браки, в которых жены плохо спят, имеют гораздо больше шансов развалиться.',
			'При сильной рвоте у человека могут лопнуть сосуды в глазах.',
			'За пол века овощи стали менее полезны.',
			'Япония — последняя страна в мире, формально сохранившая титул Империи.',
			'Бильярд, так же как и шахматы, имеет очень древнее происхождение, а его родиной является Азия.',
			'В ходе эволюционного процесса сформировалась отличительная особенность мужского восприятия зрительной информации – мужчины остро реагируют на движущиеся объекты, в то время как неподвижные предметы для них практически незаметны.',
			'В Антарктиде банкоматов в 2 раза больше, чем постоянных жителей.',
			'В автомобильных авариях ежегодно гибнет более миллиона человек, половина из которых – пешеходы, мотоциклисты и автомобилисты.',
			'Имя верблюда, изображенного на пачке сигарет «Camel» – Старый Джо.',
			'В начале Второй Мировой войны немецкая фабрика по розливу Кока-Колы лишилась поставок ингредиентов из США. Тогда немцы приняли решение производить другой напиток из отходов пищевого производства — яблочного жмыха и молочной сыворотки — и назвали его «Фанта» (сокращение от слова «фантазия»).',
			'Пизанская башня никогда не была прямой!',
			'2 500 000 000 пицц производится в Италии ежегодно.',
			'Полярная крачка — единственная птица, которая мигрирует с одного полюса на другой.',
			'Самые большие в мире сластены-немцы и швйцарцы:согласно статистике, в год каждый из них съедает по 10-11 кг шоколада.',
			'Каждый американец имеет, в среднем, 7 пар джинсов.',
			'Ежегодно из-за градобития страдает примерно 1% растительности по всему миру. Каждый год град наносит существенный ущерб экономике различных стран, суммарная цифра приближается к 1 миллиарду долларов. У градин может быть самая разная конфигурация – шары, конусы, эллипсы, яблоки и прочее, а также неправильная ...',
			'Самое популярное в мире женское имя - Анна. Его носят почти 100 миллионов женщин.',
			'По статистике сотовых операторов самая популярная смс 31 декабря: `Спасибо! А кто это?`',
			'Самая распространенная скальная порода на земле — это базальт.',
			'ДНК человека и банана совпадают на 50%.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Сигареты содержат мышьяк, формальдегид, свинец, синильную кислоту, окись азота, угарный газ, аммиак и еще 43 известных канцерогенных веществ.',
			'При ярком свете человек съедает намного меньше, чем с приглушённым тусклым освещением.',
			'Горькие напитки делают людей критичнее и строже.',
			'Гречка очищает желудок от жвачек.',
			'Лечебные свойства зелёного чая — это миф',
			'Лингвисты утверждают, что в любом языке есть слово, обозначающее подхалима.',
			'Самые большие в мире лягушки – голиафы (Rana goliath). Длина взрослого голиафа может достигать 32–42 сантиметров, масса–3,5 килограмма.',
			'Длина самого длинного лимузина в мире — 30,5 метров',
			'На холоде насекомые дрожат, как и человек.',
			'Каждый день по всему миру выкуривают 15 миллиардов сигарет.',
			'Змея может спать в течение 3 лет.',
			'Бананы можно есть не только сырыми. На Кубе подают бананы-фри, а в Венесуэле- банановый рис с перцем. Африканцы добавляют бананы во все блюда даже в томатный соус.',
			'На Гавайях серфинг включен в школьную программу.',
			'В Швейцарии запрещено смывать воду в туалете после 10 часов вечера.',
			'Стрекозы в буквальном смысле до смерти боятся рыб.',
			'Женские сердца бьются быстрее, чем у мужчин.',
			'В наше время дождь можно вызвать искусственно, путём сбрасывания на облака различных реагентов, таких как частицы сухого льда.',
			'Примерно 10 000 птиц в год разбиваются об окна.',
			'Три силовых занятия в неделю дают наибольший эффект.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Каучук – один из ингредиентов жевательной резинки. Благодаря ему мы можем надувать пузыри.',
			'Аисты могут засыпать в полете на 10-15 минут.',
			'Вместо того, чтобы покупать энергетик, зайдите в аптеку. Настойка элеутерококка — рублей 30 в любой аптеке, хватает на 4 сессии (в среднем). Принимать в соответствии с инструкцией. Женьшень в гранулах (цена тоже около 30 рублей). 5 штук в рот, если надо быть бодрым часа три, 10 штук хватает на 5 часов, от 15 до 20 — чтобы мозг `после вчерашнего` запустился.',
			'По статистике 66% людей закрывают глаза во время поцелуя.',
			'Виадук Мийо - самый высокий мост в мире!',
			'13% людей притворяються, что говорят по мобильному телефону, что бы избежать неприятной встречи или разговора.',
			'В центре Мадрида есть отель из мусора.',
			'Пчелы никогда не спят. Пчела замирает на соте лишь на несколько секунд в течение суток.',
			'Пожилых людей больше всего в Швеции (24%) и меньше всего в Кувейте (2%).',
			'Булемия - это неукротимый аппетит.',
			'При улыбке у человека "работают" 17 мускулов.',
			'Самая дорогая пицца в мире стоит $1000',
			'Одна сигарета отнимает 5 минут жизни!',
			'Список подарков Сталину в честь его семидесятилетия печатался в советских газетах с декабря 1949 года по март 1953.',
			'Большинство американцев на вопрос `Сериал Вашего детства?` отвечают - «Зена: королева воинов»',
			'Японцы водят большие машины. Сити кары невозможно встретить даже в тесном Токио, зато джипов очень много.',
			'В 1988 году Мак Тайсон заработала за 91 секунду 20 миллионов долларов. За это время он нокаутировал Майкла Спинкса.',
			'Самый крупный рубин весит более 7 кг.',
			'Жираф, Верблюд и Кошка - это единственные животные-иноходцы, при ходьбе у них идут сначала левые ноги, а потом правые. Такая ходьба гарантирует скорость, проворство и тишину.',
			'Тайна Бермудского треугольника будоражит умы уже несколько столетий. Однако, есть на Земле и другие аномальные места.',
			'Cпособность сворачивать язык в трубочку передаётся генетически.',
			'У женщин почти всегда исчезают боли в суставах, стоит им забеременеть.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Собаки африканской породы `Басенджи` не умеют лаять.',
			'В древнем Риме, мужчина принимая присягу или давая клятву, клал руку на мошонку.',
			'В Японии можно купить клубничные Cheetos.',
			'Полководец А. Македонский знал в лицо 30 000 солдат своего войска.',
			'Сергей Абдрахманов самый быстрый человек в мире!!За 6,37 секунд он преодолел 15 метровую отвесную стену на этапе кубка Европы в Шамони (Франция) по скалолазанию!',
			'Чувство усталости появляется при нагрузках 35-65% от абсолютных возможностей.',
			'Самый старый вулкан – Этна, его возраст более 350 000 лет.',
			'Когда вы краснеете, ваш желудок тоже краснеет.',
			'Во рту человека около 40 000 бактерий.',
			'Пузырьки в пиве «Гиннес» не поднимаются на поверхность, а опускаются на дно, в отличие от всех других сортов пива.',
			'У свиньи оргазм длится 30 минут!',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Термин «любовь» произошёл от «lubhyati» (санскрит) и означает «желание».',
			'Антон Чехов перед смертью признался, что «Вишневый сад» написал его друг Василий Дрынов, но книгу решили подписать более «раскрученным» имен.',
			'Наполеон Бонапарт был вовсе не коротышкой — его рост был выше среднего в то время и составлял 169 сантиметров.',
			'35 см - таким был рост самого маленького пони. И звали его соответственно - тыквочка.',
			'Согласно британскому закону, принятому в 1845, попытка покончить жизнь самоубийством каралась смертной казнью.',
			'Петух не может петь, если не вытянет шею.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'По статистике,женщины плачут чаще мужчин примерно в 3-4 раза. В крови всех женщин содержится гормон пролактин, он-то и заставляетнас пускать слезу, в организме у мужчин такой гормон отсутствует.',
			'У некоторых людей бывают глаза хамелионы. Их радужная оболочка может менять свой цвет на синий, зеленый, серый, карий, желтый и даже красный цвет включая их оттенки. Но чаще глаза имеют только 3-4 основных цвета.',
			'Выразительность взгляда Элизабет Тейлор объяснялась не только её природным обаянием, но также и редкой генетической мутацией — у актрисы был двойной ряд ресниц.',
			'По суше бегемот может бежать быстрее человека.',
			'Две трети жителей планеты Земля никогда не видели снега.',
			'Ласточка влетает в 5‐ти сантиметровую щель на скорости 56 км/час.',
			'Ни мужчина, ни женщина не может чихнуть с открытыми глазами. Около 2% автомобильных аварий, происходящих в мире, вызвано чиханием за рулем.',
			'Кошка имеет 32 мускулы в каждом ухе.',
			'Самая дорогая пицца в мире стоит $1000.',
			'В Антарктиде найдено озеро, вода в котором в 11 раз солонее морской и может замерзнуть только при температуре -50 градусов',
			'Партенофобия - это боязнь девственниц.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Почти каждый человек имел копилку в его/ее детстве, и в настоящее время эта традиция проддерживается.',
			'Пчела за свою жизнь производит всего 1-2 чайные ложки меда.',
			'Секундную стрелку в часах изобрёл английский врач около 300 лет назад. Врач изобрёл её именно для того, чтобы приступить к исследованиям ритма сердца.',
			'Одна капля нефти делает непригодным для питья 25 литров воды.',
			'На Земле сейчас живут примерно сто тысяч человек в возрасте свыше ста лет.',
			'Ежедневно жители США съедают 18 гектаров пиццы.',
			'Эверест подрастает на 4 миллиметра в год.',
			'В Америке, американские горки называют русскими горками.',
			'Если кошки возле вас и у них вибрирует хвост они проявляют самое сильное чувство любви.',
			'Если стекло разбивается, трещины двигаться со скоростью до 3000 миль в час.',
			'Самое возрастное дерево на Земле растет на склоне горы Фулуфьяллет в Швеции. Согласно подсчетам ученых ели `Старая Тйикко` исполнилось 9550 лет.',
			'Bugatti Veyron может проехать футбольное поле за одну секунду.',
			'Детеныши крокодила при рождении не имеют пола — он зависит от температуры кладки, где они будут развиваться и вылупляться.',
			'25% населения Индии с наивысшим IQ это больше чем все население США. В Индии больше умных детей чем в США вообще детей.',
			'В наше время дождь можно вызвать искусственно, путём сбрасывания на облака различных реагентов, таких как частицы сухого льда.',
			'Три силовых занятия в неделю дают наибольший эффект.',
			'Список подарков Сталину в честь его семидесятилетия печатался в советских газетах с декабря 1949 года по март 1953.',
			'Томас Эдисон, изобретатель лампочки, боялся темноты.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Выразительность взгляда Элизабет Тейлор объяснялась не только её природным обаянием, но также и редкой генетической мутацией — у актрисы был двойной ряд ресниц.',
			'У некоторых женщин может быть аллергия на сперму.',
			'Бабушку Леонардо Ди Каприо звали Елена Смирнова.',
			'Все полярные медведи - левши.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'У пчелы 2 желудка .Один для мёда ,другой для пищи.',
			'Общая длина государственной границы Ватикана составляет 3, 2 км.',
			'Cексуальность мужчины зависит от его схожести с обезьяной.',
			'Никогда не говори людям о своих проблемах, 80% ими не интересуются, остальные 20% рады что они у тебя есть!',
			'Одна британская компания делает мобильные телефоны, которые вместо звонков издают запахи.',
			'В Древней Греции салфетками служили листья фигового дерева, которыми рабы вытирали губы своему хозяину.',
			'С точки зрения эволюции человеческое обоняние бесполезно и, возможно, со временем исчезнет',
			'По данным Лионского университета: в мире около 400 миллионов домашних кошек. Пальму первенства отдают Австралии, где на 10 жителей приходится 9 кошек.',
			'LSD не влияет на хромосомы.',
			'Рыба-доктор лечит людей, обгрызая чешуйки отмершей кожи пациентов.',
			'До 19 века шоколад употреблялся только в жидком виде. Плитки появились лишь в 1840-х годах.',
			'Самые ненужные деньги были выпущены в России после смерти царя Александра I. Еще до коронации была отчеканена пария монет с портретом старшего наследника Константина, который отказался от престола в пользу Николая и тираж отправили на переплавку.',
			'В Windows нельзя создать папку с названием `Con`.',
			'В среднем килограмм картофельных чипсов стоит в двести раз дороже, чем килограмм картофеля.',
			'У блондинов борода растет быстрее, чем у брюнетов.',
			'Отлично поднимает настроение физическая нагрузках.',
			'Писсуары, находящиеся в туалетах ближе к двери, как правило, самые чистые, так как их реже используют.',
			'Джулия Робертс — первая в истории киноактриса, получившая 20 миллионов долларов за роль в фильме.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Американцы тратят больше денег на еду для своих собак,чем для своих детей.',
			'Ежедневно на Земле происходит тысячи слабых землетрясений.',
			'Япония — последняя страна в мире, формально сохранившая титул Империи.',
			'IQ-показатель людей, использующих IE, ниже, чем у пользователей других браузеров.',
			'Для того, чтобы шариковая ручка начала писать в невесомости, США потратило миллионы долларов. А вот русские в космосе обходились простым карандашом, причём не внося в его конструкцию никаких изменений.',
			'В мире всего 7.1 % левшей.',
			'Подобно отпечаткам пальца, окрас жирафа также является уникальным',
			'В головном мозге человека за одну секунду происходит 100 000 химических реакций.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Существуют реки, которые могут менять направление течения.',
			'В Швейцарии выпустили детские презервативы.',
			'Человеческое и свиное сердце практически полностью идентичны.',
			'У человека почти в 2 раза меньше извилин в коре головного мозга, чем у дельфина.',
			'У собак по четыре пальца на задних ногах, и по пять на передних.',
			'Человеческий глаз мигает в среднем 4 млн. 200 тыс. раз в год.',
			'На самом деле знаменитая фраза Суворова звучит так: «Тяжело в учении — легко в походе».',
			'В США один сёрфер подал на другого в суд за то, что тот прокатился на «его» волне. Суд отказал в рассмотрении из-за невозможности оценки ущерба от созерцания гнусного типа катающегося на чужой волне.',
			'Центр Евразии находится в Казахстане, в местечке Жидебай.',
			'Если мы посадили крысу в лабиринт с четырьмя тоннелями, и всегда будем класть сыр в четвёртый тоннель, крыса через некоторое время научится искать сыр в четвёртом тоннеле',
			'Брань и сквернословие может уменьшать физическую боль.',
			'Статистика показывает, что в последнее время инициаторами развода все чаще становятся женщины.',
			'В 17 веке в Англии за ошибочный прогноз синоптиков подвергали смертной казни.',
			'Комары могут летать во время дождя.',
			'23 АВГУСТА - День Государственного Флага Украины.',
			'Самый большой Санта-Клаус. Высота Санты составила 15,6 метров, а в ширину он был 11 метров. Вся конструкция была сделана из пенопласта и металла, и весила 2,5 тонны.',
			'Сердце слона весит 20-30 кг и бьется с частотой 30 раз в минуту.',
			'Морская звезда может вывернуть свой желудок наизнанку.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Джиму Керри сегодня исполнилось 50!',
			'57-летнего жителя Флориды посадили в тюрьму за то, что он дважды направил своей супруге запрос на добавление в друзья в социальной сети и таким образом нарушил охранный судебный приказ.',
			'Не секрет, что не все знаменитости в школе были отличниками или хотя бы хорошистами. Звезду российского футбола Андрея Аршавина тоже в свое время выгоняли из школы. Получив «четверку», по его мнению, незаслуженно, он порвал классный журнал.',
			'Канада 4 раза за последние 5 лет была объявлена ООН лучшей для жизни страной.',
			'30% игроков NBA имеют татуировки.',
			'Сегодня пользователи меняют свои фотографии в профилях соцсетей в 3 раза чаще, чем в 2006-ом году.',
			'Человеческий глаз мигает в среднем 4 млн. 200 тыс. раз в год.',
			'Сердцебиение может учащаться примерно на 30 процентов во время зевания.',
			'В Перу продаётся сок из лягушек.',
			'Чем чаще самец дрофы занимается сексом, тем быстрее он стареет.',
			'Глаза у страуса больше, чем его мозг.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'У слизней четыре носа.',
			'Гепард может бежать со скоростью до 130 км/ч',
			'В быстроте черный африканский носорог носорог не уступает лошади и может развивать скорость до 40 км/ч.',
			'В Минске есть станция метро «Московская», в Москве — «Киевская», а в Киеве — «Минская».',
			'Чаще всего жёны миллионеров — учителя.',
			'Одна сигарета отнимает 5 минут жизни!',
			'Жирафы в целях самозащиты действуют головой как молотком.',
			'Имя верблюда, изображенного на пачке сигарет «Camel» – Старый Джо.',
			'У медузы нет мозга и кровеносных сосудов.',
			'15% людей тайно грызут ногти.',
			'Каждый день по всему миру выкуривают 15 миллиардов сигарет.',
			'Как утверждают ученые, поцелуй – это не рефлекс. Дети не умеют целоваться. Поэтому поцелуям можно только научиться. Или не научиться. В мире есть много стран, где люди не знаю, что такое поцелуи.',
			'Компания Google купила компанию Motorola',
			'Колличество смертей от различных несчастных случаев у мужчин в два раза выше, чем у женщин.',
			'Зелёный цвет успокаивает человека.',
			'В спиртных напитках можно найти 13 жизненно необходимых для нашего организма минеральных веществ.',
			'В г.Пара жители сверяют часы по дождю, т.к. ливни каждый день идут в одно и тоже время.',
			'Существуют картины и предметы из скотча.',
			'Когда Билл Клинтон был президентом, он отправил всего 2 электронных письма. Одно Д. Гленну на космический шаттл, а другое с текстом «ЛСД - самый безопасный для организма наркотик, считая спирт и никотин»',
			'Во время чихания воздух из носа выходит со скоростью 400 км / ч.',
			'В 2007 году в Японии появилась в продаже лимитированная серия Pepsi со вкусом огурца.',
			'Самый большой в мире фотоаппарат имеет длину 11 метров',
			'Устрица умеет менять пол, чем не раз пользуется.',
			'Одна британская компания делает мобильные телефоны, которые вместо звонков издают запахи.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Медведь гризли в день может поймать и съесть до 40.000 бабочек',
			'У пчел пять глаз.',
			'У Моны Лизы нет бровей.',
			'Слоны используют свой хобот для мастурбации',
			'В Японии можно купить клубничные Cheetos.',
			'Шахматы придумали в Индии.',
			'Самого быстрого репера в мире зовут Билгин Озчалкан (Ceza). Его рекорд 1267 слов за 2 минуты 40 секунд.',
			'Полное имя куклы Барби — Барбара Миллисент Робертс',
			'Слон – единственное животное которое помнит все.',
			'Вопрос чести по-прежнему играет в Японии центральную роль, даже в политике. Последний премьер министр Юкио Хатояма подал в отставку после того, как не смог выполнить предвыборное обещание. Двое его предшественников тоже.',
			'В Алабаме запрещено водить машину необутым. Закон, однако, позволяет ездить по встречной полосе, если включить фары.',
			'Первой автокомпанией, предложившей скидку на свои автомобили - Ford. Сумма скидки была аж 50 долларов, автомобиль - Ford Model T',
			'Самый быстрый мотоцикл в мире!Bub Seven Streamliner достиг средней скорости 590,63 км/ч и поставил новый рекорд.',
			'Кошка может издавать более 100 видов разных звуков, а собака только 10.',
			'В древнем Египте в знак траура по умершей кошке хозяин сбривал брови.',
			'Бананы можно есть не только сырыми. На Кубе подают бананы-фри, а в Венесуэле- банановый рис с перцем. Африканцы добавляют бананы во все блюда даже в томатный соус.',
			'В среднем, в понедельник люди жалуются на жизнь на 12 минут дольше, чем в другие дни.',
			'Булемия - это неукротимый аппетит.',
			'Человек за день тратит в среднем 3-4 часа на то, чтобы противостоять собственным желаниям.',
			'Умные дети гораздо чаще становятся алкоголиками.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Чтобы набрать 50 млн пользователей радио потребовалось 38 лет,TV - 13 лет, интернету - 4 года, Ipod - 3 года. Facebook собрал 200 млн пользователей менее чем за год.',
			'79% людей,чихнув говорят `ой`',
			'Чтобы нахмуриться, нужно задействовать больше мышц, чем для того, чтобы улыбнуться.',
			'Стоимость Земли — пять квадриллионов долларов.',
			'Февраль 1865 года — единственный месяц в истории человечества, в котором не было полнолуния.',
			'На Эйфелевой башне полностью обновляют краску каждые семь лет, причем вручную.',
			'Женщины в 4 раза ленивее, нежели мужчины.',
			'Книга – лучший лекарь при нервных расстройствах.',
			'Во Флориде запрещено петь на публике в купальнике.',
			'Осьминоги — самые умные животные среди беспозвоночных.',
			'Питание в космосе для большинства людей по-прежнему ассоциируется с тюбиками. На самом деле, уже 25 лет космонавты используют продукты в специальных пакетах. В эти пакеты перед едой заливают горячую воду, и блюда приобретают земной вид.',
			'Когда вы краснеете, ваш желудок краснеет тоже.',
			'Двадцать пять танков были выброшены в море в Сиамском заливе, чтобы помочь формированию искусственных рифов и обеспечение дома для рыб.',
			'Слово «горилла» переводится как «поросшая шерстью женщина»',
			'Ученые выяснили, что у людей долгое время обходящихся без отпуска, продолжительность жизни даже меньше, чем у хронических алкоголиков.',
			'У человека меньше мyскyлов, чем y гyсеницы.',
			'В 1957 году была издана книга в которую вошли 117 рассказов очевидцев о визуальном контакте с Лох-Несским чудовищем',
			'Джонни Депп потерял девственность в 13 лет.',
			'В Зионе, штат Иллинойс, запрещено давать зажженную сигарету собаке, коту или другому домашнему животному.',
			'Если Википедию распечатать, то получится книга примерно с 30 000 000 страниц.',
			'В крупных московских супермаркетах во время ПИК ловят иногда до 20 клептоманов в час.',
			'Простая ласточка может пролететь в дверной зазор шириной 5 см на скорости 56 км/ч',
			'У сомов более 27 000 вкусовых рецепторов.',
			'Муравьи никогда не спят.',
			'Игуана может находиться под водой до 28 минут.',
			'По статистике, более 7000 человек получают травмы, упав со стула.',
			'В городе Буфорд (США) живёт всего один человек. Он работает и дворником и мэром.',
			'Крот может за одну ночь прорыть туннель длиной в 76 метров.',
			'Слёзы улучшают настроение только 30% людей.',
			'Кофе — это второй крупнейший товар в международной торговле после бензина.',
			'Компании Adidas и Puma были основаны родными братьями, которые 26 лет не разговаривали – так сильно они друг друга ненавидели.',
			'Взрослая свинья пробегает километр за 5 минут.',
			'ЛСД - самый безопасный для организма наркотик, считая спирт и никотин',
			'Кошка может издавать более 100 видов разных звуков, а собака только 10.',
			'Облака не могут двигаться на юго-запад.',
			'Пчелы никогда не спят. Пчела замирает на соте лишь на несколько секунд в течение суток.',
			'Вам потребуется около 1000 лет, чтобы посмотреть все ролики на YouTube.',
			'В дикой природе лев убивает не больше 20 раз в год.',
			'Какапо – единственный в мире нелетающий попугай.',
			'100 граммов водки содержит 235 ккал.',
			'Галилео Галилей не изобретал телескоп. За несколько лет до него это устройство предложили, по крайней мере, три человека, в том числе, голландец Ханс Липперсгей.',
			'Многие водные каналы в Амстердаме в особо холодные зимы замерзают настолько, что счастливые жители катаются по ним на коньках!',
			'При улыбке у человека `работают` 17 мускулов.',
			'Стрекозы в буквальном смысле до смерти боятся рыб.',
			'Тайна Бермудского треугольника будоражит умы уже несколько столетий. Однако, есть на Земле и другие аномальные места.',
			'В Перу продаётся сок из лягушек.',
			'В том, что ударяться локтями так больно, виноват «весёлый нерв»',
			'В Японии, Тайване, Китае и Корее не принято целоваться у всех на виду.',
			'Риск смерти во время секса с любовницей значительно выше, чем с женой.',
			'Хомяки умеют подтягиваться,а некоторые даже переварачиваться через палочку.',
			'Компания Колгейт™ столкнулась с неожиданным препятствием при продвижении своей зубной пасты в испаноговорящих странах. В переводе с испанского «колгейт» означает: «иди и повесься».',
			'Во время зимней спячки сердце медведя на каждом выдохе останавливается на 15–20 сек.',
			'У Перис Хилтон 44 размер ноги.',
			'Самый распространенный мусор – сигаретные окурки. Ежегодно их выбрасывается 4.500.000.000 штук.',
			'Все полярные медведи - левши.',
			'Интернет увеличивает количество углерода в атмосфере и способствует глобальному потеплению.',
			'Если разбавить чай молоком, то можно почувствовать вкус сгущенного молока.',
			'Цвет носков правильно подбирать под цвет брюк, а не обуви.',
			'В дикой природе лев убивает не больше 20 раз в год.',
			'Для того, чтобы сфотографиться на первый фотоаппарат приходилось сидеть неподвижно около 8 часов.',
			'Население Якутии в 1200 раз меньше населения Индии, хотя по площади они почти одинаковы.', 'Слоны действительно боятся мышей, но не более чем любых других мелких животных, вертящихся у них под ногами.', ' Кончик кнута при ударе развивает скорость, превышающую скорость звука. Щелчок кнута возникает при преодолении им звукового барьера.', 'Одна из наиболее трудноизлечимых фобий — фобофобия, или боязнь страха.',
			'Викинги никогда не носили шлемов с рогами. В шлеме с рогами невозможно воевать, он годится только для шаманов.',
			'Шум, который мы слышим поднося морскую раковину к уху, это вовсе не звук океана, а эхо от окружающих нас шумов. В изолированной от шумов комнате никаких звуков из раковины не раздается.',
			'В казино не бывает настенных часов и окон с прозрачными стеклами.',
			'Если на одну шахматную клетку положить 1 зернышко риса, на вторую 2 зернышка, на третью 4 зернышка и т. д., тов итоге общий вес риса на шахматной доске составит более 460 миллиардов тонн. Это в тысячу раз больше, чем годовой урожай риса на всей Земле.',
			'Алмазы образуются в земной коре на глубине более 200 км. Только благодаря извержениям вулканов, алмазы переносятся на глубины, досягаемые человеком. Средний возраст любого бриллианта — около полутора миллиардов лет.',
			'Историю о яблоке, упавшем на голову Ньютона, впервые рассказал Вольтер в своем эссе о Ньютоне. Сам Ньютон никогда не рассказывал этой истории.',
			'Римский император Веспасиан, правивший с 69-го по 79-й год нашей эры, спасая империю от разорения, ввел множество весьма необычных налогов. Один из них был налог на латруны — общественные туалеты. В ответ на упреки сенаторов Веспасиан предложил им понюхать деньги, полученные по этому налогу. Так возникла знаменитая фраза pecunia non olet— «деньги не пахнут».',
			'Руководители отделений Ку-Клукс-Клана в США в начале XX века назывались Великими Гоблинами.',
			'Тариф — это остров в Средиземном море, где во времена арабского правления в VIII веке впервые стали брать плату за стоянку в порту.',
			'Речные дельфины встречаются в Бразилии, Китае и Индии, но только обитающие в Амазонке дельфины — розового цвета.',
			'Бобры и капибары (самые крупные грызуны на планете) признаны католической церковью рыбой, поэтому католики могут есть мясо этих животных во время Великого поста и по пятницам.',
			'В 1933 году компания по производству ткацких станков Toyoda Automatic Loom Worksсоздала новое отделение, специализирующееся на производстве автомобилей. Сегодня это крупнейший производитель автомобилей в мире. А логотип Toyotaдо сих пор означает нитку, пропущенную в игольное ушко.',
			'Благодаря прецедентному праву, в США существуют сотни странных и труднообъяснимых законов, однако один, пожалуй, достоин особого внимания: в городе Чико в Калифорнии всякому, кто взорвет в пределах города ядерное устройство, грозит штраф в 500 долларов.',
			'В 1983 году знаменитая английская писательница Барбара Картленд написала 23 романа в течение одного года. Это достижение зафиксировано в Книге рекордов Гиннесса. Всего в течение жизни она написала более 600 книг.',
			'Озон, защищающий Землю от солнечной радиации, смертельно ядовит. Для человека озон опаснее угарного газа. К счастью, в отличие от лишенного запаха угарного газа, озон легко обнаружить — он пахнет геранью.',
			'На перевозку одного плода киви из Новой Зеландии в Европу уходит больше авиационного топлива, чем весит сам плод.',
			'Дмитрий Иванович Менделеев действительно утверждал, что периодическую таблицу элементов он увидел во сне. Но этому предшествовала титаническая работа на протяжении 25 лет.',
			'Устья рек стали называться дельтами после того, как античные ученые подметили сходство формы дельты Нила с буквой Δ греческого алфавита. Самую большую дельту образует не Амазонка, а Ганг. Ее площадь составляет 105 640 км². В дельте Ганга проживает более 145 млн. человек.', 'Стараниями ирландских миссионеров, Святой Патрик является теперь покровителем не только Ирландии, но и Нигерии.', 'Клеопатра не была египтянкой. Она была последней в царском роду Птолемеев, выходцев из Македонии.', 'Страусы никогда не прячут голову в песок. В случае опасности они просто убегают, развивая скорость до 70 км/час.', 'Главный герой романа Мэри Шелли «Франкенштейн» — доктор Франкенштейн. Он не монстр, а создатель монстра, у которого нет имени.',
			'Первый паровой двигатель был создан не в конце XVII века, как принято считать, а в I веке до н. э. древнегреческим изобретателем Героном Александрийским.',
			'Быки практически не различают цветов. Поэтому они реагируют на красный цвет точно так же, как на зеленый или синий, то есть никак. На быка раздражающе действует не красная тряпка, а то, что кто-то больно его ранит, да еще и машет чем-то у него перед носом.',
			'Бангладеш — страна, по площади приблизительно равная Мурманской области. Однако в этой стране проживает на 20 млн. человек больше, чем во всей России.',
			'Поседеть за несколько часов физически невозможно, даже в результате сильнейшего потрясения. Это не более, чем поэтическое преувеличение.',
			'Гравитационное поле Луны вызывает не только приливы и отливы, но и колебания земной коры, достаточно значительные для сейсмологических приборов.',
			'По решению федерации настольного тенниса, в 2003 году диаметр шарика был увеличен на 2 мм. В результате, скорость шарика во время игры замедлилась на 15 %. Сделано это было для того, чтобы стало легче наблюдать за игрой по телевизору.',
			'Более 35 000 американцев ежегодно страхуются на случай похищения инопланетянами.',
			'Сердце человека находится не слева. Оно расположено за грудиной, между левым и правым легкими.',
			'"brazzers" можно набрать левой рукой.',
		},
	},

	japanese = {
		demonslayer = {
			sun = {
				'Hi no kokyū: Enbu',
				'Hi no kokyū: Heki-ra no Ten',
				'Hi no kokyū: Retsujitsu Kōkyō',
				'Hi no kokyū: Shakkotsu En\'yō',
				'Hi no kokyū: Shayō Tenshin',
				'Hi no kokyū: Hirin Kagerō',
				'Hi no kokyū: Kiki Onkō',
				'Hi no kokyū: Yōkatotsu',
				'Hi no kokyū: Nichiun no Ryū Kaburimai',
				'Hi no kokyū: Kasha',
				'Hi no kokyū: Gen\'nichi Kō',
				'Hi no kokyū: Enbu',
			},
			
			kagura = {
				'Hinokami Kagura: Enbu',
				'Hinokami Kagura: Heki-ra no Ten',
				'Hinokami Kagura: Retsujitsu Kōkyō',
				'Hinokami Kagura: Shakkotsu En\'yō',
				'Hinokami Kagura: Shayō Tenshin',
				'Hinokami Kagura: Hirin Kagerō',
				'Hinokami Kagura: Kiki Onkō',
				'Hinokami Kagura: Yōkatotsu',
				'Hinokami Kagura: Nichiun no Ryū Kaburimai',
				'Hinokami Kagura: Kasha',
				'Hinokami Kagura: Gen\'nichi Kō',
				'Hinokami Kagura: Enbu',
			},
			
			water = {
				'Mizu no kokyū: Ichi no kata: Minamo Giri',
				'Mizu no kokyū: Ni no kata: Mizu Guruma',
				'Mizu no kokyū: San no kata: Ryūryū Mai',
				'Mizu no kokyū: Shi no kata: Uchishio',
				'Mizu no kokyū: Go no kata: Kanten no Jiu',
				'Mizu no kokyū: Roku no kata: Nejire Uzu',
				'Mizu no kokyū: Shichi no kata: Shizuku Hamon Tsuki',
				'Mizu no kokyū: Hachi no kata: Takitsubo',
				'Mizu no kokyū: Ku no kata: Suiryū Shibuki - Ran',
				'Mizu no kokyū: Jū no kata: Seisei Ruten',
				'Mizu no kokyū: Jū Ichi no kata: Nagi',
			},
			
			moon = {
				'Tsuki no kokyū: Ichi no kata: Yamidzuki - Yoi no Miya',
				'Tsuki no kokyū: Ni no kata: Shuka no Rōgetsu',
				'Tsuki no kokyū: San no kata: Enkidzuki - Tsugari',
				'Tsuki no kokyū: Go no kata: Geppaku Saika',
				'Tsuki no kokyū: Roku no kata: Tokoyo Kogetsu - Muken',
				'Tsuki no kokyū: Shichi no kata: Yakkyō - Dzukibae',
				'Tsuki no kokyū: Hachi no kata: Getsuryū Rinbi',
				'Tsuki no kokyū: Ku no kata: Kudaridzuki - Renmen',
				'Tsuki no kokyū: Jū no kata: Senmenzan - Ragetsu',
				'Tsuki no kokyū: Jū Shi no kata: Kyōhen - Tenman Sengetsu',
				'Tsuki no kokyū: Jū Roku no kata: Gekkō - Katawaredzuki',
			},
			
			flame = {
				'Honō no kokyū: Ichi no kata: Shiranui',
				'Honō no kokyū: Ni no kata: Nobori En Ten',
				'Honō no kokyū: San no kata: Kien Banshō',
				'Honō no kokyū: Shi no kata: Sei En no Uneri',
				'Honō no kokyū: Go no kata: Enko',
				'Honō no kokyū: Ku no kata: Rengoku',
			},
			
			thunder = {
				'Kaminari no kokyū: Ichi no kata: Hekireki Issen',
				'Kaminari no kokyū: Ni no kata: Inadama',
				'Kaminari no kokyū: San no kata: Shūbun Seirai',
				'Kaminari no kokyū: Shi no kata: Enrai',
				'Kaminari no kokyū: Go no kata: Netsu Kairai',
				'Kaminari no kokyū: Roku no kata: Dengō Raigō',
				'Kaminari no kokyū: Shichi no kata: Honoikazuchi no Kami',
			},
			
			stone = {
				'Iwa no kokyū: Ichi no kata: Jamongan - Sōkyoku',
				'Iwa no kokyū: Ni no kata: Tenmen Kudaki',
				'Iwa no kokyū: San no kata: Ganku no Hadae',
				'Iwa no kokyū: Shi no kata: Ryūmongan - Sokusei',
				'Iwa no kokyū: Go no kata: Garin Gyōbu',
			},
			
			wind = {
				'Kaze no kokyū: Ichi no kata: Jin Senpū - Sogi',
				'Kaze no kokyū: Ni no kata: Sōsō - Shinato Kaze',
				'Kaze no kokyū: San no kata: Seiran Fūju',
				'Kaze no kokyū: Shi no kata: Shōjō Sajinran',
				'Kaze no kokyū: Go no kata: Kogarashi Oroshi',
				'Kaze no kokyū: Roku no kata: Kokufū Enran',
				'Kaze no kokyū: Shichi no kata: Keifū - Tengu Kaze',
				'Kaze no kokyū: Hachi no kata: Sho Rekkaza Kiri',
				'Kaze no kokyū: Ku no kata: Idaten Taifū',
			},
			
			flower = {
				'Hana no kokyū: Ni no kata: Mikage Ume',
				'Hana no kokyū: Shi no kata: Beni Hanagoromo',
				'Hana no kokyū: Go no kata: Ada no Shakuyaku',
				'Hana no kokyū: Roku no kata: Uzumomo',
				'Hana no kokyū: Tsui no kata: Higan Shugan',
			},
			
			serpent = {
				'Hebi no kokyū: Ichi no kata: Idagiri',
				'Hebi no kokyū: Ni no kata: Kyōzu no Dokuga',
				'Hebi no kokyū: San no kata: Toguro Jime',
				'Hebi no kokyū: Shi no kata: Keija Sōsei',
				'Hebi no kokyū: Go no kata: En\'en Chōda',
			},
			
			love = {
				'Koi no kokyū: Ichi no kata: Hatsukoi no Wananaki',
				'Koi no kokyū: Ni no kata: Ōnō Meguru Koi',
				'Koi no kokyū: San no kata: Koi Neko Shigure',
				'Koi no kokyū: Go no kata: Yurameku Renjō Midarezume',
				'Koi no kokyū: Roku no kata: Neko Ashi Koi Kaze',
			},
			
			sound = {
				'Oto no kokyū: Ichi no kata: Todoroki',
				'Oto no kokyū: Shi no kata: Kyōzan Muken',
				'Oto no kokyū: Go no kata: Meigen Sōsō',
			},
			
			beast = {
				'Kedamono no kokyū: Ichi no kiba: Ugachi Nuki',
				'Kedamono no kokyū: Ni no kiba: Kirisaki',
				'Kedamono no kokyū: San no kiba: Kuizaki',
				'Kedamono no kokyū: Shi no kiba: Kiri Komazaki',
				'Kedamono no kokyū: Go no kiba: Kuruizaki',
				'Kedamono no kokyū: Roku no kiba: Ranguigami',
				'Kedamono no kokyū: Shichi no kata: Kūkan Shikikaku',
				'Kedamono no kokyū: Hachi no kiba: Bakuretsu Mōshin',
				'Kedamono no kokyū: Ku no kiba: Shin - Unerizaki',
				'Kedamono no kokyū: Jū no kiba: Enten Senga',
				'Kedamono no kokyū: Omoitsuki no Nagesaki',
			},
			
			mist = {
				'Kasumi no kokyū: Ichi no kata: Suiten Tōgasumi',
				'Kasumi no kokyū: Ni no kata: Yaekasumi',
				'Kasumi no kokyū: San no kata: Kasan no Shibuki',
				'Kasumi no kokyū: Shi no kata: Iryūgiri',
				'Kasumi no kokyū: Go no kata: Kaun no Umi',
				'Kasumi no kokyū: Roku no kata: Tsuki no Kashō',
				'Kasumi no kokyū: Shichi no kata: Oboro',
			},
			
			insect = {
				'Mushi no kokyū: Chō no mai: Tawamure',
				'Mushi no kokyū: Hōga no mai: Manabiki',
				'Mushi no kokyū: Seirei no mai: Fukugan Rokkaku',
				'Mushi no kokyū: Gokō no mai: Hyakusoku Jabara',
			},
		},
		
		toxic = {
			'マザーファック',
			'いけにえの子',
			'飼い犬',
			'ノージャパニーズ、ノートーク',
			'蛸壺で殴りつけてやる',
			'へんたい＝いのち',
			'今や広島のような爆撃を受けている',
			'あなたの犬を食べたい',
			'なんか変な言葉だな',
		},
	},
	
	german = {
		toxic = {
			'eins du kek',
			'setz dich hin',
			'braver hund',
			'überrollt du nichtname',
			'gib bitte deine mogelsoftware zurück',
			'gefickt du hurensohn',
			'dein kopierte software wird dir nicht viel helfen',
			'warum versuchst du es überhaupt noch?',
			'gutes mogelmodul hast du da',
			'kann man deine konfiguration kaufen?',
			'warum so schlecht?',
			'leider überrannt',
			'nichtname',
			'überfahreNN',
			'machst aber fein sitz',
			'du bist ein hund',
			'warum so ein kek?',
			'wo hast du spielen gelernt?',
			'benutzt du novo.win oder was?',
			'unity user i guess',
			'uff ya hdf',
			'halt die fresse',
			'hdf',
			'hartz4 gleich weider ziehen',
			'1',
			'eins',
			'hahaha',
			'hahahhaaah',
			'hahahaahahahhaha',
			'brich jetzt nicht in wut aus',
			'weini weini',
			'ich hab mir in die Hose gekackt',
			'kräftig auf den arm genommen habe ich dich',
			'erhitz jetzt nicht dein Gemüt',
			'krieg es nicht in den falschen Hals',
			'was ist deine Benutzer Identifikationsnummer',
		},
	},
	
	chinese = {
		toxic = {
			'发火',
			'别难过',
			'我想知道你的百',
			'给你的卡泽',
			'请把你的猫咪送来。 : 给这个亚洲人吹箫',
			'漫天飞舞',
			'乒乓',
			'我没有作弊，我只是亚洲人。',
			'中国第一',
			'希特勒万岁',
			'机器人阴茎',
			'给这个亚洲人吹箫',
			'娘炮',
		},
	},
	
	romanian = {
		toxic = {
			'hahahah obține zid auto',
			'gratuit înșelător caută fundul',
			'așa cum spunem în România, dracu-ți mama',
			'fă-te futut înșelătorie gratis',
			'de ce atât de rău?',
			'nu fi trist',
			'folosești freeqn?',
			'fii bun, tipul meu',
			'Ți-am furat capota motorului',
			'du-te din nou pe străzi cerșind',
			'1 câine',
			'Câine românesc',
		},
	},
	
	hungarian = {
		toxic = {
			'ülj le, egyes',
			'Hopsz, meghaltál. Na majd legközelebb ;)',
			'Mit csinálsz?? Lőj vissza, így nem fogsz megölni.',
			'Fuu de szar vagy. Töröld le a játékot, ennek így nincs értelme.',
			'Idióta balfasz. Ilyen reflexekkel sosem fogsz megölni...',
		},
	},
	
	czech = {
		toxic = {
			'proč jsi tak špatnej?',
			'nasranej?',
			'spi',
			'1',
			'tak já jdu',
			'co používáš?',
			'nice paste',
			'420hacks.com',
			'proč jsi tak špatnej?',
			'za jedna',
			'bruh',
			'aw be like',
			'drž hubu negře',
			'drž hubu',
			'sedni',
			'sedni pse',
			'pse',
			'zažádej o refund',
			'paste be like',
			'zažádej o refund',
			'můžu si koupit tvůj config?',
			'máš ten config na selly?',
			'clean fucked',
			'koupil sis sub s těma penězma co jsem dal tvojí mámě?',
			'boutta media some bots brb',
			'prosím odinstaluj tu hru',
			'lehký',
			'nnware.xyz',
			'commit die',
			'commit neckrope',
			':(',
			'1',
			'clapped them cheeks',
			'naštvanej, pse?',
			'buď šťastnej',
			'zesral jsem se',
			'negři v mí řiti',
			'prosím zažádej o vrácení peněz',
			'dobrej config brácho',
			'jsem si jistej že to je uid problém',
			'jsem si jistej že je problém s configem ;)'
		},
	},
	
	polish = {
		toxic = {
		'Rucham cie w dupsko dziwko jebana',
        'jeden ty draniu',
        'Kradnę twój dom.',
        'skradziona rodzina',
        'polska legenda hvh',
        'ty nie masz imienia',
        'nie ma polskiego, nie ma mowy',
        'nie możesz grać z tobą bez ręki.',
        'nauczyć się gry, której jesteś ofiarą',
        'wsiadać do gówna',
        'pierdolić cipę',
        'Ukradłem ciebie i twoją rodzinę.',
        'ukryć swój samochód',
		},
	},
}

local phrases_knife = {
	russian = {
		'Ты конечно не левша, но перо под ребро получишь.',
		'Сало сало, українське сало!',
		'Свежий кабанчик! Налетайте мужики!',
		'iq абузер.',
		'Гордон Рамзи пришёл, очистить помещение.',
		'НА ПРОЛОООООООООМ',
		'Я тебя порежу до состояния мёртвости.',
		'скильки я зарезав, скильки перерезав',
		'РЕЖИКОМ ЗАНОЖУ',
		'Да что ты знаешь о глубоком проникновении',
		'на самсу пойдёшь',
		'на пельмени пойдёшь',
		'на пельмеши пойдёшь',
		'на шашлык пойдёшь',
		'на голубцы пойдёшь',
		'На ноже ублюдок',
	},

	english = {
		'Gordon Ramsay has come, lean the server!',
		'Lard, lard, Ukrainian lard!',
		'Fresh hog, come on guys!',
		'iq abuser.',
	},

	english_fancy = {
		'Ｇｏｒｄｏｎ Ｒａｍｓａｙ ｈａｓ ｃｏｍｅ, ｌｅａｎ ｔｈｅ ｓｅｒｖｅｒ!',
		'Ｌａｒｄ, ｌａｒｄ, Ｕｋｒａｉｎｉａｎ ｌａｒｄ!',
		'Ｆｒｅｓｈ ｈｏｇ, ｃｏｍｅ ｏｎ ｇｕｙｓ!',
		'ｉｑ ａｂｕｓｅｒ.',
	},
}

local phrases_zeus = {
	russian = {
		'Электрика вызывали?',
		'THUNDERGOD в деле.',
		'Шокирующая вертуха!',
		'iq абузер.',
		'НА ПРОЛОООООООООМ',
		'На зевсе, ублюдок',
	},

	english = {
		'Have you called an electrician?',
		'THUNDERGOD IN ACTION.',
		'SHOCKWAVE KICK!',
		'iq abuser.',
		'Z-z-a-a-a-a-a-p',
	},

	english_fancy = {
		'Ｈａｖｅ ｙｏｕ ｃａｌｌｅｄ ａｎ ｅｌｅｃｔｒｉｃｉａｎ?',
		'ＴＨＵＮＤＥＲＧＯＤ ＩＮ ＡＣＴＩＯＮ.',
		'ＳＨＯＣＫＷＡＶＥ ＫＩＣＫ!',
		'ｉｑ ａｂｕｓｅｒ.',
		'Ｚ-ｚ-ａ-ａ-ａ-ａ-ａ-ｐ',
	},
}

local phrases_headshot = {
	russian = {
		'Выстрел просто - отвал бошки!',
		'У тебя наверное подписка на антиаимы закончилась!',
		'Прям в ноздрю!',
		'Тактический хаесик!',
		'хаесики',
		'дал прям на лицо',
		'хватит высовывать ебасосину',
		'траханация лица',
		'В ОРАЛ',
		'Логопеда позвать?',
		'АИМБОТ НА МОЗГИИИ',
		'обмен въеблезностями',
		'в еблоко',
		'ебать я тебе еблетик вскрыл',
		'зубки по всей карте разлетелись',
		'чо с ебалом, мать жива?',
		'получай по мордасам',
		'раз, два, три, ебло свинцом протри',
		'зубы есть? а если найду?',
		'нихуя ты маслину поймал',
		'боже, нахуй ты E-шку прожал?',
		'боже, нахуй ты E-шку то прожал?',
		'боже, нахуя ты E-шку прожал?',
		'боже, нахуя ты E-шку то прожал?',
		'Нифига я чо Лоу дельта убил',
		'Главное, что хоть утебя голова на месте)',
	},

	english = {
		'Check ur head, there is a hole...',
		'I think ur antiaim sub is expired...',
		'nice antiaim, you sell?',
		'Raped lmaoo',
		'One',
		'1.',
		'hs',
		'One TAP',
		'Did you really sold your anal virginity for that cheat? btw 1',
	},

	english_fancy = {
		'Ｃｈｅｃｋ ｕｒ ｈｅａｄ, ｔｈｅｒｅ ｉｓ ａ ｈｏｌｅ...',
		'Ｉ ｔｈｉｎｋ ｕｒ ａｎｔｉａｉｍ ｓｕｂ ｉｓ ｅｘｐｉｒｅｄ...',
		'ｎｉｃｅ ａｎｔｉａｉｍ, ｙｏｕ ｓｅｌｌ?',
	},
}

local phrases_burn = {
	russian = {
		'Сгорел - как еврей в 41!',
		'Гори-гори ясно, чтобы не погасло!',
		'Гори, ёлочка, гори!',
		'Разогревчик',
		'подогрет на шаурму',
		'Я что, в фаркрай 3 играю?',
		'Слушай, там член твоего бати не сгорел от твоего пердака?',
		'Слушай, там член твоего отчима не сгорел от твоего пердака?',
		'Имя "Ибрагим" вам чтонибудь говорит?',
		'У тебя точно нет еврейских корней?',
		'Ты точно не еврей?',
		'У тебя явно еврейские корни',
	},

	english = {
		'Let it burn!',
		'BURN MAZAFAKA, BURN!',
		'Am I in FarCry 3?',
	},

	english_fancy = {
		'Ｌｅｔ ｉｔ ｂｕｒｎ!',
		'ＢＵＲＮ ＭＡＺＡＦＡＫＡ, ＢＵＲＮ!',
		'Ａｍ Ｉ ｉｎ ＦａｒＣｒｙ 3?',
	},
}

local phrases_blown = {
	russian = {
		'Напетардирован!',
		'РАЗРЫВНАЯ!',
		'Лови фашист гранату!',
		'ТЫ решил посмотреть поближе как петарды взрываются?',
		'Прости, я просто корсар новый испытывал',
		'Аллахакбар',
		'Имя "Ибрагим" вам чтонибудь говорит?',
		'нихуя ты маслину поймал',
	},

	english = {
		'EXPLOTION!',
	},

	english_fancy = {
		'ＥＸＰＬＯＴＩＯＮ',
	},
}

local phrase_death = {
	russian = {
		'Мляяя маслину поймал',
		'Раз в год и палка попадает',
		'Ёбаный рот этого казино блядь',
		'Ничего, команда вытащит',
		'О ГОСПОДИ Я ВИЖУ СВЕТ!!! Из очка твоей матери',
		'Это не ты меня убил, это все шаурма с вокзала',
		'Я обязательно выиграю...',
		'Моя смерть - подарок тебе на новый год',
		'Сука зыбл утюг выключить',
		'А спонсор этой смерти РЕЙД ШЕДОУ ЛЕДЖЕНДС',
		'Зато в роблокс хорошо играю',
		'На тебя глухаря повесят, пиздопрохлаёбина',
		'Эти 300 доларов... именно столько стоит твой отец.',
		'Эх.. теперь я не стану хокаге. Даттебайо',
		'Здесь могла быть ваша реклама',
		'Курение убивает',
		'Я тебя проклинаю, у тебя хуй не будет стоять 5 лет',
		'*поймал пердечный сриступ*',
		'Сас или хых',
		'Мммм бэбра',
		'Занюхнул жумайсынбу',
		'Мать гроб неси дед умер',
		'Зачем ты так, у меня ведь дети, свинья',
		'СЛАВА ЧТО ТЫ СДЕЛАЛ?!',
		'Не умер а взял перерыв от жизни',
		'*звуки ранения из роблокса*',
		'Надо же штурмовики из звёздых войн эволюционируют',
		'Танос сука тайминг поймал',
		'Пацаны я курить',
		'Да ты че.......... БЛЯЯЯЯЯЯЯЯЯЯ',
		'Не отдам сало!',
		'Ебаный винстон синий',
		'Ты че линзы купил?',
		'Ярик БЛЯДЬ!!!',
		'Опять сосать, ну давай',
		'Ебаные рептилоиды',
		'Это всё твой компьютер виноват',
		'Оказывается рак убивает',
		'Я щяс брату позвоню у него друг таджик',
		'Не умер, а дал шанс',
		'Лаки...',
		'Ну что ты делаешь сын хуйни блядь',
		'Ну нет такое убьёт блядь',
		'Ну нет в такого красный',
		'Это не ты убил, это я умер',
		'Я трахну тебя в твою жопу',
	},
	
	english = {
		'You finally killed me, Good Job!',
		'Good for you, you finally hit something!',
		'You finally learned to put your crosshair on me, cute.',
		'Did you use aimbot to kill me? It\'s okay, that\'s all you got.',
		'I almost died of old age, nice of you to finally kill me.',
		'Nice shot, I guess you do have luck on your side.',
		'Stormtroopers can still kill me faster than you.',
	}
}

local function get_phrase()
	if ui.killsay.version:Get() == 0 then
		if ui.killsay.mode:Get() == 0 then
			if ui.killsay.language2:Get() == 0 then
				return phrases.english.Toxic[Utils.RandomInt(1, #phrases.english.Toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 1 then
				return phrases.english.Toxic_fancy[Utils.RandomInt(1, #phrases.english.Toxic_fancy)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 2 then
				return phrases.russian.Toxic[Utils.RandomInt(1, #phrases.russian.Toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 3 then
				return phrases.german.toxic[Utils.RandomInt(1, #phrases.german.toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 4 then
				return phrases.polish.toxic[Utils.RandomInt(1, #phrases.polish.toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 5 then
				return phrases.japanese.toxic[Utils.RandomInt(1, #phrases.japanese.toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 6 then
				return phrases.chinese.toxic[Utils.RandomInt(1, #phrases.chinese.toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 7 then
				return phrases.romanian.toxic[Utils.RandomInt(1, #phrases.romanian.toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 8 then
				return phrases.hungarian.toxic[Utils.RandomInt(1, #phrases.hungarian.toxic)]:gsub('\'', '')
			elseif ui.killsay.language2:Get() == 9 then
				return phrases.czech.toxic[Utils.RandomInt(1, #phrases.czech.toxic)]:gsub('\'', '')
			end
		elseif ui.killsay.mode:Get() == 1 then
			return phrases.english.CancerStrike[Utils.RandomInt(1, #phrases.english.CancerStrike)]:gsub('\'', '')
		elseif ui.killsay.mode:Get() == 2 then
			return phrases.english.Questions[Utils.RandomInt(1, #phrases.english.Questions)]:gsub('\'', '')
		elseif ui.killsay.mode:Get() == 3 then
			return phrases.english.EzFragz[Utils.RandomInt(1, #phrases.english.EzFragz)]:gsub('\'', '')
		end
	elseif ui.killsay.version:Get() == 1 then
		if ui.killsay.mode2:Get() == 0 then
			return phrases.english.HP[Utils.RandomInt(1, #phrases.english.HP)]:gsub('\'', '')
		elseif ui.killsay.mode2:Get() == 1 then
			return phrases.english.hentai[Utils.RandomInt(1, #phrases.english.hentai)]:gsub('\'', '')
		elseif ui.killsay.mode2:Get() == 2 then
			return phrases.english.lewd[Utils.RandomInt(1, #phrases.english.lewd)]:gsub('\'', '')
		elseif ui.killsay.mode2:Get() == 3 then
			return phrases.english.ChatBreak[Utils.RandomInt(1, #phrases.english.ChatBreak)]:gsub('\'', '')
		elseif ui.killsay.mode2:Get() == 4 then
			if ui.killsay.language3:Get() == 1 then
				return phrases.russian.facts[Utils.RandomInt(1, #phrases.russian.facts)]:gsub('\'', '')
			elseif ui.killsay.language3:Get() == 0 then
				return phrases.english.facts[Utils.RandomInt(1, #phrases.english.facts)]:gsub('\'', '')
			end
		elseif ui.killsay.mode2:Get() == 6 then
			return phrases.english.advice[Utils.RandomInt(1, #phrases.english.advice)]:gsub('\'', '')
		end
	elseif ui.killsay.version:Get() == 2 then
		if ui.killsay.language:Get() == 0 then
			if ui.killsay.mode3:Get() == 0 then
				return phrases.english.demonslayer.sun[Utils.RandomInt(1, #phrases.english.demonslayer.sun)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 1 then
				return phrases.english.demonslayer.water[Utils.RandomInt(1, #phrases.english.demonslayer.water)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 2 then
				return phrases.english.demonslayer.moon[Utils.RandomInt(1, #phrases.english.demonslayer.moon)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 3 then
				return phrases.english.demonslayer.flame[Utils.RandomInt(1, #phrases.english.demonslayer.flame)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 4 then
				return phrases.english.demonslayer.thunder[Utils.RandomInt(1, #phrases.english.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 5 then
				return phrases.english.demonslayer.stone[Utils.RandomInt(1, #phrases.english.demonslayer.stone)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 6 then
				return phrases.english.demonslayer.wind[Utils.RandomInt(1, #phrases.english.demonslayer.wind)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 7 then
				return phrases.english.demonslayer.flower[Utils.RandomInt(1, #phrases.english.demonslayer.flower)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 8 then
				return phrases.english.demonslayer.serpent[Utils.RandomInt(1, #phrases.english.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 9 then
				return phrases.english.demonslayer.love[Utils.RandomInt(1, #phrases.english.demonslayer.love)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 10 then
				return phrases.english.demonslayer.sound[Utils.RandomInt(1, #phrases.english.demonslayer.sound)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 11 then
				return phrases.english.demonslayer.beast[Utils.RandomInt(1, #phrases.english.demonslayer.beast)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 12 then
				return phrases.english.demonslayer.mist[Utils.RandomInt(1, #phrases.english.demonslayer.mist)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 13 then
				return phrases.english.demonslayer.insect[Utils.RandomInt(1, #phrases.english.demonslayer.insect)]:gsub('\'', '')
			end
		elseif ui.killsay.language:Get() == 1 then
			if ui.killsay.mode3:Get() == 0 then
				return phrases.russian.demonslayer.sun[Utils.RandomInt(1, #phrases.russian.demonslayer.sun)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 1 then
				return phrases.russian.demonslayer.water[Utils.RandomInt(1, #phrases.russian.demonslayer.water)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 2 then
				return phrases.russian.demonslayer.moon[Utils.RandomInt(1, #phrases.russian.demonslayer.moon)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 3 then
				return phrases.russian.demonslayer.flame[Utils.RandomInt(1, #phrases.russian.demonslayer.flame)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 4 then
				return phrases.russian.demonslayer.thunder[Utils.RandomInt(1, #phrases.russian.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 5 then
				return phrases.russian.demonslayer.stone[Utils.RandomInt(1, #phrases.russian.demonslayer.stone)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 6 then
				return phrases.russian.demonslayer.wind[Utils.RandomInt(1, #phrases.russian.demonslayer.wind)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 7 then
				return phrases.russian.demonslayer.flower[Utils.RandomInt(1, #phrases.russian.demonslayer.flower)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 8 then
				return phrases.russian.demonslayer.serpent[Utils.RandomInt(1, #phrases.russian.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 9 then
				return phrases.russian.demonslayer.love[Utils.RandomInt(1, #phrases.russian.demonslayer.love)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 10 then
				return phrases.russian.demonslayer.sound[Utils.RandomInt(1, #phrases.russian.demonslayer.sound)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 11 then
				return phrases.russian.demonslayer.beast[Utils.RandomInt(1, #phrases.russian.demonslayer.beast)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 12 then
				return phrases.russian.demonslayer.mist[Utils.RandomInt(1, #phrases.russian.demonslayer.mist)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 13 then
				return phrases.russian.demonslayer.insect[Utils.RandomInt(1, #phrases.russian.demonslayer.insect)]:gsub('\'', '')
			end
		elseif ui.killsay.language:Get() == 2 then
			if ui.killsay.mode3:Get() == 0 then
				return phrases.japanese.demonslayer.sun[Utils.RandomInt(1, #phrases.japanese.demonslayer.sun)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 1 then
				return phrases.japanese.demonslayer.water[Utils.RandomInt(1, #phrases.japanese.demonslayer.water)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 2 then
				return phrases.japanese.demonslayer.moon[Utils.RandomInt(1, #phrases.japanese.demonslayer.moon)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 3 then
				return phrases.japanese.demonslayer.flame[Utils.RandomInt(1, #phrases.japanese.demonslayer.flame)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 4 then
				return phrases.japanese.demonslayer.thunder[Utils.RandomInt(1, #phrases.japanese.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 5 then
				return phrases.japanese.demonslayer.stone[Utils.RandomInt(1, #phrases.japanese.demonslayer.stone)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 6 then
				return phrases.japanese.demonslayer.wind[Utils.RandomInt(1, #phrases.japanese.demonslayer.wind)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 7 then
				return phrases.japanese.demonslayer.flower[Utils.RandomInt(1, #phrases.japanese.demonslayer.flower)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 8 then
				return phrases.japanese.demonslayer.serpent[Utils.RandomInt(1, #phrases.japanese.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 9 then
				return phrases.japanese.demonslayer.love[Utils.RandomInt(1, #phrases.japanese.demonslayer.love)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 10 then
				return phrases.japanese.demonslayer.sound[Utils.RandomInt(1, #phrases.japanese.demonslayer.sound)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 11 then
				return phrases.japanese.demonslayer.beast[Utils.RandomInt(1, #phrases.japanese.demonslayer.beast)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 12 then
				return phrases.japanese.demonslayer.mist[Utils.RandomInt(1, #phrases.japanese.demonslayer.mist)]:gsub('\'', '')
			elseif ui.killsay.mode3:Get() == 13 then
				return phrases.japanese.demonslayer.insect[Utils.RandomInt(1, #phrases.japanese.demonslayer.insect)]:gsub('\'', '')
			end
		end
	end
end

local function get_phrase_team()
	if ui.teamsay.version:Get() == 0 then
		if ui.teamsay.mode:Get() == 0 then
			if ui.teamsay.language2:Get() == 0 then
				return phrases.english.Toxic[Utils.RandomInt(1, #phrases.english.Toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 1 then
				return phrases.english.Toxic_fancy[Utils.RandomInt(1, #phrases.english.Toxic_fancy)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 2 then
				return phrases.russian.Toxic[Utils.RandomInt(1, #phrases.russian.Toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 3 then
				return phrases.german.toxic[Utils.RandomInt(1, #phrases.german.toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 4 then
				return phrases.polish.toxic[Utils.RandomInt(1, #phrases.polish.toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 5 then
				return phrases.japanese.toxic[Utils.RandomInt(1, #phrases.japanese.toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 6 then
				return phrases.chinese.toxic[Utils.RandomInt(1, #phrases.chinese.toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 7 then
				return phrases.romanian.toxic[Utils.RandomInt(1, #phrases.romanian.toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 8 then
				return phrases.hungarian.toxic[Utils.RandomInt(1, #phrases.hungarian.toxic)]:gsub('\'', '')
			elseif ui.teamsay.language2:Get() == 9 then
				return phrases.czech.toxic[Utils.RandomInt(1, #phrases.czech.toxic)]:gsub('\'', '')
			end
		elseif ui.teamsay.mode:Get() == 1 then
			return phrases.english.CancerStrike[Utils.RandomInt(1, #phrases.english.CancerStrike)]:gsub('\'', '')
		elseif ui.teamsay.mode:Get() == 2 then
			return phrases.english.Questions[Utils.RandomInt(1, #phrases.english.Questions)]:gsub('\'', '')
		elseif ui.teamsay.mode:Get() == 3 then
			return phrases.english.EzFragz[Utils.RandomInt(1, #phrases.english.EzFragz)]:gsub('\'', '')
		end
	elseif ui.teamsay.version:Get() == 1 then
		if ui.teamsay.mode2:Get() == 0 then
			return phrases.english.HP[Utils.RandomInt(1, #phrases.english.HP)]:gsub('\'', '')
		elseif ui.teamsay.mode2:Get() == 1 then
			return phrases.english.hentai[Utils.RandomInt(1, #phrases.english.hentai)]:gsub('\'', '')
		elseif ui.teamsay.mode2:Get() == 2 then
			return phrases.english.lewd[Utils.RandomInt(1, #phrases.english.lewd)]:gsub('\'', '')
		elseif ui.teamsay.mode2:Get() == 3 then
			return phrases.english.ChatBreak[Utils.RandomInt(1, #phrases.english.ChatBreak)]:gsub('\'', '')
		elseif ui.teamsay.mode2:Get() == 4 then
			if ui.teamsay.language3:Get() == 1 then
				return phrases.russian.facts[Utils.RandomInt(1, #phrases.russian.facts)]:gsub('\'', '')
			elseif ui.teamsay.language3:Get() == 0 then
				return phrases.english.facts[Utils.RandomInt(1, #phrases.english.facts)]:gsub('\'', '')
			end
		elseif ui.teamsay.mode2:Get() == 6 then
			return phrases.english.advice[Utils.RandomInt(1, #phrases.english.advice)]:gsub('\'', '')
		end
	elseif ui.teamsay.version:Get() == 2 then
		if ui.teamsay.language:Get() == 0 then
			if ui.teamsay.mode3:Get() == 0 then
				return phrases.english.demonslayer.sun[Utils.RandomInt(1, #phrases.english.demonslayer.sun)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 1 then
				return phrases.english.demonslayer.water[Utils.RandomInt(1, #phrases.english.demonslayer.water)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 2 then
				return phrases.english.demonslayer.moon[Utils.RandomInt(1, #phrases.english.demonslayer.moon)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 3 then
				return phrases.english.demonslayer.flame[Utils.RandomInt(1, #phrases.english.demonslayer.flame)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 4 then
				return phrases.english.demonslayer.thunder[Utils.RandomInt(1, #phrases.english.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 5 then
				return phrases.english.demonslayer.stone[Utils.RandomInt(1, #phrases.english.demonslayer.stone)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 6 then
				return phrases.english.demonslayer.wind[Utils.RandomInt(1, #phrases.english.demonslayer.wind)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 7 then
				return phrases.english.demonslayer.flower[Utils.RandomInt(1, #phrases.english.demonslayer.flower)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 8 then
				return phrases.english.demonslayer.serpent[Utils.RandomInt(1, #phrases.english.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 9 then
				return phrases.english.demonslayer.love[Utils.RandomInt(1, #phrases.english.demonslayer.love)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 10 then
				return phrases.english.demonslayer.sound[Utils.RandomInt(1, #phrases.english.demonslayer.sound)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 11 then
				return phrases.english.demonslayer.beast[Utils.RandomInt(1, #phrases.english.demonslayer.beast)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 12 then
				return phrases.english.demonslayer.mist[Utils.RandomInt(1, #phrases.english.demonslayer.mist)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 13 then
				return phrases.english.demonslayer.insect[Utils.RandomInt(1, #phrases.english.demonslayer.insect)]:gsub('\'', '')
			end
		elseif ui.teamsay.language:Get() == 1 then
			if ui.teamsay.mode3:Get() == 0 then
				return phrases.russian.demonslayer.sun[Utils.RandomInt(1, #phrases.russian.demonslayer.sun)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 1 then
				return phrases.russian.demonslayer.water[Utils.RandomInt(1, #phrases.russian.demonslayer.water)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 2 then
				return phrases.russian.demonslayer.moon[Utils.RandomInt(1, #phrases.russian.demonslayer.moon)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 3 then
				return phrases.russian.demonslayer.flame[Utils.RandomInt(1, #phrases.russian.demonslayer.flame)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 4 then
				return phrases.russian.demonslayer.thunder[Utils.RandomInt(1, #phrases.russian.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 5 then
				return phrases.russian.demonslayer.stone[Utils.RandomInt(1, #phrases.russian.demonslayer.stone)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 6 then
				return phrases.russian.demonslayer.wind[Utils.RandomInt(1, #phrases.russian.demonslayer.wind)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 7 then
				return phrases.russian.demonslayer.flower[Utils.RandomInt(1, #phrases.russian.demonslayer.flower)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 8 then
				return phrases.russian.demonslayer.serpent[Utils.RandomInt(1, #phrases.russian.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 9 then
				return phrases.russian.demonslayer.love[Utils.RandomInt(1, #phrases.russian.demonslayer.love)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 10 then
				return phrases.russian.demonslayer.sound[Utils.RandomInt(1, #phrases.russian.demonslayer.sound)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 11 then
				return phrases.russian.demonslayer.beast[Utils.RandomInt(1, #phrases.russian.demonslayer.beast)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 12 then
				return phrases.russian.demonslayer.mist[Utils.RandomInt(1, #phrases.russian.demonslayer.mist)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 13 then
				return phrases.russian.demonslayer.insect[Utils.RandomInt(1, #phrases.russian.demonslayer.insect)]:gsub('\'', '')
			end
		elseif ui.teamsay.language:Get() == 2 then
			if ui.teamsay.mode3:Get() == 0 then
				return phrases.japanese.demonslayer.sun[Utils.RandomInt(1, #phrases.japanese.demonslayer.sun)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 1 then
				return phrases.japanese.demonslayer.water[Utils.RandomInt(1, #phrases.japanese.demonslayer.water)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 2 then
				return phrases.japanese.demonslayer.moon[Utils.RandomInt(1, #phrases.japanese.demonslayer.moon)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 3 then
				return phrases.japanese.demonslayer.flame[Utils.RandomInt(1, #phrases.japanese.demonslayer.flame)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 4 then
				return phrases.japanese.demonslayer.thunder[Utils.RandomInt(1, #phrases.japanese.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 5 then
				return phrases.japanese.demonslayer.stone[Utils.RandomInt(1, #phrases.japanese.demonslayer.stone)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 6 then
				return phrases.japanese.demonslayer.wind[Utils.RandomInt(1, #phrases.japanese.demonslayer.wind)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 7 then
				return phrases.japanese.demonslayer.flower[Utils.RandomInt(1, #phrases.japanese.demonslayer.flower)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 8 then
				return phrases.japanese.demonslayer.serpent[Utils.RandomInt(1, #phrases.japanese.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 9 then
				return phrases.japanese.demonslayer.love[Utils.RandomInt(1, #phrases.japanese.demonslayer.love)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 10 then
				return phrases.japanese.demonslayer.sound[Utils.RandomInt(1, #phrases.japanese.demonslayer.sound)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 11 then
				return phrases.japanese.demonslayer.beast[Utils.RandomInt(1, #phrases.japanese.demonslayer.beast)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 12 then
				return phrases.japanese.demonslayer.mist[Utils.RandomInt(1, #phrases.japanese.demonslayer.mist)]:gsub('\'', '')
			elseif ui.teamsay.mode3:Get() == 13 then
				return phrases.japanese.demonslayer.insect[Utils.RandomInt(1, #phrases.japanese.demonslayer.insect)]:gsub('\'', '')
			end
		end
	end
end

local function get_phrase_shared()
	if ui.shared.version:Get() == 0 then
		if ui.shared.mode:Get() == 0 then
			if ui.shared.language2:Get() == 0 then
				return phrases.english.Toxic[Utils.RandomInt(1, #phrases.english.Toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 1 then
				return phrases.english.Toxic_fancy[Utils.RandomInt(1, #phrases.english.Toxic_fancy)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 2 then
				return phrases.russian.Toxic[Utils.RandomInt(1, #phrases.russian.Toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 3 then
				return phrases.german.toxic[Utils.RandomInt(1, #phrases.german.toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 4 then
				return phrases.polish.toxic[Utils.RandomInt(1, #phrases.polish.toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 5 then
				return phrases.japanese.toxic[Utils.RandomInt(1, #phrases.japanese.toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 6 then
				return phrases.chinese.toxic[Utils.RandomInt(1, #phrases.chinese.toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 7 then
				return phrases.romanian.toxic[Utils.RandomInt(1, #phrases.romanian.toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 8 then
				return phrases.hungarian.toxic[Utils.RandomInt(1, #phrases.hungarian.toxic)]:gsub('\'', '')
			elseif ui.shared.language2:Get() == 9 then
				return phrases.czech.toxic[Utils.RandomInt(1, #phrases.czech.toxic)]:gsub('\'', '')
			end
		elseif ui.shared.mode:Get() == 1 then
			return phrases.english.CancerStrike[Utils.RandomInt(1, #phrases.english.CancerStrike)]:gsub('\'', '')
		elseif ui.shared.mode:Get() == 2 then
			return phrases.english.Questions[Utils.RandomInt(1, #phrases.english.Questions)]:gsub('\'', '')
		elseif ui.shared.mode:Get() == 3 then
			return phrases.english.EzFragz[Utils.RandomInt(1, #phrases.english.EzFragz)]:gsub('\'', '')
		end
	elseif ui.shared.version:Get() == 1 then
		if ui.shared.mode2:Get() == 0 then
			return phrases.english.HP[Utils.RandomInt(1, #phrases.english.HP)]:gsub('\'', '')
		elseif ui.shared.mode2:Get() == 1 then
			return phrases.english.hentai[Utils.RandomInt(1, #phrases.english.hentai)]:gsub('\'', '')
		elseif ui.shared.mode2:Get() == 2 then
			return phrases.english.lewd[Utils.RandomInt(1, #phrases.english.lewd)]:gsub('\'', '')
		elseif ui.shared.mode2:Get() == 3 then
			return phrases.english.ChatBreak[Utils.RandomInt(1, #phrases.english.ChatBreak)]:gsub('\'', '')
		elseif ui.shared.mode2:Get() == 4 then
			if ui.shared.language3:Get() == 1 then
				return phrases.russian.facts[Utils.RandomInt(1, #phrases.russian.facts)]:gsub('\'', '')
			elseif ui.shared.language3:Get() == 0 then
				return phrases.english.facts[Utils.RandomInt(1, #phrases.english.facts)]:gsub('\'', '')
			end
		elseif ui.shared.mode2:Get() == 6 then
			return phrases.english.advice[Utils.RandomInt(1, #phrases.english.advice)]:gsub('\'', '')
		end
	elseif ui.shared.version:Get() == 2 then
		if ui.shared.language:Get() == 0 then
			if ui.shared.mode3:Get() == 0 then
				return phrases.english.demonslayer.sun[Utils.RandomInt(1, #phrases.english.demonslayer.sun)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 1 then
				return phrases.english.demonslayer.water[Utils.RandomInt(1, #phrases.english.demonslayer.water)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 2 then
				return phrases.english.demonslayer.moon[Utils.RandomInt(1, #phrases.english.demonslayer.moon)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 3 then
				return phrases.english.demonslayer.flame[Utils.RandomInt(1, #phrases.english.demonslayer.flame)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 4 then
				return phrases.english.demonslayer.thunder[Utils.RandomInt(1, #phrases.english.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 5 then
				return phrases.english.demonslayer.stone[Utils.RandomInt(1, #phrases.english.demonslayer.stone)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 6 then
				return phrases.english.demonslayer.wind[Utils.RandomInt(1, #phrases.english.demonslayer.wind)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 7 then
				return phrases.english.demonslayer.flower[Utils.RandomInt(1, #phrases.english.demonslayer.flower)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 8 then
				return phrases.english.demonslayer.serpent[Utils.RandomInt(1, #phrases.english.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 9 then
				return phrases.english.demonslayer.love[Utils.RandomInt(1, #phrases.english.demonslayer.love)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 10 then
				return phrases.english.demonslayer.sound[Utils.RandomInt(1, #phrases.english.demonslayer.sound)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 11 then
				return phrases.english.demonslayer.beast[Utils.RandomInt(1, #phrases.english.demonslayer.beast)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 12 then
				return phrases.english.demonslayer.mist[Utils.RandomInt(1, #phrases.english.demonslayer.mist)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 13 then
				return phrases.english.demonslayer.insect[Utils.RandomInt(1, #phrases.english.demonslayer.insect)]:gsub('\'', '')
			end
		elseif ui.shared.language:Get() == 1 then
			if ui.shared.mode3:Get() == 0 then
				return phrases.russian.demonslayer.sun[Utils.RandomInt(1, #phrases.russian.demonslayer.sun)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 1 then
				return phrases.russian.demonslayer.water[Utils.RandomInt(1, #phrases.russian.demonslayer.water)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 2 then
				return phrases.russian.demonslayer.moon[Utils.RandomInt(1, #phrases.russian.demonslayer.moon)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 3 then
				return phrases.russian.demonslayer.flame[Utils.RandomInt(1, #phrases.russian.demonslayer.flame)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 4 then
				return phrases.russian.demonslayer.thunder[Utils.RandomInt(1, #phrases.russian.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 5 then
				return phrases.russian.demonslayer.stone[Utils.RandomInt(1, #phrases.russian.demonslayer.stone)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 6 then
				return phrases.russian.demonslayer.wind[Utils.RandomInt(1, #phrases.russian.demonslayer.wind)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 7 then
				return phrases.russian.demonslayer.flower[Utils.RandomInt(1, #phrases.russian.demonslayer.flower)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 8 then
				return phrases.russian.demonslayer.serpent[Utils.RandomInt(1, #phrases.russian.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 9 then
				return phrases.russian.demonslayer.love[Utils.RandomInt(1, #phrases.russian.demonslayer.love)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 10 then
				return phrases.russian.demonslayer.sound[Utils.RandomInt(1, #phrases.russian.demonslayer.sound)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 11 then
				return phrases.russian.demonslayer.beast[Utils.RandomInt(1, #phrases.russian.demonslayer.beast)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 12 then
				return phrases.russian.demonslayer.mist[Utils.RandomInt(1, #phrases.russian.demonslayer.mist)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 13 then
				return phrases.russian.demonslayer.insect[Utils.RandomInt(1, #phrases.russian.demonslayer.insect)]:gsub('\'', '')
			end
		elseif ui.shared.language:Get() == 2 then
			if ui.shared.mode3:Get() == 0 then
				return phrases.japanese.demonslayer.sun[Utils.RandomInt(1, #phrases.japanese.demonslayer.sun)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 1 then
				return phrases.japanese.demonslayer.water[Utils.RandomInt(1, #phrases.japanese.demonslayer.water)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 2 then
				return phrases.japanese.demonslayer.moon[Utils.RandomInt(1, #phrases.japanese.demonslayer.moon)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 3 then
				return phrases.japanese.demonslayer.flame[Utils.RandomInt(1, #phrases.japanese.demonslayer.flame)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 4 then
				return phrases.japanese.demonslayer.thunder[Utils.RandomInt(1, #phrases.japanese.demonslayer.thunder)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 5 then
				return phrases.japanese.demonslayer.stone[Utils.RandomInt(1, #phrases.japanese.demonslayer.stone)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 6 then
				return phrases.japanese.demonslayer.wind[Utils.RandomInt(1, #phrases.japanese.demonslayer.wind)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 7 then
				return phrases.japanese.demonslayer.flower[Utils.RandomInt(1, #phrases.japanese.demonslayer.flower)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 8 then
				return phrases.japanese.demonslayer.serpent[Utils.RandomInt(1, #phrases.japanese.demonslayer.serpent)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 9 then
				return phrases.japanese.demonslayer.love[Utils.RandomInt(1, #phrases.japanese.demonslayer.love)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 10 then
				return phrases.japanese.demonslayer.sound[Utils.RandomInt(1, #phrases.japanese.demonslayer.sound)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 11 then
				return phrases.japanese.demonslayer.beast[Utils.RandomInt(1, #phrases.japanese.demonslayer.beast)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 12 then
				return phrases.japanese.demonslayer.mist[Utils.RandomInt(1, #phrases.japanese.demonslayer.mist)]:gsub('\'', '')
			elseif ui.shared.mode3:Get() == 13 then
				return phrases.japanese.demonslayer.insect[Utils.RandomInt(1, #phrases.japanese.demonslayer.insect)]:gsub('\'', '')
			end
		end
	end
end

local function get_phrase_knife()
	if ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 then
		if ui.killsay.language2:Get() == 0 then
			return phrases_knife.english[Utils.RandomInt(1, #phrases_knife.english)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 1 then
			return phrases_knife.english_fancy[Utils.RandomInt(1, #phrases_knife.english_fancy)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 2 then
			return phrases_knife.russian[Utils.RandomInt(1, #phrases_knife.russian)]:gsub('\'', '')
		end
	end
end

local function get_phrase_zeus()
	if ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 then
		if ui.killsay.language2:Get() == 0 then
			return phrases_zeus.english[Utils.RandomInt(1, #phrases_zeus.english)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 1 then
			return phrases_zeus.english_fancy[Utils.RandomInt(1, #phrases_zeus.english_fancy)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 2 then
			return phrases_zeus.russian[Utils.RandomInt(1, #phrases_zeus.russian)]:gsub('\'', '')
		end
	end
end

local function get_phrase_headshot()
	if ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 then
		if ui.killsay.language2:Get() == 0 then
			return phrases_headshot.english[Utils.RandomInt(1, #phrases_headshot.english)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 1 then
			return phrases_headshot.english_fancy[Utils.RandomInt(1, #phrases_headshot.english_fancy)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 2 then
			return phrases_headshot.russian[Utils.RandomInt(1, #phrases_headshot.russian)]:gsub('\'', '')
		end
	end
end

local function get_phrase_burn()
	if ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 then
		if ui.killsay.language2:Get() == 0 then
			return phrases_burn.english[Utils.RandomInt(1, #phrases_burn.english)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 1 then
			return phrases_burn.english_fancy[Utils.RandomInt(1, #phrases_burn.english_fancy)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 2 then
			return phrases_burn.russian[Utils.RandomInt(1, #phrases_burn.russian)]:gsub('\'', '')
		end
	end
end

local function get_phrase_blown()
	if ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 then
		if ui.killsay.language2:Get() == 0 then
			return phrases_blown.english[Utils.RandomInt(1, #phrases_blown.english)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 1 then
			return phrases_blown.english_fancy[Utils.RandomInt(1, #phrases_blown.english_fancy)]:gsub('\'', '')
		elseif ui.killsay.language2:Get() == 2 then
			return phrases_blown.russian[Utils.RandomInt(1, #phrases_blown.russian)]:gsub('\'', '')
		end
	end
end

local function get_phrase_death()
	if ui.deathsay.master:Get() and ui.deathsay.mode:Get() == 1 then
		return phrase_death.russian[Utils.RandomInt(1, #phrase_death.russian)]:gsub('\'', '')
	elseif ui.deathsay.master:Get() and ui.deathsay.mode:Get() == 0 then
		return phrase_death.english[Utils.RandomInt(1, #phrase_death.english)]:gsub('\'', '')
	end
end

local is_out = get_phrase()
local is_out_team = get_phrase_team()
local is_out_shared = get_phrase_shared()
local is_out_death = get_phrase_death()

local voice_inputfromfile = CVar.FindVar('voice_inputfromfile')
local voice_loopback = CVar.FindVar('voice_loopback')
local time = 0
local is_playing = false
local number_one = 1007

Cheat.RegisterCallback('events', function(event)
	local me = EntityList.GetLocalPlayer()

	if not EngineClient.IsInGame() or not me then return end
	local player_death = event:GetName() == 'player_death'

	local victim = EntityList.GetPlayerForUserID(event:GetInt('userid'))
	local attacker = EntityList.GetPlayerForUserID(event:GetInt('attacker'))

	is_out = get_phrase()
	is_out_team = get_phrase_team()
	is_out_shared = get_phrase_shared()
	is_out_death = get_phrase_death()

	local weapon_name = event:GetString('weapon', 'unknown')
	local is_headshot = event:GetBool('headshot', false)

	local knife_check = weapon_name == 'knife' or weapon_name == 'bayonet' or weapon_name == 'knife_css' or weapon_name == 'knife_flip' or weapon_name == 'knife_gut'
	or weapon_name == 'knife_karambit' or weapon_name == 'knife_m9_bayonet' or weapon_name == 'knife_tactical' or weapon_name == 'knife_falchion'
	or weapon_name == 'knife_survival_bowie' or weapon_name == 'knife_butterfly' or weapon_name == 'knife_push' or weapon_name == 'knife_cord' or weapon_name == 'knife_canis'
	or weapon_name == 'knife_ursus' or weapon_name == 'knife_gypsy_jackknife' or weapon_name == 'knife_outdoor' or weapon_name == 'knife_stiletto'
	or weapon_name == 'knife_widowmaker' or weapon_name == 'knife_skeleton'

	if player_death and victim:GetPlayerInfo().iSteamID == 934559845 then return end

	if ui.killsay.master:Get() and me:IsAlive() then
		if not player_death then return end

		if victim ~= attacker and attacker == me and victim:GetProp('m_iTeamNum') ~= me:GetProp('m_iTeamNum') then
			if ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 and (ui.killsay.language2:Get() == 0 or ui.killsay.language2:Get() == 1 or ui.killsay.language2:Get() == 2) then
				if ui.killsay.checks:GetBool(1) and knife_check and (ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 and (ui.killsay.language2:Get() == 0 or ui.killsay.language2:Get() == 1 or ui.killsay.language2:Get() == 2)) and attacker == me then --if knife
					is_out = get_phrase_knife()
				elseif ui.killsay.checks:GetBool(2) and weapon_name == 'taser' and (ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 and (ui.killsay.language2:Get() == 0 or ui.killsay.language2:Get() == 1 or ui.killsay.language2:Get() == 2)) and attacker == me then --if zeus
					is_out = get_phrase_zeus()
				elseif ui.killsay.checks:GetBool(3) and is_headshot and (ui.killsay.version:Get() == 0 and (ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 and (ui.killsay.language2:Get() == 0 or ui.killsay.language2:Get() == 1 or ui.killsay.language2:Get() == 2))) and attacker == me then --if hs
					is_out = get_phrase_headshot()
				elseif ui.killsay.checks:GetBool(4) and weapon_name == 'inferno' or weapon_name == 'incgrenade' or weapon_name == 'molotov' and (ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 and (ui.killsay.language2:Get() == 0 or ui.killsay.language2:Get() == 1 or ui.killsay.language2:Get() == 2)) and attacker == me then --if burn
					is_out = get_phrase_burn()
				elseif weapon_name == 'hegrenade' and (ui.killsay.version:Get() == 0 and ui.killsay.mode:Get() == 0 and (ui.killsay.language2:Get() == 0 or ui.killsay.language2:Get() == 1 or ui.killsay.language2:Get() == 2)) and attacker == me and ui.killsay.checks:GetBool(5) then --if HE
					is_out = get_phrase_blown()
				end
			end

			if ui.killsay.version:Get() == 3 then
				if ui.killsay.checks:GetBool(1) and knife_check then
					EngineClient.ExecuteClientCmd('say "' .. ui.killsay.knife_msg:Get() .. '"')
				elseif ui.killsay.checks:GetBool(2) and weapon_name == 'taser' then
					EngineClient.ExecuteClientCmd('say "' .. ui.killsay.taser_msg:Get() .. '"')
				elseif ui.killsay.checks:GetBool(3) and is_headshot then
					EngineClient.ExecuteClientCmd('say "' .. ui.killsay.hs_msg:Get() .. '"')
				elseif ui.killsay.checks:GetBool(4) and weapon_name == 'inferno' or weapon_name == 'incgrenade' or weapon_name == 'molotov' then
					EngineClient.ExecuteClientCmd('say "' .. ui.killsay.burn_msg:Get() .. '"')
				elseif ui.killsay.checks:GetBool(5) and weapon_name == 'hegrenade' then
					EngineClient.ExecuteClientCmd('say "' .. ui.killsay.blown_msg:Get() .. '"')
				else
					EngineClient.ExecuteClientCmd('say "' .. ui.killsay.custom:Get() .. '"')
				end
			elseif ui.killsay.version:Get() == 1 and ui.killsay.mode2:Get() == 5 then
				if number_one <= 6 then
					number_one = 1007
				end
				
				if ui.killsay.master:Get() then 
					number_one = number_one -7
				else
					number_one = 1007
				end
				
				EngineClient.ExecuteClientCmd('say ' .. number_one .. ' - 7?')
			else
				EngineClient.ExecuteClientCmd('say "' .. is_out .. '"')
			end
		end
	end

	if ui.teamsay.master:Get() then
		if not player_death then return end
		if ui.teamsay.check:Get() then
			if victim ~= attacker and victim ~= me and attacker ~= me and victim:GetProp('m_iTeamNum') == me:GetProp('m_iTeamNum') then
				if ui.teamsay.version:Get() == 3 then
					if ui.teamsay.check2:Get() == 1 then
						EngineClient.ExecuteClientCmd('say_team "' .. ui.teamsay.custom:Get() .. '"')
					elseif ui.teamsay.check2:Get() == 0 then
						EngineClient.ExecuteClientCmd('say "' .. ui.teamsay.custom:Get() .. '"')
					end
				elseif ui.teamsay.version:Get() == 1 and ui.teamsay.mode2:Get() == 5 then
					if number_one <= 6 then
						number_one = 1007
					end

					if ui.teamsay.master:Get() then 
						number_one = number_one -7
					else
						number_one = 1007
					end

					if ui.teamsay.check2:Get() == 1 then
						EngineClient.ExecuteClientCmd('say_team "' .. number_one .. '"')
					elseif ui.teamsay.check2:Get() == 0 then
						EngineClient.ExecuteClientCmd('say ' .. number_one .. ' - 7?')
					end
				else
					if ui.teamsay.check2:Get() == 1 then
						EngineClient.ExecuteClientCmd('say_team "' .. is_out_team .. '"')
					elseif ui.teamsay.check2:Get() == 0 then
						EngineClient.ExecuteClientCmd('say "' .. is_out_team .. '"')
					end
				end
			end
		else
			if victim ~= attacker and victim ~= me and victim:GetProp('m_iTeamNum') == me:GetProp('m_iTeamNum') then
				if ui.teamsay.version:Get() == 3 then
					if ui.teamsay.check2:Get() == 1 then
						EngineClient.ExecuteClientCmd('say_team "' .. ui.teamsay.custom:Get() .. '"')
					elseif ui.teamsay.check2:Get() == 0 then
						EngineClient.ExecuteClientCmd('say "' .. ui.teamsay.custom:Get() .. '"')
					end
				elseif ui.teamsay.version:Get() == 1 and ui.teamsay.mode2:Get() == 5 then
					if number_one <= 6 then
						number_one = 1007
					end

					if ui.teamsay.master:Get() then 
						number_one = number_one -7
					else
						number_one = 1007
					end

					if ui.teamsay.check2:Get() == 1 then
						EngineClient.ExecuteClientCmd('say_team "' .. number_one .. '"')
					elseif ui.teamsay.check2:Get() == 0 then
						EngineClient.ExecuteClientCmd('say ' .. number_one .. ' - 7?')
					end
				else
					if ui.teamsay.check2:Get() == 1 then
						EngineClient.ExecuteClientCmd('say_team "' .. is_out_team .. '"')
					elseif ui.teamsay.check2:Get() == 0 then
						EngineClient.ExecuteClientCmd('say "' .. is_out_team .. '"')
					end
				end
			end
		end
	end

	if ui.shared.master:Get() then
		if not player_death then return end
		if ui.shared.check:Get() then if not me:IsAlive() then return end end
		if victim ~= attacker and attacker ~= me and attacker:GetProp('m_iTeamNum') == me:GetProp('m_iTeamNum') and victim:GetProp('m_iTeamNum') ~= me:GetProp('m_iTeamNum') then
			if ui.shared.version:Get() == 3 then
				EngineClient.ExecuteClientCmd('say "' .. ui.shared.custom:Get() .. '"')
			elseif ui.shared.version:Get() == 1 and ui.shared.mode2:Get() == 5 then
				if number_one <= 6 then
					number_one = 1007
				end
				
				if ui.shared.master:Get() then 
					number_one = number_one -7
				else
					number_one = 1007
				end
				
				EngineClient.ExecuteClientCmd('say ' .. number_one .. ' - 7?')
			else
				EngineClient.ExecuteClientCmd('say "' .. is_out_shared .. '"')
			end
		end
	end
	
	if ui.deathsay.master:Get() then
		if not player_death then return end
		if ui.deathsay.ignore:Get() then
			if victim == me and attacker ~= me and attacker:GetProp('m_iTeamNum') ~= me:GetProp('m_iTeamNum') then
				if ui.deathsay.mode:Get() == 2 then
					EngineClient.ExecuteClientCmd('say "' .. ui.deathsay.custom:Get() .. '"')
				else
					EngineClient.ExecuteClientCmd('say "' .. is_out_death .. '"')
				end
			end
		else
			if victim == me and attacker ~= me then
				if ui.deathsay.mode:Get() == 2 then
					EngineClient.ExecuteClientCmd('say "' .. ui.deathsay.custom:Get() .. '"')
				else
					EngineClient.ExecuteClientCmd('say "' .. is_out_death .. '"')
				end
			end
		end
	end
	
	if ui.killvoice.master:Get() and player_death then
		if not player_death then return end
		local victim = EntityList.GetPlayerForUserID(event:GetInt('userid'))
		local attacker = EntityList.GetPlayerForUserID(event:GetInt('attacker'))
		local me = EntityList.GetLocalPlayer()
		
		if not me then return end

		if attacker == me and victim ~= me then
			voice_inputfromfile:SetInt(1)
			EngineClient.ExecuteClientCmd('+voicerecord')
			
			if ui.killvoice.listen:Get() then
				voice_loopback:SetInt(1)
			end
			
			time = GlobalVars.realtime + ui.killvoice.lenght:Get()
			is_playing = true
		end
	end
end)

local dt_ref = Menu.FindVar('Aimbot', 'Ragebot', 'Exploits', 'Double Tap')

Cheat.RegisterCallback('draw', function()
	if ui.killvoice.callback:Get() == 0 then
		if ui.killvoice.fix:Get() and dt_ref:Get() then
			if is_playing then
				Exploits.AllowCharge(false)
			else
				Exploits.AllowCharge(true)
			end
		end
	end

	if time < GlobalVars.realtime and is_playing then
		voice_inputfromfile:SetInt(0)
		EngineClient.ExecuteClientCmd('-voicerecord')
		
		if ui.killvoice.listen:Get() then
			voice_loopback:SetInt(0)
		end
		
		is_playing = false
	end
end)

Cheat.RegisterCallback('prediction', function(cmd)
	if ui.killvoice.callback:Get() ~= 1 then return end
	
	if ui.killvoice.fix:Get() and dt_ref:Get() then
		if is_playing then
			Exploits.AllowCharge(false)
		else
			Exploits.AllowCharge(true)
		end
	end
end)

Cheat.RegisterCallback('createmove', function(cmd)
	if ui.killvoice.callback:Get() ~= 2 then return end
	
	if ui.killvoice.fix:Get() and dt_ref:Get() then
		if is_playing then
			Exploits.AllowCharge(false)
		else
			Exploits.AllowCharge(true)
		end
	end
end)

Cheat.RegisterCallback('destroy', function()
	if Menu.FindVar('Miscellaneous', 'Main', 'Other', 'Filter Console'):Get() then return end

	print('GBye, Senpai!')
	print('Script maded by k3ls, all rights reserved.')
	print('')
	print('')
	print('⠄⠄⠄⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄')
	print('⠄⠄⠄⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄')
	print('⠄⠄⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄')
	print('⠄⠄⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄')
	print('⠄⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰')
	print('⠄⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤')
	print('⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗')
	print('⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄')
	print('⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠄')
	print('⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃⠄')
	print('⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃⠄⠄')
	print('⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁⠄⠄⠄')
	print('⠄⠄⠄⠄⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁⠄⠄⠄⠄⠄')
	print('⠄⠄⠄⠄⠄⠄⠄⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁⠄⠄⠄⠄⠄⠄⠄⠄')
	print('⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄')
end)
