#Resolución de código con SOLID:

# Clase que representa un ítem
class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

# Clase para manejar los cálculos del total de una orden
class Order
  def initialize(items)
    @items = items
  end

  # Método para calcular el total, con soporte para descuentos
  def calculate_total(discount_strategy = nil)
    total = @items.reduce(0) { |sum, item| sum + item.price }
    total = discount_strategy.apply_discount(total) if discount_strategy
    total
  end
end

# Clase separada para el envío de correos (SRP aplicado)
class OrderEmailer
  def initialize(email_service)
    @email_service = email_service
  end

  def send_confirmation_email
    @email_service.send_confirmation_email
  end
end

# Clase para imprimir la orden (SRP aplicado)
class OrderPrinter
  def print_order(items)
    items.each do |item|
      puts "Item: #{item.name} - Price: #{item.price}"
    end
  end
end

# Interface para la estrategia de descuentos (OCP aplicado)
class DiscountStrategy
  def apply_discount(total)
    raise NotImplementedError, 'Este método debe ser implementado en subclases'
  end
end

# Implementación de un descuento del 10%
class TenPercentDiscount < DiscountStrategy
  def apply_discount(total)
    total * 0.9
  end
end

# Implementación del servicio de correo (DIP aplicado)
class EmailService
  def send_confirmation_email
    raise NotImplementedError, 'Este método debe ser implementado en subclases'
  end
end

# Implementación del servicio de correo vía SMTP
class SMTPEmailService < EmailService
  def send_confirmation_email
    puts "Email enviado vía SMTP a customer@example.com"
  end
end

#Single Responsibility Principle (SRP): Ahora, cada clase tiene una única responsabilidad. Order se encarga solo de manejar los ítems y calcular el total. OrderEmailer envía el correo, y OrderPrinter imprime la orden.
#Open/Closed Principle (OCP): Si se necesita agregar nuevos descuentos, se pueden crear nuevas clases sin modificar la clase Order. Así, el código está abierto para #extensiones, pero cerrado para modificaciones.
#Dependency Inversion Principle (DIP): La clase Order ahora depende de una abstracción (EmailService) en lugar de una implementación concreta. Esto hace que sea fácil cambiar el servicio de correo sin afectar el resto del código.
