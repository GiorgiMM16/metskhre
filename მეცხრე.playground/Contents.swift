import Cocoa

/* შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ) */

enum Gender {
    case male, female
}

/* შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender */

protocol SuperBeing {
    var name: String {get}
    var strength: Int {get}
    var speed: Int {get}
    var weakness: String {get}
    var gender: Gender {get}
}

/* SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა */

extension SuperBeing {
    var strength: Int {
        return 10
    }
    
    var speed: Int {
        9
    }
}

/* შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს */

class SuperHero: SuperBeing {
    var name: String
    var strength: Int
    var speed: Int
    var weakness: String
    var gender: Gender
    
    /* გაუწერეთ Superhero კლასს დამატებითი პარამეტრები outfitColor: String, equipment: String, vehicle: String */
    
    var outfitColor: String
    var equipment: String
    var vehicle: String
    
    
    
    init(name: String, strength: Int, speed: Int, weakness: String, gender: Gender, outfitColor: String, equipment: String, vehicle: String) {
        self.name = name
        self.strength = strength
        self.speed = speed
        self.weakness = weakness
        self.gender = gender
        self.outfitColor = outfitColor
        self.equipment = equipment
        self.vehicle = vehicle
    }
}

class SuperVillain: SuperBeing {
    var name: String
    var strength: Int
    var speed: Int
    var weakness: String
    var gender: Gender
    
    init(name: String, strength: Int, speed: Int, weakness: String, gender: Gender) {
        self.name = name
        self.strength = strength
        self.speed = speed
        self.weakness = weakness
        self.gender = gender
    }
}

/* გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს -
 “‘სუპერგმირის სახელი’ არ შეუშინდა სახიფათო სიტუაციას და ‘დაზარალებულის სახელი’ გადაარჩინა სიკვდილს” (მაგ: “ბეტმენი” არ შეუშინდა სახიფათო სიტუაციას და “გელა” გადაარჩინა სიკვდილს) */

extension SuperHero {
    func rescue (SuperHero: SuperHero, dazaralebuli: String) -> String {
        "\(SuperHero.name) არ შეუშინდა კომპლექსურ კოდს და \(dazaralebuli) გადაარჩინა სუიციდს მეშვიდედან"
    }
}

/* გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს -
 “‘სუპერგმირის სახელი’ შეერკინა და დაამარცხა ‘ბოროტმოქმედის სახელი’” (მაგ: “ბეტმენი” შეერკინა და დაამარცხა “ჯოკერი”) */

extension SuperHero {
    func combat (Supervillain: SuperVillain, SuperHero: SuperHero) {
        "\(SuperHero.name) შეერკინა და დაამარცხა \(Supervillain.name)"
    }
}

/* გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String */

extension SuperVillain {
    var evilScheme: String {
        return "შავი ჰალსტუხი"
    }
    var obsession: String {
        return "სოხუმსკის მახოს გოგო"
    }
    var rivalry: String {
        return "კარენოი გელა"
    }
}
/* default value - ს მიცემის გარეშე არიქნა ცოცხალი თავით, (სამჯერ ვცადეთ და ღმერთი სამობითააო)*/

/* გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს -
 “ბოროტმ. სახელი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “სუპერგმირის სახელი” მის შეჩერებას თუ შეძლებს” (მაგ: “ჯოკერი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “ბეტმენი” მის შეჩერებას თუ შეძლებს) */

extension SuperVillain {
    func attack (SuperHero: SuperHero, SuperVillain: SuperVillain){
        "\(SuperVillain.name) გეგმაობს რომა ქალაქი მიწასთან გაასწოროს რა, საეჭვოა \(SuperHero.name) თუ მოახერხებს რაიმეს"
    }
}

/* გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს -
 “‘ბოროტმოქმედის სახელი’ ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად ‘მსხვერპლის სახელი’ აღმოჩნდა” (მაგ: “ჯოკერი” ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად “გელა” აღმოჩნდა) */

extension SuperVillain {
    func experimentation (SuperVillain: SuperVillain, msxverpluka: String){
        "\(SuperVillain) დაუნდობლად აწვალებს მოქალაქეებს, დაზარალებუთაგან ერთ-ერთია \(msxverpluka)"
    }
}


/* დავით თუ შენ კითხულობ ბექასაც წააკითხე რამდენიმე კამპუს ინსაიდ ჯოუქია */
let gmiri1 = SuperHero(name: "გელუკა", strength: 12, speed: 13, weakness: "მიხოს გოგო", gender: Gender.male, outfitColor: "ჩორნი", equipment: "ეკლიანი ვარდი", vehicle: "გელუკამობილი")
let boroti1 = SuperVillain(name: "მიხო", strength: 13, speed: 14, weakness: "გელუკას ეკლიანი ვარდი", gender: Gender.male)
let gmiri2 = SuperHero(name: "ზაალიკო", strength: 15, speed: 16, weakness: "ზროსლი კაცები", gender: Gender.male, outfitColor: "შავი ტყავის ჟაკეტი", equipment: "კოკაკოლა ხელში", vehicle: "338")
let boroti2 = SuperVillain(name: "ლალი ეზუგბაია", strength: 0, speed: 0, weakness: "არა-მეგრელები", gender: Gender.female)
let gmiri3 = SuperHero(name: "დავით", strength: 11, speed: 22, weakness: "ჩატში სიჩუმე", gender: Gender.male, outfitColor: "gray", equipment: "ულიმიტო რაოდენობის ჯოუქები", vehicle: "დავითომობილი")
let boroti3 = SuperVillain(name: "ვასიკო", strength: 11, speed: 22, weakness: "კარგი ინტერნეტ კავშირი", gender: Gender.male)
let gmiri4 = SuperHero(name: "ბექა-გიორგი", strength: 11, speed: 22, weakness: "მარტივი დავალებები", gender: Gender.male, outfitColor: "gray", equipment: "დავალებების შექმნის ფანტაზიის უნარი", vehicle: "რამე სვეწკური")
let boroti4 = SuperVillain(name: "მიკაუტაძე", strength: 15, speed: 20, weakness: "კარებში მიზანი", gender: Gender.male)
let gmiri5 = SuperHero(name: "ბარბარე", strength: 12, speed: 23, weakness: "ვასო რომ კითხვას აიგნორებს", gender: Gender.female, outfitColor: "ვარდისფერი ოფქ", equipment: "ტაროები", vehicle: "Gaming სკამი")
let boroti5 = SuperVillain(name: "აკაკი", strength: 12, speed: 23, weakness: "ქოლში გაზიარების ფუნქცია რომ არგვაქვს", gender: Gender.male)


/* Optional*/

/* დაწერეთ ჯენერიკ ფუნქცია compareSwiftness რომელიც იღებს მხოლოდ ორ პარამეტრს პირველ და მეორე სუპერგმირებს რომლებიც დაქვემდებარებულები იქნებიან SuperBeing პროტოკოლზე, ფუნქცია უნდა აბრუნებდეს სტრინგს */

func compareSwiftness<T: SuperBeing>(SuperHero: T, SuperVillain: T) -> String {
    if SuperHero.speed > SuperVillain.speed {
        return "კეთილმა სძლია ბოროტსა არსება მისი გრძელია"
    } else if SuperVillain.speed > SuperHero.speed {
        return "ბოროტმა სძლია კეთილსა არსება მისი მოკლეა"
    }
    return "invalid error"
}












