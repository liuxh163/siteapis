json.users do
	json.array! @users do |user|
		json.(user, :id, :email, :name, :activated, :admin, :created_at, :updated_at)
	end
end
