# json.ignore_nil!
if @api_errors.present?
    json.succFlag "false"
    json.errCode @api_errors["errCode"]
    json.errMsg @api_errors["errMsg"]
    json.data JSON.parse(yield)
else
    json.succFlag "true"
    json.errCode "0"
    json.errMsg String.new("")
    json.data JSON.parse(yield)
end
