class SubtractionController < ApplicationController
  def show_subtraction_form
    render({:template => "subtract_form" })
  end

  def subtract
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_number").to_f

    @result =  @first_number-@second_number

    render({ :template =>"subtract_results"})
  end
end
