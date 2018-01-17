module Response
  def json_response(object, status = :ok)
    paginate json: object, status: status
  end
end