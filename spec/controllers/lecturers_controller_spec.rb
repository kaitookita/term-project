require 'rails_helper'
require 'spec_helper'

RSpec.describe LecturersController, type: :controller do
    
######################################################################
#                 index    >> show all                               #
######################################################################
    describe "show all lecturer(index)" do
        let(:web) {LecturersController.new}
        let(:lecturer) { Lecturer.create!(identificationnumber: "1", name: "Dr.Weerachai", faculty: "ENG", department: "Computer") }
        let(:lecturers) {Lecturer.all}

        it "return http success" do
        get :index
        expect(response).to have_http_status(:success)
        end
        it "show all lecturer" do
        expect(web.index).to eq(lecturers)
        end
  end 
  

######################################################################
#                     new and create                                 #
######################################################################
    describe "new and create (Happy path)" do

        it 'should render the new template' do
            get :new
            response.should render_template 'new'
        end

 
        #new function
        it 'should create a new lecturer on new' do
            lecturer = {:identificationnumber => "1", :name => "Dr.Weerachai", :faculty =>  "ENG", :department => "Computer"}
            get :new, {:lecturer => lecturer}
        end
        #course function
        it 'should create a new lecturer on create' do
            lecturer = {:identificationnumber => "1", :name => "Dr.Weerachai", :faculty =>  "ENG", :department => "Computer"}
            post :create, {:lecturer => lecturer}
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
		    lecturer = {:identificationnumber => "", :name => "Dr.Weerachai", :faculty =>  "ENG", :department => "Computer"}
            post :create, {:lecturer => lecturer}
            flash[:notice].should be_nil

    end
 end
######################################################################
#                    show  >> detial                                 #
######################################################################
    describe "show lecturer detail" do
    it "should show detail of lecturer" do
      lecturer =  Lecturer.create!(identificationnumber: "1", name: "Dr.Weerachai", faculty: "ENG", department: "Computer")
      get :show ,:id => 1
    end
  end

######################################################################
#               update course   function                             #
######################################################################
  #update function
  describe "update lecturer (happy path)"do
    it 'should update lecturer' do
      lecturer = Lecturer.create!(identificationnumber: "1", name: "Dr.Weerachai", faculty: "ENG", department: "Computer")
      lecturer1 = {:identificationnumber => "100", :name => "Dr.Weerachai", :faculty =>  "ENG", :department => "Computer"}
      put :update, {:id => 1 , :lecturer => lecturer1}
      c = Lecturer.where(id: "1")
      expect(lecturer).should_not eq(c[0])
    end
  end
  #update function
  describe "update lecturer (happy path)"do
    it 'should update lecturer' do
      lecturer = Lecturer.create!(identificationnumber: "1", name: "Dr.Weerachai", faculty: "ENG", department: "Computer")
      lecturer1 = {:identificationnumber => "", :name => "Dr.Weerachai", :faculty =>  "ENG", :department => "Computer"}
      put :update, {:id => 1 , :lecturer => lecturer1}
      c = Lecturer.where(id: "1")
      expect(lecturer).to eq(c[0])
    end
  end

######################################################################
#                        destroy function                            #
######################################################################
  
  describe "destroy lecturer " do
    it 'should destroy lecturer' do
      lecturer = Lecturer.create!(identificationnumber: "1", name: "Dr.Weerachai", faculty: "ENG", department: "Computer")
      lecturer1 = Lecturer.create!(identificationnumber: "2", name: "Dr.Weeracha2i", faculty: "ENG", department: "Computer")
      amount = Lecturer.count
      delete :destroy ,:id => 1
      flash[:notice].should_not be_nil
      expect(amount).to be > Lecturer.count
    end
  end
  
end
