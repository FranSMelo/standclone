# Limpar os dados existentes
Brand.destroy_all
VehicleType.destroy_all
Segment.destroy_all
FuelType.destroy_all
Transmission.destroy_all
Condition.destroy_all
Vehicle.destroy_all
VehicleImage.destroy_all

# Criar Marcas (Brands)
brands = Brand.create!([
  { name: "Toyota" },
  { name: "Ford" },
  { name: "BMW" },
  { name: "Audi" },
  { name: "Mercedes-Benz" },
  { name: "Volkswagen" },
  { name: "Renault" },
  { name: "Peugeot" },
  { name: "Nissan" },
  { name: "Hyundai" },
  { name: "Kia" },
  { name: "Volvo" },
  { name: "Fiat" },
  { name: "Citroën" },
  { name: "Honda" },
  { name: "Mazda" },
  { name: "Subaru" },
  { name: "Jeep" },
  { name: "Land Rover" },
  { name: "Porsche" }
])

# Criar Tipos de Veículos (VehicleTypes)
vehicle_types = VehicleType.create!([
  { name: "Carro" },
  { name: "Mota" },
  { name: "Camião" },
  { name: "SUV" },
  { name: "Híbrido" },
  { name: "Elétrico" },
  { name: "Desportivo" },
  { name: "Utilitário" }
])

# Criar Segmentos (Segments)
segments = Segment.create!([
  { code: "A", name: "Citadinos", description: "Veículos compactos para cidade" },
  { code: "B", name: "Utilitários", description: "Veículos versáteis para uso geral" },
  { code: "C", name: "Sedans", description: "Veículos de porte médio" },
  { code: "D", name: "Executivos", description: "Veículos de luxo" },
  { code: "E", name: "SUV", description: "Veículos utilitários esportivos" },
  { code: "F", name: "Desportivos", description: "Veículos de alto desempenho" },
  { code: "G", name: "Elétricos", description: "Veículos movidos a eletricidade" }
])

# Criar Tipos de Combustível (FuelTypes)
fuel_types = FuelType.create!([
  { name: "Gasolina" },
  { name: "Diesel" },
  { name: "Elétrico" },
  { name: "Híbrido" },
  { name: "GPL" },
  { name: "Hidrogénio" }
])

# Criar Transmissões (Transmissions)
transmissions = Transmission.create!([
  { name: "Manual" },
  { name: "Automática" },
  { name: "CVT" },
  { name: "Semi-automática" },
  { name: "Dupla Embreagem" }
])

# Criar Condições (Conditions)
conditions = Condition.create!([
  { name: "Novo" },
  { name: "Semi-novo" },
  { name: "Usado" },
  { name: "Recondicionado" }
])

# Criar Veículos (Vehicles)
vehicles_data = [
  # Veículos Toyota
  { brand: brands[0], model: "Corolla", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2020, registration_month: 5, mileage: 15000, price: 25000.0, fuel_type: fuel_types[0], power_hp: 150, engine_size: 2000, transmission: transmissions[0], color: "Preto", doors: 4, condition: conditions[0], description: "Carro em excelente estado, com poucos quilómetros.", status: "disponível" },
  { brand: brands[0], model: "Yaris", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2019, registration_month: 8, mileage: 30000, price: 18000.0, fuel_type: fuel_types[0], power_hp: 110, engine_size: 1500, transmission: transmissions[0], color: "Branco", doors: 5, condition: conditions[1], description: "Veículo confortável e económico.", status: "reservado" },
  { brand: brands[0], model: "RAV4", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 3, mileage: 10000, price: 35000.0, fuel_type: fuel_types[3], power_hp: 200, engine_size: 2500, transmission: transmissions[1], color: "Azul", doors: 5, condition: conditions[0], description: "SUV de luxo com tecnologia avançada.", status: "vendido" },

  # Veículos Ford
  { brand: brands[1], model: "Focus", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2018, registration_month: 10, mileage: 45000, price: 20000.0, fuel_type: fuel_types[1], power_hp: 120, engine_size: 1600, transmission: transmissions[1], color: "Cinza", doors: 4, condition: conditions[2], description: "Sedan confortável e económico.", status: "disponível" },
  { brand: brands[1], model: "Mustang", vehicle_type: vehicle_types[6], segment: segments[5], registration_year: 2022, registration_month: 1, mileage: 5000, price: 60000.0, fuel_type: fuel_types[0], power_hp: 450, engine_size: 5000, transmission: transmissions[1], color: "Vermelho", doors: 2, condition: conditions[0], description: "Carro desportivo com design icónico.", status: "disponível" },
  { brand: brands[1], model: "Ranger", vehicle_type: vehicle_types[2], segment: segments[6], registration_year: 2020, registration_month: 6, mileage: 20000, price: 40000.0, fuel_type: fuel_types[1], power_hp: 200, engine_size: 2500, transmission: transmissions[1], color: "Branco", doors: 4, condition: conditions[1], description: "Camião robusto e versátil.", status: "reservado" },

  # Veículos BMW
  { brand: brands[2], model: "X5", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 3, mileage: 10000, price: 70000.0, fuel_type: fuel_types[3], power_hp: 300, engine_size: 3000, transmission: transmissions[1], color: "Azul", doors: 5, condition: conditions[0], description: "SUV de luxo com tecnologia avançada.", status: "disponível" },
  { brand: brands[2], model: "320i", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2019, registration_month: 4, mileage: 35000, price: 45000.0, fuel_type: fuel_types[0], power_hp: 180, engine_size: 2000, transmission: transmissions[1], color: "Preto", doors: 4, condition: conditions[1], description: "Sedan executivo com acabamento premium.", status: "reservado" },
  { brand: brands[2], model: "M4", vehicle_type: vehicle_types[6], segment: segments[5], registration_year: 2022, registration_month: 2, mileage: 5000, price: 90000.0, fuel_type: fuel_types[0], power_hp: 450, engine_size: 3000, transmission: transmissions[1], color: "Cinza", doors: 2, condition: conditions[0], description: "Carro desportivo de alto desempenho.", status: "disponível" },

  # Veículos Audi
  { brand: brands[3], model: "A4", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2018, registration_month: 10, mileage: 45000, price: 35000.0, fuel_type: fuel_types[0], power_hp: 190, engine_size: 2000, transmission: transmissions[1], color: "Cinza", doors: 4, condition: conditions[2], description: "Sedan executivo com acabamento premium.", status: "disponível" },
  { brand: brands[3], model: "Q5", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 3, mileage: 10000, price: 55000.0, fuel_type: fuel_types[3], power_hp: 250, engine_size: 2000, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "SUV de luxo com tecnologia avançada.", status: "disponível" },
  { brand: brands[3], model: "TT", vehicle_type: vehicle_types[6], segment: segments[5], registration_year: 2020, registration_month: 7, mileage: 25000, price: 60000.0, fuel_type: fuel_types[0], power_hp: 230, engine_size: 2000, transmission: transmissions[1], color: "Vermelho", doors: 2, condition: conditions[1], description: "Carro desportivo com design elegante.", status: "reservado" },

  # Veículos Mercedes-Benz
  { brand: brands[4], model: "C-Class", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2022, registration_month: 1, mileage: 5000, price: 55000.0, fuel_type: fuel_types[3], power_hp: 250, engine_size: 2000, transmission: transmissions[1], color: "Branco", doors: 4, condition: conditions[0], description: "Carro de luxo com tecnologia de ponta.", status: "disponível" },
  { brand: brands[4], model: "GLE", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 9, mileage: 12000, price: 75000.0, fuel_type: fuel_types[3], power_hp: 300, engine_size: 3000, transmission: transmissions[1], color: "Preto", doors: 5, condition: conditions[0], description: "SUV de luxo com espaço amplo.", status: "disponível" },
  { brand: brands[4], model: "AMG GT", vehicle_type: vehicle_types[6], segment: segments[5], registration_year: 2022, registration_month: 2, mileage: 3000, price: 120000.0, fuel_type: fuel_types[0], power_hp: 500, engine_size: 4000, transmission: transmissions[1], color: "Cinza", doors: 2, condition: conditions[0], description: "Carro desportivo de alto desempenho.", status: "disponível" },

  # Veículos Volkswagen
  { brand: brands[5], model: "Golf", vehicle_type: vehicle_types[0], segment: segments[1], registration_year: 2020, registration_month: 6, mileage: 20000, price: 22000.0, fuel_type: fuel_types[0], power_hp: 140, engine_size: 1600, transmission: transmissions[0], color: "Vermelho", doors: 5, condition: conditions[1], description: "Hatchback versátil e confortável.", status: "reservado" },
  { brand: brands[5], model: "Tiguan", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 3, mileage: 15000, price: 35000.0, fuel_type: fuel_types[1], power_hp: 180, engine_size: 2000, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "SUV familiar com espaço amplo.", status: "disponível" },
  { brand: brands[5], model: "Passat", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2019, registration_month: 4, mileage: 35000, price: 28000.0, fuel_type: fuel_types[0], power_hp: 150, engine_size: 2000, transmission: transmissions[1], color: "Azul", doors: 4, condition: conditions[1], description: "Sedan confortável e económico.", status: "reservado" },

  # Veículos Renault
  { brand: brands[6], model: "Clio", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2019, registration_month: 4, mileage: 35000, price: 15000.0, fuel_type: fuel_types[0], power_hp: 90, engine_size: 1200, transmission: transmissions[0], color: "Azul", doors: 3, condition: conditions[2], description: "Carro compacto ideal para cidade.", status: "disponível" },
  { brand: brands[6], model: "Captur", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 2, mileage: 10000, price: 25000.0, fuel_type: fuel_types[0], power_hp: 110, engine_size: 1300, transmission: transmissions[1], color: "Preto", doors: 5, condition: conditions[0], description: "SUV compacto e moderno.", status: "disponível" },
  { brand: brands[6], model: "Megane", vehicle_type: vehicle_types[0], segment: segments[1], registration_year: 2020, registration_month: 7, mileage: 25000, price: 20000.0, fuel_type: fuel_types[0], power_hp: 130, engine_size: 1600, transmission: transmissions[1], color: "Cinza", doors: 5, condition: conditions[1], description: "Hatchback versátil e confortável.", status: "reservado" },

  # Veículos Peugeot
  { brand: brands[7], model: "208", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2021, registration_month: 2, mileage: 10000, price: 18000.0, fuel_type: fuel_types[0], power_hp: 110, engine_size: 1300, transmission: transmissions[1], color: "Preto", doors: 5, condition: conditions[0], description: "Hatchback moderno e eficiente.", status: "disponível" },
  { brand: brands[7], model: "3008", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2020, registration_month: 7, mileage: 25000, price: 30000.0, fuel_type: fuel_types[1], power_hp: 180, engine_size: 2000, transmission: transmissions[1], color: "Cinza", doors: 5, condition: conditions[1], description: "SUV familiar com espaço amplo.", status: "reservado" },
  { brand: brands[7], model: "508", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2019, registration_month: 4, mileage: 35000, price: 28000.0, fuel_type: fuel_types[0], power_hp: 150, engine_size: 2000, transmission: transmissions[1], color: "Azul", doors: 4, condition: conditions[1], description: "Sedan confortável e económico.", status: "reservado" },

  # Veículos Nissan
  { brand: brands[8], model: "Qashqai", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2020, registration_month: 7, mileage: 25000, price: 28000.0, fuel_type: fuel_types[1], power_hp: 150, engine_size: 1600, transmission: transmissions[1], color: "Cinza", doors: 5, condition: conditions[1], description: "SUV familiar com espaço amplo.", status: "disponível" },
  { brand: brands[8], model: "Leaf", vehicle_type: vehicle_types[4], segment: segments[6], registration_year: 2021, registration_month: 3, mileage: 10000, price: 35000.0, fuel_type: fuel_types[2], power_hp: 150, engine_size: 0, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "Carro elétrico com autonomia elevada.", status: "disponível" },
  { brand: brands[8], model: "Micra", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2019, registration_month: 4, mileage: 35000, price: 15000.0, fuel_type: fuel_types[0], power_hp: 90, engine_size: 1200, transmission: transmissions[0], color: "Azul", doors: 3, condition: conditions[2], description: "Carro compacto ideal para cidade.", status: "disponível" },

  # Veículos Hyundai
  { brand: brands[9], model: "Tucson", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 9, mileage: 12000, price: 32000.0, fuel_type: fuel_types[3], power_hp: 180, engine_size: 2000, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "SUV moderno com design arrojado.", status: "disponível" },
  { brand: brands[9], model: "i30", vehicle_type: vehicle_types[0], segment: segments[1], registration_year: 2020, registration_month: 6, mileage: 20000, price: 22000.0, fuel_type: fuel_types[0], power_hp: 140, engine_size: 1600, transmission: transmissions[1], color: "Vermelho", doors: 5, condition: conditions[1], description: "Hatchback versátil e confortável.", status: "reservado" },
  { brand: brands[9], model: "Kona", vehicle_type: vehicle_types[4], segment: segments[6], registration_year: 2021, registration_month: 3, mileage: 10000, price: 35000.0, fuel_type: fuel_types[2], power_hp: 150, engine_size: 0, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "SUV elétrico com autonomia elevada.", status: "disponível" },

  # Veículos Kia
  { brand: brands[10], model: "Sportage", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2020, registration_month: 7, mileage: 25000, price: 30000.0, fuel_type: fuel_types[1], power_hp: 180, engine_size: 2000, transmission: transmissions[1], color: "Cinza", doors: 5, condition: conditions[1], description: "SUV familiar com espaço amplo.", status: "reservado" },
  { brand: brands[10], model: "Ceed", vehicle_type: vehicle_types[0], segment: segments[1], registration_year: 2019, registration_month: 4, mileage: 35000, price: 20000.0, fuel_type: fuel_types[0], power_hp: 130, engine_size: 1600, transmission: transmissions[1], color: "Azul", doors: 5, condition: conditions[1], description: "Hatchback versátil e confortável.", status: "reservado" },
  { brand: brands[10], model: "Niro", vehicle_type: vehicle_types[4], segment: segments[6], registration_year: 2021, registration_month: 3, mileage: 10000, price: 35000.0, fuel_type: fuel_types[2], power_hp: 150, engine_size: 0, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "SUV elétrico com autonomia elevada.", status: "disponível" },

  # Veículos Volvo
  { brand: brands[11], model: "XC60", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 3, mileage: 10000, price: 55000.0, fuel_type: fuel_types[3], power_hp: 250, engine_size: 2000, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "SUV de luxo com tecnologia avançada.", status: "disponível" },
  { brand: brands[11], model: "S90", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2019, registration_month: 4, mileage: 35000, price: 45000.0, fuel_type: fuel_types[0], power_hp: 190, engine_size: 2000, transmission: transmissions[1], color: "Preto", doors: 4, condition: conditions[1], description: "Sedan executivo com acabamento premium.", status: "reservado" },
  { brand: brands[11], model: "V60", vehicle_type: vehicle_types[0], segment: segments[2], registration_year: 2020, registration_month: 7, mileage: 25000, price: 40000.0, fuel_type: fuel_types[0], power_hp: 190, engine_size: 2000, transmission: transmissions[1], color: "Cinza", doors: 4, condition: conditions[1], description: "Carro familiar com espaço amplo.", status: "reservado" },

  # Veículos Fiat
  { brand: brands[12], model: "500", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2019, registration_month: 4, mileage: 35000, price: 15000.0, fuel_type: fuel_types[0], power_hp: 90, engine_size: 1200, transmission: transmissions[0], color: "Azul", doors: 3, condition: conditions[2], description: "Carro compacto ideal para cidade.", status: "disponível" },
  { brand: brands[12], model: "Panda", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2020, registration_month: 6, mileage: 20000, price: 12000.0, fuel_type: fuel_types[0], power_hp: 70, engine_size: 1000, transmission: transmissions[0], color: "Vermelho", doors: 3, condition: conditions[2], description: "Carro compacto e económico.", status: "disponível" },
  { brand: brands[12], model: "Tipo", vehicle_type: vehicle_types[0], segment: segments[1], registration_year: 2021, registration_month: 3, mileage: 10000, price: 20000.0, fuel_type: fuel_types[0], power_hp: 110, engine_size: 1300, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "Hatchback versátil e confortável.", status: "disponível" },

  # Veículos Citroën
  { brand: brands[13], model: "C3", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2019, registration_month: 4, mileage: 35000, price: 15000.0, fuel_type: fuel_types[0], power_hp: 90, engine_size: 1200, transmission: transmissions[0], color: "Azul", doors: 3, condition: conditions[2], description: "Carro compacto ideal para cidade.", status: "disponível" },
  { brand: brands[13], model: "C4", vehicle_type: vehicle_types[0], segment: segments[1], registration_year: 2020, registration_month: 6, mileage: 20000, price: 20000.0, fuel_type: fuel_types[0], power_hp: 110, engine_size: 1300, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[1], description: "Hatchback versátil e confortável.", status: "reservado" },
  { brand: brands[13], model: "C5 Aircross", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 3, mileage: 10000, price: 30000.0, fuel_type: fuel_types[1], power_hp: 180, engine_size: 2000, transmission: transmissions[1], color: "Cinza", doors: 5, condition: conditions[0], description: "SUV familiar com espaço amplo.", status: "disponível" },

  # Veículos Honda
  { brand: brands[14], model: "Civic", vehicle_type: vehicle_types[0], segment: segments[1], registration_year: 2020, registration_month: 6, mileage: 20000, price: 25000.0, fuel_type: fuel_types[0], power_hp: 140, engine_size: 1600, transmission: transmissions[1], color: "Vermelho", doors: 5, condition: conditions[1], description: "Hatchback versátil e confortável.", status: "reservado" },
  { brand: brands[14], model: "CR-V", vehicle_type: vehicle_types[3], segment: segments[4], registration_year: 2021, registration_month: 3, mileage: 10000, price: 35000.0, fuel_type: fuel_types[1], power_hp: 180, engine_size: 2000, transmission: transmissions[1], color: "Branco", doors: 5, condition: conditions[0], description: "SUV familiar com espaço amplo.", status: "disponível" },
  { brand: brands[14], model: "Jazz", vehicle_type: vehicle_types[0], segment: segments[0], registration_year: 2019, registration_month: 4, mileage: 35000, price: 15000.0, fuel_type: fuel_types[0], power_hp: 90, engine_size: 1200, transmission: transmissions[0], color: "Azul", doors: 3, condition: conditions[2], description: "Carro compacto ideal para cidade.", status: "disponível" }
]

# Criar Veículos
vehicles = Vehicle.create!(vehicles_data)

# Criar Imagens de Veículos (VehicleImages)
vehicles.each do |vehicle|
  5.times do |i|
    VehicleImage.create!(
      vehicle: vehicle,
      image_path: "imagem_#{i + 1}.jpg",
      primary_image: i == 0, # A primeira imagem é a principal
      position: i + 1
    )
  end
end

# Mensagem de sucesso
puts "Seed concluído com sucesso!"
puts "- Marcas criadas: #{Brand.count}"
puts "- Tipos de Veículos criados: #{VehicleType.count}"
puts "- Segmentos criados: #{Segment.count}"
puts "- Tipos de Combustível criados: #{FuelType.count}"
puts "- Transmissões criadas: #{Transmission.count}"
puts "- Condições criadas: #{Condition.count}"
puts "- Veículos criados: #{Vehicle.count}"
puts "- Imagens de Veículos criadas: #{VehicleImage.count}"