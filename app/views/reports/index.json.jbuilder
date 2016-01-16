json.array!(@reports) do |report|
  json.extract! report, :id, :engineer_report
  json.url report_url(report, format: :json)
end
