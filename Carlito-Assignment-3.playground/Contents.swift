import UIKit

class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func displaySpecs() {
        print("Brand: \(self.brand), Processor: \(self.processor), RAM: \(self.ram)GB")
    }
}

class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(self.isTouchscreen ? "Yes" : "No")")
    }
}

class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Dedicated GPU: \(self.hasDedicatedGPU ? "Yes" : "No")")
    }
}

class Server: Computer {
    private var rackUnits: Int
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Rack Units: \(self.rackUnits)")
    }
}

let macbook: Laptop = Laptop(brand: "Apple", processor: "M1", ram: 16, isTouchscreen: false)
print("Laptop Specs:")
macbook.displaySpecs()
print()

let dellPC: Desktop = Desktop(brand: "Dell", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)
print("Desktop Specs:")
dellPC.displaySpecs()
print()

let hpServer: Server = Server(brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)
print("Server Specs:")
hpServer.displaySpecs()
