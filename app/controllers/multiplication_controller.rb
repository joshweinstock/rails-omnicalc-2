class MultiplicationController < ApplicationController
  def show_multiplication_form
    render({ :template => "multiply_form" })
  end

  def multiply
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f
    @result =  @first_number * @second_number

    render({ :template => "multiply_results" })
  end
end
