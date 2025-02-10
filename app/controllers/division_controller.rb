class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "divide_form" })
  end

  def divide
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @result = @first_number / @second_number

    render({ :template => "divide_results" })
  end
end
