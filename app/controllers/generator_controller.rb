class GeneratorController < ApplicationController
  def home; end

  def transform
    value = Generator.new(generator_params)
    
  end

  private

  def generator_params
    params.require(:generator).permit(:value)
  end

  def convert(value)
    word = value.split('')

    numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 ]
    symbols = [ '!', '@','#','$','%','?' ]
    letters = { a: ['@', '4', 'A', 'a'], i: ['1', '!', 'i', 'I'], o: ['0', 'o', 'O'] }

    palavra.each do |letra|
      letters.each do |chave, valor|
        if chave == letra
          print chave 
          print letra
        end
      end
    end

  end
end
