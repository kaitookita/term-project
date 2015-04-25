require 'rails_helper'
require 'spec_helper'

RSpec.describe CoursesController, type: :controller do
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
  ######################################################################
  #                    show  >> detial                                 #
  ######################################################################
    describe "show course detail" do
    
    it "should show detail of course" do
      course =  Course.create!(course: "CN320", coursename: "Windows Administrator", lecturer: "Supakit Prueksaaroon", semester: "1" , year: "2014")
      get :show ,:id => 1
    end
  end
  ######################################################################
  #                      new and create                                #
  ######################################################################
    describe "new and create (Happy path)" do

        it 'should render the new template' do
			get :new
			response.should render_template 'new'
		end
		#new function
        it 'should create a new course on new' do
            course = {:course => "CN408", :coursename => "Windows Administrator", :lecturer => "Supakit Prueksaaroon", :semester => "1" , :year => "2014"}
            post :new, {:course => course}
        end
        #course function
        it 'should create a new course on create' do
            course = {:course => "CN408", :coursename => "Windows Administrator", :lecturer => "Supakit Prueksaaroon", :semester => "1" , :year => "2014"}
            post :create, {:course => course}
            flash[:notice].should_not be_nil
        end
    end
    describe "new and create (sad path)" do
        it 'should render the new template' do
			get :new
			response.should render_template 'new'
		end
		#create function
		#new function can't test
		it 'should not create a new course' do
		    course = {:course => "", :coursename => "Windows Administrator", :lecturer => "Supakit Prueksaaroon", :semester => "1" , :year => "2014"}
            post :create, {:course => course}
            flash[:notice].should be_nil

    end
  end
  ######################################################################
  #               update course   function                             #
  ######################################################################
  #update function
  describe "update course (happy path)"do
    it 'should update course' do
      course = Course.create!(course: "CN320", coursename: "Windows Administrator", lecturer: "Supakit Prueksaaroon", semester: "1" , year: "2014")
      course1 = {:course => "CN320", :coursename => "Windows Administrator", :lecturer => "Supakit Prueksaaroon", :semester => "1" , :year => "2015" , :room => "306"}
      #post :create, {:course => course}
      put :update, {:id => 1 , :course => course1}
      c = Course.where(id: "1")
      expect(course).should_not eq(c[0])
    end
  end
  #update function
  describe "update course (sad path)"do
   it 'should update course' do
      #course = {:course => "CN320", :coursename => "Windows Administrator", :lecturer => "Supakit Prueksaaroon", :semester => "1" , :year => "2014" ,:room => "305"}
      course = Course.create!(course: "CN320", coursename: "Windows Administrator", lecturer: "Supakit Prueksaaroon", semester: "1" , year: "2014")
      course1 = {:course => "", :coursename => "Windows Administrator", :lecturer => "Supakit Prueksaaroon", :semester => "1" , :year => "2014"}
    #   post :create, {:course => course}
      put :update, {:id => 1 , :course => course1}
      c = Course.where(id: "1")
      expect(course).to eq(c[0])
    end
  end
  
  ######################################################################
  #                        destroy function                             #
  ######################################################################
  
  describe "destroy course " do
    it 'should destroy course' do
      course = Course.create!(course: "CN320", coursename: "Windows Administrator", lecturer: "Supakit Prueksaaroon", semester: "1" , year: "2014")
      amount = Course.count
      delete :destroy ,:id => 1
      flash[:notice].should_not be_nil
      expect(amount).to be > Course.count
    end
  end
  
   
 

end

