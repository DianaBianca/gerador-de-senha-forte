class GeneratorController < ApplicationController
  def home; end

  def show
    value = params.permit(:value)
    @password  = convert(value)
  end

  private

  def generator_params
    params.require(:generator).permit(:value)
  end

  def convert(value)
    word = value.values[0].to_s.split('')
    pass = word

    numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 ]
    symbols = [ '!', '@','#','$','%','?' ]
    letters = { a: ['@', '4', 'A'], i: ['1', '!', 'I'], o: ['0', 'O'] }

    pass << symbols.sample(1).first
    pass << numbers.sample(1).first

    word.each_with_index do |letra,indice|
      letters.each do |chave, valor|
        if chave.to_s == letra
          pass[indice] = valor.sample(1).first
        end
      end
    end

    return pass.join
  end
end
