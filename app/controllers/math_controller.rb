class MathController < ApplicationController

  def add_input
    render({:template => "/math/add_input.html.erb"})
  end

  def add_results
    @first = params.fetch("first_num").to_i
    @second = params.fetch("second_num").to_i
    @result = @first + @second
    render({:template => "/math/add_results.html.erb" })  
  end
end