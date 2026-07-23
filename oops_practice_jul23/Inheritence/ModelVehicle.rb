class Mode_vehicle

    def refuel
        "Fill the fuel"
    end
end

class ElectricCar < Mode_vehicle

    def refuel
        "Fill the recharge"
    end
end

p Mode_vehicle.new

p Mode_vehicle.new.refuel

p ElectricCar.new.refuel