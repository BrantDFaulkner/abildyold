json.array!(@private_message_states) do |private_message_state|
  json.extract! private_message_state, :id, :private_messag_id, :user_id, :action
  json.url private_message_state_url(private_message_state, format: :json)
end
