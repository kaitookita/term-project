require 'rails_helper'

RSpec.describe LinkController, type: :controller do
    
######################################################################
#                 index    >> show all                               #
######################################################################
 describe "show_all_course(index)" do
    let(:web) {CoursesController.new}
    let(:course) { Course.create!(course: "CN320", coursename: "Windows Administrator", lecturer: "Supakit Prueksaaroon", semester: "1" , year: "2014") }
    let(:courses) {Course.all}

    it "return http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "show all course" do
      expect(web.index).to eq(courses)
    end
  end 
end
