ActiveAdmin.register Band do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :genero

filter 	:name
filter	:genero

index do |band|
	selectable_column
	column :name
	column :genero
	actions
end


form do |f|
	
	f.inputs "Informacion Basica" do
		f.input :name
		f.input :genero
	end
	f.actions

end

show do
	attributes_table do
	row :name
	row :genero
	end
	end


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
