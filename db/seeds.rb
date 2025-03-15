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
  { name: "Mercedes-Benz" }
])

# Criar Tipos de Veículos (VehicleTypes)
vehicle_types = VehicleType.create!([
  { name: "Carro" },
  { name: "Mota" },
  { name: "Camião" },
  { name: "SUV" },
  { name: "Híbrido" }
])

# Criar Segmentos (Segments)
segments = Segment.create!([
  { code: "A", name: "Citadinos", description: "Veículos compactos para cidade" },
  { code: "B", name: "Utilitários", description: "Veículos versáteis para uso geral" },
  { code: "C", name: "Sedans", description: "Veículos de porte médio" },
  { code: "D", name: "Executivos", description: "Veículos de luxo" },
  { code: "E", name: "SUV", description: "Veículos utilitários esportivos" }
])

# Criar Tipos de Combustível (FuelTypes)
fuel_types = FuelType.create!([
  { name: "Gasolina" },
  { name: "Diesel" },
  { name: "Elétrico" },
  { name: "Híbrido" },
  { name: "GPL" }
])

# Criar Transmissões (Transmissions)
transmissions = Transmission.create!([
  { name: "Manual" },
  { name: "Automática" },
  { name: "CVT" },
  { name: "Semi-automática" }
])

# Criar Condições (Conditions)
conditions = Condition.create!([
  { name: "Novo" },
  { name: "Semi-novo" },
  { name: "Usado" }
])

# Criar Veículos (Vehicles)
vehicles = Vehicle.create!([
  {
    brand: brands.first,
    model: "Corolla",
    vehicle_type: vehicle_types.first,
    segment: segments.first,
    registration_year: 2020,
    registration_month: 5,
    mileage: 15000,
    price: 25000.0,
    fuel_type: fuel_types.first,
    power_hp: 150,
    engine_size: 2000,
    transmission: transmissions.first,
    color: "Preto",
    doors: 4,
    condition: conditions.first,
    description: "Carro em excelente estado, com poucos quilómetros.",
    status: "disponível"
  },
  {
    brand: brands.second,
    model: "Focus",
    vehicle_type: vehicle_types.first,
    segment: segments.second,
    registration_year: 2019,
    registration_month: 8,
    mileage: 30000,
    price: 20000.0,
    fuel_type: fuel_types.second,
    power_hp: 120,
    engine_size: 1600,
    transmission: transmissions.second,
    color: "Branco",
    doors: 5,
    condition: conditions.second,
    description: "Veículo confortável e económico.",
    status: "reservado"
  },
  {
    brand: brands.third,
    model: "X5",
    vehicle_type: vehicle_types.fourth,
    segment: segments.fourth,
    registration_year: 2021,
    registration_month: 3,
    mileage: 10000,
    price: 60000.0,
    fuel_type: fuel_types.third,
    power_hp: 300,
    engine_size: 3000,
    transmission: transmissions.third,
    color: "Azul",
    doors: 5,
    condition: conditions.first,
    description: "SUV de luxo com tecnologia avançada.",
    status: "vendido"
  }
])

# Criar Imagens de Veículos (VehicleImages)
vehicles.each do |vehicle|
  3.times do |i|
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