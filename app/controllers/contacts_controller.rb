class ContactsController < ApplicationController
	before_action :get_contact, :only  => [:edit, :show, :destroy, :update]
	def get_contact
		@contact = Contact.find(params[:id])
	end
	

	def index
	
 	 @contacts = Contact.all
	end
	
	def new
	  @contact = Contact.new
	end
	 
	def create
	  @contact = Contact.new(contact_params)
	 
	  if @contact.save
		redirect_to contacts_path
		flash.now[:notice] = "Contact Created Successfully"
	  else
		render 'new'
	  end
	end
	  
	def show
	end
	
	def edit
	end
	
	def update
	 
	  if @contact.update(contact_params)
		redirect_to contacts_path
		flash.now[:notice] = "Contact Updated"
	  else
		render 'edit'
	  end
	end
	
	def destroy
	  @contact.destroy
  		redirect_to contacts_path
	end
 
	private
	  def contact_params
		params.require(:contact).permit(:first_name, :last_name, :email, :phone, :address1, :address2, :city, :state, :zip, :dist_type)
	  end

end
