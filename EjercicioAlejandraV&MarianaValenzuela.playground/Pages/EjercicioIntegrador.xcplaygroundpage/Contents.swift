import UIKit
enum VehicleType{
    case car, moto, miniBus, bus
    
    var price: Int {
        switch self{
        case .moto: return 15
        case .car: return 20
        case .miniBus: return 25
        case .bus: return 30
        }
    }
}
//enum VehicleType{
//    case moto
//    case car
//    case miniBus
//    case bus
//
//    var price: Int {
//        switch self {
//            case .moto:
//                return 15
//            case .car:
//                return 20
//            case .miniBus:
//                return 25
//            case .bus:
//                return 30
//        }
//    }
//}
protocol Parkable {
    var plate: String { get }
    var type: VehicleType { get }
    var checkInTime: Date { get }
    var discountCard: String? { get }
    var parkedTime: Int { get }
}
struct Parking {
    var vehicles: Set<Vehicle> = []//se define asi para que no existan 2 vehiculos iguales
    var maxVehicles = 20
    var totalVehicles: (countVehicles: Int, gains: Int) = (0,0)//Tupla
    
    mutating func checkInVehicle(_ vehicle: Vehicle, onFinish:
    (Bool) -> Void) {
        guard vehicles.count < maxVehicles && vehicles.insert(vehicle).inserted else{
            onFinish(false)
            return
        }
        guard vehicles.description.contains(vehicle.plate)  else { //valida que no sea la misma patente
            print(vehicle.plate)
            return onFinish(false)
            }
        onFinish(true)
    }
    
    mutating func checkOutVehicle(plate: String, onSuccess: (Int) -> Void, onError: () -> Void) {
        guard let vehicle = vehicles.first(where: { $0.plate == plate}) else{
            onError()
            return
        }
        let fee = calculateFee(type: vehicle.type, parkedTime: vehicle.parkedTime, hasDiscountCard: vehicle.discountCard != nil)
        vehicles.remove(vehicle)
        totalVehicles.countVehicles += 1
        totalVehicles.gains += fee
        onSuccess(fee)
    }
    func showGains(){
        print("\(totalVehicles.countVehicles) vehicles have checked out and have earning of $\(totalVehicles.gains)")
    }
    func listVehicles(){
        for vehicle in vehicles{
            print("Vehicle: \(vehicle.plate)")
        }
    }
}


extension Parking {
    func calculateFee(type: VehicleType, parkedTime: Int, hasDiscountCard: Bool) -> Int {
        var cash = type.price
        var extraTime = 0
        var extraPrice = 0
        let discount = 0.85
        var feeDiscount = 0.0
    
                
        if parkedTime >= 0 && parkedTime < 120{
            if hasDiscountCard {
                feeDiscount = discount * Double(cash)
            }else {
                cash = type.price
            }
        }else if parkedTime > 120{
            if hasDiscountCard {
                extraTime = parkedTime - 120
                extraPrice = (extraTime / 15) * 5
                feeDiscount = discount * Double(cash)
            }else {
                extraTime = parkedTime - 120
                extraPrice = (extraTime / 15) * 5
                cash += extraPrice
            }
        }
        cash = Int(ceil(feeDiscount))
        return cash
    }
//    func calculateFee (type: VehicleType, parkedTime : Int, hasDiscountCard : Bool) -> Int{
//        var valor = type.tarifa
//
//        let tiempoBase = 120
//        let quinceMin = 15.0
//        let valorMin: Int
//        let descuento = 0.85
//
//        if parkedTime > tiempoBase{
//
//            let minPorCobrar = parkedTime - tiempoBase
//
//            valorMin = Int((Double(minPorCobrar) / quinceMin) * 5)
//            valor = valor + valorMin
//        }
//        if hasDiscountCard == true && parkedTime > tiempoBase{ // valida  si trae decuento y si han pasado mas de 120 min para hacer descuento
//            valor = Int(Double(valor) * descuento)
//        }
//        return valor
//    }
}

struct Vehicle: Parkable, Hashable {
    
    let plate: String
    var type: VehicleType
    var checkInTime: Date
    var discountCard: String?
    
    init(plate: String, type: VehicleType, checkInTime: Date = Date(), discountCard: String?){
        self.plate = plate
        self.type = type
        self.checkInTime = checkInTime
        self.discountCard = discountCard
    }
    
    var parkedTime: Int { get {
            return Calendar.current.dateComponents([.minute], from: checkInTime, to: Date()).minute ?? 0
        }
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(plate)
    }
    
    static func ==(lhs: Vehicle, rhs: Vehicle) -> Bool {
        return lhs.plate == rhs.plate
    }
}

//let vehicle1 = Vehicle(plate: "AA111AA", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_001")
//let vehicle2 = Vehicle(plate: "B222BBB", type: VehicleType.moto, checkInTime: Date(), discountCard: "DISCOUNT_CARD_002")
//alkeParking.checkInVehicle(vehicle1) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle2) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//
////9
//alkeParking.checkOutVehicle(plate: "AA111AA",
//                            onSuccess: { fee in print("Your fee is \(fee). Come back soon.")},
//                            onError: { print("Sorry, the check-out failed")})
//alkeParking.checkOutVehicle(plate: "B222BBB",
//                            onSuccess: { fee in print("Your fee is \(fee). Come back soon.")},
//                            onError: { print("Sorry, the check-out failed")})
////11
//alkeParking.showEarnings()
//12
//alkeParking.listVehicles()

var alkeParking = Parking()
let vehicless = [Vehicle(plate: "AA111AA", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_001")
, Vehicle(plate: "B222BBB", type: VehicleType.moto, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "CC333CC", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "DD444DD", type: VehicleType.bus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_002")
, Vehicle(plate: "AA111BB", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_003")
, Vehicle(plate: "B222CCC", type: VehicleType.moto, checkInTime: Date(), discountCard: "DISCOUNT_CARD_004")
, Vehicle(plate: "CC333DD", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "DD444EE", type: VehicleType.bus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_005")
, Vehicle(plate: "AA111CC", type: VehicleType.car, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "B222DDD", type: VehicleType.moto, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "CC333EE", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "DD444GG", type: VehicleType.bus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_006")
, Vehicle(plate: "AA111DD", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_007")
, Vehicle(plate: "B222EEE", type: VehicleType.moto, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "CC333FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "CC331FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "DD442GG", type: VehicleType.bus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_008")
, Vehicle(plate: "AA113DD", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_009")
//, Vehicle(plate: "B2224EE", type: VehicleType.moto, checkInTime: Date(), discountCard: nil)
, Vehicle(plate: "AA113DD", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil) //patente duplicada
, Vehicle(plate: "CC332FF", type: VehicleType.moto, discountCard:"DISCOUNT_CARD_010")]

//var alkeParking = Parking()

//MARK: Ejercicio 6
for vehicle in vehicless {
    alkeParking.checkInVehicle(vehicle) { success in
        success ? print("Welcome to AlkeParking \(vehicle.plate)!") : print("Sorry, the check-in failed: \(vehicle.plate)")
    }
}
alkeParking.checkOutVehicle(plate: "AA111BB") { valorPago in //auto $20 y tiene descuento
    print("Your fee is (fee). Come back soon.")
} onError: {
    print("Sorry, the check-out failed")
}
alkeParking.listVehicles()
alkeParking.showGains()

