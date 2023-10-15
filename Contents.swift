protocol Cannons {
    var cannonsCount: Int { get }
    
    func firingCannons()
    func cannonCount()
    func fireCannon(count: Int)
}

protocol CargoManaging {
    var cargo: [String] { get }
    
    func addCargo(newCargo: String)
    func removeCargo(removeCargo: String)
}

protocol CrewManaging {
    var crew: [String] { get }
    
    func addCrew(newCrew: String)
    func removeCrew(removeCrew: String)
}


class PirateShip: Cannons {
    private let name: String
    internal var cannonsCount: Int
    private let cargoManager: CargoManaging
    private let crewManager: CrewManaging
    
    init(name: String, cannonsCount: Int, cargoManager: CargoManaging, crewManager: CrewManaging) {
        self.name = name
        self.cannonsCount = cannonsCount
        self.cargoManager = cargoManager
        self.crewManager = crewManager
    }
    
    func firingCannons() {
        print ("💥💣💥💣💣💣💣💥💥💥💥💥")
    }
    
    func removeCargo(cargo: String) {
        cargoManager.removeCargo(removeCargo: cargo)
    }
    
    func addCargo(cargo: String){
        cargoManager.addCargo(newCargo: cargo)
    }
    
    func listCargo() {
        print ("let's check cargo list of pirates: \(cargoManager.cargo)")
    }
    
    func addCrew(crew: String) {
        crewManager.addCrew(newCrew: crew)
        
        print("We got new one: \(crew)")
    }
    
    func removeCrew(crew: String) {
        crewManager.removeCrew(removeCrew: crew)
    }
    
    func listCrew() {
        print("let's check crew list of pirates: \(crewManager.crew)")
    }
    
    func cannonCount() {
        
        print("let's check Cannon Count: \(cannonsCount) 💥💣 ")
    }
    
    func fireCannon(count: Int) {
        for _ in 1...count {
            firingCannons()
        }
        
        cannonsCount -= 1
    }
}

class CrewManager: CrewManaging {
    var crew: [String]
    
    init(crew: [String]) {
        self.crew = crew
    }
    
    func addCrew(newCrew: String) {
        crew.append(newCrew)
    }
    
    func removeCrew(removeCrew: String) {
        if let index = crew.firstIndex(of: removeCrew) {
            crew.remove(at: index)
        }
        print("They have \(removeCrew) !")
    }
}


class CargoManager: CargoManaging {
    var cargo: [String]
    
    init(cargo: [String]) {
        self.cargo = cargo
    }
    
    func addCargo(newCargo: String) {
        cargo.append(newCargo)
        
        print("We, pirates have new booty: \(newCargo)")
    }
    
    func removeCargo(removeCargo: String) {
        if let index = cargo.firstIndex(of: removeCargo) {
            cargo.remove(at: index)
        }
        
        print("We lost cargo: \(removeCargo)")
    }
    
}

class Frigate: PirateShip {
    func Fillingthebomb(newBomb: Int) {
        cannonsCount += newBomb
        
        print("We were given a new supply of bombs 🤩💣💥")
    }
}

class Galleon: PirateShip {
    func musiceForFun() {
        print("fight with fun guys: 🎵🎶🎼🎹🎸🎸🎸🎸📯📯🎶🎶🎶🎶")
    }
}


class TreasureMap {
    private let x: Int
    private let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func hintToTreasure(coordinateX: Int, coordinateY: Int) {
        if coordinateX == x && coordinateY == y {
            print("Yeeeey, you found the treasure 🥳🤩✨✨✨")
        } else {
            print("There's no treasure, but you can go strait and then north side you will find corect coorinates ✨✨")
        }
    }
    
}



class SeaAdventure {
    let adventureType: String
    
    init(adventureType: String) {
        self.adventureType = adventureType
    }
    
    func encounter() {
        print("now 🌊🌊⚓☠☠🏴🏴🏴 Pirates are fighting against Thanos and trying to gain the 6 infinity stones: time, space, reality, mind, power, and soul. 💎")
    }
}



class PirateCode {
    private func discussTerms(term: String) {
        print ("The discussion has started about \(term)")
    }
    
    func parley(term: String) {
        discussTerms(term: term)
        print("Captain: Should we think about negotiations? 🤔💭")
    }
    
    func mutiny(term: String) {
        discussTerms(term: term)
        print("We are not agree to the proposed terms and lets fight until victory!!!! 💣💣💥💥💥💣💣☠☠☠☠☠")
    }
}


let shipblackPearl = PirateShip(
    name: "Black Pearl",
    cannonsCount: 10,
    cargoManager: CargoManager(cargo: ["bomb", "gold", "whisky", "apple"]),
    crewManager: CrewManager(crew: ["Captain Barbosa", "dog", "Jack Sparrow", "Mr. Gips", "Keira Knightley"])
)

let treasureMap = TreasureMap(x: 67891, y: 00890)

let pirateCode = PirateCode()

let seaAdvanture = SeaAdventure(adventureType: "Flying Dutchman")

let x = 67891
let y = 00890

let supportShip = Frigate(
    name: "Marria",
    cannonsCount: 50,
    cargoManager: CargoManager(cargo: ["Bombs"]),
    crewManager: CrewManager(crew: ["Captain", "dog"])
)

let intertainingShip = Galleon(
    name: "Lex-Seni",
    cannonsCount: 0,
    cargoManager: CargoManager(cargo: ["Musical speaker", "Musical discs"]),
    crewManager: CrewManager(crew: ["Captain"])
)

treasureMap.hintToTreasure(coordinateX: x, coordinateY: y)
seaAdvanture.encounter()
pirateCode.parley(term: " -  let's nagotiation")
pirateCode.mutiny(term: "Black Pearl's crew answer: ")

shipblackPearl.fireCannon(count: 2)

shipblackPearl.removeCargo(cargo: "gold")

shipblackPearl.removeCrew(crew: "Captain Barbosa")

shipblackPearl.fireCannon(count: 5)

shipblackPearl.addCrew(crew: "monkey 🐒")
shipblackPearl.addCargo(cargo: "bananas 🍌🍌🍌")

shipblackPearl.fireCannon(count: 3)

shipblackPearl.removeCrew(crew: "Mr. Gips")

shipblackPearl.listCargo()
shipblackPearl.listCrew()

shipblackPearl.cannonCount()

shipblackPearl.fireCannon(count: 5)

shipblackPearl.addCargo(cargo: "diamonds 💎💎💎💎")

pirateCode.parley(term: ": Thanos is gone! But We have a huge treasure! So, who cares! let's stop fighting.")
pirateCode.mutiny(term: ": Let's bomb and then step back.")

shipblackPearl.fireCannon(count: 10)

supportShip.Fillingthebomb(newBomb: 5)

intertainingShip.musiceForFun()

shipblackPearl.firingCannons()








