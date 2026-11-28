-- discord.gg/syncrypt

local function geniter(f, s, c)
	if type(f) ~= "function" then
		local mt = getmetatable(f)

		if type(mt) == "table" and mt.__iter then
			f, s, c = mt.__iter(f)
		elseif type(f) == "table" then
			f, s, c = next, f, nil
		end
	end

	return function()
		local r = table.pack(f(s, c))

		if r[1] == nil then
			return false
		end

		c = r[1]

		return true, table.unpack(r, 1, r.n)
	end
end

game:GetService("MarketplaceService")

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = game:GetService("Players").LocalPlayer

LocalPlayer:GetMouse()

local function v10()
	return {
		accessibility = "rbxassetid://10709751939",
		activity = "rbxassetid://10709752035",
		airvent = "rbxassetid://10709752131",
		airplay = "rbxassetid://10709752254",
		alarmcheck = "rbxassetid://10709752405",
		alarmclock = "rbxassetid://10709752630",
		alarmclockoff = "rbxassetid://10709752508",
		alarmminus = "rbxassetid://10709752732",
		alarmplus = "rbxassetid://10709752825",
		album = "rbxassetid://10709752906",
		alertcircle = "rbxassetid://10709752996",
		alertoctagon = "rbxassetid://10709753064",
		alerttriangle = "rbxassetid://10709753149",
		aligncenter = "rbxassetid://10709753570",
		aligncenterhorizontal = "rbxassetid://10709753272",
		aligncentervertical = "rbxassetid://10709753421",
		alignendhorizontal = "rbxassetid://10709753692",
		alignendvertical = "rbxassetid://10709753808",
		alignhorizontaldistributecenter = "rbxassetid://10747779791",
		alignhorizontaldistributeend = "rbxassetid://10747784534",
		alignhorizontaldistributestart = "rbxassetid://10709754118",
		alignhorizontaljustifycenter = "rbxassetid://10709754204",
		alignhorizontaljustifyend = "rbxassetid://10709754317",
		alignhorizontaljustifystart = "rbxassetid://10709754436",
		alignhorizontalspacearound = "rbxassetid://10709754590",
		alignhorizontalspacebetween = "rbxassetid://10709754749",
		alignjustify = "rbxassetid://10709759610",
		alignleft = "rbxassetid://10709759764",
		alignright = "rbxassetid://10709759895",
		alignstarthorizontal = "rbxassetid://10709760051",
		alignstartvertical = "rbxassetid://10709760244",
		alignverticaldistributecenter = "rbxassetid://10709760351",
		alignverticaldistributeend = "rbxassetid://10709760434",
		alignverticaldistributestart = "rbxassetid://10709760612",
		alignverticaljustifycenter = "rbxassetid://10709760814",
		alignverticaljustifyend = "rbxassetid://10709761003",
		alignverticaljustifystart = "rbxassetid://10709761176",
		alignverticalspacearound = "rbxassetid://10709761324",
		alignverticalspacebetween = "rbxassetid://10709761434",
		anchor = "rbxassetid://10709761530",
		angry = "rbxassetid://10709761629",
		annoyed = "rbxassetid://10709761722",
		aperture = "rbxassetid://10709761813",
		apple = "rbxassetid://10709761889",
		archive = "rbxassetid://10709762233",
		archiverestore = "rbxassetid://10709762058",
		armchair = "rbxassetid://10709762327",
		arrowbigdown = "rbxassetid://10747796644",
		arrowbigleft = "rbxassetid://10709762574",
		arrowbigright = "rbxassetid://10709762727",
		arrowbigup = "rbxassetid://10709762879",
		arrowdown = "rbxassetid://10709767827",
		arrowdowncircle = "rbxassetid://10709763034",
		arrowdownleft = "rbxassetid://10709767656",
		arrowdownright = "rbxassetid://10709767750",
		arrowleft = "rbxassetid://10709768114",
		arrowleftcircle = "rbxassetid://10709767936",
		arrowleftright = "rbxassetid://10709768019",
		arrowright = "rbxassetid://10709768347",
		arrowrightcircle = "rbxassetid://10709768226",
		arrowup = "rbxassetid://10709768939",
		arrowupcircle = "rbxassetid://10709768432",
		arrowupdown = "rbxassetid://10709768538",
		arrowupleft = "rbxassetid://10709768661",
		arrowupright = "rbxassetid://10709768787",
		asterisk = "rbxassetid://10709769095",
		atsign = "rbxassetid://10709769286",
		award = "rbxassetid://10709769406",
		axe = "rbxassetid://10709769508",
		axis3d = "rbxassetid://10709769598",
		baby = "rbxassetid://10709769732",
		backpack = "rbxassetid://10709769841",
		baggageclaim = "rbxassetid://10709769935",
		banana = "rbxassetid://10709770005",
		banknote = "rbxassetid://10709770178",
		barchart = "rbxassetid://10709773755",
		barchart2 = "rbxassetid://10709770317",
		barchart3 = "rbxassetid://10709770431",
		barchart4 = "rbxassetid://10709770560",
		barcharthorizontal = "rbxassetid://10709773669",
		barcode = "rbxassetid://10747360675",
		baseline = "rbxassetid://10709773863",
		bath = "rbxassetid://10709773963",
		battery = "rbxassetid://10709774640",
		batterycharging = "rbxassetid://10709774068",
		batteryfull = "rbxassetid://10709774206",
		batterylow = "rbxassetid://10709774370",
		batterymedium = "rbxassetid://10709774513",
		beaker = "rbxassetid://10709774756",
		bed = "rbxassetid://10709775036",
		beddouble = "rbxassetid://10709774864",
		bedsingle = "rbxassetid://10709774968",
		beer = "rbxassetid://10709775167",
		bell = "rbxassetid://10709775704",
		bellminus = "rbxassetid://10709775241",
		belloff = "rbxassetid://10709775320",
		bellplus = "rbxassetid://10709775448",
		bellring = "rbxassetid://10709775560",
		bike = "rbxassetid://10709775894",
		binary = "rbxassetid://10709776050",
		bitcoin = "rbxassetid://10709776126",
		bluetooth = "rbxassetid://10709776655",
		bluetoothconnected = "rbxassetid://10709776240",
		bluetoothoff = "rbxassetid://10709776344",
		bluetoothsearching = "rbxassetid://10709776501",
		bold = "rbxassetid://10747813908",
		bomb = "rbxassetid://10709781460",
		bone = "rbxassetid://10709781605",
		book = "rbxassetid://10709781824",
		bookopen = "rbxassetid://10709781717",
		bookmark = "rbxassetid://10709782154",
		bookmarkminus = "rbxassetid://10709781919",
		bookmarkplus = "rbxassetid://10709782044",
		bot = "rbxassetid://10709782230",
		box = "rbxassetid://10709782497",
		boxselect = "rbxassetid://10709782342",
		boxes = "rbxassetid://10709782582",
		briefcase = "rbxassetid://10709782662",
		brush = "rbxassetid://10709782758",
		bug = "rbxassetid://10709782845",
		building = "rbxassetid://10709783051",
		building2 = "rbxassetid://10709782939",
		bus = "rbxassetid://10709783137",
		cake = "rbxassetid://10709783217",
		calculator = "rbxassetid://10709783311",
		calendar = "rbxassetid://10709789505",
		calendarcheck = "rbxassetid://10709783474",
		calendarcheck2 = "rbxassetid://10709783392",
		calendarclock = "rbxassetid://10709783577",
		calendardays = "rbxassetid://10709783673",
		calendarheart = "rbxassetid://10709783835",
		calendarminus = "rbxassetid://10709783959",
		calendaroff = "rbxassetid://10709788784",
		calendarplus = "rbxassetid://10709788937",
		calendarrange = "rbxassetid://10709789053",
		calendarsearch = "rbxassetid://10709789200",
		calendarx = "rbxassetid://10709789407",
		calendarx2 = "rbxassetid://10709789329",
		camera = "rbxassetid://10709789686",
		cameraoff = "rbxassetid://10747822677",
		car = "rbxassetid://10709789810",
		carrot = "rbxassetid://10709789960",
		cast = "rbxassetid://10709790097",
		charge = "rbxassetid://10709790202",
		check = "rbxassetid://10709790644",
		checkcircle = "rbxassetid://10709790387",
		checkcircle2 = "rbxassetid://10709790298",
		checksquare = "rbxassetid://10709790537",
		chefhat = "rbxassetid://10709790757",
		cherry = "rbxassetid://10709790875",
		chevrondown = "rbxassetid://10709790948",
		chevronfirst = "rbxassetid://10709791015",
		chevronlast = "rbxassetid://10709791130",
		chevronleft = "rbxassetid://10709791281",
		chevronright = "rbxassetid://10709791437",
		chevronup = "rbxassetid://10709791523",
		chevronsdown = "rbxassetid://10709796864",
		chevronsdownup = "rbxassetid://10709791632",
		chevronsleft = "rbxassetid://10709797151",
		chevronsleftright = "rbxassetid://10709797006",
		chevronsright = "rbxassetid://10709797382",
		chevronsrightleft = "rbxassetid://10709797274",
		chevronsup = "rbxassetid://10709797622",
		chevronsupdown = "rbxassetid://10709797508",
		chrome = "rbxassetid://10709797725",
		circle = "rbxassetid://10709798174",
		circledot = "rbxassetid://10709797837",
		circleellipsis = "rbxassetid://10709797985",
		circleslashed = "rbxassetid://10709798100",
		citrus = "rbxassetid://10709798276",
		clapperboard = "rbxassetid://10709798350",
		clipboard = "rbxassetid://10709799288",
		clipboardcheck = "rbxassetid://10709798443",
		clipboardcopy = "rbxassetid://10709798574",
		clipboardedit = "rbxassetid://10709798682",
		clipboardlist = "rbxassetid://10709798792",
		clipboardsignature = "rbxassetid://10709798890",
		clipboardtype = "rbxassetid://10709798999",
		clipboardx = "rbxassetid://10709799124",
		clock = "rbxassetid://10709805144",
		clock1 = "rbxassetid://10709799535",
		clock10 = "rbxassetid://10709799718",
		clock11 = "rbxassetid://10709799818",
		clock12 = "rbxassetid://10709799962",
		clock2 = "rbxassetid://10709803876",
		clock3 = "rbxassetid://10709803989",
		clock4 = "rbxassetid://10709804164",
		clock5 = "rbxassetid://10709804291",
		clock6 = "rbxassetid://10709804435",
		clock7 = "rbxassetid://10709804599",
		clock8 = "rbxassetid://10709804784",
		clock9 = "rbxassetid://10709804996",
		cloud = "rbxassetid://10709806740",
		cloudcog = "rbxassetid://10709805262",
		clouddrizzle = "rbxassetid://10709805371",
		cloudfog = "rbxassetid://10709805477",
		cloudhail = "rbxassetid://10709805596",
		cloudlightning = "rbxassetid://10709805727",
		cloudmoon = "rbxassetid://10709805942",
		cloudmoonrain = "rbxassetid://10709805838",
		cloudoff = "rbxassetid://10709806060",
		cloudrain = "rbxassetid://10709806277",
		cloudrainwind = "rbxassetid://10709806166",
		cloudsnow = "rbxassetid://10709806374",
		cloudsun = "rbxassetid://10709806631",
		cloudsunrain = "rbxassetid://10709806475",
		cloudy = "rbxassetid://10709806859",
		clover = "rbxassetid://10709806995",
		code = "rbxassetid://10709810463",
		code2 = "rbxassetid://10709807111",
		codepen = "rbxassetid://10709810534",
		codesandbox = "rbxassetid://10709810676",
		coffee = "rbxassetid://10709810814",
		cog = "rbxassetid://10709810948",
		coins = "rbxassetid://10709811110",
		columns = "rbxassetid://10709811261",
		command = "rbxassetid://10709811365",
		compass = "rbxassetid://10709811445",
		component = "rbxassetid://10709811595",
		conciergebell = "rbxassetid://10709811706",
		connection = "rbxassetid://10747361219",
		contact = "rbxassetid://10709811834",
		contrast = "rbxassetid://10709811939",
		cookie = "rbxassetid://10709812067",
		copy = "rbxassetid://10709812159",
		copyleft = "rbxassetid://10709812251",
		copyright = "rbxassetid://10709812311",
		cornerdownleft = "rbxassetid://10709812396",
		cornerdownright = "rbxassetid://10709812485",
		cornerleftdown = "rbxassetid://10709812632",
		cornerleftup = "rbxassetid://10709812784",
		cornerrightdown = "rbxassetid://10709812939",
		cornerrightup = "rbxassetid://10709813094",
		cornerupleft = "rbxassetid://10709813185",
		cornerupright = "rbxassetid://10709813281",
		cpu = "rbxassetid://10709813383",
		croissant = "rbxassetid://10709818125",
		crop = "rbxassetid://10709818245",
		cross = "rbxassetid://10709818399",
		crosshair = "rbxassetid://10709818534",
		crown = "rbxassetid://10709818626",
		cupsoda = "rbxassetid://10709818763",
		curlybraces = "rbxassetid://10709818847",
		currency = "rbxassetid://10709818931",
		database = "rbxassetid://10709818996",
		delete = "rbxassetid://10709819059",
		diamond = "rbxassetid://10709819149",
		dice1 = "rbxassetid://10709819266",
		dice2 = "rbxassetid://10709819361",
		dice3 = "rbxassetid://10709819508",
		dice4 = "rbxassetid://10709819670",
		dice5 = "rbxassetid://10709819801",
		dice6 = "rbxassetid://10709819896",
		dices = "rbxassetid://10723343321",
		diff = "rbxassetid://10723343416",
		disc = "rbxassetid://10723343537",
		divide = "rbxassetid://10723343805",
		dividecircle = "rbxassetid://10723343636",
		dividesquare = "rbxassetid://10723343737",
		dollarsign = "rbxassetid://10723343958",
		download = "rbxassetid://10723344270",
		downloadcloud = "rbxassetid://10723344088",
		droplet = "rbxassetid://10723344432",
		droplets = "rbxassetid://10734883356",
		drumstick = "rbxassetid://10723344737",
		edit = "rbxassetid://10734883598",
		edit2 = "rbxassetid://10723344885",
		edit3 = "rbxassetid://10723345088",
		egg = "rbxassetid://10723345518",
		eggfried = "rbxassetid://10723345347",
		electricity = "rbxassetid://10723345749",
		electricityoff = "rbxassetid://10723345643",
		equal = "rbxassetid://10723345990",
		equalnot = "rbxassetid://10723345866",
		eraser = "rbxassetid://10723346158",
		euro = "rbxassetid://10723346372",
		expand = "rbxassetid://10723346553",
		externallink = "rbxassetid://10723346684",
		eye = "rbxassetid://10723346959",
		eyeoff = "rbxassetid://10723346871",
		factory = "rbxassetid://10723347051",
		fan = "rbxassetid://10723354359",
		fastforward = "rbxassetid://10723354521",
		feather = "rbxassetid://10723354671",
		figma = "rbxassetid://10723354801",
		file = "rbxassetid://10723374641",
		filearchive = "rbxassetid://10723354921",
		fileaudio = "rbxassetid://10723355148",
		fileaudio2 = "rbxassetid://10723355026",
		fileaxis3d = "rbxassetid://10723355272",
		filebadge = "rbxassetid://10723355622",
		filebadge2 = "rbxassetid://10723355451",
		filebarchart = "rbxassetid://10723355887",
		filebarchart2 = "rbxassetid://10723355746",
		filebox = "rbxassetid://10723355989",
		filecheck = "rbxassetid://10723356210",
		filecheck2 = "rbxassetid://10723356100",
		fileclock = "rbxassetid://10723356329",
		filecode = "rbxassetid://10723356507",
		filecog = "rbxassetid://10723356830",
		filecog2 = "rbxassetid://10723356676",
		filediff = "rbxassetid://10723357039",
		filedigit = "rbxassetid://10723357151",
		filedown = "rbxassetid://10723357322",
		fileedit = "rbxassetid://10723357495",
		fileheart = "rbxassetid://10723357637",
		fileimage = "rbxassetid://10723357790",
		fileinput = "rbxassetid://10723357933",
		filejson = "rbxassetid://10723364435",
		filejson2 = "rbxassetid://10723364361",
		filekey = "rbxassetid://10723364605",
		filekey2 = "rbxassetid://10723364515",
		filelinechart = "rbxassetid://10723364725",
		filelock = "rbxassetid://10723364957",
		filelock2 = "rbxassetid://10723364861",
		fileminus = "rbxassetid://10723365254",
		fileminus2 = "rbxassetid://10723365086",
		fileoutput = "rbxassetid://10723365457",
		filepiechart = "rbxassetid://10723365598",
		fileplus = "rbxassetid://10723365877",
		fileplus2 = "rbxassetid://10723365766",
		filequestion = "rbxassetid://10723365987",
		filescan = "rbxassetid://10723366167",
		filesearch = "rbxassetid://10723366550",
		filesearch2 = "rbxassetid://10723366340",
		filesignature = "rbxassetid://10723366741",
		filespreadsheet = "rbxassetid://10723366962",
		filesymlink = "rbxassetid://10723367098",
		fileterminal = "rbxassetid://10723367244",
		filetext = "rbxassetid://10723367380",
		filetype = "rbxassetid://10723367606",
		filetype2 = "rbxassetid://10723367509",
		fileup = "rbxassetid://10723367734",
		filevideo = "rbxassetid://10723373884",
		filevideo2 = "rbxassetid://10723367834",
		filevolume = "rbxassetid://10723374172",
		filevolume2 = "rbxassetid://10723374030",
		filewarning = "rbxassetid://10723374276",
		filex = "rbxassetid://10723374544",
		filex2 = "rbxassetid://10723374378",
		files = "rbxassetid://10723374759",
		film = "rbxassetid://10723374981",
		filter = "rbxassetid://10723375128",
		fingerprint = "rbxassetid://10723375250",
		flag = "rbxassetid://10723375890",
		flagoff = "rbxassetid://10723375443",
		flagtriangleleft = "rbxassetid://10723375608",
		flagtriangleright = "rbxassetid://10723375727",
		flame = "rbxassetid://10723376114",
		flashlight = "rbxassetid://10723376471",
		flashlightoff = "rbxassetid://10723376365",
		flaskconical = "rbxassetid://10734883986",
		flaskround = "rbxassetid://10723376614",
		fliphorizontal = "rbxassetid://10723376884",
		fliphorizontal2 = "rbxassetid://10723376745",
		flipvertical = "rbxassetid://10723377138",
		flipvertical2 = "rbxassetid://10723377026",
		flower = "rbxassetid://10747830374",
		flower2 = "rbxassetid://10723377305",
		focus = "rbxassetid://10723377537",
		folder = "rbxassetid://10723387563",
		folderarchive = "rbxassetid://10723384478",
		foldercheck = "rbxassetid://10723384605",
		folderclock = "rbxassetid://10723384731",
		folderclosed = "rbxassetid://10723384893",
		foldercog = "rbxassetid://10723385213",
		foldercog2 = "rbxassetid://10723385036",
		folderdown = "rbxassetid://10723385338",
		folderedit = "rbxassetid://10723385445",
		folderheart = "rbxassetid://10723385545",
		folderinput = "rbxassetid://10723385721",
		folderkey = "rbxassetid://10723385848",
		folderlock = "rbxassetid://10723386005",
		folderminus = "rbxassetid://10723386127",
		folderopen = "rbxassetid://10723386277",
		folderoutput = "rbxassetid://10723386386",
		folderplus = "rbxassetid://10723386531",
		foldersearch = "rbxassetid://10723386787",
		foldersearch2 = "rbxassetid://10723386674",
		foldersymlink = "rbxassetid://10723386930",
		foldertree = "rbxassetid://10723387085",
		folderup = "rbxassetid://10723387265",
		folderx = "rbxassetid://10723387448",
		folders = "rbxassetid://10723387721",
		forminput = "rbxassetid://10723387841",
		forward = "rbxassetid://10723388016",
		frame = "rbxassetid://10723394389",
		framer = "rbxassetid://10723394565",
		frown = "rbxassetid://10723394681",
		fuel = "rbxassetid://10723394846",
		functionsquare = "rbxassetid://10723395041",
		gamepad = "rbxassetid://10723395457",
		gamepad2 = "rbxassetid://10723395215",
		gauge = "rbxassetid://10723395708",
		gavel = "rbxassetid://10723395896",
		gem = "rbxassetid://10723396000",
		ghost = "rbxassetid://10723396107",
		gift = "rbxassetid://10723396402",
		giftcard = "rbxassetid://10723396225",
		gitbranch = "rbxassetid://10723396676",
		gitbranchplus = "rbxassetid://10723396542",
		gitcommit = "rbxassetid://10723396812",
		gitcompare = "rbxassetid://10723396954",
		gitfork = "rbxassetid://10723397049",
		gitmerge = "rbxassetid://10723397165",
		gitpullrequest = "rbxassetid://10723397431",
		gitpullrequestclosed = "rbxassetid://10723397268",
		gitpullrequestdraft = "rbxassetid://10734884302",
		glass = "rbxassetid://10723397788",
		glass2 = "rbxassetid://10723397529",
		glasswater = "rbxassetid://10723397678",
		glasses = "rbxassetid://10723397895",
		globe = "rbxassetid://10723404337",
		globe2 = "rbxassetid://10723398002",
		grab = "rbxassetid://10723404472",
		graduationcap = "rbxassetid://10723404691",
		grape = "rbxassetid://10723404822",
		grid = "rbxassetid://10723404936",
		griphorizontal = "rbxassetid://10723405089",
		gripvertical = "rbxassetid://10723405236",
		hammer = "rbxassetid://10723405360",
		hand = "rbxassetid://10723405649",
		handmetal = "rbxassetid://10723405508",
		harddrive = "rbxassetid://10723405749",
		hardhat = "rbxassetid://10723405859",
		hash = "rbxassetid://10723405975",
		haze = "rbxassetid://10723406078",
		headphones = "rbxassetid://10723406165",
		heart = "rbxassetid://10723406885",
		heartcrack = "rbxassetid://10723406299",
		hearthandshake = "rbxassetid://10723406480",
		heartoff = "rbxassetid://10723406662",
		heartpulse = "rbxassetid://10723406795",
		helpcircle = "rbxassetid://10723406988",
		hexagon = "rbxassetid://10723407092",
		highlighter = "rbxassetid://10723407192",
		history = "rbxassetid://10723407335",
		home = "rbxassetid://10723407389",
		hourglass = "rbxassetid://10723407498",
		icecream = "rbxassetid://10723414308",
		image = "rbxassetid://10723415040",
		imageminus = "rbxassetid://10723414487",
		imageoff = "rbxassetid://10723414677",
		imageplus = "rbxassetid://10723414827",
		import = "rbxassetid://10723415205",
		inbox = "rbxassetid://10723415335",
		indent = "rbxassetid://10723415494",
		indianrupee = "rbxassetid://10723415642",
		infinity = "rbxassetid://10723415766",
		info = "rbxassetid://10723415903",
		inspect = "rbxassetid://10723416057",
		italic = "rbxassetid://10723416195",
		japaneseyen = "rbxassetid://10723416363",
		joystick = "rbxassetid://10723416527",
		key = "rbxassetid://10723416652",
		keyboard = "rbxassetid://10723416765",
		lamp = "rbxassetid://10723417513",
		lampceiling = "rbxassetid://10723416922",
		lampdesk = "rbxassetid://10723417016",
		lampfloor = "rbxassetid://10723417131",
		lampwalldown = "rbxassetid://10723417240",
		lampwallup = "rbxassetid://10723417356",
		landmark = "rbxassetid://10723417608",
		languages = "rbxassetid://10723417703",
		laptop = "rbxassetid://10723423881",
		laptop2 = "rbxassetid://10723417797",
		lasso = "rbxassetid://10723424235",
		lassoselect = "rbxassetid://10723424058",
		laugh = "rbxassetid://10723424372",
		layers = "rbxassetid://10723424505",
		layout = "rbxassetid://10723425376",
		layoutdashboard = "rbxassetid://10723424646",
		layoutgrid = "rbxassetid://10723424838",
		layoutlist = "rbxassetid://10723424963",
		layouttemplate = "rbxassetid://10723425187",
		leaf = "rbxassetid://10723425539",
		library = "rbxassetid://10723425615",
		lifebuoy = "rbxassetid://10723425685",
		lightbulb = "rbxassetid://10723425852",
		lightbulboff = "rbxassetid://10723425762",
		linechart = "rbxassetid://10723426393",
		link = "rbxassetid://10723426722",
		link2 = "rbxassetid://10723426595",
		link2off = "rbxassetid://10723426513",
		list = "rbxassetid://10723433811",
		listchecks = "rbxassetid://10734884548",
		listend = "rbxassetid://10723426886",
		listminus = "rbxassetid://10723426986",
		listmusic = "rbxassetid://10723427081",
		listordered = "rbxassetid://10723427199",
		listplus = "rbxassetid://10723427334",
		liststart = "rbxassetid://10723427494",
		listvideo = "rbxassetid://10723427619",
		listx = "rbxassetid://10723433655",
		loader = "rbxassetid://10723434070",
		loader2 = "rbxassetid://10723433935",
		locate = "rbxassetid://10723434557",
		locatefixed = "rbxassetid://10723434236",
		locateoff = "rbxassetid://10723434379",
		lock = "rbxassetid://10723434711",
		login = "rbxassetid://10723434830",
		logout = "rbxassetid://10723434906",
		luggage = "rbxassetid://10723434993",
		magnet = "rbxassetid://10723435069",
		mail = "rbxassetid://10734885430",
		mailcheck = "rbxassetid://10723435182",
		mailminus = "rbxassetid://10723435261",
		mailopen = "rbxassetid://10723435342",
		mailplus = "rbxassetid://10723435443",
		mailquestion = "rbxassetid://10723435515",
		mailsearch = "rbxassetid://10734884739",
		mailwarning = "rbxassetid://10734885015",
		mailx = "rbxassetid://10734885247",
		mails = "rbxassetid://10734885614",
		map = "rbxassetid://10734886202",
		mappin = "rbxassetid://10734886004",
		mappinoff = "rbxassetid://10734885803",
		maximize = "rbxassetid://10734886735",
		maximize2 = "rbxassetid://10734886496",
		medal = "rbxassetid://10734887072",
		megaphone = "rbxassetid://10734887454",
		megaphoneoff = "rbxassetid://10734887311",
		meh = "rbxassetid://10734887603",
		menu = "rbxassetid://10734887784",
		messagecircle = "rbxassetid://10734888000",
		messagesquare = "rbxassetid://10734888228",
		mic = "rbxassetid://10734888864",
		mic2 = "rbxassetid://10734888430",
		micoff = "rbxassetid://10734888646",
		microscope = "rbxassetid://10734889106",
		microwave = "rbxassetid://10734895076",
		milestone = "rbxassetid://10734895310",
		minimize = "rbxassetid://10734895698",
		minimize2 = "rbxassetid://10734895530",
		minus = "rbxassetid://10734896206",
		minuscircle = "rbxassetid://10734895856",
		minussquare = "rbxassetid://10734896029",
		monitor = "rbxassetid://10734896881",
		monitoroff = "rbxassetid://10734896360",
		monitorspeaker = "rbxassetid://10734896512",
		moon = "rbxassetid://10734897102",
		morehorizontal = "rbxassetid://10734897250",
		morevertical = "rbxassetid://10734897387",
		mountain = "rbxassetid://10734897956",
		mountainsnow = "rbxassetid://10734897665",
		mouse = "rbxassetid://10734898592",
		mousepointer = "rbxassetid://10734898476",
		mousepointer2 = "rbxassetid://10734898194",
		mousepointerclick = "rbxassetid://10734898355",
		move = "rbxassetid://10734900011",
		move3d = "rbxassetid://10734898756",
		movediagonal = "rbxassetid://10734899164",
		movediagonal2 = "rbxassetid://10734898934",
		movehorizontal = "rbxassetid://10734899414",
		movevertical = "rbxassetid://10734899821",
		music = "rbxassetid://10734905958",
		music2 = "rbxassetid://10734900215",
		music3 = "rbxassetid://10734905665",
		music4 = "rbxassetid://10734905823",
		navigation = "rbxassetid://10734906744",
		navigation2 = "rbxassetid://10734906332",
		navigation2off = "rbxassetid://10734906144",
		navigationoff = "rbxassetid://10734906580",
		network = "rbxassetid://10734906975",
		newspaper = "rbxassetid://10734907168",
		octagon = "rbxassetid://10734907361",
		option = "rbxassetid://10734907649",
		outdent = "rbxassetid://10734907933",
		package = "rbxassetid://10734909540",
		package2 = "rbxassetid://10734908151",
		packagecheck = "rbxassetid://10734908384",
		packageminus = "rbxassetid://10734908626",
		packageopen = "rbxassetid://10734908793",
		packageplus = "rbxassetid://10734909016",
		packagesearch = "rbxassetid://10734909196",
		packagex = "rbxassetid://10734909375",
		paintbucket = "rbxassetid://10734909847",
		paintbrush = "rbxassetid://10734910187",
		paintbrush2 = "rbxassetid://10734910030",
		palette = "rbxassetid://10734910430",
		palmtree = "rbxassetid://10734910680",
		paperclip = "rbxassetid://10734910927",
		partypopper = "rbxassetid://10734918735",
		pause = "rbxassetid://10734919336",
		pausecircle = "rbxassetid://10735024209",
		pauseoctagon = "rbxassetid://10734919143",
		pentool = "rbxassetid://10734919503",
		pencil = "rbxassetid://10734919691",
		percent = "rbxassetid://10734919919",
		personstanding = "rbxassetid://10734920149",
		phone = "rbxassetid://10734921524",
		phonecall = "rbxassetid://10734920305",
		phoneforwarded = "rbxassetid://10734920508",
		phoneincoming = "rbxassetid://10734920694",
		phonemissed = "rbxassetid://10734920845",
		phoneoff = "rbxassetid://10734921077",
		phoneoutgoing = "rbxassetid://10734921288",
		piechart = "rbxassetid://10734921727",
		piggybank = "rbxassetid://10734921935",
		pin = "rbxassetid://10734922324",
		pinoff = "rbxassetid://10734922180",
		pipette = "rbxassetid://10734922497",
		pizza = "rbxassetid://10734922774",
		plane = "rbxassetid://10734922971",
		play = "rbxassetid://10734923549",
		playcircle = "rbxassetid://10734923214",
		plus = "rbxassetid://10734924532",
		pluscircle = "rbxassetid://10734923868",
		plussquare = "rbxassetid://10734924219",
		podcast = "rbxassetid://10734929553",
		pointer = "rbxassetid://10734929723",
		poundsterling = "rbxassetid://10734929981",
		power = "rbxassetid://10734930466",
		poweroff = "rbxassetid://10734930257",
		printer = "rbxassetid://10734930632",
		puzzle = "rbxassetid://10734930886",
		quote = "rbxassetid://10734931234",
		radio = "rbxassetid://10734931596",
		radioreceiver = "rbxassetid://10734931402",
		rectanglehorizontal = "rbxassetid://10734931777",
		rectanglevertical = "rbxassetid://10734932081",
		recycle = "rbxassetid://10734932295",
		redo = "rbxassetid://10734932822",
		redo2 = "rbxassetid://10734932586",
		refreshccw = "rbxassetid://10734933056",
		refreshcw = "rbxassetid://10734933222",
		refrigerator = "rbxassetid://10734933465",
		regex = "rbxassetid://10734933655",
		["repeat"] = "rbxassetid://10734933966",
		repeat1 = "rbxassetid://10734933826",
		reply = "rbxassetid://10734934252",
		replyall = "rbxassetid://10734934132",
		rewind = "rbxassetid://10734934347",
		rocket = "rbxassetid://10734934585",
		rockingchair = "rbxassetid://10734939942",
		rotate3d = "rbxassetid://10734940107",
		rotateccw = "rbxassetid://10734940376",
		rotatecw = "rbxassetid://10734940654",
		rss = "rbxassetid://10734940825",
		ruler = "rbxassetid://10734941018",
		russianruble = "rbxassetid://10734941199",
		sailboat = "rbxassetid://10734941354",
		save = "rbxassetid://10734941499",
		scale = "rbxassetid://10734941912",
		scale3d = "rbxassetid://10734941739",
		scaling = "rbxassetid://10734942072",
		scan = "rbxassetid://10734942565",
		scanface = "rbxassetid://10734942198",
		scanline = "rbxassetid://10734942351",
		scissors = "rbxassetid://10734942778",
		screenshare = "rbxassetid://10734943193",
		screenshareoff = "rbxassetid://10734942967",
		scroll = "rbxassetid://10734943448",
		search = "rbxassetid://10734943674",
		send = "rbxassetid://10734943902",
		separatorhorizontal = "rbxassetid://10734944115",
		separatorvertical = "rbxassetid://10734944326",
		server = "rbxassetid://10734949856",
		servercog = "rbxassetid://10734944444",
		servercrash = "rbxassetid://10734944554",
		serveroff = "rbxassetid://10734944668",
		settings = "rbxassetid://10734950309",
		settings2 = "rbxassetid://10734950020",
		share = "rbxassetid://10734950813",
		share2 = "rbxassetid://10734950553",
		sheet = "rbxassetid://10734951038",
		shield = "rbxassetid://10734951847",
		shieldalert = "rbxassetid://10734951173",
		shieldcheck = "rbxassetid://10734951367",
		shieldclose = "rbxassetid://10734951535",
		shieldoff = "rbxassetid://10734951684",
		shirt = "rbxassetid://10734952036",
		shoppingbag = "rbxassetid://10734952273",
		shoppingcart = "rbxassetid://10734952479",
		shovel = "rbxassetid://10734952773",
		showerhead = "rbxassetid://10734952942",
		shrink = "rbxassetid://10734953073",
		shrub = "rbxassetid://10734953241",
		shuffle = "rbxassetid://10734953451",
		sidebar = "rbxassetid://10734954301",
		sidebarclose = "rbxassetid://10734953715",
		sidebaropen = "rbxassetid://10734954000",
		sigma = "rbxassetid://10734954538",
		signal = "rbxassetid://10734961133",
		signalhigh = "rbxassetid://10734954807",
		signallow = "rbxassetid://10734955080",
		signalmedium = "rbxassetid://10734955336",
		signalzero = "rbxassetid://10734960878",
		siren = "rbxassetid://10734961284",
		skipback = "rbxassetid://10734961526",
		skipforward = "rbxassetid://10734961809",
		skull = "rbxassetid://10734962068",
		slack = "rbxassetid://10734962339",
		slash = "rbxassetid://10734962600",
		slice = "rbxassetid://10734963024",
		sliders = "rbxassetid://10734963400",
		slidershorizontal = "rbxassetid://10734963191",
		smartphone = "rbxassetid://10734963940",
		smartphonecharging = "rbxassetid://10734963671",
		smile = "rbxassetid://10734964441",
		smileplus = "rbxassetid://10734964188",
		snowflake = "rbxassetid://10734964600",
		sofa = "rbxassetid://10734964852",
		sortasc = "rbxassetid://10734965115",
		sortdesc = "rbxassetid://10734965287",
		speaker = "rbxassetid://10734965419",
		sprout = "rbxassetid://10734965572",
		square = "rbxassetid://10734965702",
		star = "rbxassetid://10734966248",
		starhalf = "rbxassetid://10734965897",
		staroff = "rbxassetid://10734966097",
		stethoscope = "rbxassetid://10734966384",
		sticker = "rbxassetid://10734972234",
		stickynote = "rbxassetid://10734972463",
		stopcircle = "rbxassetid://10734972621",
		stretchhorizontal = "rbxassetid://10734972862",
		stretchvertical = "rbxassetid://10734973130",
		strikethrough = "rbxassetid://10734973290",
		subscript = "rbxassetid://10734973457",
		sun = "rbxassetid://10734974297",
		sundim = "rbxassetid://10734973645",
		sunmedium = "rbxassetid://10734973778",
		sunmoon = "rbxassetid://10734973999",
		sunsnow = "rbxassetid://10734974130",
		sunrise = "rbxassetid://10734974522",
		sunset = "rbxassetid://10734974689",
		superscript = "rbxassetid://10734974850",
		swissfranc = "rbxassetid://10734975024",
		switchcamera = "rbxassetid://10734975214",
		sword = "rbxassetid://10734975486",
		swords = "rbxassetid://10734975692",
		syringe = "rbxassetid://10734975932",
		table = "rbxassetid://10734976230",
		table2 = "rbxassetid://10734976097",
		tablet = "rbxassetid://10734976394",
		tag = "rbxassetid://10734976528",
		tags = "rbxassetid://10734976739",
		target = "rbxassetid://10734977012",
		tent = "rbxassetid://10734981750",
		terminal = "rbxassetid://10734982144",
		terminalsquare = "rbxassetid://10734981995",
		textcursor = "rbxassetid://10734982395",
		textcursorinput = "rbxassetid://10734982297",
		thermometer = "rbxassetid://10734983134",
		thermometersnowflake = "rbxassetid://10734982571",
		thermometersun = "rbxassetid://10734982771",
		thumbsdown = "rbxassetid://10734983359",
		thumbsup = "rbxassetid://10734983629",
		ticket = "rbxassetid://10734983868",
		timer = "rbxassetid://10734984606",
		timeroff = "rbxassetid://10734984138",
		timerreset = "rbxassetid://10734984355",
		toggleleft = "rbxassetid://10734984834",
		toggleright = "rbxassetid://10734985040",
		tornado = "rbxassetid://10734985247",
		toybrick = "rbxassetid://10747361919",
		train = "rbxassetid://10747362105",
		trash = "rbxassetid://10747362393",
		trash2 = "rbxassetid://10747362241",
		treedeciduous = "rbxassetid://10747362534",
		treepine = "rbxassetid://10747362748",
		trees = "rbxassetid://10747363016",
		trendingdown = "rbxassetid://10747363205",
		trendingup = "rbxassetid://10747363465",
		triangle = "rbxassetid://10747363621",
		trophy = "rbxassetid://10747363809",
		truck = "rbxassetid://10747364031",
		tv = "rbxassetid://10747364593",
		tv2 = "rbxassetid://10747364302",
		type = "rbxassetid://10747364761",
		umbrella = "rbxassetid://10747364971",
		underline = "rbxassetid://10747365191",
		undo = "rbxassetid://10747365484",
		undo2 = "rbxassetid://10747365359",
		unlink = "rbxassetid://10747365771",
		unlink2 = "rbxassetid://10747397871",
		unlock = "rbxassetid://10747366027",
		upload = "rbxassetid://10747366434",
		uploadcloud = "rbxassetid://10747366266",
		usb = "rbxassetid://10747366606",
		user = "rbxassetid://10747373176",
		usercheck = "rbxassetid://10747371901",
		usercog = "rbxassetid://10747372167",
		userminus = "rbxassetid://10747372346",
		userplus = "rbxassetid://10747372702",
		userx = "rbxassetid://10747372992",
		users = "rbxassetid://10747373426",
		utensils = "rbxassetid://10747373821",
		utensilscrossed = "rbxassetid://10747373629",
		venetianmask = "rbxassetid://10747374003",
		verified = "rbxassetid://10747374131",
		vibrate = "rbxassetid://10747374489",
		vibrateoff = "rbxassetid://10747374269",
		video = "rbxassetid://10747374938",
		videooff = "rbxassetid://10747374721",
		view = "rbxassetid://10747375132",
		voicemail = "rbxassetid://10747375281",
		volume = "rbxassetid://10747376008",
		volume1 = "rbxassetid://10747375450",
		volume2 = "rbxassetid://10747375679",
		volumex = "rbxassetid://10747375880",
		wallet = "rbxassetid://10747376205",
		wand = "rbxassetid://10747376565",
		wand2 = "rbxassetid://10747376349",
		watch = "rbxassetid://10747376722",
		waves = "rbxassetid://10747376931",
		webcam = "rbxassetid://10747381992",
		wifi = "rbxassetid://10747382504",
		wifioff = "rbxassetid://10747382268",
		wind = "rbxassetid://10747382750",
		wraptext = "rbxassetid://10747383065",
		wrench = "rbxassetid://10747383470",
		x = "rbxassetid://10747384394",
		xcircle = "rbxassetid://10747383819",
		xoctagon = "rbxassetid://10747384037",
		xsquare = "rbxassetid://10747384217",
		zoomin = "rbxassetid://10747384552",
		zoomout = "rbxassetid://10747384679"
	}
end

local t1 = {
	Themes = {
		Wicked = {
		    ["Color Hub 1"] = ColorSequence.new({
		        ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 0, 65)),
  		      ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 0, 100)),
  		      ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 0, 65))
		    }),
		    ["Color Hub 2"] = Color3.fromRGB(20, 10, 35),
		    ["Color Stroke"] = Color3.fromRGB(100, 0, 255),
		    ["Color Theme"] = Color3.fromRGB(100, 0, 255),
		    ["Color Text"] = Color3.fromRGB(255, 255, 255),
		    ["Color Dark Text"] = Color3.fromRGB(195, 175, 230),
 		   ["Color Toggle On"] = Color3.fromRGB(40, 50, 45),
 		   ["Color Toggle Off"] = Color3.fromRGB(40, 50, 45)
		},
		Darker = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 25)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(32.5, 32.5, 32.5)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 25))
			}),
			["Color Hub 2"] = Color3.fromRGB(30, 30, 30),
			["Color Stroke"] = Color3.fromRGB(40, 40, 40),
			["Color Theme"] = Color3.fromRGB(88, 101, 242),
			["Color Text"] = Color3.fromRGB(243, 243, 243),
			["Color Dark Text"] = Color3.fromRGB(180, 180, 180)
		},
		Dark = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 40)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(47.5, 47.5, 47.5)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 40, 40))
			}),
			["Color Hub 2"] = Color3.fromRGB(45, 45, 45),
			["Color Stroke"] = Color3.fromRGB(65, 65, 65),
			["Color Theme"] = Color3.fromRGB(65, 150, 255),
			["Color Text"] = Color3.fromRGB(245, 245, 245),
			["Color Dark Text"] = Color3.fromRGB(190, 190, 190)
		},
		Purple = {
			["Color Hub 1"] = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(27.5, 25, 30)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(32.5, 32.5, 32.5)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(27.5, 25, 30))
			}),
			["Color Hub 2"] = Color3.fromRGB(30, 30, 30),
			["Color Stroke"] = Color3.fromRGB(40, 40, 40),
			["Color Theme"] = Color3.fromRGB(150, 0, 255),
			["Color Text"] = Color3.fromRGB(240, 240, 240),
			["Color Dark Text"] = Color3.fromRGB(180, 180, 180)
		}
	},
	Info = {
		Version = "1.1.0"
	},
	Save = {
		UISize = {
			600,
			420
		},
		TabSize = 180,
		Theme = "Wicked"
	},
	Settings = {},
	Connection = {},
	Instances = {},
	Elements = {},
	Options = {},
	Flags = {},
	Tabs = {},
	Icons = v10()
}
local ViewportSize = workspace.CurrentCamera.ViewportSize
local u13 = ViewportSize.Y / 450
local Settings = t1.Settings
local Flags = t1.Flags

local function v16(p1, p2)
	table.insert(t1.Instances, {
		Instance = p1,
		Type = p2
	})

	return p1
end
local function v17(p3, p4)
	if p4 then
		table.foreach(p4, function(p5, p6)
			p6.Parent = p3
		end)
	end

	return p3
end
local function v18(p7, p8)
	if p8 then
		table.foreach(p8, function(p9, p10)
			p7[p9] = p10
		end)
	end

	return p7
end
local function v19(...)
	local t2 = { ... }

	if type(t2) ~= "table" then
		return
	end

	local instance = Instance.new(t2[1])

	if type(t2[2]) == "table" then
		v18(instance, t2[2])
		v17(instance, t2[3])

		local v22 = t2[3] or {}
	elseif typeof(t2[2]) == "Instance" then
		instance.Parent = t2[2]
		v18(instance, t2[3])
		v17(instance, t2[4])

		local v23 = t2[4] or {}
	end

	return instance
end

pcall(function(p11)
	if readfile and isfile and isfile(p11) then
		local data = HttpService:JSONDecode(readfile(p11))

		if type(data) == "table" then
			if rawget(data, "UISize") then
				t1.Save.UISize = data.UISize
			end

			if rawget(data, "TabSize") then
				t1.Save.TabSize = data.TabSize
			end

			if rawget(data, "Theme") and VerifyTheme(data.Theme) then
				t1.Save.Theme = data.Theme
			end
		end
	end
end, "redz library V5.json")

local t3 = {
	InsertCallback = function(p12, p13, p14)
		if type(p14) == "function" then
			table.insert(p13, p14)
		end

		return p14
	end,
	FireCallback = function(p15, p16, ...)
		for _, v in ipairs(p16) do
			if type(v) == "function" then
				task.spawn(v, ...)
			end
		end
	end,
	ToggleVisible = function(p17, p18, p19)
		p18.Visible = p19 ~= nil and p19 or p18.Visible
	end,
	ToggleParent = function(p20, p21, p22)
		if Bool == nil then
			p21.Parent = not p21.Parent and p22
		else
			p21.Parent = Bool
		end
	end,
	GetConnectionFunctions = function(p23, p24, p25)
		return {
			Function = p25,
			Connected = true,
			Disconnect = function(p26)
				if p26.Connected then
					table.remove(p24, table.find(p24, p26.Function))
					p26.Connected = false
				end
			end,
			Fire = function(p27, ...)
				if p27.Connected then
					task.spawn(p27.Function, ...)
				end
			end
		}
	end,
	GetCallback = function(p28, p29, p30)
		local Callback = p29[p30] or p29.Callback or function()
		end

		if type(Callback) == "table" then
			return { function(p31)
				Callback[1][Callback[2]] = p31
			end }
		end

		return { Callback }
	end
}
local t4 = {}
local Connection = t1.Connection

local function v31(p32)
	if type(p32) ~= "table" then
		return
	end

	for _, v in ipairs(p32) do
		local t5 = {}
		local t6 = {}

		Connection[v] = t6
		t4[v] = t5
		t6.Name = v
		t6.Connect = function(p33, p34)
			if type(p34) == "function" then
				table.insert(t5, p34)

				return t3:GetConnectionFunctions(t5, p34)
			end
		end
		t6.Once = function(p35, p36)
			if type(p36) ~= "function" then
				return
			end

			local connectionFunctions

			connectionFunctions = t3:GetConnectionFunctions(t5, function(...)
				task.spawn(p36, ...)
				connectionFunctions:Disconnect()
			end)

			return connectionFunctions
		end
	end
end

Connection.FireConnection = function(p37, p38, ...)
	local v37 = type(p38) == "string" and t4[p38] or t4[p38.Name]

	for _, v in pairs(v37) do
		task.spawn(v, ...)
	end
end
v31({
	"FlagsChanged",
	"ThemeChanged",
	"FileSaved",
	"ThemeChanging",
	"OptionAdded"
})

local function v40(p39)
	return type(p39) == "string" and Flags[p39] ~= nil
end
local function v41(p40)
	return type(p40) == "string" and Flags[p40]
end
local function v42(p41, p42)
	if p41 then
		if p42 == Flags[p41] then
			if type(p42) == "table" then
				Flags[p41] = p42
				Connection:FireConnection("FlagsChanged", p41, p42)
			end
		else
			Flags[p41] = p42
			Connection:FireConnection("FlagsChanged", p41, p42)

			return
		end
	end
end

local u43

Connection.FlagsChanged:Connect(function()
	local ScriptFile = Settings.ScriptFile

	if not u43 and ScriptFile and writefile then
		u43 = true
		task.wait(0.1)
		u43 = false

		local ok, result = pcall(function()
			return HttpService:JSONEncode(Flags)
		end)

		if ok and pcall(writefile, ScriptFile, result) then
			Connection:FireConnection("FileSaved", "Script-Flags", ScriptFile, result)
		end
	end
end)

local ScreenGui = v19("ScreenGui", CoreGui, {
	Name = "redz Library V5"
}, { v19("UIScale", {
	Scale = u13,
	Name = "Scale"
}) })
local ScreenGuiName = CoreGui:FindFirstChild(ScreenGui.Name)

if ScreenGuiName and ScreenGuiName ~= ScreenGui then
	ScreenGuiName:Destroy()
end

local function v49(p43)
	if type(p43) == "function" then
		return p43()
	end

	return p43
end
local function v50(p44, p45)
	p44.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
				task.wait()
			end
		elseif input.UserInputType == Enum.UserInputType.Touch then
			while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
				task.wait()
			end
		end

		p45()
	end)
end
local function v51(p46)
	local Instance_ = p46[1] or p46.Instance
	local Prop = p46[2] or p46.Prop
	local NewVal = p46[3] or p46.NewVal
	local Time = p46[4] or p46.Time or 0.5
	local wait = p46[5] or p46.wait or false
	local tween = TweenService:Create(Instance_, TweenInfo.new(Time, Enum.EasingStyle.Quint), {
		[Prop] = NewVal
	})

	tween:Play()

	if wait then
		tween.Completed:Wait()
	end

	return tween
end
local function v58(p47)
	task.spawn(function()
		v18(p47, {
			Active = true,
			AutoButtonColor = false
		})

		local Position
		local Position2
		local u61

		local function v62(p48)
			local v63 = p48.Position - Position

			v51({
				p47,
				"Position",
				UDim2.new(Position2.X.Scale, Position2.X.Offset + v63.X / u13, Position2.Y.Scale, Position2.Y.Offset + v63.Y / u13),
				0.35
			})
		end

		p47.MouseButton1Down:Connect(function()
			u61 = true
		end)
		p47.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Position2 = p47.Position
				Position = input.Position

				while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					RunService.Heartbeat:Wait()

					if u61 then
						v62(input)
					end
				end

				u61 = false
			end
		end)
	end)

	return p47
end
local function v64(p49)
	for k in pairs(t1.Themes) do
		if k == p49 then
			return true
		end
	end
end
local function v66(p50, p51)
	if writefile then
		local json = HttpService:JSONEncode(p51)

		writefile(p50, json)
	end
end

local u68 = t1.Themes[t1.Save.Theme]

local function v69(p52, p53)
	t1.Elements[p52] = p53
end
local function v70(p54, p55, p56, ...)
	return (t1.Elements[p54](p55, p56, ...))
end

v69("Corner", function(p57, p58)
	return (v18(v19("UICorner", p57, {
		CornerRadius = p58 or UDim.new(0, 7)
	}), props))
end)
v69("Stroke", function(p59, p60, ...)
	local t7 = { ... }

	return (v16(v18(v19("UIStroke", p59, {
		Color = t7[1] or u68["Color Stroke"],
		Thickness = t7[2] or 1,
		ApplyStrokeMode = "Border"
	}), p60), "Stroke"))
end)
v69("Button", function(p61, p62, ...)
	local t8 = { ... }
	local frame = v16(v18(v19("TextButton", p61, {
		Text = "",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = u68["Color Hub 2"],
		AutoButtonColor = false,
		Font = Enum.Font.Creepster
	}), p62), "Frame")

	frame.MouseEnter:Connect(function()
		frame.BackgroundTransparency = 0.4
	end)
	frame.MouseLeave:Connect(function()
		frame.BackgroundTransparency = 0
	end)

	if t8[1] then
		frame.Activated:Connect(t8[1])
	end

	return frame
end)
v69("Gradient", function(p63, p64)
	return (v16(v18(v19("UIGradient", p63, {
		Color = u68["Color Hub 1"]
	}), p64), "Gradient"))
end)

local function v74(p65, p66, p67, p68)
	local text = v16(v19("TextLabel", {
		Font = Enum.Font.GothamMedium,
		TextColor3 = u68["Color Text"],
		Size = UDim2.new(1, -20),
		AutomaticSize = "Y",
		Position = UDim2.new(0, 0, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
		TextTruncate = "AtEnd",
		TextSize = 13,
		TextXAlignment = "Left",
		Text = "",
		RichText = true
	}), "Text")
	local darkText = v16(v19("TextLabel", {
		Font = Enum.Font.Gotham,
		TextColor3 = u68["Color Dark Text"],
		Size = UDim2.new(1, -20),
		AutomaticSize = "Y",
		Position = UDim2.new(0, 12, 0, 15),
		BackgroundTransparency = 1,
		TextWrapped = true,
		TextSize = 11,
		TextXAlignment = "Left",
		Text = "",
		RichText = true
	}), "DarkText")
	local Button = v70("Button", p65, {
		Size = UDim2.new(1, 0, 0, 25),
		AutomaticSize = "Y",
		Name = "Option"
	})

	v70("Corner", Button, UDim.new(0, 6))
	LabelHolder = v19("Frame", Button, {
		AutomaticSize = "Y",
		BackgroundTransparency = 1,
		Size = p68,
		Position = UDim2.new(0, 10, 0),
		AnchorPoint = Vector2.new(0, 0)
	}, {
		v19("UIListLayout", {
			SortOrder = "LayoutOrder",
			VerticalAlignment = "Center",
			Padding = UDim.new(0, 2)
		}),
		v19("UIPadding", {
			PaddingBottom = UDim.new(0, 5),
			PaddingTop = UDim.new(0, 5)
		}),
		text,
		darkText
	})

	local t9 = {
		SetTitle = function(p69, p70)
			if type(p70) == "string" then
				if p70:gsub(" ", ""):len() > 0 then
					text.Text = p70
				end
			end
		end,
		SetDesc = function(p71, p72)
			if type(p72) == "string" then
				if p72:gsub(" ", ""):len() > 0 then
					darkText.Visible = true
					darkText.Text = p72
					LabelHolder.Position = UDim2.new(0, 10, 0)
					LabelHolder.AnchorPoint = Vector2.new(0, 0)
				else
					darkText.Visible = false
					darkText.Text = ""
					LabelHolder.Position = UDim2.new(0, 10, 0.5)
					LabelHolder.AnchorPoint = Vector2.new(0, 0.5)
				end
			else
				darkText.Visible = false
				darkText.Text = ""
				LabelHolder.Position = UDim2.new(0, 10, 0.5)
				LabelHolder.AnchorPoint = Vector2.new(0, 0.5)

				return
			end
		end
	}

	t9:SetTitle(p66)
	t9:SetDesc(p67)

	return Button, t9
end
local function v79(p73)
	if p73:IsA("Frame") then
		return "BackgroundColor3"
	end

	if p73:IsA("ImageLabel") then
		return "ImageColor3"
	end

	if p73:IsA("TextLabel") then
		return "TextColor3"
	end

	if p73:IsA("ScrollingFrame") then
		return "ScrollBarImageColor3"
	end

	if p73:IsA("UIStroke") then
		return "Color"
	end

	return ""
end

t1.GetIcon = function(p74, p75)
	if type(p75) == "string" and not p75:find("rbxassetid://") then
		if #p75 ~= 0 then
			local v80
			local v81 = string.lower(p75):gsub("lucide", ""):gsub("-", "")

			if p74.Icons[v81] then
				return p74.Icons[v81]
			end

			for k, v in p74.Icons, nil, nil do
				if k == v81 then
					return v
				end

				if not v80 and k:find(v81, 1, true) then
					v80 = v
				end
			end

			return v80 or v81
		end
	end

	return p75
end
t1.SetTheme = function(p76, p77)
	if not v64(p77) then
		return
	end

	t1.Save.Theme = p77
	v66("redz library V5.json", t1.Save)
	u68 = t1.Themes[p77]
	Connection:FireConnection("ThemeChanged", p77)
	table.foreach(t1.Instances, function(p78, p79)
		if p79.Type == "Gradient" then
			p79.Instance.Color = u68["Color Hub 1"]
		elseif p79.Type == "Frame" then
			p79.Instance.BackgroundColor3 = u68["Color Hub 2"]
		elseif p79.Type == "Stroke" then
			p79.Instance[v79(p79.Instance)] = u68["Color Stroke"]
		elseif p79.Type == "Theme" then
			p79.Instance[v79(p79.Instance)] = u68["Color Theme"]
		elseif p79.Type == "Text" then
			p79.Instance[v79(p79.Instance)] = u68["Color Text"]
		elseif p79.Type == "DarkText" then
			p79.Instance[v79(p79.Instance)] = u68["Color Dark Text"]
		elseif p79.Type == "ScrollBar" then
			p79.Instance[v79(p79.Instance)] = u68["Color Theme"]
		end
	end)
end
t1.SetBackgroundImage = function(p80, p81)
	local ok, result = pcall(function()
		local Hub = ScreenGui:FindFirstChild("Hub")

		if Hub then
			Hub.Image = "rbxassetid://" .. tostring(p81)
			Hub.ImageTransparency = 0
			Hub.ScaleType = Enum.ScaleType.Stretch
		end
	end)

	if not ok then
		warn("Failed to set background image:", result)
	end
end
t1.SetScale = function(p82, p83)
	local scale = ViewportSize.Y / math.clamp(p83, 300, 2000)
	local Scale = ScreenGui.Scale

	u13 = scale
	Scale.Scale = scale
end
t1.MakeWindow = function(p84, p85)
	local Name = p85[1] or p85.Name or p85.Title or "redz Library V5"
	local SubTitle = p85[2] or p85.SubTitle or "by : redz9999"

	Settings.ScriptFile = p85[3] or p85.SaveFolder or false

	local function v91()
		local ScriptFile = Settings.ScriptFile

		if type(ScriptFile) ~= "string" then
			return
		end

		if not readfile or not isfile then
			return
		end

		local ok, result = pcall(isfile, ScriptFile)

		if ok and result then
			local ok2, result2 = pcall(readfile, ScriptFile)

			if ok2 and type(result2) == "string" then
				local ok3, result3 = pcall(function()
					return HttpService:JSONDecode(result2)
				end)

				Flags = ok3 and result3 or {}
			end
		end
	end

	v91()

	local value, v100 = unpack(t1.Save.UISize)
	local main = v16(v19("ImageButton", ScreenGui, {
		Size = UDim2.fromOffset(value, v100),
		Position = UDim2.new(0.5, -value / 2, 0.5, -v100 / 2),
		BackgroundTransparency = 1,
		Name = "Hub"
	}), "Main")

	v70("Gradient", main, {
		Rotation = 45
	})
	v58(main)
	v51({
		main,
		"BackgroundTransparency",
		0.03,
		0.5
	})
	main.Size = UDim2.fromOffset(value * 0.8, v100 * 0.8)

	local v102 = v51
	local t10 = {
		main,
		"Size",
		UDim2.fromOffset(value, v100),
		0.5
	}

	v102(t10)

	local Corner = v70("Corner", main)
	local Folder = v19("Folder", main, {
		Name = "Components"
	})
	local Folder2 = v19("Folder", ScreenGui, {
		Name = "Dropdown"
	})
	local Frame = v19("Frame", Folder, {
		Size = UDim2.new(1, 0, 0, 28),
		BackgroundTransparency = 1,
		Name = "Top Bar"
	})
	local text = v16(v19("TextLabel", Frame, {
		Position = UDim2.new(0, 15, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
		AutomaticSize = "XY",
		Text = Name,
		TextXAlignment = "Left",
		TextSize = 17,
		TextColor3 = u68["Color Text"],
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamBold,
		Name = "Title"
	}, { v16(v19("TextLabel", {
		Size = UDim2.fromScale(0, 1),
		AutomaticSize = "X",
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(1, 5, 0.9),
		Text = SubTitle,
		TextColor3 = u68["Color Dark Text"],
		BackgroundTransparency = 1,
		TextXAlignment = "Left",
		TextYAlignment = "Bottom",
		TextSize = 11,
		Font = Enum.Font.Gotham,
		Name = "SubTitle"
	}), "DarkText") }), "Text")
	local v110 = v19
	local scrollBar = v16(v19("ScrollingFrame", Folder, {
		Size = UDim2.new(0, t1.Save.TabSize, 1, -Frame.Size.Y.Offset),
		ScrollBarImageColor3 = u68["Color Theme"],
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
		ScrollBarThickness = 1.5,
		BackgroundTransparency = 1,
		ScrollBarImageTransparency = 0.2,
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = "Y",
		ScrollingDirection = "Y",
		BorderSizePixel = 0,
		Name = "Tab Scroll"
	}, {
		v19("UIPadding", {
			PaddingLeft = UDim.new(0, 10),
			PaddingRight = UDim.new(0, 10),
			PaddingTop = UDim.new(0, 10),
			PaddingBottom = UDim.new(0, 10)
		}),
		v110("UIListLayout", {
			Padding = UDim.new(0, 5)
		})
	}), "ScrollBar")
	local Frame2 = v19("Frame", Folder, {
		Size = UDim2.new(1, -scrollBar.Size.X.Offset, 1, -Frame.Size.Y.Offset),
		AnchorPoint = Vector2.new(1, 1),
		Position = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Name = "Containers"
	})
	local v113 = v58(v19("ImageButton", main, {
		Size = UDim2.new(0, 35, 0, 35),
		Position = main.Size,
		Active = true,
		AnchorPoint = Vector2.new(0.8, 0.8),
		BackgroundTransparency = 1,
		Name = "Control Hub Size"
	}))
	local v114 = v58(v19("ImageButton", main, {
		Size = UDim2.new(0, 20, 1, -30),
		Position = UDim2.new(0, scrollBar.Size.X.Offset, 1, 0),
		AnchorPoint = Vector2.new(0.5, 1),
		Active = true,
		BackgroundTransparency = 1,
		Name = "Control Tab Size"
	}))

	local function v115()
		local Position = v113.Position
		local Position2 = v114.Position

		v113.Position = UDim2.fromOffset(math.clamp(Position.X.Offset, 430, 1000), math.clamp(Position.Y.Offset, 200, 500))
		v114.Position = UDim2.new(0, math.clamp(Position2.X.Offset, 135, 250), 1, 0)
		scrollBar.Size = UDim2.new(0, v114.Position.X.Offset, 1, -Frame.Size.Y.Offset)
		Frame2.Size = UDim2.new(1, -scrollBar.Size.X.Offset, 1, -Frame.Size.Y.Offset)
		main.Size = v113.Position
	end

	v113:GetPropertyChangedSignal("Position"):Connect(v115)
	v114:GetPropertyChangedSignal("Position"):Connect(v115)
	v50(v113, function()
		if not Minimized then
			t1.Save.UISize = {
				main.Size.X.Offset,
				main.Size.Y.Offset
			}
			v66("redz library V5.json", t1.Save)
		end
	end)
	v50(v114, function()
		t1.Save.TabSize = scrollBar.Size.X.Offset
		v66("redz library V5.json", t1.Save)
	end)

	local Folder3 = v19("Folder", Frame, {
		Name = "Buttons"
	})
	local ImageButton = v19("ImageButton", {
		Size = UDim2.new(0, 14, 0, 14),
		Position = UDim2.new(1, -10, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundTransparency = 1,
		Image = "rbxassetid://10747384394",
		AutoButtonColor = false,
		Name = "Close"
	})
	local v120 = v18(ImageButton:Clone(), {
		Position = UDim2.new(1, -35, 0.5),
		Image = "rbxassetid://10734896206",
		Name = "Minimize"
	})

	v17(Folder3, {
		ImageButton,
		v120
	})

	local u121
	local Size
	local u123
	local t11 = {}
	local u125 = false

	t11.CloseBtn = function()
		t11:Dialog({
			Title = "Fechar",
			Text = "tem certeza que deseja fechar coquette hub?",
			Options = {
				{
					"Confirmar",
					function()
						ScreenGui:Destroy()
					end
				},
				{ "Cancelar" }
			}
		})
	end
	t11.MinimizeBtn = function()
		if u123 then
			return
		end

		u123 = true

		if u121 then
			v120.Image = "rbxassetid://10734896206"
			v51({
				main,
				"Size",
				Size,
				0.25,
				true
			})
			v113.Visible = true
			v114.Visible = true
			u121 = false
		else
			v120.Image = "rbxassetid://10734924532"
			Size = main.Size
			v113.Visible = false
			v114.Visible = false
			v51({
				main,
				"Size",
				UDim2.fromOffset(main.Size.X.Offset, 28),
				0.25,
				true
			})
			u121 = true
		end

		u123 = false
	end
	t11.Minimize = function()
		main.Visible = not main.Visible
	end
	t11.AddMinimizeButton = function(p86, p87)
		local v126 = v58(v19("ImageButton", ScreenGui, {
			Size = UDim2.fromOffset(35, 35),
			Position = UDim2.fromScale(0.15, 0.15),
			BackgroundTransparency = 1,
			BackgroundColor3 = u68["Color Hub 2"],
			AutoButtonColor = false
		}))
		local Stroke
		local Corner2

		if p87.Corner then
			Corner2 = v70("Corner", v126)
			v18(Corner2, p87.Corner)
		end

		if p87.Stroke then
			Stroke = v70("Stroke", v126)
			v18(Stroke, p87.Corner)
		end

		v18(v126, p87.Button)
		v126.Activated:Connect(t11.Minimize)

		return {
			Stroke = Stroke,
			Corner = Corner2,
			Button = v126
		}
	end
	t11.Set = function(p88, p89, p90)
		if type(p89) == "string" and type(p90) == "string" then
			text.Text = p89
			text.SubTitle.Text = p90
		elseif type(p89) == "string" then
			text.Text = p89
		end
	end
	t11.Dialog = function(p91, p92)
		if main:FindFirstChild("Dialog") then
			return
		end

		if u121 then
			t11:MinimizeBtn()
		end

		local Title = p92[1] or p92.Title or "Dialog"
		local Text = p92[2] or p92.Text or "This is a Dialog"
		local Options_ = p92[3] or p92.Options or {}
		local v132 = v16
		local v133 = v19
		local Frame3 = v19("Frame", {
			Active = true,
			Size = UDim2.fromOffset(270, 162),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5)
		}, {
			v16(v19("TextLabel", {
				Font = Enum.Font.GothamBold,
				Size = UDim2.new(1, 0, 0, 20),
				Text = Title,
				TextXAlignment = "Left",
				TextColor3 = u68["Color Text"],
				TextSize = 16,
				Position = UDim2.fromOffset(15, 5),
				BackgroundTransparency = 1
			}), "Text"),
			v132(v133("TextLabel", {
				Font = Enum.Font.Gotham,
				Size = UDim2.new(1, -25),
				AutomaticSize = "Y",
				Text = Text,
				TextXAlignment = "Left",
				TextColor3 = u68["Color Dark Text"],
				TextSize = 12,
				Position = UDim2.fromOffset(15, 25),
				BackgroundTransparency = 1,
				TextWrapped = true
			}), "DarkText")
		})

		v70("Gradient", Frame3, {
			Rotation = 270
		})
		v70("Corner", Frame3)

		local Frame4 = v19("Frame", Frame3, {
			Size = UDim2.fromScale(1, 0.35),
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundColor3 = u68["Color Hub 2"],
			BackgroundTransparency = 1
		}, { v19("UIListLayout", {
			Padding = UDim.new(0, 10),
			VerticalAlignment = "Center",
			FillDirection = "Horizontal",
			HorizontalAlignment = "Center"
		}) })
		local stroke = v16(v19("Frame", main, {
			BackgroundTransparency = 0.6,
			Active = true,
			BackgroundColor3 = u68["Color Hub 2"],
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = u68["Color Stroke"],
			Name = "Dialog"
		}), "Stroke")

		Corner:Clone().Parent = stroke
		Frame3.Parent = stroke
		v51({
			Frame3,
			"Size",
			UDim2.fromOffset(250, 150),
			0.2
		})
		v51({
			Frame3,
			"Transparency",
			0,
			0.15
		})
		v51({
			stroke,
			"Transparency",
			0.3,
			0.15
		})

		local n1 = 1
		local t12

		t12 = {
			Button = function(p93, p94)
				local Name2 = p94[1] or p94.Name or p94.Title or ""
				local Callback = p94[2] or p94.Callback or function()
				end

				n1 += 1

				local Button = v70("Button", Frame4)

				v70("Corner", Button)
				v18(Button, {
					Text = Name2,
					Font = Enum.Font.GothamMedium,
					TextColor3 = u68["Color Text"],
					TextSize = 13
				})

				for _, child in pairs(Frame4:GetChildren()) do
					if child:IsA("TextButton") then
						child.Size = UDim2.new(1 / n1, -((n1 - 1) * 20 / n1), 0, 32)
					end
				end

				Button.Activated:Connect(t12.Close)
				Button.Activated:Connect(Callback)
			end,
			Close = function()
				v51({
					Frame3,
					"Size",
					UDim2.fromOffset(270, 162),
					0.2
				})
				v51({
					stroke,
					"Transparency",
					1,
					0.15
				})
				v51({
					Frame3,
					"Transparency",
					1,
					0.15,
					true
				})
				stroke:Destroy()
			end
		}
		table.foreach(Options_, function(p95, p96)
			t12:Button(p96)
		end)

		return t12
	end
	t11.SelectTab = function(p97, p98)
		if type(p98) == "number" then
			t1.Tabs[p98].func:Enable()
		else
			for _, tab in pairs(t1.Tabs) do
				if tab.Cont == p98.Cont then
					tab.func:Enable()
				end
			end
		end
	end

	local t13 = {}

	t11.MakeTab = function(p99, p100, p101)
		if type(p100) == "table" then
			p101 = p100
		end

		local Title = p101[1] or p101.Title or "Tab!"
		local icon = t1:GetIcon(p101[2] or p101.Icon or "")
		local ok = not icon:find("rbxassetid://")

		if not ok then
			ok = icon:gsub("rbxassetid://", ""):len() < 6
		end

		if ok then
			icon = false
		end

		local Button = v70("Button", scrollBar, {
			Size = UDim2.new(1, 0, 0, 24)
		})

		v70("Corner", Button)

		local v151 = v16
		local v152 = v19
		local s1 = "TextLabel"
		local v154 = Button
		local t14 = {
			Size = UDim2.new(1, icon and -25 or -15, 1)
		}

		t14.Position = UDim2.fromOffset(icon and 25 or 15)
		t14.BackgroundTransparency = 1
		t14.Font = Enum.Font.GothamMedium
		t14.Text = Title
		t14.TextColor3 = u68["Color Text"]
		t14.TextSize = 13
		t14.TextXAlignment = Enum.TextXAlignment.Left
		t14.TextTransparency = u125 and 0.3 or 0
		t14.TextTruncate = "AtEnd"

		local text2 = v151(v152(s1, v154, t14), "Text")
		local text3 = v16(v19("ImageLabel", Button, {
			Position = UDim2.new(0, 8, 0.5),
			Size = UDim2.new(0, 13, 0, 13),
			AnchorPoint = Vector2.new(0, 0.5),
			Image = icon or "",
			BackgroundTransparency = 1,
			ImageTransparency = u125 and 0.3 or 0
		}), "Text")
		local theme = v16(v19("Frame", Button, {
			Size = u125 and UDim2.new(0, 4, 0, 4) or UDim2.new(0, 4, 0, 13),
			Position = UDim2.new(0, 1, 0.5),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = u68["Color Theme"],
			BackgroundTransparency = u125 and 1 or 0
		}), "Theme")

		v70("Corner", theme, UDim.new(0.5, 0))

		local v159 = v19
		local scrollBar2 = v16(v19("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 1),
			AnchorPoint = Vector2.new(0, 1),
			ScrollBarThickness = 1.5,
			BackgroundTransparency = 1,
			ScrollBarImageTransparency = 0.2,
			ScrollBarImageColor3 = u68["Color Theme"],
			AutomaticCanvasSize = "Y",
			ScrollingDirection = "Y",
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(),
			Name = ("Container %i [ %s ]"):format(#t13 + 1, Title)
		}, {
			v19("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10)
			}),
			v159("UIListLayout", {
				Padding = UDim.new(0, 5)
			})
		}), "ScrollBar")

		table.insert(t13, scrollBar2)

		if not u125 then
			scrollBar2.Parent = Frame2
		end

		local function v161()
			if scrollBar2.Parent then
				return
			end

			for _, v in pairs(t13) do
				if v:IsA("ScrollingFrame") and v ~= scrollBar2 then
					v.Parent = nil
				end
			end

			scrollBar2.Parent = Frame2
			scrollBar2.Size = UDim2.new(1, 0, 1, 150)
			table.foreach(t1.Tabs, function(p102, p103)
				if p103.Cont ~= scrollBar2 then
					p103.func:Disable()
				end
			end)
			v51({
				scrollBar2,
				"Size",
				UDim2.new(1, 0, 1, 0),
				0.3
			})
			v51({
				text2,
				"TextTransparency",
				0,
				0.35
			})
			v51({
				text3,
				"ImageTransparency",
				0,
				0.35
			})
			v51({
				theme,
				"Size",
				UDim2.new(0, 4, 0, 13),
				0.35
			})
			v51({
				theme,
				"BackgroundTransparency",
				0,
				0.35
			})
		end

		Button.Activated:Connect(v161)
		u125 = true

		local t15 = {}

		table.insert(t1.Tabs, {
			TabInfo = {
				Name = Title,
				Icon = icon
			},
			func = t15,
			Cont = scrollBar2
		})
		t15.Cont = scrollBar2
		t15.Disable = function()
			scrollBar2.Parent = nil
			v51({
				text2,
				"TextTransparency",
				0.3,
				0.35
			})
			v51({
				text3,
				"ImageTransparency",
				0.3,
				0.35
			})
			v51({
				theme,
				"Size",
				UDim2.new(0, 4, 0, 4),
				0.35
			})
			v51({
				theme,
				"BackgroundTransparency",
				1,
				0.35
			})
		end
		t15.Enable = function()
			v161()
		end
		t15.Visible = function(p104, p105)
			t3:ToggleVisible(Button, p105)
			t3:ToggleParent(scrollBar2, p105, Frame2)
		end
		t15.Destroy = function()
			Button:Destroy()
			scrollBar2:Destroy()
		end
		t15.AddSection = function(p106, p107)
			local v165 = type(p107) == "string" and p107 or p107[1]

			v165 = v165 or p107.Name or p107.Title or p107.Section

			local Frame3 = v19("Frame", scrollBar2, {
				Size = UDim2.new(1, 0, 0, 20),
				BackgroundTransparency = 1,
				Name = "Option"
			})
			local text4 = v16(v19("TextLabel", Frame3, {
				Font = Enum.Font.GothamBold,
				Text = v165,
				TextColor3 = u68["Color Text"],
				Size = UDim2.new(1, -25, 1, 0),
				Position = UDim2.new(0, 5),
				BackgroundTransparency = 1,
				TextTruncate = "AtEnd",
				TextSize = 16,
				TextXAlignment = "Left"
			}), "Text")
			local t16 = {}

			table.insert(t1.Options, {
				type = "Section",
				Name = v165,
				func = t16
			})
			t16.Visible = function(p108, p109)
				if p109 == nil then
					Frame3.Visible = not Frame3.Visible

					return
				end

				Frame3.Visible = p109
			end
			t16.Destroy = function()
				Frame3:Destroy()
			end
			t16.Set = function(p110, p111)
				if p111 then
					text4.Text = v49(p111)
				end
			end

			return t16
		end
		t15.AddParagraph = function(p112, p113)
			local v169, v170 = v74(scrollBar2, p113[1] or p113.Title or "Paragraph", p113[2] or p113.Text or "", UDim2.new(1, -20))

			return {
				Visible = function(...)
					t3:ToggleVisible(v169, select(2, ...))
				end,
				Destroy = function()
					v169:Destroy()
				end,
				SetTitle = function(p114, p115)
					v170:SetTitle(v49(p115))
				end,
				SetDesc = function(p116, p117)
					v170:SetDesc(v49(p117))
				end,
				Set = function(p118, p119, p120)
					if p119 and p120 then
						v170:SetTitle(v49(p119))
						v170:SetDesc(v49(p120))
					elseif p119 then
						v170:SetDesc(v49(p119))
					end
				end
			}
		end
		t15.AddButton = function(p121, p122)
			local Name2 = p122[1] or p122.Name or p122.Title or "Button!"
			local Desc = p122.Desc or p122.Description or ""
			local callback = t3:GetCallback(p122, 2)
			local v174, v175 = v74(scrollBar2, Name2, Desc, UDim2.new(1, -20))

			v19("ImageLabel", v174, {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Image = "rbxassetid://10709791437"
			})
			v174.Activated:Connect(function()
				t3:FireCallback(callback)
			end)

			return {
				Visible = function(...)
					t3:ToggleVisible(v174, select(2, ...))
				end,
				Destroy = function()
					v174:Destroy()
				end,
				Callback = function(...)
					t3:InsertCallback(callback, select(2, ...))
				end,
				Set = function(p123, p124, p125)
					if type(p124) == "string" and type(p125) == "string" then
						v175:SetTitle(p124)
						v175:SetDesc(p125)
					elseif type(p124) == "string" then
						v175:SetTitle(p124)
					elseif type(p124) == "function" then
						callback = p124
					end
				end
			}
		end
		t15.AddToggle = function(p126, p127)
			local v176 = p127[1]
			local callback, v178, u179, v180, t17

			if v176 then
				local Desc = p127.Desc or p127.Description or ""

				callback = t3:GetCallback(p127, 3)

				local Flag = p127[4] or p127.Flag or false
				local Default = p127[2] or p127.Default or false

				if v40(Flag) then
					Default = v41(Flag)
				end

				local v185

				v185, v178 = v74(scrollBar2, v176, Desc, UDim2.new(1, -38))

				local stroke = v16(v19("Frame", v185, {
					Size = UDim2.new(0, 35, 0, 18),
					Position = UDim2.new(1, -10, 0.5),
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = u68["Color Stroke"]
				}), "Stroke")

				v70("Corner", stroke, UDim.new(0.5, 0))

				local theme2 = v16(v19("Frame", v19("Frame", stroke, {
					BackgroundTransparency = 1,
					Size = UDim2.new(0.8, 0, 0.8, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5)
				}), {
					Size = UDim2.new(0, 12, 0, 12),
					Position = Default and UDim2.new(1, 0, 0.5) or UDim2.new(0, 0, 0.5),
					AnchorPoint = Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
					BackgroundColor3 = Default and u68["Color Toggle On"] or u68["Color Toggle Off"]
				}), "Theme")

				v70("Corner", theme2, UDim.new(0.5, 0))
				u179 = nil
				v180 = function(p128)
					if u179 then
						return
					end

					u179 = true
					Default = p128
					v42(Flag, Default)
					t3:FireCallback(callback, Default)

					if Default then
						v51({
							theme2,
							"Position",
							UDim2.new(1, 0, 0.5),
							0.25
						})
						v51({
							theme2,
							"BackgroundColor3",
							u68["Color Toggle On"],
							0.25
						})
						v51({
							theme2,
							"AnchorPoint",
							Vector2.new(1, 0.5),
							0.25
						})
					else
						v51({
							theme2,
							"Position",
							UDim2.new(0, 0, 0.5),
							0.25
						})
						v51({
							theme2,
							"BackgroundColor3",
							u68["Color Toggle Off"],
							0.25
						})
						v51({
							theme2,
							"AnchorPoint",
							Vector2.new(0, 0.5),
							0.25
						})
					end

					u179 = false
				end
				task.spawn(v180, Default)
				v185.Activated:Connect(function()
					v180(not Default)
				end)
				t17 = {
					Visible = function(...)
						t3:ToggleVisible(v185, select(2, ...))
					end,
					Destroy = function()
						v185:Destroy()
					end,
					Callback = function(...)
						t3:InsertCallback(callback, select(2, ...))()
					end
				}
			else
				local Name2 = p127.Name or p127.Title or "Toggle"
				local Desc = p127.Desc or p127.Description or ""

				callback = t3:GetCallback(p127, 3)

				local Flag = p127[4] or p127.Flag or false
				local Default = p127[2] or p127.Default or false

				if v40(Flag) then
					Default = v41(Flag)
				end

				local v192

				v192, v178 = v74(scrollBar2, Name2, Desc, UDim2.new(1, -38))

				local stroke = v16(v19("Frame", v192, {
					Size = UDim2.new(0, 35, 0, 18),
					Position = UDim2.new(1, -10, 0.5),
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = u68["Color Stroke"]
				}), "Stroke")

				v70("Corner", stroke, UDim.new(0.5, 0))

				local theme2 = v16(v19("Frame", v19("Frame", stroke, {
					BackgroundTransparency = 1,
					Size = UDim2.new(0.8, 0, 0.8, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5)
				}), {
					Size = UDim2.new(0, 12, 0, 12),
					Position = Default and UDim2.new(1, 0, 0.5) or UDim2.new(0, 0, 0.5),
					AnchorPoint = Default and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
					BackgroundColor3 = Default and u68["Color Toggle On"] or u68["Color Toggle Off"]
				}), "Theme")

				v70("Corner", theme2, UDim.new(0.5, 0))
				u179 = nil
				v180 = function(p129)
					if u179 then
						return
					end

					u179 = true
					Default = p129
					v42(Flag, Default)
					t3:FireCallback(callback, Default)

					if Default then
						v51({
							theme2,
							"Position",
							UDim2.new(1, 0, 0.5),
							0.25
						})
						v51({
							theme2,
							"BackgroundColor3",
							u68["Color Toggle On"],
							0.25
						})
						v51({
							theme2,
							"AnchorPoint",
							Vector2.new(1, 0.5),
							0.25
						})
					else
						v51({
							theme2,
							"Position",
							UDim2.new(0, 0, 0.5),
							0.25
						})
						v51({
							theme2,
							"BackgroundColor3",
							u68["Color Toggle Off"],
							0.25
						})
						v51({
							theme2,
							"AnchorPoint",
							Vector2.new(0, 0.5),
							0.25
						})
					end

					u179 = false
				end
				task.spawn(v180, Default)
				v192.Activated:Connect(function()
					v180(not Default)
				end)
				t17 = {
					Visible = function(...)
						t3:ToggleVisible(v192, select(2, ...))
					end,
					Destroy = function()
						v192:Destroy()
					end,
					Callback = function(...)
						t3:InsertCallback(callback, select(2, ...))()
					end
				}
			end

			t17.Set = function(p130, p131, p132)
				if type(p131) == "string" and type(p132) == "string" then
					v178:SetTitle(p131)
					v178:SetDesc(p132)
				elseif type(p131) == "string" then
					v178:SetTitle(p131, false, true)
				elseif type(p131) == "boolean" then
					if u179 and p132 then
						repeat
							task.wait()
						until not u179
					end

					task.spawn(v180, p131)
				elseif type(p131) == "function" then
					callback = p131
				end
			end

			return t17
		end
		t15.AddDropdown = function(p133, p134)
			local Name2 = p134[1] or p134.Name or p134.Title or "Dropdown"
			local Desc = p134.Desc or p134.Description or ""
			local Options_ = p134[2] or p134.Options

			Options_ = Options_ or {}

			local Default = p134[3] or p134.Default or {}
			local Flag = p134[5] or p134.Flag or false
			local MultiSelect = p134.MultiSelect or false
			local callback = t3:GetCallback(p134, 4)
			local v202 = v74(scrollBar2, Name2, Desc, UDim2.new(1, -180))
			local stroke = v16(v19("Frame", v202, {
				Size = UDim2.new(0, 150, 0, 18),
				Position = UDim2.new(1, -10, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = u68["Color Stroke"]
			}), "Stroke")

			v70("Corner", stroke, UDim.new(0, 4))

			local text4 = v16(v19("TextLabel", stroke, {
				Size = UDim2.new(0.85, 0, 0.85, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Font = Enum.Font.Gotham,
				TextScaled = true,
				TextColor3 = u68["Color Text"],
				Text = "..."
			}), "Text")
			local ImageLabel = v19("ImageLabel", stroke, {
				Size = UDim2.new(0, 15, 0, 15),
				Position = UDim2.new(0, -5, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				Image = "rbxassetid://10709791523",
				BackgroundTransparency = 1
			})
			local TextButton = v19("TextButton", Folder2, {
				Name = "AntiClick",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Visible = false,
				Text = ""
			})
			local Frame3 = v19("Frame", TextButton, {
				Size = UDim2.new(stroke.Size.X, 0, 0),
				BackgroundTransparency = 0.1,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AnchorPoint = Vector2.new(0, 1),
				Name = "DropdownFrame",
				ClipsDescendants = true,
				Active = true
			})

			v70("Corner", Frame3)
			v70("Stroke", Frame3)
			v70("Gradient", Frame3, {
				Rotation = 60
			})

			local v209 = v19
			local scrollBar3 = v16(v19("ScrollingFrame", Frame3, {
				ScrollBarImageColor3 = u68["Color Theme"],
				Size = UDim2.new(1, 0, 1, 0),
				ScrollBarThickness = 1.5,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(),
				ScrollingDirection = "Y",
				AutomaticCanvasSize = "Y",
				Active = true
			}, {
				v19("UIPadding", {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8),
					PaddingTop = UDim.new(0, 5),
					PaddingBottom = UDim.new(0, 5)
				}),
				v209("UIListLayout", {
					Padding = UDim.new(0, 4)
				})
			}), "ScrollBar")
			local n2 = 5
			local u212

			local function v213()
				u212 = true
				v51({
					ImageLabel,
					"Rotation",
					0,
					0.2
				})
				v51({
					Frame3,
					"Size",
					UDim2.new(0, 152, 0, 0),
					0.2,
					true
				})
				v51({
					ImageLabel,
					"ImageColor3",
					Color3.fromRGB(255, 255, 255),
					0.2
				})
				ImageLabel.Image = "rbxassetid://10709791523"
				TextButton.Visible = false
				u212 = false
			end
			local function v214()
				return UDim2.fromOffset(152, n2)
			end
			local function v215()
				local n3 = 0

				for _, child in pairs(scrollBar3:GetChildren()) do
					if child:IsA("Frame") or child.Name == "Option" then
						n3 += 1
					end
				end

				n2 = math.clamp(n3, 0, 10) * 25 + 10

				if TextButton.Visible then
					TextButton.Visible = true
					v51({
						Frame3,
						"Size",
						v214(),
						0.2,
						true
					})
				end
			end
			local function v219()
				if u212 then
					return
				end

				u212 = true

				if TextButton.Visible then
					ImageLabel.Image = "rbxassetid://10709791523"

					local v220 = v51
					local t18 = {
						ImageLabel,
						"ImageColor3",
						Color3.fromRGB(255, 255, 255),
						0.2
					}

					v220(t18)
					v51({
						Frame3,
						"Size",
						UDim2.new(0, 152, 0, 0),
						0.2,
						true
					})
					TextButton.Visible = false
				else
					TextButton.Visible = true
					ImageLabel.Image = "rbxassetid://10709790948"
					v51({
						ImageLabel,
						"ImageColor3",
						u68["Color Theme"],
						0.2
					})
					v51({
						Frame3,
						"Size",
						v214(),
						0.2,
						true
					})
				end

				u212 = false
			end
			local function v224()
				local AbsolutePosition = stroke.AbsolutePosition
				local AbsoluteSize = ScreenGui.AbsoluteSize
				local v227 = math.clamp(AbsolutePosition.X / u13, 0, AbsoluteSize.X / u13 - Frame3.Size.X.Offset)
				local v228 = math.clamp(AbsolutePosition.Y / u13, 0, AbsoluteSize.Y / u13)
				local uDim22 = UDim2.fromOffset(v227, v228)

				Frame3.AnchorPoint = Vector2.new(0, AbsolutePosition.Y > AbsoluteSize.Y / 1.4 and 1 or n2 > 80 and 0.5 or 0)
				v51({
					Frame3,
					"Position",
					uDim22,
					0.1
				})
			end

			local v230 = type(Default) ~= "table" and { Default } or Default
			local v231 = MultiSelect
			local t19 = {}
			local u233 = v231 and {} or v40(Flag) and v41(Flag) or v230[1]

			if v231 then
				local pairs_ = pairs
				local v235 = v40(Flag) and v41(Flag) or v230

				for k, v in pairs_(v235) do
					if type(k) == "string" and (Options_[k] or table.find(Options_, k)) then
						u233[k] = v
					elseif Options_[v] then
						u233[v] = true
					end
				end
			end

			local function v238()
				v42(Flag, v231 and u233 or tostring(u233))
				t3:FireCallback(callback, u233)
			end
			local function v239()
				if v231 then
					local t20 = {}

					for k, v in pairs(u233) do
						if v then
							table.insert(t20, k)
						end
					end

					text4.Text = #t20 > 0 and table.concat(t20, ", ") or "..."
				else
					text4.Text = tostring(u233 or "...")
				end
			end
			local function v243()
				if v231 then
					local v244, v245, v246 = pairs(t19)
					local v247 = geniter(v244, v245, v246)
					local exitTo
					local nodes, Stats, v251, t21, v253, s2

					for _, v in v244, v245, v246 do
						nodes = v.nodes
						Stats = v.Stats

						local v257 = v51
						local t22 = {
							nodes[2],
							"BackgroundTransparency",
							Stats and 0 or 0.8,
							0.35
						}

						v257(t22)
						v251 = v51
						t21 = {}
						v253 = nodes[2]
						s2 = "Size"

						if Stats then
							exitTo = 1

							break
						else
							local uDim22 = UDim2.fromOffset(4, 4)

							t21[1] = v253
							t21[2] = s2
							t21[3] = uDim22
							t21[4] = 0.35
							v251(t21)
							v51({
								nodes[3],
								"TextTransparency",
								Stats and 0 or 0.4,
								0.35
							})
						end
					end

					if exitTo == 1 then
						local exitTo2

						repeat
							local uDim22 = UDim2.fromOffset(4, 12)

							exitTo2 = nil

							while true do
								uDim22 = uDim22 or UDim2.fromOffset(4, 4)
								t21[1] = v253
								t21[2] = s2
								t21[3] = uDim22
								t21[4] = 0.35
								v251(t21)
								v51({
									nodes[3],
									"TextTransparency",
									Stats and 0 or 0.4,
									0.35
								})

								local v265 = table.pack(v247())

								if not v265[1] then
									break
								end

								local v266 = v265[3]

								nodes = v266.nodes
								Stats = v266.Stats
								v51({
									nodes[2],
									"BackgroundTransparency",
									Stats and 0 or 0.8,
									0.35
								})
								v251 = v51
								t21 = {}
								v253 = nodes[2]
								s2 = "Size"
								uDim22 = Stats

								if not uDim22 then
									continue
								end

								exitTo2 = 1

								break
							end
						until exitTo2 ~= 1
					end
				else
					local v267, v268, v269 = pairs(t19)

					for _, v in v267, v268, v269 do
						local v272 = v.Value == u233
						local nodes = v.nodes

						v51({
							nodes[2],
							"BackgroundTransparency",
							v272 and 0 or 1,
							0.35
						})
						v51({
							nodes[2],
							"Size",
							v272 and UDim2.fromOffset(4, 14) or UDim2.fromOffset(4, 4),
							0.35
						})
						v51({
							nodes[3],
							"TextTransparency",
							v272 and 0 or 0.4,
							0.35
						})
					end
				end

				v239()
			end
			local function v274(p135)
				if v231 then
					p135.Stats = not p135.Stats
					p135.LastCB = tick()
					u233[p135.Name] = p135.Stats
					v238()
				else
					p135.LastCB = tick()
					u233 = p135.Value
					v238()
				end

				v243()
			end
			local function v275(p136, p137)
				local v276 = tostring(type(p136) == "string" and p136 or p137)

				if t19[v276] then
					return
				end

				t19[v276] = {
					index = p136,
					Value = p137,
					Name = v276,
					Stats = false,
					LastCB = 0
				}

				if v231 then
					local v277 = u233[v276]

					u233[v276] = v277 or false
					t19[v276].Stats = v277
				end

				local Button2 = v70("Button", scrollBar3, {
					Name = "Option",
					Size = UDim2.new(1, 0, 0, 21),
					Position = UDim2.new(0, 0, 0.5),
					AnchorPoint = Vector2.new(0, 0.5)
				})

				v70("Corner", Button2, UDim.new(0, 4))

				local theme2 = v16(v19("Frame", Button2, {
					Position = UDim2.new(0, 1, 0.5),
					Size = UDim2.new(0, 4, 0, 4),
					BackgroundColor3 = u68["Color Theme"],
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0, 0.5)
				}), "Theme")

				v70("Corner", theme2, UDim.new(0.5, 0))

				local text5 = v16(v19("TextLabel", Button2, {
					Size = UDim2.new(1, 0, 1),
					Position = UDim2.new(0, 10),
					Text = v276,
					TextColor3 = u68["Color Text"],
					Font = Enum.Font.Gotham,
					TextXAlignment = "Left",
					BackgroundTransparency = 1,
					TextTransparency = 0.4
				}), "Text")

				Button2.Activated:Connect(function()
					v274(t19[v276])
				end)
				t19[v276].nodes = {
					Button2,
					theme2,
					text5
				}
			end
			local function v281(p138, p139)
				local v282 = tostring(type(p138) == "string" and p138 or p139)

				if t19[v282] then
					if v231 then
						u233[v282] = nil
					else
						u233 = nil
					end

					t19[v282].nodes[1]:Destroy()
					table.clear(t19[v282])
					t19[v282] = nil
				end
			end
			local function v283()
				return t19
			end
			local function v284(p140, p141)
				if p141 then
					table.foreach(t19, v281)
				end

				table.foreach(p140, v275)
				v238()
				v243()
			end

			table.foreach(Options_, v275)
			v238()
			v243()
			v202.Activated:Connect(v219)
			TextButton.MouseButton1Down:Connect(v213)
			TextButton.MouseButton1Click:Connect(v213)
			main:GetPropertyChangedSignal("Visible"):Connect(v213)
			stroke:GetPropertyChangedSignal("AbsolutePosition"):Connect(v224)
			v202.Activated:Connect(v215)
			scrollBar3.ChildAdded:Connect(v215)
			scrollBar3.ChildRemoved:Connect(v215)
			v224()
			v215()

			return {
				Visible = function(...)
					t3:ToggleVisible(v202, select(2, ...))
				end,
				Destroy = function()
					v202:Destroy()
				end,
				Callback = function(...)
					t3:InsertCallback(callback, select(2, ...))(u233)
				end,
				Add = function(...)
					local t23 = { select(2, ...) }

					if type(t23[1]) == "table" then
						table.foreach(Option, function(p142, p143)
							v275(p143)
						end)
					else
						table.foreach(t23, function(p144, p145)
							v275(p145)
						end)
					end
				end,
				Remove = function(p146, p147)
					for k, v in pairs(v283()) do
						if type(p147) == "number" and k == p147 or v.Name == "Option" then
							v281(k, v.Value)
						end
					end
				end,
				Select = function(p148, p149)
					if type(p149) == "string" then
						for _, v in pairs(Options) do
							if v.Name == p149 then
								v.Active()
							end
						end
					elseif type(p149) == "number" then
						for k, v in pairs(Options) do
							if k == p149 then
								v.Active()
							end
						end
					end
				end,
				Set = function(p150, p151, p152)
					if type(p151) == "table" then
						v284(p151, not p152)
					elseif type(p151) == "function" then
						callback = p151
					end
				end
			}
		end
		t15.AddSlider = function(p153, p154)
			local Name2 = p154[1] or p154.Name or p154.Title or "Slider!"
			local Desc = p154.Desc or p154.Description or ""
			local MinValue = p154[2] or p154.MinValue or p154.Min

			MinValue = MinValue or 10

			local MaxValue = p154[3] or p154.MaxValue or p154.Max or 100
			local Increase = p154[4] or p154.Increase or 1
			local callback = t3:GetCallback(p154, 6)
			local Flag = p154[7] or p154.Flag or false
			local u299 = p154[5]
			local v300, t24, s4, v303

			if u299 then
				if v40(Flag) then
					u299 = v41(Flag)
				end

				local v304 = MinValue / Increase
				local v305 = MaxValue / Increase
				local v306

				v300, v306 = v74(scrollBar2, Name2, Desc, UDim2.new(1, -180))

				local TextButton = v19("TextButton", v300, {
					Size = UDim2.new(0.45, 0, 1),
					Position = UDim2.new(1),
					AnchorPoint = Vector2.new(1, 0),
					AutoButtonColor = false,
					Text = "",
					BackgroundTransparency = 1
				})
				local stroke = v16(v19("Frame", TextButton, {
					BackgroundColor3 = u68["Color Stroke"],
					Size = UDim2.new(1, -20, 0, 6),
					Position = UDim2.new(0.5, 0, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5)
				}), "Stroke")

				v70("Corner", stroke)

				local theme2 = v16(v19("Frame", stroke, {
					BackgroundColor3 = u68["Color Theme"],
					Size = UDim2.fromScale(0.3, 1),
					BorderSizePixel = 0
				}), "Theme")

				v70("Corner", theme2)

				local Frame3 = v19("Frame", stroke, {
					Size = UDim2.new(0, 6, 0, 12),
					BackgroundColor3 = Color3.fromRGB(220, 220, 220),
					Position = UDim2.fromScale(0.3, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 0.2
				})

				v70("Corner", Frame3)

				local text4 = v16(v19("TextLabel", TextButton, {
					Size = UDim2.new(0, 14, 0, 14),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(0, 0, 0.5),
					BackgroundTransparency = 1,
					TextColor3 = u68["Color Text"],
					Font = Enum.Font.Gotham,
					TextSize = 14
				}), "Text")
				local UIScale = v19("UIScale", text4)
				local Frame4 = v19("Frame", stroke, {
					Position = UDim2.new(0, 0, 0.5, 0),
					Visible = false
				})

				local function v314(p155)
					local v315 = math.floor(tonumber(p155 * Increase) * 100) / 100
					local text5 = tostring(v315)

					u299 = v315
					text4.Text = text5
					t3:FireCallback(callback, u299)
				end
				local function v317()
					Frame3.Position = UDim2.new(math.clamp((LocalPlayer:GetMouse().X - Frame4.AbsolutePosition.X) / stroke.AbsoluteSize.X, 0, 1), 0, 0.5, 0)
				end
				local function v318()
					theme2.Size = UDim2.new(Frame3.Position.X.Scale, 0, 1, 0)

					local v319 = math.floor(Frame3.Position.X.Scale * v305 / v305 * (v305 - v304) + v304)

					v314(v319)
				end

				TextButton.MouseButton1Down:Connect(function()
					v51({
						Frame3,
						"Transparency",
						0,
						0.3
					})
					scrollBar2.ScrollingEnabled = false

					while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						task.wait()
						v317()
					end

					v51({
						Frame3,
						"Transparency",
						0.2,
						0.3
					})
					scrollBar2.ScrollingEnabled = true
					v42(Flag, u299)
				end)
				text4:GetPropertyChangedSignal("Text"):Connect(function()
					UIScale.Scale = 0.3
					v51({
						UIScale,
						"Scale",
						1.2,
						0.1
					})
					v51({
						text4,
						"Rotation",
						math.random(-1, 1) * 5,
						0.15,
						true
					})
					v51({
						UIScale,
						"Scale",
						1,
						0.2
					})
					v51({
						text4,
						"Rotation",
						0,
						0.1
					})
				end)
				SetSlider = function(p156)
					if type(p156) ~= "number" then
						return
					end

					local v320 = v304 * Increase
					local v321 = (p156 - v320) / (v305 * Increase - v320)

					v42(Flag, p156)
					v51({
						Frame3,
						"Position",
						UDim2.fromScale(math.clamp(v321, 0, 1), 0.5),
						0.3,
						true
					})
				end
				SetSlider(u299)
				Frame3:GetPropertyChangedSignal("Position"):Connect(v318)
				v318()
				t24 = {
					Set = function(p157, p158, p159)
						if p158 and p159 then
							v306:SetTitle(p158)
							v306:SetDesc(p159)
						elseif type(p158) == "string" then
							v306:SetTitle(p158)
						elseif type(p158) == "function" then
							callback = p158
						elseif type(p158) == "number" then
							SetSlider(p158)
						end
					end
				}
				s4 = "Callback"
				v303 = function(...)
					t3:InsertCallback(callback, select(2, ...))(tonumber(u299))
				end
			else
				local Default = p154.Default or 25

				if v40(Flag) then
					Default = v41(Flag)
				end

				local v323 = MinValue / Increase
				local v324 = MaxValue / Increase
				local v325

				v300, v325 = v74(scrollBar2, Name2, Desc, UDim2.new(1, -180))

				local TextButton = v19("TextButton", v300, {
					Size = UDim2.new(0.45, 0, 1),
					Position = UDim2.new(1),
					AnchorPoint = Vector2.new(1, 0),
					AutoButtonColor = false,
					Text = "",
					BackgroundTransparency = 1
				})
				local stroke = v16(v19("Frame", TextButton, {
					BackgroundColor3 = u68["Color Stroke"],
					Size = UDim2.new(1, -20, 0, 6),
					Position = UDim2.new(0.5, 0, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5)
				}), "Stroke")

				v70("Corner", stroke)

				local theme2 = v16(v19("Frame", stroke, {
					BackgroundColor3 = u68["Color Theme"],
					Size = UDim2.fromScale(0.3, 1),
					BorderSizePixel = 0
				}), "Theme")

				v70("Corner", theme2)

				local Frame3 = v19("Frame", stroke, {
					Size = UDim2.new(0, 6, 0, 12),
					BackgroundColor3 = Color3.fromRGB(220, 220, 220),
					Position = UDim2.fromScale(0.3, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 0.2
				})

				v70("Corner", Frame3)

				local text4 = v16(v19("TextLabel", TextButton, {
					Size = UDim2.new(0, 14, 0, 14),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(0, 0, 0.5),
					BackgroundTransparency = 1,
					TextColor3 = u68["Color Text"],
					Font = Enum.Font.Gotham,
					TextSize = 14
				}), "Text")
				local UIScale = v19("UIScale", text4)
				local Frame4 = v19("Frame", stroke, {
					Position = UDim2.new(0, 0, 0.5, 0),
					Visible = false
				})

				local function v333(p160)
					local v334 = math.floor(tonumber(p160 * Increase) * 100) / 100
					local text5 = tostring(v334)

					Default = v334
					text4.Text = text5
					t3:FireCallback(callback, Default)
				end
				local function v336()
					Frame3.Position = UDim2.new(math.clamp((LocalPlayer:GetMouse().X - Frame4.AbsolutePosition.X) / stroke.AbsoluteSize.X, 0, 1), 0, 0.5, 0)
				end
				local function v337()
					theme2.Size = UDim2.new(Frame3.Position.X.Scale, 0, 1, 0)

					local v338 = math.floor(Frame3.Position.X.Scale * v324 / v324 * (v324 - v323) + v323)

					v333(v338)
				end

				TextButton.MouseButton1Down:Connect(function()
					v51({
						Frame3,
						"Transparency",
						0,
						0.3
					})
					scrollBar2.ScrollingEnabled = false

					while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						task.wait()
						v336()
					end

					v51({
						Frame3,
						"Transparency",
						0.2,
						0.3
					})
					scrollBar2.ScrollingEnabled = true
					v42(Flag, Default)
				end)
				text4:GetPropertyChangedSignal("Text"):Connect(function()
					UIScale.Scale = 0.3
					v51({
						UIScale,
						"Scale",
						1.2,
						0.1
					})
					v51({
						text4,
						"Rotation",
						math.random(-1, 1) * 5,
						0.15,
						true
					})
					v51({
						UIScale,
						"Scale",
						1,
						0.2
					})
					v51({
						text4,
						"Rotation",
						0,
						0.1
					})
				end)
				SetSlider = function(p161)
					if type(p161) ~= "number" then
						return
					end

					local v339 = v323 * Increase
					local v340 = (p161 - v339) / (v324 * Increase - v339)

					v42(Flag, p161)
					v51({
						Frame3,
						"Position",
						UDim2.fromScale(math.clamp(v340, 0, 1), 0.5),
						0.3,
						true
					})
				end
				SetSlider(Default)
				Frame3:GetPropertyChangedSignal("Position"):Connect(v337)
				v337()
				t24 = {
					Set = function(p162, p163, p164)
						if p163 and p164 then
							v325:SetTitle(p163)
							v325:SetDesc(p164)
						elseif type(p163) == "string" then
							v325:SetTitle(p163)
						elseif type(p163) == "function" then
							callback = p163
						elseif type(p163) == "number" then
							SetSlider(p163)
						end
					end
				}
				s4 = "Callback"
				v303 = function(...)
					t3:InsertCallback(callback, select(2, ...))(tonumber(Default))
				end
			end

			t24[s4] = v303
			t24.Visible = function(...)
				t3:ToggleVisible(v300, select(2, ...))
			end
			t24.Destroy = function()
				v300:Destroy()
			end

			return t24
		end
		t15.AddTextBox = function(p165, p166)
			local Name2 = p166[1] or p166.Name or p166.Title or "Text Box"
			local Desc = p166.Desc or p166.Description or ""
			local Default = p166[2] or p166.Default or ""
			local PlaceholderText = p166[5] or p166.PlaceholderText or "Input"
			local ClearText = p166[3] or p166.ClearText or false
			local callback = t3:GetCallback(p166, 4)
			local v347, t25, s5, v350

			if type(Default) == "string" then
				if Default:gsub(" ", ""):len() < 1 then
				end

				local v351

				v347, v351 = v74(scrollBar2, Name2, Desc, UDim2.new(1, -38))

				local stroke = v16(v19("Frame", v347, {
					Size = UDim2.new(0, 150, 0, 18),
					Position = UDim2.new(1, -10, 0.5),
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = u68["Color Stroke"]
				}), "Stroke")

				v70("Corner", stroke, UDim.new(0, 4))

				local text4 = v16(v19("TextBox", stroke, {
					Size = UDim2.new(0.85, 0, 0.85, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.Gotham,
					TextScaled = true,
					TextColor3 = u68["Color Text"],
					ClearTextOnFocus = ClearText,
					PlaceholderText = PlaceholderText,
					Text = ""
				}), "Text")
				local ImageLabel = v19("ImageLabel", stroke, {
					Size = UDim2.new(0, 12, 0, 12),
					Position = UDim2.new(0, -5, 0.5),
					AnchorPoint = Vector2.new(1, 0.5),
					Image = "rbxassetid://15637081879",
					BackgroundTransparency = 1
				})

				t25 = {}

				local function v355()
					local Text = text4.Text

					if Text:gsub(" ", ""):len() > 0 then
						if t25.OnChanging then
							Text = t25.OnChanging(Text) or Text
						end

						t3:FireCallback(callback, Text)
						text4.Text = Text
					end
				end

				text4.FocusLost:Connect(v355)
				v355()
				text4.FocusLost:Connect(function()
					v51({
						ImageLabel,
						"ImageColor3",
						Color3.fromRGB(255, 255, 255),
						0.2
					})
				end)
				text4.Focused:Connect(function()
					v51({
						ImageLabel,
						"ImageColor3",
						u68["Color Theme"],
						0.2
					})
				end)
				t25.OnChanging = false
				s5 = "Visible"
				v350 = function(...)
					t3:ToggleVisible(v347, select(2, ...))
				end
			else
				local v357

				v347, v357 = v74(scrollBar2, Name2, Desc, UDim2.new(1, -38))

				local stroke = v16(v19("Frame", v347, {
					Size = UDim2.new(0, 150, 0, 18),
					Position = UDim2.new(1, -10, 0.5),
					AnchorPoint = Vector2.new(1, 0.5),
					BackgroundColor3 = u68["Color Stroke"]
				}), "Stroke")

				v70("Corner", stroke, UDim.new(0, 4))

				local text4 = v16(v19("TextBox", stroke, {
					Size = UDim2.new(0.85, 0, 0.85, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.Gotham,
					TextScaled = true,
					TextColor3 = u68["Color Text"],
					ClearTextOnFocus = ClearText,
					PlaceholderText = PlaceholderText,
					Text = ""
				}), "Text")
				local ImageLabel = v19("ImageLabel", stroke, {
					Size = UDim2.new(0, 12, 0, 12),
					Position = UDim2.new(0, -5, 0.5),
					AnchorPoint = Vector2.new(1, 0.5),
					Image = "rbxassetid://15637081879",
					BackgroundTransparency = 1
				})

				t25 = {}

				local function v361()
					local Text = text4.Text

					if Text:gsub(" ", ""):len() > 0 then
						if t25.OnChanging then
							Text = t25.OnChanging(Text) or Text
						end

						t3:FireCallback(callback, Text)
						text4.Text = Text
					end
				end

				text4.FocusLost:Connect(v361)
				v361()
				text4.FocusLost:Connect(function()
					v51({
						ImageLabel,
						"ImageColor3",
						Color3.fromRGB(255, 255, 255),
						0.2
					})
				end)
				text4.Focused:Connect(function()
					v51({
						ImageLabel,
						"ImageColor3",
						u68["Color Theme"],
						0.2
					})
				end)
				t25.OnChanging = false
				s5 = "Visible"
				v350 = function(...)
					t3:ToggleVisible(v347, select(2, ...))
				end
			end

			t25[s5] = v350
			t25.Destroy = function()
				v347:Destroy()
			end

			return t25
		end
		t15.AddDiscordInvite = function(p167, p168)
			local Name2 = p168[1] or p168.Name or p168.Title or "Discord"
			local Desc = p168.Desc or p168.Description or ""
			local Logo = p168[2] or p168.Logo or ""
			local Invite = p168[3] or p168.Invite or ""
			local Frame3 = v19("Frame", scrollBar2, {
				Size = UDim2.new(1, 0, 0, 80),
				Name = "Option",
				BackgroundTransparency = 1
			})

			v19("TextLabel", Frame3, {
				Size = UDim2.new(1, 0, 0, 15),
				Position = UDim2.new(0, 5),
				TextColor3 = Color3.fromRGB(40, 150, 255),
				Font = Enum.Font.GothamMedium,
				TextXAlignment = "Left",
				BackgroundTransparency = 1,
				TextSize = 13,
				Text = Invite
			})

			local frame = v16(v19("Frame", Frame3, {
				Size = UDim2.new(1, 0, 0, 65),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1),
				BackgroundColor3 = u68["Color Hub 2"]
			}), "Frame")

			v70("Corner", frame)

			local ImageLabel = v19("ImageLabel", frame, {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(0, 7, 0, 7),
				Image = Logo,
				BackgroundTransparency = 1
			})

			v70("Corner", ImageLabel, UDim.new(0, 4))
			v70("Stroke", ImageLabel)
			v16(v19("TextLabel", frame, {
				Size = UDim2.new(1, -52, 0, 15),
				Position = UDim2.new(0, 44, 0, 7),
				Font = Enum.Font.GothamBold,
				TextColor3 = u68["Color Text"],
				TextXAlignment = "Left",
				BackgroundTransparency = 1,
				TextSize = 13,
				Text = Name2
			}), "Text")
			v16(v19("TextLabel", frame, {
				Size = UDim2.new(1, -52, 0, 0),
				Position = UDim2.new(0, 44, 0, 22),
				TextWrapped = "Y",
				AutomaticSize = "Y",
				Font = Enum.Font.Gotham,
				TextColor3 = u68["Color Dark Text"],
				TextXAlignment = "Left",
				BackgroundTransparency = 1,
				TextSize = 11,
				Text = Desc
			}), "DarkText")

			local TextButton = v19("TextButton", frame, {
				Size = UDim2.new(1, -14, 0, 16),
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0.5, 0, 1, -7),
				Text = "Join",
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextColor3 = Color3.fromRGB(220, 220, 220),
				BackgroundColor3 = Color3.fromRGB(50, 150, 50)
			})

			v70("Corner", TextButton, UDim.new(0, 5))

			local u371

			TextButton.Activated:Connect(function()
				setclipboard(Invite)

				if u371 then
					return
				end

				u371 = true
				v18(TextButton, {
					Text = "Copied to Clipboard",
					BackgroundColor3 = Color3.fromRGB(100, 100, 100),
					TextColor3 = Color3.fromRGB(150, 150, 150)
				})
				task.wait(5)
				v18(TextButton, {
					Text = "Join",
					BackgroundColor3 = Color3.fromRGB(50, 150, 50),
					TextColor3 = Color3.fromRGB(220, 220, 220)
				})
				u371 = false
			end)

			return {
				Destroy = function()
					Frame3:Destroy()
				end,
				Visible = function(...)
					t3:ToggleVisible(Frame3, select(2, ...))
				end
			}
		end

		return t15
	end
	ImageButton.Activated:Connect(t11.CloseBtn)
	v120.Activated:Connect(t11.MinimizeBtn)

	return t11
end

return t1
