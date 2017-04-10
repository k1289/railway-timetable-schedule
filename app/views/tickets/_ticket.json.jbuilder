json.extract! ticket, :id, :from, :to, :doj, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
