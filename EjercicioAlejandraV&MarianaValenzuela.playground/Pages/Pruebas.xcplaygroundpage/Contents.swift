//: [Previous](@previous)




//8
//print(alkeParking.calculateFee(type: vehicle1.type, parkedTime: vehicle1.parkedTime, hasDiscountCard: false))
//print(alkeParking.calculateFee(type: vehicle2.type, parkedTime: vehicle1.parkedTime, hasDiscountCard: false))

//6
//let vehicles = [Vehicle(plate: "AA111AA", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_001"), Vehicle(plate: "B222BBB", type: VehicleType.moto, checkInTime: Date(), discountCard: nil), Vehicle(plate: "CC333CC", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil), Vehicle(plate: "DD444DD", type: VehicleType.bus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_002"), Vehicle(plate: "AA111BB", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_003"), Vehicle(plate: "B222CCC", type: VehicleType.moto, checkInTime: Date(), discountCard: "DISCOUNT_CARD_004"), Vehicle(plate: "CC333DD", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil), Vehicle(plate: "DD444EE", type: VehicleType.bus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_005"), Vehicle(plate: "AA111CC", type: VehicleType.car, checkInTime: Date(), discountCard: nil), Vehicle(plate: "B222DDD", type: VehicleType.moto, checkInTime: Date(), discountCard: nil), Vehicle(plate: "CC333EE", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil), Vehicle(plate: "DD444GG", type: VehicleType.bus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_006"), Vehicle(plate: "AA111DD", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_007"), Vehicle(plate: "B222EEE", type: VehicleType.moto, checkInTime: Date(), discountCard: nil), Vehicle(plate: "CC333FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil), Vehicle(plate: "DD444HH", type: VehicleType.bus, checkInTime: Date(), discountCard: nil), Vehicle(plate: "AA111EE", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_008"), Vehicle(plate: "B222FFF", type: VehicleType.moto, checkInTime: Date(), discountCard: nil), Vehicle(plate: "CC333GG", type: VehicleType.miniBus, checkInTime: Date(), discountCard: "DISCOUNT_CARD_009"), Vehicle(plate: "B222FFF", type: VehicleType.moto, checkInTime: Date(), discountCard: nil), Vehicle(plate: "AA869EE", type: VehicleType.car, checkInTime: Date(), discountCard: "DISCOUNT_CARD_008"), Vehicle(plate: "B843678", type: VehicleType.moto, checkInTime: Date(), discountCard: nil)]
//
//for vehicle in vehicles {
//    alkeParking.checkInVehicle(vehicle, onFinish: { success in
//        success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//    })
//}


//5
//let vehicle1 = Vehicle(plate: "AA111AA", type:
//VehicleType.car, checkInTime: Date(), discountCard:
//"DISCOUNT_CARD_001")
//let vehicle2 = Vehicle(plate: "B222BBB", type:
//VehicleType.moto, checkInTime: Date(), discountCard: nil)
//let vehicle3 = Vehicle(plate: "CC333CC", type:
//VehicleType.miniBus, checkInTime: Date(), discountCard:
//nil)
//
// let vehicle4 = Vehicle(plate: "DD444DD", type:
//VehicleType.bus, checkInTime: Date(), discountCard:
//"DISCOUNT_CARD_002")
//let vehicle5 = Vehicle(plate: "AA111BB", type:
//VehicleType.car, checkInTime: Date(), discountCard:
//"DISCOUNT_CARD_003")
//let vehicle6 = Vehicle(plate: "B222CCC", type:
//VehicleType.moto, checkInTime: Date(), discountCard:
//"DISCOUNT_CARD_004")
//let vehicle7 = Vehicle(plate: "CC333DD", type:
//VehicleType.miniBus, checkInTime: Date(), discountCard:
//nil)
//let vehicle8 = Vehicle(plate: "DD444EE", type:
//VehicleType.bus, checkInTime: Date(), discountCard:
//"DISCOUNT_CARD_005")
//let vehicle9 = Vehicle(plate: "AA111CC", type:
//VehicleType.car, checkInTime: Date(), discountCard: nil)
//let vehicle10 = Vehicle(plate: "B222DDD", type:
//VehicleType.moto, checkInTime: Date(), discountCard: nil)
//let vehicle11 = Vehicle(plate: "CC333EE", type:
//VehicleType.miniBus, checkInTime: Date(), discountCard:
//nil)
//let vehicle12 = Vehicle(plate: "DD444GG", type:
// VehicleType.bus, checkInTime: Date(), discountCard:
//"DISCOUNT_CARD_006")
//let vehicle13 = Vehicle(plate: "AA111DD", type:
//VehicleType.car, checkInTime: Date(), discountCard:
//"DISCOUNT_CARD_007")
//let vehicle14 = Vehicle(plate: "B222EEE", type:
//VehicleType.moto, checkInTime: Date(), discountCard: nil)
//let vehicle15 = Vehicle(plate: "AA111DD", type:
//VehicleType.miniBus, checkInTime: Date(), discountCard:
//nil)
//let vehicle16 = Vehicle(plate: "FF333FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
//let vehicle17 = Vehicle(plate: "RR777FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
//let vehicle18 = Vehicle(plate: "XX333FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
//let vehicle19 = Vehicle(plate: "OO888FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
//let vehicle20 = Vehicle(plate: "CC333FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
//let vehicle21 = Vehicle(plate: "WW333FF", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
//let vehicle22 = Vehicle(plate: "CC333WW", type: VehicleType.miniBus, checkInTime: Date(), discountCard: nil)
//alkeParking.checkInVehicle(vehicle2) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle3) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle4) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle5) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle6) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle7) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle8) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle9) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle10) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle11) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle12) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle13) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle14) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}
//alkeParking.checkInVehicle(vehicle15) { success in
//    success ? print("Welcome to AlkeParking!") : print("Sorry, the check-in failed")
//}

//4
//var alkeParking = Parking()
//let car = Vehicle(plate: "AA111AA", type: VehicleType.car,
//checkInTime: Date(), discountCard: "DISCOUNT_CARD_001")
//let moto = Vehicle(plate: "B222BBB", type:
//VehicleType.moto, checkInTime: Date(), discountCard: nil)
//let miniBus = Vehicle(plate: "CC333CC", type:
//VehicleType.miniBus, checkInTime: Date(), discountCard:
//nil)
//let bus = Vehicle(plate: "DD444DD", type: VehicleType.bus,
//checkInTime: Date(), discountCard: "DISCOUNT_CARD_002")
//
//print(alkeParking.vehicles.insert(car).inserted)  // true
//print(alkeParking.vehicles.insert(moto).inserted)  // true
//print(alkeParking.vehicles.insert(miniBus).inserted)// true
//print(alkeParking.vehicles.insert(bus).inserted)  // true
//
//let car2 = Vehicle(plate: "AA111AA", type: VehicleType.car,
//checkInTime: Date(), discountCard: "DISCOUNT_CARD_003")
//print(alkeParking.vehicles.insert(car2).inserted)  // false
//
//Finalmente, para retirar un vehículo del estacionamiento,remove(_:)
//alkeParking.vehicles.remove(moto)

//: [Next](@next)
