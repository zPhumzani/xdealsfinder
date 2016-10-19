json.extract! company, :id, :name, :avatar, :description, :verification_doc, :verified, :fee_id, :industry_id, :created_at, :updated_at
json.url company_url(company, format: :json)