json.micropost do
	json.(@user, :id)
	json.(@micropost, :title, :content)
end
