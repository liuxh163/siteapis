json.user do
	if @user
    json.(@user, :id, :email, :name, :activated, :admin, :created_at, :updated_at)
  else
  	json.null
  end
end
